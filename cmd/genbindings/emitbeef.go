package main

import (
	"strings"
)

// FUCK THIS SHITTY ASS LANGUAGE
func UNUSED(x ...interface{}) {}

func getPageNameBF(c string) string {
	pageName := strings.ToLower(c)
	if pageName == "qnamespace" {
		return "qt"
	}
	pageName = strings.Replace(pageName, "__", "-", -1)
	return pageName
}

func beefReservedWord(s string) bool {
	switch s {
	case "default", "const", "function", "var", "let", "new", "delete", "scope", "int", "float", "double", "in", "out", "delegate", "where", "base", "checked", "extension", "params":
		return true
	default:
		return false
	}
}

func collectInheritedMethodsForBeef(class string, seenMethods map[string]struct{}) []InheritedMethod {
	var methods []InheritedMethod

	if pkg, ok := KnownClassnames[class]; ok {
		for _, m := range pkg.Class.Methods {
			if _, seen := seenMethods[m.MethodName]; !seen {
				if m.InheritedFrom != "" {
					continue
				}
				if m.IsConst && m.IsVirtual && m.IsProtected {
					continue
				}

				// Create a copy of the method to avoid modifying the original
				methodCopy := m
				// Apply typedefs to ensure proper type resolution
				applyTypedefs_Method(&methodCopy)
				if err := blocklist_MethodAllowed(&methodCopy); err != nil {
					continue
				}

				methods = append(methods, InheritedMethod{
					Method:      methodCopy,
					SourceClass: pkg.Class.ClassName,
				})
				seenMethods[m.MethodName] = struct{}{}
			}
		}

		for _, parentClass := range pkg.Class.DirectInherits {
			if parentMethods := collectInheritedMethodsForBeef(parentClass, seenMethods); parentMethods != nil {
				methods = append(methods, parentMethods...)
			}
		}
	}

	return methods
}

// cabiEnumName returns the Beef enum name for a Qt C++ class.
// Normally this is the same, except for class types that are nested inside another class definition.
func cabiEnumNameBF(className string) string {
	// Many types are defined in qnamespace.h under Qt::
	// The Beef implementation instead prefixes e.g. qnamespace_enums.Foo and
	// where these names don't collide with anything, we strip the redundant prefix
	name := strings.Split(className, `::`)
	enumName := name[len(name)-1]
	return strings.Replace(enumName, `::`, `__`, -1)
}

func (p CppParameter) parameterTypeBeef() string {
	if p.ParameterType == "QString" || p.ParameterType == "QByteArray" {
		return "libqt_string"
	}

	tmp := strings.Replace(p.RenderTypeCabi(), `*`, "", -1)

	return tmp
}

