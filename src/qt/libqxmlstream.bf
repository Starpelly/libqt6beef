using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QXmlStreamReader__TokenType
{
	NoToken = 0,
	Invalid = 1,
	StartDocument = 2,
	EndDocument = 3,
	StartElement = 4,
	EndElement = 5,
	Characters = 6,
	Comment = 7,
	DTD = 8,
	EntityReference = 9,
	ProcessingInstruction = 10,
}
[AllowDuplicates]
public enum QXmlStreamReader__ReadElementTextBehaviour
{
	ErrorOnUnexpectedElement = 0,
	IncludeChildElements = 1,
	SkipChildElements = 2,
}
[AllowDuplicates]
public enum QXmlStreamReader__Error
{
	NoError = 0,
	UnexpectedElementError = 1,
	CustomError = 2,
	NotWellFormedError = 3,
	PrematureEndOfDocumentError = 4,
}
public interface IQXmlStreamAttribute
{
	void* NativePtr { get; }
}
public struct QXmlStreamAttributePtr : IQXmlStreamAttribute, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QXmlStreamAttribute_new());
	}
	
	public void Dispose()
	{
		CQt.QXmlStreamAttribute_Delete(this.nativePtr);
	}
	
	public bool IsDefault()
	{
		return CQt.QXmlStreamAttribute_IsDefault(this.nativePtr);
	}
	
	public bool OperatorEqual(IQXmlStreamAttribute other)
	{
		return CQt.QXmlStreamAttribute_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQXmlStreamAttribute other)
	{
		return CQt.QXmlStreamAttribute_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void OperatorAssign(IQXmlStreamAttribute param1)
	{
		CQt.QXmlStreamAttribute_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QXmlStreamAttribute
{
	public QXmlStreamAttributePtr handle;
	
	public static implicit operator QXmlStreamAttributePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QXmlStreamAttributePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsDefault()
	{
		return this.handle.IsDefault();
	}
	
	public bool OperatorEqual(IQXmlStreamAttribute other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQXmlStreamAttribute other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public void OperatorAssign(IQXmlStreamAttribute param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
}
extension CQt
{
	[LinkName("QXmlStreamAttribute_new")]
	public static extern void* QXmlStreamAttribute_new();
	[LinkName("QXmlStreamAttribute_new2")]
	public static extern void* QXmlStreamAttribute_new2(libqt_string qualifiedName, libqt_string value);
	[LinkName("QXmlStreamAttribute_new3")]
	public static extern void* QXmlStreamAttribute_new3(libqt_string namespaceUri, libqt_string name, libqt_string value);
	[LinkName("QXmlStreamAttribute_new4")]
	public static extern void* QXmlStreamAttribute_new4(void* param1);
	[LinkName("QXmlStreamAttribute_IsDefault")]
	public static extern bool QXmlStreamAttribute_IsDefault(void* c_this);
	[LinkName("QXmlStreamAttribute_OperatorEqual")]
	public static extern bool QXmlStreamAttribute_OperatorEqual(void* c_this, void* other);
	[LinkName("QXmlStreamAttribute_OperatorNotEqual")]
	public static extern bool QXmlStreamAttribute_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QXmlStreamAttribute_OperatorAssign")]
	public static extern void QXmlStreamAttribute_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QXmlStreamAttribute_Delete")]
	public static extern void QXmlStreamAttribute_Delete(void* self);
}
public interface IQXmlStreamNamespaceDeclaration
{
	void* NativePtr { get; }
}
public struct QXmlStreamNamespaceDeclarationPtr : IQXmlStreamNamespaceDeclaration, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QXmlStreamNamespaceDeclaration_new());
	}
	
	public void Dispose()
	{
		CQt.QXmlStreamNamespaceDeclaration_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(IQXmlStreamNamespaceDeclaration other)
	{
		return CQt.QXmlStreamNamespaceDeclaration_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQXmlStreamNamespaceDeclaration other)
	{
		return CQt.QXmlStreamNamespaceDeclaration_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
}
public class QXmlStreamNamespaceDeclaration
{
	public QXmlStreamNamespaceDeclarationPtr handle;
	
	public static implicit operator QXmlStreamNamespaceDeclarationPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QXmlStreamNamespaceDeclarationPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool OperatorEqual(IQXmlStreamNamespaceDeclaration other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQXmlStreamNamespaceDeclaration other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
}
extension CQt
{
	[LinkName("QXmlStreamNamespaceDeclaration_new")]
	public static extern void* QXmlStreamNamespaceDeclaration_new();
	[LinkName("QXmlStreamNamespaceDeclaration_new2")]
	public static extern void* QXmlStreamNamespaceDeclaration_new2(libqt_string prefix, libqt_string namespaceUri);
	[LinkName("QXmlStreamNamespaceDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamNamespaceDeclaration_OperatorEqual(void* c_this, void* other);
	[LinkName("QXmlStreamNamespaceDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamNamespaceDeclaration_OperatorNotEqual(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QXmlStreamNamespaceDeclaration_Delete")]
	public static extern void QXmlStreamNamespaceDeclaration_Delete(void* self);
}
public interface IQXmlStreamNotationDeclaration
{
	void* NativePtr { get; }
}
public struct QXmlStreamNotationDeclarationPtr : IQXmlStreamNotationDeclaration, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QXmlStreamNotationDeclaration_new());
	}
	
	public void Dispose()
	{
		CQt.QXmlStreamNotationDeclaration_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(IQXmlStreamNotationDeclaration other)
	{
		return CQt.QXmlStreamNotationDeclaration_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQXmlStreamNotationDeclaration other)
	{
		return CQt.QXmlStreamNotationDeclaration_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
}
public class QXmlStreamNotationDeclaration
{
	public QXmlStreamNotationDeclarationPtr handle;
	
	public static implicit operator QXmlStreamNotationDeclarationPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QXmlStreamNotationDeclarationPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool OperatorEqual(IQXmlStreamNotationDeclaration other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQXmlStreamNotationDeclaration other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
}
extension CQt
{
	[LinkName("QXmlStreamNotationDeclaration_new")]
	public static extern void* QXmlStreamNotationDeclaration_new();
	[LinkName("QXmlStreamNotationDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamNotationDeclaration_OperatorEqual(void* c_this, void* other);
	[LinkName("QXmlStreamNotationDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamNotationDeclaration_OperatorNotEqual(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QXmlStreamNotationDeclaration_Delete")]
	public static extern void QXmlStreamNotationDeclaration_Delete(void* self);
}
public interface IQXmlStreamEntityDeclaration
{
	void* NativePtr { get; }
}
public struct QXmlStreamEntityDeclarationPtr : IQXmlStreamEntityDeclaration, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QXmlStreamEntityDeclaration_new());
	}
	
	public void Dispose()
	{
		CQt.QXmlStreamEntityDeclaration_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(IQXmlStreamEntityDeclaration other)
	{
		return CQt.QXmlStreamEntityDeclaration_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQXmlStreamEntityDeclaration other)
	{
		return CQt.QXmlStreamEntityDeclaration_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
}
public class QXmlStreamEntityDeclaration
{
	public QXmlStreamEntityDeclarationPtr handle;
	
	public static implicit operator QXmlStreamEntityDeclarationPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QXmlStreamEntityDeclarationPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool OperatorEqual(IQXmlStreamEntityDeclaration other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQXmlStreamEntityDeclaration other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
}
extension CQt
{
	[LinkName("QXmlStreamEntityDeclaration_new")]
	public static extern void* QXmlStreamEntityDeclaration_new();
	[LinkName("QXmlStreamEntityDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamEntityDeclaration_OperatorEqual(void* c_this, void* other);
	[LinkName("QXmlStreamEntityDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamEntityDeclaration_OperatorNotEqual(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QXmlStreamEntityDeclaration_Delete")]
	public static extern void QXmlStreamEntityDeclaration_Delete(void* self);
}
public interface IQXmlStreamEntityResolver
{
	void* NativePtr { get; }
}
public struct QXmlStreamEntityResolverPtr : IQXmlStreamEntityResolver, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QXmlStreamEntityResolver_Delete(this.nativePtr);
	}
	
	public libqt_string ResolveEntity(String publicId, String systemId)
	{
		return CQt.QXmlStreamEntityResolver_ResolveEntity(this.nativePtr, libqt_string(publicId), libqt_string(systemId));
	}
	
	public libqt_string ResolveUndeclaredEntity(String name)
	{
		return CQt.QXmlStreamEntityResolver_ResolveUndeclaredEntity(this.nativePtr, libqt_string(name));
	}
	
}
public class QXmlStreamEntityResolver
{
	public QXmlStreamEntityResolverPtr handle;
	
	public static implicit operator QXmlStreamEntityResolverPtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual libqt_string ResolveEntity(String publicId, String systemId)
	{
		return this.handle.ResolveEntity(publicId, systemId);
	}
	
	public virtual libqt_string ResolveUndeclaredEntity(String name)
	{
		return this.handle.ResolveUndeclaredEntity(name);
	}
	
}
extension CQt
{
	[LinkName("QXmlStreamEntityResolver_ResolveEntity")]
	public static extern libqt_string QXmlStreamEntityResolver_ResolveEntity(void* c_this, libqt_string publicId, libqt_string systemId);
	[LinkName("QXmlStreamEntityResolver_ResolveUndeclaredEntity")]
	public static extern libqt_string QXmlStreamEntityResolver_ResolveUndeclaredEntity(void* c_this, libqt_string name);
	/// Delete this object from C++ memory
	[LinkName("QXmlStreamEntityResolver_Delete")]
	public static extern void QXmlStreamEntityResolver_Delete(void* self);
}
public interface IQXmlStreamReader
{
	void* NativePtr { get; }
}
public struct QXmlStreamReaderPtr : IQXmlStreamReader, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QXmlStreamReader_new());
	}
	
	public void Dispose()
	{
		CQt.QXmlStreamReader_Delete(this.nativePtr);
	}
	
	public void SetDevice(IQIODevice device)
	{
		CQt.QXmlStreamReader_SetDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QXmlStreamReader_Device(this.nativePtr);
	}
	
	public void AddData(String data)
	{
		CQt.QXmlStreamReader_AddData(this.nativePtr, libqt_string(data));
	}
	
	public void AddDataWithData(String data)
	{
		CQt.QXmlStreamReader_AddDataWithData(this.nativePtr, libqt_string(data));
	}
	
	public void AddData2(char8* data)
	{
		CQt.QXmlStreamReader_AddData2(this.nativePtr, data);
	}
	
	public void Clear()
	{
		CQt.QXmlStreamReader_Clear(this.nativePtr);
	}
	
	public bool AtEnd()
	{
		return CQt.QXmlStreamReader_AtEnd(this.nativePtr);
	}
	
	public int64 ReadNext()
	{
		return CQt.QXmlStreamReader_ReadNext(this.nativePtr);
	}
	
	public bool ReadNextStartElement()
	{
		return CQt.QXmlStreamReader_ReadNextStartElement(this.nativePtr);
	}
	
	public void SkipCurrentElement()
	{
		CQt.QXmlStreamReader_SkipCurrentElement(this.nativePtr);
	}
	
	public int64 TokenType()
	{
		return CQt.QXmlStreamReader_TokenType(this.nativePtr);
	}
	
	public libqt_string TokenString()
	{
		return CQt.QXmlStreamReader_TokenString(this.nativePtr);
	}
	
	public void SetNamespaceProcessing(bool namespaceProcessing)
	{
		CQt.QXmlStreamReader_SetNamespaceProcessing(this.nativePtr, namespaceProcessing);
	}
	
	public bool NamespaceProcessing()
	{
		return CQt.QXmlStreamReader_NamespaceProcessing(this.nativePtr);
	}
	
	public bool IsStartDocument()
	{
		return CQt.QXmlStreamReader_IsStartDocument(this.nativePtr);
	}
	
	public bool IsEndDocument()
	{
		return CQt.QXmlStreamReader_IsEndDocument(this.nativePtr);
	}
	
	public bool IsStartElement()
	{
		return CQt.QXmlStreamReader_IsStartElement(this.nativePtr);
	}
	
	public bool IsEndElement()
	{
		return CQt.QXmlStreamReader_IsEndElement(this.nativePtr);
	}
	
	public bool IsCharacters()
	{
		return CQt.QXmlStreamReader_IsCharacters(this.nativePtr);
	}
	
	public bool IsWhitespace()
	{
		return CQt.QXmlStreamReader_IsWhitespace(this.nativePtr);
	}
	
	public bool IsCDATA()
	{
		return CQt.QXmlStreamReader_IsCDATA(this.nativePtr);
	}
	
	public bool IsComment()
	{
		return CQt.QXmlStreamReader_IsComment(this.nativePtr);
	}
	
	public bool IsDTD()
	{
		return CQt.QXmlStreamReader_IsDTD(this.nativePtr);
	}
	
	public bool IsEntityReference()
	{
		return CQt.QXmlStreamReader_IsEntityReference(this.nativePtr);
	}
	
	public bool IsProcessingInstruction()
	{
		return CQt.QXmlStreamReader_IsProcessingInstruction(this.nativePtr);
	}
	
	public bool IsStandaloneDocument()
	{
		return CQt.QXmlStreamReader_IsStandaloneDocument(this.nativePtr);
	}
	
	public int64 LineNumber()
	{
		return CQt.QXmlStreamReader_LineNumber(this.nativePtr);
	}
	
	public int64 ColumnNumber()
	{
		return CQt.QXmlStreamReader_ColumnNumber(this.nativePtr);
	}
	
	public int64 CharacterOffset()
	{
		return CQt.QXmlStreamReader_CharacterOffset(this.nativePtr);
	}
	
	public libqt_string ReadElementText()
	{
		return CQt.QXmlStreamReader_ReadElementText(this.nativePtr);
	}
	
	public void[] NamespaceDeclarations()
	{
		return CQt.QXmlStreamReader_NamespaceDeclarations(this.nativePtr);
	}
	
	public void AddExtraNamespaceDeclaration(IQXmlStreamNamespaceDeclaration extraNamespaceDeclaraction)
	{
		CQt.QXmlStreamReader_AddExtraNamespaceDeclaration(this.nativePtr, (extraNamespaceDeclaraction == default || extraNamespaceDeclaraction.NativePtr == default) ? default : extraNamespaceDeclaraction.NativePtr);
	}
	
	public void AddExtraNamespaceDeclarations(IQXmlStreamNamespaceDeclaration[] extraNamespaceDeclaractions)
	{
		CQt.QXmlStreamReader_AddExtraNamespaceDeclarations(this.nativePtr, null);
	}
	
	public void[] NotationDeclarations()
	{
		return CQt.QXmlStreamReader_NotationDeclarations(this.nativePtr);
	}
	
	public void[] EntityDeclarations()
	{
		return CQt.QXmlStreamReader_EntityDeclarations(this.nativePtr);
	}
	
	public int32 EntityExpansionLimit()
	{
		return CQt.QXmlStreamReader_EntityExpansionLimit(this.nativePtr);
	}
	
	public void SetEntityExpansionLimit(int32 limit)
	{
		CQt.QXmlStreamReader_SetEntityExpansionLimit(this.nativePtr, limit);
	}
	
	public void RaiseError()
	{
		CQt.QXmlStreamReader_RaiseError(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QXmlStreamReader_ErrorString(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QXmlStreamReader_Error(this.nativePtr);
	}
	
	public bool HasError()
	{
		return CQt.QXmlStreamReader_HasError(this.nativePtr);
	}
	
	public void SetEntityResolver(IQXmlStreamEntityResolver resolver)
	{
		CQt.QXmlStreamReader_SetEntityResolver(this.nativePtr, (resolver == default || resolver.NativePtr == default) ? default : resolver.NativePtr);
	}
	
	public void* EntityResolver()
	{
		return CQt.QXmlStreamReader_EntityResolver(this.nativePtr);
	}
	
	public libqt_string ReadElementText1(int64 behaviour)
	{
		return CQt.QXmlStreamReader_ReadElementText1(this.nativePtr, (int64)behaviour);
	}
	
	public void RaiseError1(String message)
	{
		CQt.QXmlStreamReader_RaiseError1(this.nativePtr, libqt_string(message));
	}
	
}
public class QXmlStreamReader
{
	public QXmlStreamReaderPtr handle;
	
	public static implicit operator QXmlStreamReaderPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QXmlStreamReaderPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void SetDevice(IQIODevice device)
	{
		this.handle.SetDevice(device);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public void AddData(String data)
	{
		this.handle.AddData(data);
	}
	
	public void AddDataWithData(String data)
	{
		this.handle.AddDataWithData(data);
	}
	
	public void AddData2(char8* data)
	{
		this.handle.AddData2(data);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public bool AtEnd()
	{
		return this.handle.AtEnd();
	}
	
	public int64 ReadNext()
	{
		return this.handle.ReadNext();
	}
	
	public bool ReadNextStartElement()
	{
		return this.handle.ReadNextStartElement();
	}
	
	public void SkipCurrentElement()
	{
		this.handle.SkipCurrentElement();
	}
	
	public int64 TokenType()
	{
		return this.handle.TokenType();
	}
	
	public libqt_string TokenString()
	{
		return this.handle.TokenString();
	}
	
	public void SetNamespaceProcessing(bool namespaceProcessing)
	{
		this.handle.SetNamespaceProcessing(namespaceProcessing);
	}
	
	public bool NamespaceProcessing()
	{
		return this.handle.NamespaceProcessing();
	}
	
	public bool IsStartDocument()
	{
		return this.handle.IsStartDocument();
	}
	
	public bool IsEndDocument()
	{
		return this.handle.IsEndDocument();
	}
	
	public bool IsStartElement()
	{
		return this.handle.IsStartElement();
	}
	
	public bool IsEndElement()
	{
		return this.handle.IsEndElement();
	}
	
	public bool IsCharacters()
	{
		return this.handle.IsCharacters();
	}
	
	public bool IsWhitespace()
	{
		return this.handle.IsWhitespace();
	}
	
	public bool IsCDATA()
	{
		return this.handle.IsCDATA();
	}
	
	public bool IsComment()
	{
		return this.handle.IsComment();
	}
	
	public bool IsDTD()
	{
		return this.handle.IsDTD();
	}
	
	public bool IsEntityReference()
	{
		return this.handle.IsEntityReference();
	}
	
	public bool IsProcessingInstruction()
	{
		return this.handle.IsProcessingInstruction();
	}
	
	public bool IsStandaloneDocument()
	{
		return this.handle.IsStandaloneDocument();
	}
	
	public int64 LineNumber()
	{
		return this.handle.LineNumber();
	}
	
	public int64 ColumnNumber()
	{
		return this.handle.ColumnNumber();
	}
	
	public int64 CharacterOffset()
	{
		return this.handle.CharacterOffset();
	}
	
	public libqt_string ReadElementText()
	{
		return this.handle.ReadElementText();
	}
	
	public void[] NamespaceDeclarations()
	{
		return this.handle.NamespaceDeclarations();
	}
	
	public void AddExtraNamespaceDeclaration(IQXmlStreamNamespaceDeclaration extraNamespaceDeclaraction)
	{
		this.handle.AddExtraNamespaceDeclaration(extraNamespaceDeclaraction);
	}
	
	public void AddExtraNamespaceDeclarations(IQXmlStreamNamespaceDeclaration[] extraNamespaceDeclaractions)
	{
		this.handle.AddExtraNamespaceDeclarations(null);
	}
	
	public void[] NotationDeclarations()
	{
		return this.handle.NotationDeclarations();
	}
	
	public void[] EntityDeclarations()
	{
		return this.handle.EntityDeclarations();
	}
	
	public int32 EntityExpansionLimit()
	{
		return this.handle.EntityExpansionLimit();
	}
	
	public void SetEntityExpansionLimit(int32 limit)
	{
		this.handle.SetEntityExpansionLimit(limit);
	}
	
	public void RaiseError()
	{
		this.handle.RaiseError();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public bool HasError()
	{
		return this.handle.HasError();
	}
	
	public void SetEntityResolver(IQXmlStreamEntityResolver resolver)
	{
		this.handle.SetEntityResolver(resolver);
	}
	
	public void* EntityResolver()
	{
		return this.handle.EntityResolver();
	}
	
	public libqt_string ReadElementText1(int64 behaviour)
	{
		return this.handle.ReadElementText1(behaviour);
	}
	
	public void RaiseError1(String message)
	{
		this.handle.RaiseError1(message);
	}
	
}
extension CQt
{
	[LinkName("QXmlStreamReader_new")]
	public static extern void* QXmlStreamReader_new();
	[LinkName("QXmlStreamReader_new2")]
	public static extern void* QXmlStreamReader_new2(void* device);
	[LinkName("QXmlStreamReader_new3")]
	public static extern void* QXmlStreamReader_new3(libqt_string data);
	[LinkName("QXmlStreamReader_new4")]
	public static extern void* QXmlStreamReader_new4(libqt_string data);
	[LinkName("QXmlStreamReader_new5")]
	public static extern void* QXmlStreamReader_new5(char8* data);
	[LinkName("QXmlStreamReader_SetDevice")]
	public static extern void QXmlStreamReader_SetDevice(void* c_this, void* device);
	[LinkName("QXmlStreamReader_Device")]
	public static extern void* QXmlStreamReader_Device(void* c_this);
	[LinkName("QXmlStreamReader_AddData")]
	public static extern void QXmlStreamReader_AddData(void* c_this, libqt_string data);
	[LinkName("QXmlStreamReader_AddDataWithData")]
	public static extern void QXmlStreamReader_AddDataWithData(void* c_this, libqt_string data);
	[LinkName("QXmlStreamReader_AddData2")]
	public static extern void QXmlStreamReader_AddData2(void* c_this, char8* data);
	[LinkName("QXmlStreamReader_Clear")]
	public static extern void QXmlStreamReader_Clear(void* c_this);
	[LinkName("QXmlStreamReader_AtEnd")]
	public static extern bool QXmlStreamReader_AtEnd(void* c_this);
	[LinkName("QXmlStreamReader_ReadNext")]
	public static extern int64 QXmlStreamReader_ReadNext(void* c_this);
	[LinkName("QXmlStreamReader_ReadNextStartElement")]
	public static extern bool QXmlStreamReader_ReadNextStartElement(void* c_this);
	[LinkName("QXmlStreamReader_SkipCurrentElement")]
	public static extern void QXmlStreamReader_SkipCurrentElement(void* c_this);
	[LinkName("QXmlStreamReader_TokenType")]
	public static extern int64 QXmlStreamReader_TokenType(void* c_this);
	[LinkName("QXmlStreamReader_TokenString")]
	public static extern libqt_string QXmlStreamReader_TokenString(void* c_this);
	[LinkName("QXmlStreamReader_SetNamespaceProcessing")]
	public static extern void QXmlStreamReader_SetNamespaceProcessing(void* c_this, bool namespaceProcessing);
	[LinkName("QXmlStreamReader_NamespaceProcessing")]
	public static extern bool QXmlStreamReader_NamespaceProcessing(void* c_this);
	[LinkName("QXmlStreamReader_IsStartDocument")]
	public static extern bool QXmlStreamReader_IsStartDocument(void* c_this);
	[LinkName("QXmlStreamReader_IsEndDocument")]
	public static extern bool QXmlStreamReader_IsEndDocument(void* c_this);
	[LinkName("QXmlStreamReader_IsStartElement")]
	public static extern bool QXmlStreamReader_IsStartElement(void* c_this);
	[LinkName("QXmlStreamReader_IsEndElement")]
	public static extern bool QXmlStreamReader_IsEndElement(void* c_this);
	[LinkName("QXmlStreamReader_IsCharacters")]
	public static extern bool QXmlStreamReader_IsCharacters(void* c_this);
	[LinkName("QXmlStreamReader_IsWhitespace")]
	public static extern bool QXmlStreamReader_IsWhitespace(void* c_this);
	[LinkName("QXmlStreamReader_IsCDATA")]
	public static extern bool QXmlStreamReader_IsCDATA(void* c_this);
	[LinkName("QXmlStreamReader_IsComment")]
	public static extern bool QXmlStreamReader_IsComment(void* c_this);
	[LinkName("QXmlStreamReader_IsDTD")]
	public static extern bool QXmlStreamReader_IsDTD(void* c_this);
	[LinkName("QXmlStreamReader_IsEntityReference")]
	public static extern bool QXmlStreamReader_IsEntityReference(void* c_this);
	[LinkName("QXmlStreamReader_IsProcessingInstruction")]
	public static extern bool QXmlStreamReader_IsProcessingInstruction(void* c_this);
	[LinkName("QXmlStreamReader_IsStandaloneDocument")]
	public static extern bool QXmlStreamReader_IsStandaloneDocument(void* c_this);
	[LinkName("QXmlStreamReader_LineNumber")]
	public static extern int64 QXmlStreamReader_LineNumber(void* c_this);
	[LinkName("QXmlStreamReader_ColumnNumber")]
	public static extern int64 QXmlStreamReader_ColumnNumber(void* c_this);
	[LinkName("QXmlStreamReader_CharacterOffset")]
	public static extern int64 QXmlStreamReader_CharacterOffset(void* c_this);
	[LinkName("QXmlStreamReader_ReadElementText")]
	public static extern libqt_string QXmlStreamReader_ReadElementText(void* c_this);
	[LinkName("QXmlStreamReader_NamespaceDeclarations")]
	public static extern void[] QXmlStreamReader_NamespaceDeclarations(void* c_this);
	[LinkName("QXmlStreamReader_AddExtraNamespaceDeclaration")]
	public static extern void QXmlStreamReader_AddExtraNamespaceDeclaration(void* c_this, void* extraNamespaceDeclaraction);
	[LinkName("QXmlStreamReader_AddExtraNamespaceDeclarations")]
	public static extern void QXmlStreamReader_AddExtraNamespaceDeclarations(void* c_this, void[] extraNamespaceDeclaractions);
	[LinkName("QXmlStreamReader_NotationDeclarations")]
	public static extern void[] QXmlStreamReader_NotationDeclarations(void* c_this);
	[LinkName("QXmlStreamReader_EntityDeclarations")]
	public static extern void[] QXmlStreamReader_EntityDeclarations(void* c_this);
	[LinkName("QXmlStreamReader_EntityExpansionLimit")]
	public static extern int32 QXmlStreamReader_EntityExpansionLimit(void* c_this);
	[LinkName("QXmlStreamReader_SetEntityExpansionLimit")]
	public static extern void QXmlStreamReader_SetEntityExpansionLimit(void* c_this, int32 limit);
	[LinkName("QXmlStreamReader_RaiseError")]
	public static extern void QXmlStreamReader_RaiseError(void* c_this);
	[LinkName("QXmlStreamReader_ErrorString")]
	public static extern libqt_string QXmlStreamReader_ErrorString(void* c_this);
	[LinkName("QXmlStreamReader_Error")]
	public static extern int64 QXmlStreamReader_Error(void* c_this);
	[LinkName("QXmlStreamReader_HasError")]
	public static extern bool QXmlStreamReader_HasError(void* c_this);
	[LinkName("QXmlStreamReader_SetEntityResolver")]
	public static extern void QXmlStreamReader_SetEntityResolver(void* c_this, void* resolver);
	[LinkName("QXmlStreamReader_EntityResolver")]
	public static extern void* QXmlStreamReader_EntityResolver(void* c_this);
	[LinkName("QXmlStreamReader_ReadElementText1")]
	public static extern libqt_string QXmlStreamReader_ReadElementText1(void* c_this, int64 behaviour);
	[LinkName("QXmlStreamReader_RaiseError1")]
	public static extern void QXmlStreamReader_RaiseError1(void* c_this, libqt_string message);
	/// Delete this object from C++ memory
	[LinkName("QXmlStreamReader_Delete")]
	public static extern void QXmlStreamReader_Delete(void* self);
}
public interface IQXmlStreamWriter
{
	void* NativePtr { get; }
}
public struct QXmlStreamWriterPtr : IQXmlStreamWriter, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QXmlStreamWriter_new());
	}
	
	public void Dispose()
	{
		CQt.QXmlStreamWriter_Delete(this.nativePtr);
	}
	
	public void SetDevice(IQIODevice device)
	{
		CQt.QXmlStreamWriter_SetDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QXmlStreamWriter_Device(this.nativePtr);
	}
	
	public void SetAutoFormatting(bool autoFormatting)
	{
		CQt.QXmlStreamWriter_SetAutoFormatting(this.nativePtr, autoFormatting);
	}
	
	public bool AutoFormatting()
	{
		return CQt.QXmlStreamWriter_AutoFormatting(this.nativePtr);
	}
	
	public void SetAutoFormattingIndent(int32 spacesOrTabs)
	{
		CQt.QXmlStreamWriter_SetAutoFormattingIndent(this.nativePtr, spacesOrTabs);
	}
	
	public int32 AutoFormattingIndent()
	{
		return CQt.QXmlStreamWriter_AutoFormattingIndent(this.nativePtr);
	}
	
	public void WriteAttribute(String qualifiedName, String value)
	{
		CQt.QXmlStreamWriter_WriteAttribute(this.nativePtr, libqt_string(qualifiedName), libqt_string(value));
	}
	
	public void WriteAttribute2(String namespaceUri, String name, String value)
	{
		CQt.QXmlStreamWriter_WriteAttribute2(this.nativePtr, libqt_string(namespaceUri), libqt_string(name), libqt_string(value));
	}
	
	public void WriteAttributeWithAttribute(IQXmlStreamAttribute attribute)
	{
		CQt.QXmlStreamWriter_WriteAttributeWithAttribute(this.nativePtr, (attribute == default || attribute.NativePtr == default) ? default : attribute.NativePtr);
	}
	
	public void WriteCDATA(String text)
	{
		CQt.QXmlStreamWriter_WriteCDATA(this.nativePtr, libqt_string(text));
	}
	
	public void WriteCharacters(String text)
	{
		CQt.QXmlStreamWriter_WriteCharacters(this.nativePtr, libqt_string(text));
	}
	
	public void WriteComment(String text)
	{
		CQt.QXmlStreamWriter_WriteComment(this.nativePtr, libqt_string(text));
	}
	
	public void WriteDTD(String dtd)
	{
		CQt.QXmlStreamWriter_WriteDTD(this.nativePtr, libqt_string(dtd));
	}
	
	public void WriteEmptyElement(String qualifiedName)
	{
		CQt.QXmlStreamWriter_WriteEmptyElement(this.nativePtr, libqt_string(qualifiedName));
	}
	
	public void WriteEmptyElement2(String namespaceUri, String name)
	{
		CQt.QXmlStreamWriter_WriteEmptyElement2(this.nativePtr, libqt_string(namespaceUri), libqt_string(name));
	}
	
	public void WriteTextElement(String qualifiedName, String text)
	{
		CQt.QXmlStreamWriter_WriteTextElement(this.nativePtr, libqt_string(qualifiedName), libqt_string(text));
	}
	
	public void WriteTextElement2(String namespaceUri, String name, String text)
	{
		CQt.QXmlStreamWriter_WriteTextElement2(this.nativePtr, libqt_string(namespaceUri), libqt_string(name), libqt_string(text));
	}
	
	public void WriteEndDocument()
	{
		CQt.QXmlStreamWriter_WriteEndDocument(this.nativePtr);
	}
	
	public void WriteEndElement()
	{
		CQt.QXmlStreamWriter_WriteEndElement(this.nativePtr);
	}
	
	public void WriteEntityReference(String name)
	{
		CQt.QXmlStreamWriter_WriteEntityReference(this.nativePtr, libqt_string(name));
	}
	
	public void WriteNamespace(String namespaceUri)
	{
		CQt.QXmlStreamWriter_WriteNamespace(this.nativePtr, libqt_string(namespaceUri));
	}
	
	public void WriteDefaultNamespace(String namespaceUri)
	{
		CQt.QXmlStreamWriter_WriteDefaultNamespace(this.nativePtr, libqt_string(namespaceUri));
	}
	
	public void WriteProcessingInstruction(String target)
	{
		CQt.QXmlStreamWriter_WriteProcessingInstruction(this.nativePtr, libqt_string(target));
	}
	
	public void WriteStartDocument()
	{
		CQt.QXmlStreamWriter_WriteStartDocument(this.nativePtr);
	}
	
	public void WriteStartDocumentWithVersion(String version)
	{
		CQt.QXmlStreamWriter_WriteStartDocumentWithVersion(this.nativePtr, libqt_string(version));
	}
	
	public void WriteStartDocument2(String version, bool standalone)
	{
		CQt.QXmlStreamWriter_WriteStartDocument2(this.nativePtr, libqt_string(version), standalone);
	}
	
	public void WriteStartElement(String qualifiedName)
	{
		CQt.QXmlStreamWriter_WriteStartElement(this.nativePtr, libqt_string(qualifiedName));
	}
	
	public void WriteStartElement2(String namespaceUri, String name)
	{
		CQt.QXmlStreamWriter_WriteStartElement2(this.nativePtr, libqt_string(namespaceUri), libqt_string(name));
	}
	
	public void WriteCurrentToken(IQXmlStreamReader reader)
	{
		CQt.QXmlStreamWriter_WriteCurrentToken(this.nativePtr, (reader == default || reader.NativePtr == default) ? default : reader.NativePtr);
	}
	
	public bool HasError()
	{
		return CQt.QXmlStreamWriter_HasError(this.nativePtr);
	}
	
	public void WriteNamespace2(String namespaceUri, String prefix)
	{
		CQt.QXmlStreamWriter_WriteNamespace2(this.nativePtr, libqt_string(namespaceUri), libqt_string(prefix));
	}
	
	public void WriteProcessingInstruction2(String target, String data)
	{
		CQt.QXmlStreamWriter_WriteProcessingInstruction2(this.nativePtr, libqt_string(target), libqt_string(data));
	}
	
}
public class QXmlStreamWriter
{
	public QXmlStreamWriterPtr handle;
	
	public static implicit operator QXmlStreamWriterPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QXmlStreamWriterPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void SetDevice(IQIODevice device)
	{
		this.handle.SetDevice(device);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public void SetAutoFormatting(bool autoFormatting)
	{
		this.handle.SetAutoFormatting(autoFormatting);
	}
	
	public bool AutoFormatting()
	{
		return this.handle.AutoFormatting();
	}
	
	public void SetAutoFormattingIndent(int32 spacesOrTabs)
	{
		this.handle.SetAutoFormattingIndent(spacesOrTabs);
	}
	
	public int32 AutoFormattingIndent()
	{
		return this.handle.AutoFormattingIndent();
	}
	
	public void WriteAttribute(String qualifiedName, String value)
	{
		this.handle.WriteAttribute(qualifiedName, value);
	}
	
	public void WriteAttribute2(String namespaceUri, String name, String value)
	{
		this.handle.WriteAttribute2(namespaceUri, name, value);
	}
	
	public void WriteAttributeWithAttribute(IQXmlStreamAttribute attribute)
	{
		this.handle.WriteAttributeWithAttribute(attribute);
	}
	
	public void WriteCDATA(String text)
	{
		this.handle.WriteCDATA(text);
	}
	
	public void WriteCharacters(String text)
	{
		this.handle.WriteCharacters(text);
	}
	
	public void WriteComment(String text)
	{
		this.handle.WriteComment(text);
	}
	
	public void WriteDTD(String dtd)
	{
		this.handle.WriteDTD(dtd);
	}
	
	public void WriteEmptyElement(String qualifiedName)
	{
		this.handle.WriteEmptyElement(qualifiedName);
	}
	
	public void WriteEmptyElement2(String namespaceUri, String name)
	{
		this.handle.WriteEmptyElement2(namespaceUri, name);
	}
	
	public void WriteTextElement(String qualifiedName, String text)
	{
		this.handle.WriteTextElement(qualifiedName, text);
	}
	
	public void WriteTextElement2(String namespaceUri, String name, String text)
	{
		this.handle.WriteTextElement2(namespaceUri, name, text);
	}
	
	public void WriteEndDocument()
	{
		this.handle.WriteEndDocument();
	}
	
	public void WriteEndElement()
	{
		this.handle.WriteEndElement();
	}
	
	public void WriteEntityReference(String name)
	{
		this.handle.WriteEntityReference(name);
	}
	
	public void WriteNamespace(String namespaceUri)
	{
		this.handle.WriteNamespace(namespaceUri);
	}
	
	public void WriteDefaultNamespace(String namespaceUri)
	{
		this.handle.WriteDefaultNamespace(namespaceUri);
	}
	
	public void WriteProcessingInstruction(String target)
	{
		this.handle.WriteProcessingInstruction(target);
	}
	
	public void WriteStartDocument()
	{
		this.handle.WriteStartDocument();
	}
	
	public void WriteStartDocumentWithVersion(String version)
	{
		this.handle.WriteStartDocumentWithVersion(version);
	}
	
	public void WriteStartDocument2(String version, bool standalone)
	{
		this.handle.WriteStartDocument2(version, standalone);
	}
	
	public void WriteStartElement(String qualifiedName)
	{
		this.handle.WriteStartElement(qualifiedName);
	}
	
	public void WriteStartElement2(String namespaceUri, String name)
	{
		this.handle.WriteStartElement2(namespaceUri, name);
	}
	
	public void WriteCurrentToken(IQXmlStreamReader reader)
	{
		this.handle.WriteCurrentToken(reader);
	}
	
	public bool HasError()
	{
		return this.handle.HasError();
	}
	
	public void WriteNamespace2(String namespaceUri, String prefix)
	{
		this.handle.WriteNamespace2(namespaceUri, prefix);
	}
	
	public void WriteProcessingInstruction2(String target, String data)
	{
		this.handle.WriteProcessingInstruction2(target, data);
	}
	
}
extension CQt
{
	[LinkName("QXmlStreamWriter_new")]
	public static extern void* QXmlStreamWriter_new();
	[LinkName("QXmlStreamWriter_new2")]
	public static extern void* QXmlStreamWriter_new2(void* device);
	[LinkName("QXmlStreamWriter_SetDevice")]
	public static extern void QXmlStreamWriter_SetDevice(void* c_this, void* device);
	[LinkName("QXmlStreamWriter_Device")]
	public static extern void* QXmlStreamWriter_Device(void* c_this);
	[LinkName("QXmlStreamWriter_SetAutoFormatting")]
	public static extern void QXmlStreamWriter_SetAutoFormatting(void* c_this, bool autoFormatting);
	[LinkName("QXmlStreamWriter_AutoFormatting")]
	public static extern bool QXmlStreamWriter_AutoFormatting(void* c_this);
	[LinkName("QXmlStreamWriter_SetAutoFormattingIndent")]
	public static extern void QXmlStreamWriter_SetAutoFormattingIndent(void* c_this, int32 spacesOrTabs);
	[LinkName("QXmlStreamWriter_AutoFormattingIndent")]
	public static extern int32 QXmlStreamWriter_AutoFormattingIndent(void* c_this);
	[LinkName("QXmlStreamWriter_WriteAttribute")]
	public static extern void QXmlStreamWriter_WriteAttribute(void* c_this, libqt_string qualifiedName, libqt_string value);
	[LinkName("QXmlStreamWriter_WriteAttribute2")]
	public static extern void QXmlStreamWriter_WriteAttribute2(void* c_this, libqt_string namespaceUri, libqt_string name, libqt_string value);
	[LinkName("QXmlStreamWriter_WriteAttributeWithAttribute")]
	public static extern void QXmlStreamWriter_WriteAttributeWithAttribute(void* c_this, void* attribute);
	[LinkName("QXmlStreamWriter_WriteCDATA")]
	public static extern void QXmlStreamWriter_WriteCDATA(void* c_this, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteCharacters")]
	public static extern void QXmlStreamWriter_WriteCharacters(void* c_this, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteComment")]
	public static extern void QXmlStreamWriter_WriteComment(void* c_this, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteDTD")]
	public static extern void QXmlStreamWriter_WriteDTD(void* c_this, libqt_string dtd);
	[LinkName("QXmlStreamWriter_WriteEmptyElement")]
	public static extern void QXmlStreamWriter_WriteEmptyElement(void* c_this, libqt_string qualifiedName);
	[LinkName("QXmlStreamWriter_WriteEmptyElement2")]
	public static extern void QXmlStreamWriter_WriteEmptyElement2(void* c_this, libqt_string namespaceUri, libqt_string name);
	[LinkName("QXmlStreamWriter_WriteTextElement")]
	public static extern void QXmlStreamWriter_WriteTextElement(void* c_this, libqt_string qualifiedName, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteTextElement2")]
	public static extern void QXmlStreamWriter_WriteTextElement2(void* c_this, libqt_string namespaceUri, libqt_string name, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteEndDocument")]
	public static extern void QXmlStreamWriter_WriteEndDocument(void* c_this);
	[LinkName("QXmlStreamWriter_WriteEndElement")]
	public static extern void QXmlStreamWriter_WriteEndElement(void* c_this);
	[LinkName("QXmlStreamWriter_WriteEntityReference")]
	public static extern void QXmlStreamWriter_WriteEntityReference(void* c_this, libqt_string name);
	[LinkName("QXmlStreamWriter_WriteNamespace")]
	public static extern void QXmlStreamWriter_WriteNamespace(void* c_this, libqt_string namespaceUri);
	[LinkName("QXmlStreamWriter_WriteDefaultNamespace")]
	public static extern void QXmlStreamWriter_WriteDefaultNamespace(void* c_this, libqt_string namespaceUri);
	[LinkName("QXmlStreamWriter_WriteProcessingInstruction")]
	public static extern void QXmlStreamWriter_WriteProcessingInstruction(void* c_this, libqt_string target);
	[LinkName("QXmlStreamWriter_WriteStartDocument")]
	public static extern void QXmlStreamWriter_WriteStartDocument(void* c_this);
	[LinkName("QXmlStreamWriter_WriteStartDocumentWithVersion")]
	public static extern void QXmlStreamWriter_WriteStartDocumentWithVersion(void* c_this, libqt_string version);
	[LinkName("QXmlStreamWriter_WriteStartDocument2")]
	public static extern void QXmlStreamWriter_WriteStartDocument2(void* c_this, libqt_string version, bool standalone);
	[LinkName("QXmlStreamWriter_WriteStartElement")]
	public static extern void QXmlStreamWriter_WriteStartElement(void* c_this, libqt_string qualifiedName);
	[LinkName("QXmlStreamWriter_WriteStartElement2")]
	public static extern void QXmlStreamWriter_WriteStartElement2(void* c_this, libqt_string namespaceUri, libqt_string name);
	[LinkName("QXmlStreamWriter_WriteCurrentToken")]
	public static extern void QXmlStreamWriter_WriteCurrentToken(void* c_this, void* reader);
	[LinkName("QXmlStreamWriter_HasError")]
	public static extern bool QXmlStreamWriter_HasError(void* c_this);
	[LinkName("QXmlStreamWriter_WriteNamespace2")]
	public static extern void QXmlStreamWriter_WriteNamespace2(void* c_this, libqt_string namespaceUri, libqt_string prefix);
	[LinkName("QXmlStreamWriter_WriteProcessingInstruction2")]
	public static extern void QXmlStreamWriter_WriteProcessingInstruction2(void* c_this, libqt_string target, libqt_string data);
	/// Delete this object from C++ memory
	[LinkName("QXmlStreamWriter_Delete")]
	public static extern void QXmlStreamWriter_Delete(void* self);
}