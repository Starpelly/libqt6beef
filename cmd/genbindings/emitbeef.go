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

func (p CppParameter) RenderTypeBeef(bfs *bfFileState, isReturnType bool, fullEnumName bool) string {
	if p.Pointer && p.ParameterType == "char" {
		return "char8[]"
	}

	/*
		if p.ParameterType == "QString" || p.ParameterType == "QAnyStringView" ||
			p.ParameterType == "QByteArrayView" || p.ParameterType == "QStringView" {
			return "char8[]"
		}
	*/

	if p.ParameterType == "QString" || p.ParameterType == "QByteArray" {
		return "libqt_string"
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
		// return "map[" + t1.RenderTypeBeef(gfs) + "]" + t2.RenderTypeGo(gfs)
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
			ret += p.ParameterType
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

func (p CppParameter) renderReturnTypeBeef(bfs *bfFileState) string {
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
		tmp = append(tmp, "Self* c_this")
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
			paramType := p.RenderTypeBeef(bfs, false, false)

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
	}

	return strings.Join(tmp, ", ")
}

func (bfs *bfFileState) emitParametersBeef(params []CppParameter, isSlot bool) string {
	tmp := make([]string, 0, len(params))
	skipNext := false

	for i, p := range params {
		if IsArgcArgv(params, i) {
			skipNext = true
			tmp = append(tmp, "argc: usize, argv: [*][*:0]uint8")
		} else if skipNext {
			// Skip this parameter, already handled
			skipNext = false
		} else {
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
	}

	return strings.Join(tmp, ", ")
}

type bfFileState struct {
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

		// Class header
		/*
			if len(c.Ctors) > 0 || len(c.Methods) > 0 || len(virtualMethods) > 0 {
				pageName := getPageName(cabiClassName(c.ClassName))
				ret.WriteLine("/// https://doc.qt.io/qt-5/" + pageName + ".html")
			}
		*/

		ret.AppendNewLine()
		ret.WriteString(`public struct ` + cabiClassName(c.ClassName))

		// Inheritance... it probably shouldn't exist for CABI structs...?
		for i, base := range c.DirectInherits {
			if strings.HasPrefix(base, `QList<`) {

				ret.WriteString("// Also inherits unprojectable " + base + "\n")

			} else {

				if i == len(c.DirectInherits)-1 {
					ret.WriteString(" : ")
					ret.WriteString(cabiClassName(base))
				}

			}
		}

		// Class body
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
				ret.WriteLine("public static extern " + cabiClassName(c.ClassName) + "*" + " " + cMethodName + "(" + bfs.emitParametersBeef2CABIForwarding(ctor, false) + ");")
			}

			for _, m := range baseMethods {

				// DLL Linking
				{
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
							ret.WriteLine("public static extern " + m.ReturnType.renderReturnTypeBeef(&bfs) + " " + cMethodName + "(Self* c_this, c_intptr slot);")
							// ret.WriteString(fmt.Sprintf("%s %s_Connect_%s(%s* self, intptr_t slot);\n", m.ReturnType.RenderTypeCabi(), methodPrefixName, m.SafeMethodName(), methodPrefixName))
						}
					} else {

						ret.WriteLine("[LinkName(" + `"` + cMethodName + `"` + ")]")
						ret.WriteLine("public static extern " + m.ReturnType.renderReturnTypeBeef(&bfs) + " " + cMethodName + "(" + bfs.emitParametersBeef2CABIForwarding(m, false) + ");")

					}
				}

				/*
					mSafeMethodName := m.SafeMethodName()
					// cSafeMethodName := mSafeMethodName

					if beefReservedWord(mSafeMethodName) {
						mSafeMethodName = "_" + mSafeMethodName
					}

					ret.WriteLine("")

					// Accessor
					ret.WriteString("public ")

					ret.WriteString(m.ReturnType.renderTypeForMethod())
					ret.WriteString(" ")
					ret.WriteString(mSafeMethodName)
					ret.WriteString("(" + bfs.emitParametersBeef(m.Parameters, false) + ")")

					// Method body
					ret.WriteLine("{")
					ret.IncreaseTab()
					{

					}
					ret.DecreaseTab()
					ret.WriteLine("}")

					ret.WriteEmptyLine()
				*/
			}
		}
		ret.DecreaseTab()
		ret.WriteLine("}")
	}

	bfSrc := ret.String()
	return bfSrc, nil
}