func (p CppParameter) RenderTypeBeefCABI(bfs *bfFileState, isReturnType bool, fullEnumName bool) string {
	if p.Pointer && p.ParameterType == "char" {
		return "char8*"
	}

	if p.ParameterType == "void" && p.Pointer {
		return "void*"
	}

	if p.ParameterType == "QString" || p.ParameterType == "QByteArray" {
		return "libqt_string"
	}

	if p.ParameterType == "QAnyStringView" ||
		p.ParameterType == "QByteArrayView" || p.ParameterType == "QStringView" {
		return "char8*"
	}

	if p.ParameterType == "QByteArray" {
		return "uint8[]"
	}

	if p.Pointer && p.ParameterType == "QByteArray" {
		return "uint8[]"
	}

	if t, ok := p.QListOf(); ok {
		return t.RenderTypeBeefCABI(bfs, isReturnType, fullEnumName) + "[]"
	}

	if t, ok := p.QSetOf(); ok {
		UNUSED(t)
		return "void*" // Unknown
	}

	if t1, t2, ok := p.QMapOf(); ok {
		UNUSED(t1, t2)
		return "void*" // Unknown
		// return "map[" + t1.RenderTypeBeefCABI(gfs) + "]" + t2.RenderTypeGo(gfs)
	}

	if t1, t2, ok := p.QPairOf(); ok {

		UNUSED(t1, t2)
		return "void*" // Unknown

		// Design QPair using capital-named members, in case it gets passed
		// across packages
		// return "struct { First " + t1.RenderTypeGo(gfs) + " ; Second " + t2.RenderTypeGo(gfs) + " }"
	}

	ret := ""
	switch p.ParameterType {
	case "void":
		ret += "void"
	case "bool", "volatile bool": // What the fuck could the volatile be for? I hope it works???
		ret += "bool"
	case "unsigned char", "uchar", "quint8":
		ret += "uint8"
	case "char", "qint8", "signed char":
		ret += "int8" // Signed
	case "short", "qint16", "int16_t":
		ret += "int16"
	case "ushort", "quint16", "unsigned short", "uint16_t":
		ret += "uint16"
	case "long":
		ret += "c_long"
	case "ulong", "unsigned long":
		ret += "c_ulong"
	case "unsigned int", "quint32", "uint":
		ret += "uint32"
	case "qint32", "int":
		ret += "int32"
	case "qlonglong", "qint64", "long long":
		ret += "int64"
	case "qulonglong", "quint64", "unsigned long long":
		ret += "uint64"
	case "float":
		ret += "float"
	case "double", "qreal":
		ret += "double"
	case "size_t": // size_t is unsigned
		ret += "uint"
	case "qsizetype", "QIntegerForSizeof<std::size_t>::Signed", "qptrdiff", "ptrdiff_t": // all signed
		ret += "int32"
	case "qintptr", "uintptr_t", "intptr_t", "quintptr", "QIntegerForSizeof<void *>::Unsigned", "QIntegerForSizeof<void *>::Signed":
		ret += "c_uintptr"
	default:
		if ft, ok := p.QFlagsOf(); ok {
			if fullEnumName {
				UNUSED(ft)
				ret += "pelly"
			} else {
				ret += "int64"
			}
		} else if enumInfo, ok := KnownEnums[p.ParameterType]; ok {
			UNUSED(enumInfo)

			enumName := cabiEnumName(p.ParameterType)
			if enumName == "" {
				enumName = cabiClassName(p.ParameterType)
			}

			if strings.Contains(p.ParameterType, "::") {
				if fullEnumName {
					// ret += strings.Replace(enumName, `::`, `.`, -1)
					ret += enumName
				} else {
					ret += "int64"
				}
			}
		} else if strings.Contains(p.ParameterType, `::`) {
			// Inner class
			// ret += cabiClassName(p.ParameterType)
			ret += "void"
		} else {
			// Do not transform this type
			// ret += p.ParameterType + ".Ptr"
			ret += "void"
		}
	}

	switch ret {
	case "quint8":
		ret = "uint8"
	case "unsigned int", "quint32", "uint":
		ret = "uint32"
	case "int":
		ret = "int32"
	case "":
		// ret = "BAD_VALUE!" // So the compiler catches it
		ret = "void" // but for now becuase I'm lazy
	}

	if p.Pointer {
		ret += strings.Repeat("*", p.PointerCount)
	} else if p.ByRef {
		ret += "*"
	}

	return ret
}

func (p CppParameter) RenderReturnTypeBeefCABI(bfs *bfFileState) string {
	ret := p.RenderTypeBeefCABI(bfs, true, false)

	if ret == "void" {
		ret = "void"
	}

	if ret == "int" {
		ret = "int32"
	}

	if ret == "quint8" {
		ret = "int32"
	}

	if ret == "uint" {
		ret = "uint32"
	}

	return ret
}

