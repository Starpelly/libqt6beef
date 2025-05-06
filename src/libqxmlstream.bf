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
public struct QXmlStreamAttribute
{
	[LinkName("QXmlStreamAttribute_new")]
	public static extern void* QXmlStreamAttribute_new();
	[LinkName("QXmlStreamAttribute_new2")]
	public static extern void* QXmlStreamAttribute_new2(char8[] qualifiedName, char8[] value);
	[LinkName("QXmlStreamAttribute_new3")]
	public static extern void* QXmlStreamAttribute_new3(char8[] namespaceUri, char8[] name, char8[] value);
	[LinkName("QXmlStreamAttribute_new4")]
	public static extern void* QXmlStreamAttribute_new4(QXmlStreamAttribute param1);
	[LinkName("QXmlStreamAttribute_IsDefault")]
	public static extern bool QXmlStreamAttribute_IsDefault(void* c_this);
	[LinkName("QXmlStreamAttribute_OperatorEqual")]
	public static extern bool QXmlStreamAttribute_OperatorEqual(void* c_this, QXmlStreamAttribute other);
	[LinkName("QXmlStreamAttribute_OperatorNotEqual")]
	public static extern bool QXmlStreamAttribute_OperatorNotEqual(void* c_this, QXmlStreamAttribute other);
	[LinkName("QXmlStreamAttribute_OperatorAssign")]
	public static extern void QXmlStreamAttribute_OperatorAssign(void* c_this, QXmlStreamAttribute param1);
}
public struct QXmlStreamNamespaceDeclaration
{
	[LinkName("QXmlStreamNamespaceDeclaration_new")]
	public static extern void* QXmlStreamNamespaceDeclaration_new();
	[LinkName("QXmlStreamNamespaceDeclaration_new2")]
	public static extern void* QXmlStreamNamespaceDeclaration_new2(char8[] prefix, char8[] namespaceUri);
	[LinkName("QXmlStreamNamespaceDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamNamespaceDeclaration_OperatorEqual(void* c_this, QXmlStreamNamespaceDeclaration other);
	[LinkName("QXmlStreamNamespaceDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamNamespaceDeclaration_OperatorNotEqual(void* c_this, QXmlStreamNamespaceDeclaration other);
}
public struct QXmlStreamNotationDeclaration
{
	[LinkName("QXmlStreamNotationDeclaration_new")]
	public static extern void* QXmlStreamNotationDeclaration_new();
	[LinkName("QXmlStreamNotationDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamNotationDeclaration_OperatorEqual(void* c_this, QXmlStreamNotationDeclaration other);
	[LinkName("QXmlStreamNotationDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamNotationDeclaration_OperatorNotEqual(void* c_this, QXmlStreamNotationDeclaration other);
}
public struct QXmlStreamEntityDeclaration
{
	[LinkName("QXmlStreamEntityDeclaration_new")]
	public static extern void* QXmlStreamEntityDeclaration_new();
	[LinkName("QXmlStreamEntityDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamEntityDeclaration_OperatorEqual(void* c_this, QXmlStreamEntityDeclaration other);
	[LinkName("QXmlStreamEntityDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamEntityDeclaration_OperatorNotEqual(void* c_this, QXmlStreamEntityDeclaration other);
}
public struct QXmlStreamEntityResolver
{
	[LinkName("QXmlStreamEntityResolver_ResolveEntity")]
	public static extern char8[] QXmlStreamEntityResolver_ResolveEntity(void* c_this, char8[] publicId, char8[] systemId);
	[LinkName("QXmlStreamEntityResolver_ResolveUndeclaredEntity")]
	public static extern char8[] QXmlStreamEntityResolver_ResolveUndeclaredEntity(void* c_this, char8[] name);
}
public struct QXmlStreamReader
{
	[LinkName("QXmlStreamReader_new")]
	public static extern void* QXmlStreamReader_new();
	[LinkName("QXmlStreamReader_new2")]
	public static extern void* QXmlStreamReader_new2(QIODevice device);
	[LinkName("QXmlStreamReader_new3")]
	public static extern void* QXmlStreamReader_new3(uint8[] data);
	[LinkName("QXmlStreamReader_new4")]
	public static extern void* QXmlStreamReader_new4(char8[] data);
	[LinkName("QXmlStreamReader_new5")]
	public static extern void* QXmlStreamReader_new5(char8[] data);
	[LinkName("QXmlStreamReader_SetDevice")]
	public static extern void QXmlStreamReader_SetDevice(void* c_this, QIODevice device);
	[LinkName("QXmlStreamReader_Device")]
	public static extern QIODevice QXmlStreamReader_Device(void* c_this);
	[LinkName("QXmlStreamReader_AddData")]
	public static extern void QXmlStreamReader_AddData(void* c_this, uint8[] data);
	[LinkName("QXmlStreamReader_AddDataWithData")]
	public static extern void QXmlStreamReader_AddDataWithData(void* c_this, char8[] data);
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
	public static extern char8[] QXmlStreamReader_TokenString(void* c_this);
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
	public static extern char8[] QXmlStreamReader_ReadElementText(void* c_this);
	[LinkName("QXmlStreamReader_NamespaceDeclarations")]
	public static extern QXmlStreamNamespaceDeclaration[] QXmlStreamReader_NamespaceDeclarations(void* c_this);
	[LinkName("QXmlStreamReader_AddExtraNamespaceDeclaration")]
	public static extern void QXmlStreamReader_AddExtraNamespaceDeclaration(void* c_this, QXmlStreamNamespaceDeclaration extraNamespaceDeclaraction);
	[LinkName("QXmlStreamReader_AddExtraNamespaceDeclarations")]
	public static extern void QXmlStreamReader_AddExtraNamespaceDeclarations(void* c_this, QXmlStreamNamespaceDeclaration[] extraNamespaceDeclaractions);
	[LinkName("QXmlStreamReader_NotationDeclarations")]
	public static extern QXmlStreamNotationDeclaration[] QXmlStreamReader_NotationDeclarations(void* c_this);
	[LinkName("QXmlStreamReader_EntityDeclarations")]
	public static extern QXmlStreamEntityDeclaration[] QXmlStreamReader_EntityDeclarations(void* c_this);
	[LinkName("QXmlStreamReader_EntityExpansionLimit")]
	public static extern int32 QXmlStreamReader_EntityExpansionLimit(void* c_this);
	[LinkName("QXmlStreamReader_SetEntityExpansionLimit")]
	public static extern void QXmlStreamReader_SetEntityExpansionLimit(void* c_this, int32 limit);
	[LinkName("QXmlStreamReader_RaiseError")]
	public static extern void QXmlStreamReader_RaiseError(void* c_this);
	[LinkName("QXmlStreamReader_ErrorString")]
	public static extern char8[] QXmlStreamReader_ErrorString(void* c_this);
	[LinkName("QXmlStreamReader_Error")]
	public static extern int64 QXmlStreamReader_Error(void* c_this);
	[LinkName("QXmlStreamReader_HasError")]
	public static extern bool QXmlStreamReader_HasError(void* c_this);
	[LinkName("QXmlStreamReader_SetEntityResolver")]
	public static extern void QXmlStreamReader_SetEntityResolver(void* c_this, QXmlStreamEntityResolver resolver);
	[LinkName("QXmlStreamReader_EntityResolver")]
	public static extern QXmlStreamEntityResolver QXmlStreamReader_EntityResolver(void* c_this);
	[LinkName("QXmlStreamReader_ReadElementText1")]
	public static extern char8[] QXmlStreamReader_ReadElementText1(void* c_this, int64 behaviour);
	[LinkName("QXmlStreamReader_RaiseError1")]
	public static extern void QXmlStreamReader_RaiseError1(void* c_this, char8[] message);
}
public struct QXmlStreamWriter
{
	[LinkName("QXmlStreamWriter_new")]
	public static extern void* QXmlStreamWriter_new();
	[LinkName("QXmlStreamWriter_new2")]
	public static extern void* QXmlStreamWriter_new2(QIODevice device);
	[LinkName("QXmlStreamWriter_SetDevice")]
	public static extern void QXmlStreamWriter_SetDevice(void* c_this, QIODevice device);
	[LinkName("QXmlStreamWriter_Device")]
	public static extern QIODevice QXmlStreamWriter_Device(void* c_this);
	[LinkName("QXmlStreamWriter_SetAutoFormatting")]
	public static extern void QXmlStreamWriter_SetAutoFormatting(void* c_this, bool autoFormatting);
	[LinkName("QXmlStreamWriter_AutoFormatting")]
	public static extern bool QXmlStreamWriter_AutoFormatting(void* c_this);
	[LinkName("QXmlStreamWriter_SetAutoFormattingIndent")]
	public static extern void QXmlStreamWriter_SetAutoFormattingIndent(void* c_this, int32 spacesOrTabs);
	[LinkName("QXmlStreamWriter_AutoFormattingIndent")]
	public static extern int32 QXmlStreamWriter_AutoFormattingIndent(void* c_this);
	[LinkName("QXmlStreamWriter_WriteAttribute")]
	public static extern void QXmlStreamWriter_WriteAttribute(void* c_this, char8[] qualifiedName, char8[] value);
	[LinkName("QXmlStreamWriter_WriteAttribute2")]
	public static extern void QXmlStreamWriter_WriteAttribute2(void* c_this, char8[] namespaceUri, char8[] name, char8[] value);
	[LinkName("QXmlStreamWriter_WriteAttributeWithAttribute")]
	public static extern void QXmlStreamWriter_WriteAttributeWithAttribute(void* c_this, QXmlStreamAttribute attribute);
	[LinkName("QXmlStreamWriter_WriteCDATA")]
	public static extern void QXmlStreamWriter_WriteCDATA(void* c_this, char8[] text);
	[LinkName("QXmlStreamWriter_WriteCharacters")]
	public static extern void QXmlStreamWriter_WriteCharacters(void* c_this, char8[] text);
	[LinkName("QXmlStreamWriter_WriteComment")]
	public static extern void QXmlStreamWriter_WriteComment(void* c_this, char8[] text);
	[LinkName("QXmlStreamWriter_WriteDTD")]
	public static extern void QXmlStreamWriter_WriteDTD(void* c_this, char8[] dtd);
	[LinkName("QXmlStreamWriter_WriteEmptyElement")]
	public static extern void QXmlStreamWriter_WriteEmptyElement(void* c_this, char8[] qualifiedName);
	[LinkName("QXmlStreamWriter_WriteEmptyElement2")]
	public static extern void QXmlStreamWriter_WriteEmptyElement2(void* c_this, char8[] namespaceUri, char8[] name);
	[LinkName("QXmlStreamWriter_WriteTextElement")]
	public static extern void QXmlStreamWriter_WriteTextElement(void* c_this, char8[] qualifiedName, char8[] text);
	[LinkName("QXmlStreamWriter_WriteTextElement2")]
	public static extern void QXmlStreamWriter_WriteTextElement2(void* c_this, char8[] namespaceUri, char8[] name, char8[] text);
	[LinkName("QXmlStreamWriter_WriteEndDocument")]
	public static extern void QXmlStreamWriter_WriteEndDocument(void* c_this);
	[LinkName("QXmlStreamWriter_WriteEndElement")]
	public static extern void QXmlStreamWriter_WriteEndElement(void* c_this);
	[LinkName("QXmlStreamWriter_WriteEntityReference")]
	public static extern void QXmlStreamWriter_WriteEntityReference(void* c_this, char8[] name);
	[LinkName("QXmlStreamWriter_WriteNamespace")]
	public static extern void QXmlStreamWriter_WriteNamespace(void* c_this, char8[] namespaceUri);
	[LinkName("QXmlStreamWriter_WriteDefaultNamespace")]
	public static extern void QXmlStreamWriter_WriteDefaultNamespace(void* c_this, char8[] namespaceUri);
	[LinkName("QXmlStreamWriter_WriteProcessingInstruction")]
	public static extern void QXmlStreamWriter_WriteProcessingInstruction(void* c_this, char8[] target);
	[LinkName("QXmlStreamWriter_WriteStartDocument")]
	public static extern void QXmlStreamWriter_WriteStartDocument(void* c_this);
	[LinkName("QXmlStreamWriter_WriteStartDocumentWithVersion")]
	public static extern void QXmlStreamWriter_WriteStartDocumentWithVersion(void* c_this, char8[] version);
	[LinkName("QXmlStreamWriter_WriteStartDocument2")]
	public static extern void QXmlStreamWriter_WriteStartDocument2(void* c_this, char8[] version, bool standalone);
	[LinkName("QXmlStreamWriter_WriteStartElement")]
	public static extern void QXmlStreamWriter_WriteStartElement(void* c_this, char8[] qualifiedName);
	[LinkName("QXmlStreamWriter_WriteStartElement2")]
	public static extern void QXmlStreamWriter_WriteStartElement2(void* c_this, char8[] namespaceUri, char8[] name);
	[LinkName("QXmlStreamWriter_WriteCurrentToken")]
	public static extern void QXmlStreamWriter_WriteCurrentToken(void* c_this, QXmlStreamReader reader);
	[LinkName("QXmlStreamWriter_HasError")]
	public static extern bool QXmlStreamWriter_HasError(void* c_this);
	[LinkName("QXmlStreamWriter_WriteNamespace2")]
	public static extern void QXmlStreamWriter_WriteNamespace2(void* c_this, char8[] namespaceUri, char8[] prefix);
	[LinkName("QXmlStreamWriter_WriteProcessingInstruction2")]
	public static extern void QXmlStreamWriter_WriteProcessingInstruction2(void* c_this, char8[] target, char8[] data);
}