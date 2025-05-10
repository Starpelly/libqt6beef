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
public class QXmlStreamAttribute
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QXmlStreamAttribute_new();
	}
	
	public ~this()
	{
		CQt.QXmlStreamAttribute_Delete(this.nativePtr);
	}
	
	public bool IsDefault()
	{
		return CQt.QXmlStreamAttribute_IsDefault(this.nativePtr);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QXmlStreamAttribute_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QXmlStreamAttribute_OperatorNotEqual(this.nativePtr, other);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QXmlStreamAttribute_OperatorAssign(this.nativePtr, param1);
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
public class QXmlStreamNamespaceDeclaration
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QXmlStreamNamespaceDeclaration_new();
	}
	
	public ~this()
	{
		CQt.QXmlStreamNamespaceDeclaration_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QXmlStreamNamespaceDeclaration_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QXmlStreamNamespaceDeclaration_OperatorNotEqual(this.nativePtr, other);
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
public class QXmlStreamNotationDeclaration
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QXmlStreamNotationDeclaration_new();
	}
	
	public ~this()
	{
		CQt.QXmlStreamNotationDeclaration_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QXmlStreamNotationDeclaration_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QXmlStreamNotationDeclaration_OperatorNotEqual(this.nativePtr, other);
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
public class QXmlStreamEntityDeclaration
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QXmlStreamEntityDeclaration_new();
	}
	
	public ~this()
	{
		CQt.QXmlStreamEntityDeclaration_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QXmlStreamEntityDeclaration_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QXmlStreamEntityDeclaration_OperatorNotEqual(this.nativePtr, other);
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
public class QXmlStreamEntityResolver
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QXmlStreamEntityResolver_Delete(this.nativePtr);
	}
	
	public virtual libqt_string ResolveEntity(libqt_string publicId, libqt_string systemId)
	{
		return CQt.QXmlStreamEntityResolver_ResolveEntity(this.nativePtr, publicId, systemId);
	}
	
	public virtual libqt_string ResolveUndeclaredEntity(libqt_string name)
	{
		return CQt.QXmlStreamEntityResolver_ResolveUndeclaredEntity(this.nativePtr, name);
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
public class QXmlStreamReader
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QXmlStreamReader_new();
	}
	
	public ~this()
	{
		CQt.QXmlStreamReader_Delete(this.nativePtr);
	}
	
	public void SetDevice(void* device)
	{
		CQt.QXmlStreamReader_SetDevice(this.nativePtr, device);
	}
	
	public void* Device()
	{
		return CQt.QXmlStreamReader_Device(this.nativePtr);
	}
	
	public void AddData(libqt_string data)
	{
		CQt.QXmlStreamReader_AddData(this.nativePtr, data);
	}
	
	public void AddDataWithData(libqt_string data)
	{
		CQt.QXmlStreamReader_AddDataWithData(this.nativePtr, data);
	}
	
	public void AddData2(char8[] data)
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
	
	public void AddExtraNamespaceDeclaration(void* extraNamespaceDeclaraction)
	{
		CQt.QXmlStreamReader_AddExtraNamespaceDeclaration(this.nativePtr, extraNamespaceDeclaraction);
	}
	
	public void AddExtraNamespaceDeclarations(void[] extraNamespaceDeclaractions)
	{
		CQt.QXmlStreamReader_AddExtraNamespaceDeclarations(this.nativePtr, extraNamespaceDeclaractions);
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
	
	public void SetEntityResolver(void* resolver)
	{
		CQt.QXmlStreamReader_SetEntityResolver(this.nativePtr, resolver);
	}
	
	public void* EntityResolver()
	{
		return CQt.QXmlStreamReader_EntityResolver(this.nativePtr);
	}
	
	public libqt_string ReadElementText1(int64 behaviour)
	{
		return CQt.QXmlStreamReader_ReadElementText1(this.nativePtr, behaviour);
	}
	
	public void RaiseError1(libqt_string message)
	{
		CQt.QXmlStreamReader_RaiseError1(this.nativePtr, message);
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
	public static extern void* QXmlStreamReader_new5(char8[] data);
	[LinkName("QXmlStreamReader_SetDevice")]
	public static extern void QXmlStreamReader_SetDevice(void* c_this, void* device);
	[LinkName("QXmlStreamReader_Device")]
	public static extern void* QXmlStreamReader_Device(void* c_this);
	[LinkName("QXmlStreamReader_AddData")]
	public static extern void QXmlStreamReader_AddData(void* c_this, libqt_string data);
	[LinkName("QXmlStreamReader_AddDataWithData")]
	public static extern void QXmlStreamReader_AddDataWithData(void* c_this, libqt_string data);
	[LinkName("QXmlStreamReader_AddData2")]
	public static extern void QXmlStreamReader_AddData2(void* c_this, char8[] data);
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
public class QXmlStreamWriter
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QXmlStreamWriter_new();
	}
	
	public ~this()
	{
		CQt.QXmlStreamWriter_Delete(this.nativePtr);
	}
	
	public void SetDevice(void* device)
	{
		CQt.QXmlStreamWriter_SetDevice(this.nativePtr, device);
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
	
	public void WriteAttribute(libqt_string qualifiedName, libqt_string value)
	{
		CQt.QXmlStreamWriter_WriteAttribute(this.nativePtr, qualifiedName, value);
	}
	
	public void WriteAttribute2(libqt_string namespaceUri, libqt_string name, libqt_string value)
	{
		CQt.QXmlStreamWriter_WriteAttribute2(this.nativePtr, namespaceUri, name, value);
	}
	
	public void WriteAttributeWithAttribute(void* attribute)
	{
		CQt.QXmlStreamWriter_WriteAttributeWithAttribute(this.nativePtr, attribute);
	}
	
	public void WriteCDATA(libqt_string text)
	{
		CQt.QXmlStreamWriter_WriteCDATA(this.nativePtr, text);
	}
	
	public void WriteCharacters(libqt_string text)
	{
		CQt.QXmlStreamWriter_WriteCharacters(this.nativePtr, text);
	}
	
	public void WriteComment(libqt_string text)
	{
		CQt.QXmlStreamWriter_WriteComment(this.nativePtr, text);
	}
	
	public void WriteDTD(libqt_string dtd)
	{
		CQt.QXmlStreamWriter_WriteDTD(this.nativePtr, dtd);
	}
	
	public void WriteEmptyElement(libqt_string qualifiedName)
	{
		CQt.QXmlStreamWriter_WriteEmptyElement(this.nativePtr, qualifiedName);
	}
	
	public void WriteEmptyElement2(libqt_string namespaceUri, libqt_string name)
	{
		CQt.QXmlStreamWriter_WriteEmptyElement2(this.nativePtr, namespaceUri, name);
	}
	
	public void WriteTextElement(libqt_string qualifiedName, libqt_string text)
	{
		CQt.QXmlStreamWriter_WriteTextElement(this.nativePtr, qualifiedName, text);
	}
	
	public void WriteTextElement2(libqt_string namespaceUri, libqt_string name, libqt_string text)
	{
		CQt.QXmlStreamWriter_WriteTextElement2(this.nativePtr, namespaceUri, name, text);
	}
	
	public void WriteEndDocument()
	{
		CQt.QXmlStreamWriter_WriteEndDocument(this.nativePtr);
	}
	
	public void WriteEndElement()
	{
		CQt.QXmlStreamWriter_WriteEndElement(this.nativePtr);
	}
	
	public void WriteEntityReference(libqt_string name)
	{
		CQt.QXmlStreamWriter_WriteEntityReference(this.nativePtr, name);
	}
	
	public void WriteNamespace(libqt_string namespaceUri)
	{
		CQt.QXmlStreamWriter_WriteNamespace(this.nativePtr, namespaceUri);
	}
	
	public void WriteDefaultNamespace(libqt_string namespaceUri)
	{
		CQt.QXmlStreamWriter_WriteDefaultNamespace(this.nativePtr, namespaceUri);
	}
	
	public void WriteProcessingInstruction(libqt_string target)
	{
		CQt.QXmlStreamWriter_WriteProcessingInstruction(this.nativePtr, target);
	}
	
	public void WriteStartDocument()
	{
		CQt.QXmlStreamWriter_WriteStartDocument(this.nativePtr);
	}
	
	public void WriteStartDocumentWithVersion(libqt_string version)
	{
		CQt.QXmlStreamWriter_WriteStartDocumentWithVersion(this.nativePtr, version);
	}
	
	public void WriteStartDocument2(libqt_string version, bool standalone)
	{
		CQt.QXmlStreamWriter_WriteStartDocument2(this.nativePtr, version, standalone);
	}
	
	public void WriteStartElement(libqt_string qualifiedName)
	{
		CQt.QXmlStreamWriter_WriteStartElement(this.nativePtr, qualifiedName);
	}
	
	public void WriteStartElement2(libqt_string namespaceUri, libqt_string name)
	{
		CQt.QXmlStreamWriter_WriteStartElement2(this.nativePtr, namespaceUri, name);
	}
	
	public void WriteCurrentToken(void* reader)
	{
		CQt.QXmlStreamWriter_WriteCurrentToken(this.nativePtr, reader);
	}
	
	public bool HasError()
	{
		return CQt.QXmlStreamWriter_HasError(this.nativePtr);
	}
	
	public void WriteNamespace2(libqt_string namespaceUri, libqt_string prefix)
	{
		CQt.QXmlStreamWriter_WriteNamespace2(this.nativePtr, namespaceUri, prefix);
	}
	
	public void WriteProcessingInstruction2(libqt_string target, libqt_string data)
	{
		CQt.QXmlStreamWriter_WriteProcessingInstruction2(this.nativePtr, target, data);
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