func (p CppParameter) RenderTypeBeef(bfs *bfFileState, isReturnType bool, fullEnumName bool) string {
	if p.Pointer && p.ParameterType == "char" {
		return "char8*"
	}

	/*
		if p.ParameterType == "QString" || p.ParameterType == "QAnyStringView" ||
			p.ParameterType == "QByteArrayView" || p.ParameterType == "QStringView" {
			return "char8[]"
		}
	*/

	if p.ParameterType == "QString" || p.ParameterType == "QByteArray" {
		return "String"
	}

	if p.ParameterType == "QByteArray" {
		return "uint8[]"
	}

	if p.Pointer && p.ParameterType == "QByteArray" {
		return "uint8[]"
	}

	if t, ok := p.QListOf(); ok {
		return t.RenderTypeBeef(bfs, isReturnType, fullEnumName) + "[]"
	}

	if t, ok := p.QSetOf(); ok {
		UNUSED(t)
		return "void*" // Unknown
	}

	if t1, t2, ok := p.QMapOf(); ok {
		UNUSED(t1, t2)
		return "void*" // Unknown
		// return "map[" + t1.RenderTypeBeefCABI(gfs) + "]" + t2.RenderTypeGo(gfs)
	}

	if t1, t2, ok := p.QPairOf(); ok {

		UNUSED(t1, t2)
		return "void*" // Unknown

		// Design QPair using capital-named members, in case it gets passed
		// across packages
		// return "struct { First " + t1.RenderTypeGo(gfs) + " ; Second " + t2.RenderTypeGo(gfs) + " }"
	}

	ret := ""
	switch p.ParameterType {
	case "void":
		ret += "void"
	case "bool", "volatile bool": // What the fuck could the volatile be for? I hope it works???
		ret += "bool"
	case "unsigned char", "uchar", "quint8":
		ret += "uint8"
	case "char", "qint8", "signed char":
		ret += "int8" // Signed
	case "short", "qint16", "int16_t":
		ret += "int16"
	case "ushort", "quint16", "unsigned short", "uint16_t":
		ret += "uint16"
	case "long":
		ret += "c_long"
	case "ulong", "unsigned long":
		ret += "c_ulong"
	case "unsigned int", "quint32", "uint":
		ret += "uint32"
	case "qint32", "int":
		ret += "int32"
	case "qlonglong", "qint64", "long long":
		ret += "int64"
	case "qulonglong", "quint64", "unsigned long long":
		ret += "uint64"
	case "float":
		ret += "float"
	case "double", "qreal":
		ret += "double"
	case "size_t": // size_t is unsigned
		ret += "uint"
	case "qsizetype", "QIntegerForSizeof<std::size_t>::Signed", "qptrdiff", "ptrdiff_t": // all signed
		ret += "int32"
	case "qintptr", "uintptr_t", "intptr_t", "quintptr", "QIntegerForSizeof<void *>::Unsigned", "QIntegerForSizeof<void *>::Signed":
		ret += "c_uintptr"
	default:
		if ft, ok := p.QFlagsOf(); ok {
			if fullEnumName {
				UNUSED(ft)
				ret += "pelly"
			} else {
				ret += "int64"
			}
		} else if enumInfo, ok := KnownEnums[p.ParameterType]; ok {
			UNUSED(enumInfo)

			enumName := cabiEnumName(p.ParameterType)
			if enumName == "" {
				enumName = cabiClassName(p.ParameterType)
			}

			if strings.Contains(p.ParameterType, "::") {
				if fullEnumName {
					// ret += strings.Replace(enumName, `::`, `.`, -1)
					ret += enumName
				} else {
					ret += "int64"
				}
			}
		} else if strings.Contains(p.ParameterType, `::`) {
			// Inner class
			ret += cabiClassName(p.ParameterType)
		} else {
			// Do not transform this type
			// ret += p.ParameterType + ".Ptr"
			ret += "I" + p.ParameterType
		}
	}

	if p.QtClassType() {
		return ret
	}

	switch ret {
	case "quint8":
		ret = "uint8"
	case "unsigned int", "quint32", "uint":
		ret = "uint32"
	case "int":
		ret = "int32"
	case "":
		// ret = "BAD_VALUE!" // So the compiler catches it
		ret = "void" // but for now becuase I'm lazy
	}

	if p.Pointer {
		ret += strings.Repeat("*", p.PointerCount)
	} else if p.ByRef {
		ret += "*"
	}

	return ret
}

func (p CppParameter) RenderReturnTypeBeef(bfs *bfFileState) string {
	ret := p.RenderTypeBeef(bfs, true, false)

	if ret == "void" {
		ret = "void"
	}

	if ret == "int" {
		ret = "int32"
	}

	if ret == "quint8" {
		ret = "int32"
	}

	if ret == "uint" {
		ret = "uint32"
	}

	return ret
}

func (bfs *bfFileState) emitCabiToBeef(assignExpr string, rt CppParameter, rvalue string) string {
	return ""
}

func (bfs *bfFileState) emitParametersBeef2CABIForwarding(m CppMethod, isSlot bool) (forwarding string) {
	tmp := make([]string, 0, len(m.Parameters)+2)

	if !m.IsStatic {
		tmp = append(tmp, "void* c_this")
	}

	skipNext := false

	for i, p := range m.Parameters {
		if IsArgcArgv(m.Parameters, i) {
			// skipNext = true
			// QApplication constructor. Convert 'args' into Qt's wanted types
			// Qt has a warning in the docs saying these pointers must be valid
			// for the entire lifetype of QApplication, so, malloc + never free
			// This transformation only affects the Go side. The CABI side is
			// projected naturally

			UNUSED(p)

			// Ordinary parameter
			paramName := p.ParameterName
			paramType := p.RenderTypeBeefCABI(bfs, false, false)

			if beefReservedWord(paramName) {
				paramName = "_" + paramName
			}

			if isSlot {
				tmp = append(tmp, paramType)
			} else {
				tmp = append(tmp, paramType+" "+paramName)
			}

		} else if skipNext {
			// Skip this parameter, already handled
			skipNext = false

		} else {
			// addPreamble, rvalue := bfs.emitParametersBeef2CABIForwarding(p)
			UNUSED(p)

			// Ordinary parameter
			paramName := p.ParameterName
			paramType := p.RenderTypeBeefCABI(bfs, false, false)

			if beefReservedWord(paramName) {
				paramName = "_" + paramName
			}

			if isSlot {
				tmp = append(tmp, paramType)
			} else {
				tmp = append(tmp, paramType+" "+paramName)
			}
		}
	}

	return strings.Join(tmp, ", ")
}

func (bfs *bfFileState) EmitParametersBeef(params []CppParameter, isSlot bool) string {
	tmp := make([]string, 0, len(params))
	// skipNext := false

	for _, p := range params {
		// Ordinary parameter
		paramName := p.ParameterName
		paramType := p.RenderTypeBeef(bfs, false, false)

		if beefReservedWord(paramName) {
			paramName = "_" + paramName
		}

		if isSlot {
			tmp = append(tmp, paramType)
		} else {
			tmp = append(tmp, paramType+" "+paramName)
		}
	}

	return strings.Join(tmp, ", ")
}

func (bfs *bfFileState) EmitArgumentsBeef(m CppMethod) (forwarding string) {
	tmp := make([]string, 0, len(m.Parameters)+2)

	if !m.IsStatic {
		tmp = append(tmp, "this.nativePtr")
	}

	for _, p := range m.Parameters {
		// Ordinary parameter
		paramName := p.ParameterName
		cast := ""

		if _, ok := p.QListOf(); ok {
			tmp = append(tmp, "null")
		} else {

			if beefReservedWord(paramName) {
				paramName = "_" + paramName
			}

			beefType := p.RenderReturnTypeBeef(bfs)
			beefAPIType := p.RenderReturnTypeBeefCABI(bfs)

			if beefType == "String" {
				tmp = append(tmp, "libqt_string("+paramName+")")
			} else {
				if p.QtClassType() && beefType != "void*" && beefType != "String" {
					var defaultVal string
					if p.Pointer {
						defaultVal = "null"
					} else {
						defaultVal = "default"
					}

					cast += "(" + paramName + " == " + defaultVal + ")" + " ? " + defaultVal + " : "

					paramName += ".NativePtr"

					if beefType != "void" {
						cast += "("
						cast += beefAPIType
						// cast += strings.Repeat("*", p.PointerCount)
						cast += ")"
					}
				}

				tmp = append(tmp, cast+paramName)

			}
		}
	}

	return strings.Join(tmp, ", ")
}

func beefCtorName(c *CppClass, i int) string {
	methodPrefixName := cabiClassName(c.ClassName)

	return methodPrefixName + "_new" + maybeSuffix(i)
}

type bfFileState struct {
}

func beef_emitClassStruct(c *CppClass, ret *CodeBuilder, bfs *bfFileState) {
	ret.WriteLine(`extension CQt`)

	// Inheritance... it probably shouldn't exist for CABI structs...?
	/*
		for i, base := range c.DirectInherits {
			if strings.HasPrefix(base, `QList<`) {

				ret.WriteString("// Also inherits unprojectable " + base + "\n")

			} else {

				if i == len(c.DirectInherits)-1 {
					ret.WriteString(" : " + cabiClassName(base) + ".Ptr")
				}

			}
		}
	*/

	// Ptr struct body
	ret.WriteLine("{")
	ret.IncreaseTab()
	{
		// ---------------------------------------------------------------------
		// Methods
		// ---------------------------------------------------------------------
		seenMethods := make(map[string]struct{})
		baseMethods := c.Methods
		protectedMethods := c.ProtectedMethods()
		virtualEligible := AllowVirtualForClass(c.ClassName)

		UNUSED(seenMethods)
		UNUSED(baseMethods)
		UNUSED(protectedMethods)
		UNUSED(virtualEligible)

		methodPrefixName := cabiClassName(c.ClassName)

		for i, ctor := range c.Ctors {

			// cMethodName := cabiNewName(c, i)
			cMethodName := methodPrefixName + "_new" + maybeSuffix(i)

			ret.WriteLine("[LinkName(" + `"` + cMethodName + `"` + ")]")
			ret.WriteLine("public static extern " + "void* " + cMethodName + "(" + bfs.emitParametersBeef2CABIForwarding(ctor, false) + ");")
		}

		for _, m := range baseMethods {

			// cMethodName := cabiMethodName(c, m)
			cMethodName := methodPrefixName + "_" + m.SafeMethodName()
			// ret.WriteLine("[Import(" + `"` + pcName + ".dll" + `"` + "), LinkName(" + `"` + cMethodName + `"` + ")]")
			// ret.WriteLine("[Import(" + `"` + "QtBeefLink" + ".dll" + `"` + "), LinkName(" + `"` + cMethodName + `"` + ")]")

			if m.IsSignal {
				addConnect := true
				if _, ok := noQtConnect[methodPrefixName]; ok {
					addConnect = false
				}
				if addConnect {
					cMethodName := methodPrefixName + "_Connect_" + m.SafeMethodName()

					ret.WriteLine("[LinkName(" + `"` + cMethodName + `"` + ")]")
					ret.WriteLine("public static extern " + m.ReturnType.RenderReturnTypeBeefCABI(bfs) + " " + cMethodName + "(void* c_this, c_intptr slot);")
					// ret.WriteString(fmt.Sprintf("%s %s_Connect_%s(%s* self, intptr_t slot);\n", m.ReturnType.RenderTypeCabi(), methodPrefixName, m.SafeMethodName(), methodPrefixName))
				}
			} else {

				if cMethodName == "QJsonObject__const_iterator_OperatorMinusWithQJsonObjectconstIterator" {
					a := 0
					UNUSED(a)
				}

				ret.WriteLine("[LinkName(" + `"` + cMethodName + `"` + ")]")
				ret.WriteLine("public static extern " + m.ReturnType.RenderReturnTypeBeefCABI(bfs) + " " + cMethodName + "(" + bfs.emitParametersBeef2CABIForwarding(m, false) + ");")

			}
		}

		if c.CanDelete && (len(c.Methods) > 0 || len(c.VirtualMethods()) > 0 || len(c.Ctors) > 0) {
			ret.WriteLine("/// Delete this object from C++ memory")

			cMethodName := methodPrefixName + "_Delete"

			ret.WriteLine("[LinkName(" + `"` + cMethodName + `"` + ")]")
			ret.WriteLine("public static extern " + "void " + cMethodName + "(" + "void* self" + ");")
		}
	}
	ret.DecreaseTab()
	ret.WriteLine("}")
	// End class body
}

func emitBeef(src *CppParsedHeader, headerName string, packageName string) (string, error) {
	if len(src.Classes) == 0 && len(src.Enums) == 0 {
		return "", nil
	}

	bfs := bfFileState{}

	ret := CodeBuilder{}
	// cabi := strings.Builder{}

	ret.WriteLine("using System;")
	ret.WriteLine("using System.Interop;")
	ret.WriteLine("namespace Qt;")
	ret.WriteEmptyLine()

	// ---------------------------------------------------------------------
	// Enums
	// ---------------------------------------------------------------------

	for _, e := range src.Enums {
		if e.EnumName == "" {
			continue // Removed by transformRedundant AST pass
		}

		beefEnumName := cabiClassName(e.EnumName)

		if len(e.Entries) > 0 {
			ret.WriteLine("[AllowDuplicates]")
			ret.WriteLine("public enum " + beefEnumName)
			ret.WriteLine("{")
			ret.IncreaseTab()
			{
				for _, ee := range e.Entries {
					ret.WriteLine(ee.EntryName + " = " + ee.EntryValue + ",")
				}
			}
			ret.DecreaseTab()
			ret.WriteLine("}")
		}
	}

	// ---------------------------------------------------------------------
	// Classes
	// ---------------------------------------------------------------------
	for _, c := range src.Classes {
		if c.ClassName == "QWebEngineCookieStore::FilterRequest" {
			continue
		}

		virtualMethods := c.VirtualMethods()

		baseMethods := c.Methods
		protectedMethods := c.ProtectedMethods()
		virtualEligible := AllowVirtualForClass(c.ClassName)

		if virtualEligible && len(virtualMethods) > 0 {
			virtualMethods = append(virtualMethods, protectedMethods...)
		}

		seenMethods := make(map[string]struct{})
		var inheritedMethods []InheritedMethod
		for _, base := range c.DirectInherits {
			inherited := collectInheritedMethodsForBeef(base, seenMethods)
			if inherited != nil {
				inheritedMethods = append(inheritedMethods, inherited...)
			}
		}

		for _, im := range inheritedMethods {
			im.Method.InheritedFrom = im.SourceClass
			baseMethods = append(baseMethods, im.Method)
		}

		// previousMethods := map[string]struct{}{}
		seenMethodVariants := map[string]bool{}

		ret.WriteLine("public interface I" + cabiClassName(c.ClassName))
		ret.WriteLine("{")
		ret.IncreaseTab()
		{
			ret.WriteLine("void* NativePtr { get; }")
		}
		ret.DecreaseTab()
		ret.WriteLine("}")

		ret.WriteLine("public class " + cabiClassName(c.ClassName))

		// Inheritance string
		{
			var inheritStr strings.Builder
			var inheritCount int
			{
				for i, base := range c.DirectInherits {

					if strings.HasPrefix(base, `QList<`) {

						inheritStr.WriteString(" // Also inherits unprojectable " + base)

					} else {
						inheritStr.WriteString("I" + cabiClassName(base))
						if i < len(c.DirectInherits)-1 {
							inheritStr.WriteString(", ")
						}
						inheritCount++
					}
				}
			}

			ret.WriteString(" : " + "I" + cabiClassName(c.ClassName))
			if inheritCount > 0 {
				ret.WriteString(", ")
			}
			ret.WriteString(inheritStr.String())
		}

		ret.WriteLine("{")
		ret.IncreaseTab()
		{
			// Ptr member variable
			if true {
				ret.WriteLine("protected void* nativePtr;")
				ret.WriteLine("public void* NativePtr => nativePtr;")
				if len(c.Methods) > 0 || len(c.VirtualMethods()) > 0 || len(c.Ctors) > 0 {
					ret.WriteEmptyLine()
				}
			}

			// ---------------------------------------------------------------------
			// Methods
			// ---------------------------------------------------------------------

			UNUSED(baseMethods)
			UNUSED(protectedMethods)
			UNUSED(virtualEligible)

			seenCtors := make(map[string]struct{})

			for i, ctor := range c.Ctors {

				_, ok := seenCtors[ctor.MethodName]
				if ok {
					continue
				}

				/*
					cMethodName := methodPrefixName + "_new" + maybeSuffix(i)

					ret.WriteLine("[LinkName(" + `"` + cMethodName + `"` + ")]")
					ret.WriteLine("public static extern " + cabiClassName(c.ClassName) + ".Ptr*" + " " + cMethodName + "(" + bfs.emitParametersBeef2CABIForwarding(ctor, false) + ");")
				*/

				ret.WriteLine("public this" + "(" + bfs.EmitParametersBeef(ctor.Parameters, false) + ")")
				ret.WriteLine("{")
				ret.IncreaseTab()
				{
					// ret.WriteLine("this.nativePtr = *Ptr." + beefCtorName(&c, i) + "(" + args + ");")
					ret.WriteLine("this.nativePtr = CQt." + beefCtorName(&c, i) + "(" + bfs.EmitArgumentsBeef(ctor) + ");")

					// New function?
					/*
						ret.WriteLine("return new Self()")
						ret.WriteLine("{")
						ret.IncreaseTab()
						{
							ret.WriteLine("nativePtr = Ptr." + beefCtorName(&c, i) + "(" + args + ")")
						}
						ret.DecreaseTab()
						ret.WriteLine("};")
					*/
				}
				ret.DecreaseTab()
				ret.WriteLine("}")

				if len(baseMethods) > 0 {
					ret.WriteEmptyLine()
				}

				seenCtors[ctor.MethodName] = struct{}{}
			}

			if c.CanDelete && (len(c.Methods) > 0 || len(c.VirtualMethods()) > 0 || len(c.Ctors) > 0) {
				ret.WriteLine("public ~this()")
				ret.WriteLine("{")
				ret.IncreaseTab()
				{
					cMethodName := cabiClassName(c.ClassName) + "_Delete"
					ret.WriteLine("CQt." + cMethodName + "(this.nativePtr);")
				}
				ret.DecreaseTab()
				ret.WriteLine("}")

				if len(baseMethods) > 0 {
					ret.WriteEmptyLine()
				}
			}

			for _, m := range baseMethods {

				if m.IsProtected && m.InheritedFrom != "" {
					continue
				}

				if m.IsProtected && !virtualEligible {
					continue
				}

				if _, ok := privateAndSkippedMethods[c.ClassName+"_"+m.SafeMethodName()]; ok {
					if m.InheritedFrom == "" {
						continue
					}
				}

				var showHiddenParams bool
				if _, ok := seenMethodVariants[m.SafeMethodName()]; ok {
					continue
				}
				if b, ok := seenMethodVariants[m.MethodName]; ok {
					if b {
						continue
					} else {
						showHiddenParams = true
						seenMethodVariants[m.MethodName] = true
					}
				}
				seenMethodVariants[m.MethodName] = false
				seenMethodVariants[m.SafeMethodName()] = false

				UNUSED(showHiddenParams)

				writeEmptyLine := false

				var methodPrefixName string
				if m.InheritedFrom != "" {
					methodPrefixName = cabiClassName(m.InheritedFrom)
				} else {
					methodPrefixName = cabiClassName(c.ClassName)
				}
				cMethodName := methodPrefixName + "_" + m.SafeMethodName()

				if m.IsSignal {
					/*
						addConnect := true
						if _, ok := noQtConnect[methodPrefixName]; ok {
							addConnect = false
						}
						if addConnect {
							cMethodName := methodPrefixName + "_Connect_" + m.SafeMethodName()

							ret.WriteLine("[LinkName(" + `"` + cMethodName + `"` + ")]")
							ret.WriteLine("public static extern " + m.ReturnType.renderReturnTypeBeef(&bfs) + " " + cMethodName + "(Self* c_this, c_intptr slot);")
							// ret.WriteString(fmt.Sprintf("%s %s_Connect_%s(%s* self, intptr_t slot);\n", m.ReturnType.RenderTypeCabi(), methodPrefixName, m.SafeMethodName(), methodPrefixName))
							writeEmptyLine = true
						}
					*/
				} else {

					staticStr := ""
					if m.IsStatic {
						staticStr += "static "
					}
					if m.IsVirtual {
						staticStr += "virtual "
					}

					// args
					args := bfs.EmitArgumentsBeef(m)
					returnType := m.ReturnType.RenderReturnTypeBeefCABI(&bfs)

					ret.WriteLine("public " + staticStr + returnType + " " + m.SafeMethodName() + "(" + bfs.EmitParametersBeef(m.Parameters, false) + ")")
					ret.WriteLine("{")
					ret.IncreaseTab()
					{
						ret.AppendNewLine()
						ret.AppendTabs(ret.tabCount)
						if returnType != "void" {
							ret.WriteString("return ")
						}
						ret.WriteString("CQt." + cMethodName + "(" + args + ");")
					}
					ret.DecreaseTab()
					ret.WriteLine("}")

					writeEmptyLine = true
				}

				if writeEmptyLine {
					ret.WriteEmptyLine()
				}
			}
		}

		ret.DecreaseTab()
		ret.WriteLine("}")

		// Ptr struct
		beef_emitClassStruct(&c, &ret, &bfs)
	}

	bfSrc := ret.String()
	return bfSrc, nil
}
