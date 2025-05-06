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
	public static extern QXmlStreamAttribute* QXmlStreamAttribute_new();
	[LinkName("QXmlStreamAttribute_new2")]
	public static extern QXmlStreamAttribute* QXmlStreamAttribute_new2(libqt_string qualifiedName, libqt_string value);
	[LinkName("QXmlStreamAttribute_new3")]
	public static extern QXmlStreamAttribute* QXmlStreamAttribute_new3(libqt_string namespaceUri, libqt_string name, libqt_string value);
	[LinkName("QXmlStreamAttribute_new4")]
	public static extern QXmlStreamAttribute* QXmlStreamAttribute_new4(QXmlStreamAttribute* param1);
	[LinkName("QXmlStreamAttribute_IsDefault")]
	public static extern bool QXmlStreamAttribute_IsDefault(Self* c_this);
	[LinkName("QXmlStreamAttribute_OperatorEqual")]
	public static extern bool QXmlStreamAttribute_OperatorEqual(Self* c_this, QXmlStreamAttribute* other);
	[LinkName("QXmlStreamAttribute_OperatorNotEqual")]
	public static extern bool QXmlStreamAttribute_OperatorNotEqual(Self* c_this, QXmlStreamAttribute* other);
	[LinkName("QXmlStreamAttribute_OperatorAssign")]
	public static extern void QXmlStreamAttribute_OperatorAssign(Self* c_this, QXmlStreamAttribute* param1);
}
public struct QXmlStreamNamespaceDeclaration
{
	[LinkName("QXmlStreamNamespaceDeclaration_new")]
	public static extern QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new();
	[LinkName("QXmlStreamNamespaceDeclaration_new2")]
	public static extern QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new2(libqt_string prefix, libqt_string namespaceUri);
	[LinkName("QXmlStreamNamespaceDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamNamespaceDeclaration_OperatorEqual(Self* c_this, QXmlStreamNamespaceDeclaration* other);
	[LinkName("QXmlStreamNamespaceDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamNamespaceDeclaration_OperatorNotEqual(Self* c_this, QXmlStreamNamespaceDeclaration* other);
}
public struct QXmlStreamNotationDeclaration
{
	[LinkName("QXmlStreamNotationDeclaration_new")]
	public static extern QXmlStreamNotationDeclaration* QXmlStreamNotationDeclaration_new();
	[LinkName("QXmlStreamNotationDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamNotationDeclaration_OperatorEqual(Self* c_this, QXmlStreamNotationDeclaration* other);
	[LinkName("QXmlStreamNotationDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamNotationDeclaration_OperatorNotEqual(Self* c_this, QXmlStreamNotationDeclaration* other);
}
public struct QXmlStreamEntityDeclaration
{
	[LinkName("QXmlStreamEntityDeclaration_new")]
	public static extern QXmlStreamEntityDeclaration* QXmlStreamEntityDeclaration_new();
	[LinkName("QXmlStreamEntityDeclaration_OperatorEqual")]
	public static extern bool QXmlStreamEntityDeclaration_OperatorEqual(Self* c_this, QXmlStreamEntityDeclaration* other);
	[LinkName("QXmlStreamEntityDeclaration_OperatorNotEqual")]
	public static extern bool QXmlStreamEntityDeclaration_OperatorNotEqual(Self* c_this, QXmlStreamEntityDeclaration* other);
}
public struct QXmlStreamEntityResolver
{
	[LinkName("QXmlStreamEntityResolver_ResolveEntity")]
	public static extern libqt_string QXmlStreamEntityResolver_ResolveEntity(Self* c_this, libqt_string publicId, libqt_string systemId);
	[LinkName("QXmlStreamEntityResolver_ResolveUndeclaredEntity")]
	public static extern libqt_string QXmlStreamEntityResolver_ResolveUndeclaredEntity(Self* c_this, libqt_string name);
}
public struct QXmlStreamReader
{
	[LinkName("QXmlStreamReader_new")]
	public static extern QXmlStreamReader* QXmlStreamReader_new();
	[LinkName("QXmlStreamReader_new2")]
	public static extern QXmlStreamReader* QXmlStreamReader_new2(QIODevice* device);
	[LinkName("QXmlStreamReader_new3")]
	public static extern QXmlStreamReader* QXmlStreamReader_new3(libqt_string data);
	[LinkName("QXmlStreamReader_new4")]
	public static extern QXmlStreamReader* QXmlStreamReader_new4(libqt_string data);
	[LinkName("QXmlStreamReader_new5")]
	public static extern QXmlStreamReader* QXmlStreamReader_new5(char8[] data);
	[LinkName("QXmlStreamReader_SetDevice")]
	public static extern void QXmlStreamReader_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QXmlStreamReader_Device")]
	public static extern QIODevice* QXmlStreamReader_Device(Self* c_this);
	[LinkName("QXmlStreamReader_AddData")]
	public static extern void QXmlStreamReader_AddData(Self* c_this, libqt_string data);
	[LinkName("QXmlStreamReader_AddDataWithData")]
	public static extern void QXmlStreamReader_AddDataWithData(Self* c_this, libqt_string data);
	[LinkName("QXmlStreamReader_AddData2")]
	public static extern void QXmlStreamReader_AddData2(Self* c_this, char8[] data);
	[LinkName("QXmlStreamReader_Clear")]
	public static extern void QXmlStreamReader_Clear(Self* c_this);
	[LinkName("QXmlStreamReader_AtEnd")]
	public static extern bool QXmlStreamReader_AtEnd(Self* c_this);
	[LinkName("QXmlStreamReader_ReadNext")]
	public static extern int64 QXmlStreamReader_ReadNext(Self* c_this);
	[LinkName("QXmlStreamReader_ReadNextStartElement")]
	public static extern bool QXmlStreamReader_ReadNextStartElement(Self* c_this);
	[LinkName("QXmlStreamReader_SkipCurrentElement")]
	public static extern void QXmlStreamReader_SkipCurrentElement(Self* c_this);
	[LinkName("QXmlStreamReader_TokenType")]
	public static extern int64 QXmlStreamReader_TokenType(Self* c_this);
	[LinkName("QXmlStreamReader_TokenString")]
	public static extern libqt_string QXmlStreamReader_TokenString(Self* c_this);
	[LinkName("QXmlStreamReader_SetNamespaceProcessing")]
	public static extern void QXmlStreamReader_SetNamespaceProcessing(Self* c_this, bool namespaceProcessing);
	[LinkName("QXmlStreamReader_NamespaceProcessing")]
	public static extern bool QXmlStreamReader_NamespaceProcessing(Self* c_this);
	[LinkName("QXmlStreamReader_IsStartDocument")]
	public static extern bool QXmlStreamReader_IsStartDocument(Self* c_this);
	[LinkName("QXmlStreamReader_IsEndDocument")]
	public static extern bool QXmlStreamReader_IsEndDocument(Self* c_this);
	[LinkName("QXmlStreamReader_IsStartElement")]
	public static extern bool QXmlStreamReader_IsStartElement(Self* c_this);
	[LinkName("QXmlStreamReader_IsEndElement")]
	public static extern bool QXmlStreamReader_IsEndElement(Self* c_this);
	[LinkName("QXmlStreamReader_IsCharacters")]
	public static extern bool QXmlStreamReader_IsCharacters(Self* c_this);
	[LinkName("QXmlStreamReader_IsWhitespace")]
	public static extern bool QXmlStreamReader_IsWhitespace(Self* c_this);
	[LinkName("QXmlStreamReader_IsCDATA")]
	public static extern bool QXmlStreamReader_IsCDATA(Self* c_this);
	[LinkName("QXmlStreamReader_IsComment")]
	public static extern bool QXmlStreamReader_IsComment(Self* c_this);
	[LinkName("QXmlStreamReader_IsDTD")]
	public static extern bool QXmlStreamReader_IsDTD(Self* c_this);
	[LinkName("QXmlStreamReader_IsEntityReference")]
	public static extern bool QXmlStreamReader_IsEntityReference(Self* c_this);
	[LinkName("QXmlStreamReader_IsProcessingInstruction")]
	public static extern bool QXmlStreamReader_IsProcessingInstruction(Self* c_this);
	[LinkName("QXmlStreamReader_IsStandaloneDocument")]
	public static extern bool QXmlStreamReader_IsStandaloneDocument(Self* c_this);
	[LinkName("QXmlStreamReader_LineNumber")]
	public static extern int64 QXmlStreamReader_LineNumber(Self* c_this);
	[LinkName("QXmlStreamReader_ColumnNumber")]
	public static extern int64 QXmlStreamReader_ColumnNumber(Self* c_this);
	[LinkName("QXmlStreamReader_CharacterOffset")]
	public static extern int64 QXmlStreamReader_CharacterOffset(Self* c_this);
	[LinkName("QXmlStreamReader_ReadElementText")]
	public static extern libqt_string QXmlStreamReader_ReadElementText(Self* c_this);
	[LinkName("QXmlStreamReader_NamespaceDeclarations")]
	public static extern QXmlStreamNamespaceDeclaration[] QXmlStreamReader_NamespaceDeclarations(Self* c_this);
	[LinkName("QXmlStreamReader_AddExtraNamespaceDeclaration")]
	public static extern void QXmlStreamReader_AddExtraNamespaceDeclaration(Self* c_this, QXmlStreamNamespaceDeclaration* extraNamespaceDeclaraction);
	[LinkName("QXmlStreamReader_AddExtraNamespaceDeclarations")]
	public static extern void QXmlStreamReader_AddExtraNamespaceDeclarations(Self* c_this, QXmlStreamNamespaceDeclaration[] extraNamespaceDeclaractions);
	[LinkName("QXmlStreamReader_NotationDeclarations")]
	public static extern QXmlStreamNotationDeclaration[] QXmlStreamReader_NotationDeclarations(Self* c_this);
	[LinkName("QXmlStreamReader_EntityDeclarations")]
	public static extern QXmlStreamEntityDeclaration[] QXmlStreamReader_EntityDeclarations(Self* c_this);
	[LinkName("QXmlStreamReader_EntityExpansionLimit")]
	public static extern int32 QXmlStreamReader_EntityExpansionLimit(Self* c_this);
	[LinkName("QXmlStreamReader_SetEntityExpansionLimit")]
	public static extern void QXmlStreamReader_SetEntityExpansionLimit(Self* c_this, int32 limit);
	[LinkName("QXmlStreamReader_RaiseError")]
	public static extern void QXmlStreamReader_RaiseError(Self* c_this);
	[LinkName("QXmlStreamReader_ErrorString")]
	public static extern libqt_string QXmlStreamReader_ErrorString(Self* c_this);
	[LinkName("QXmlStreamReader_Error")]
	public static extern int64 QXmlStreamReader_Error(Self* c_this);
	[LinkName("QXmlStreamReader_HasError")]
	public static extern bool QXmlStreamReader_HasError(Self* c_this);
	[LinkName("QXmlStreamReader_SetEntityResolver")]
	public static extern void QXmlStreamReader_SetEntityResolver(Self* c_this, QXmlStreamEntityResolver* resolver);
	[LinkName("QXmlStreamReader_EntityResolver")]
	public static extern QXmlStreamEntityResolver* QXmlStreamReader_EntityResolver(Self* c_this);
	[LinkName("QXmlStreamReader_ReadElementText1")]
	public static extern libqt_string QXmlStreamReader_ReadElementText1(Self* c_this, int64 behaviour);
	[LinkName("QXmlStreamReader_RaiseError1")]
	public static extern void QXmlStreamReader_RaiseError1(Self* c_this, libqt_string message);
}
public struct QXmlStreamWriter
{
	[LinkName("QXmlStreamWriter_new")]
	public static extern QXmlStreamWriter* QXmlStreamWriter_new();
	[LinkName("QXmlStreamWriter_new2")]
	public static extern QXmlStreamWriter* QXmlStreamWriter_new2(QIODevice* device);
	[LinkName("QXmlStreamWriter_SetDevice")]
	public static extern void QXmlStreamWriter_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QXmlStreamWriter_Device")]
	public static extern QIODevice* QXmlStreamWriter_Device(Self* c_this);
	[LinkName("QXmlStreamWriter_SetAutoFormatting")]
	public static extern void QXmlStreamWriter_SetAutoFormatting(Self* c_this, bool autoFormatting);
	[LinkName("QXmlStreamWriter_AutoFormatting")]
	public static extern bool QXmlStreamWriter_AutoFormatting(Self* c_this);
	[LinkName("QXmlStreamWriter_SetAutoFormattingIndent")]
	public static extern void QXmlStreamWriter_SetAutoFormattingIndent(Self* c_this, int32 spacesOrTabs);
	[LinkName("QXmlStreamWriter_AutoFormattingIndent")]
	public static extern int32 QXmlStreamWriter_AutoFormattingIndent(Self* c_this);
	[LinkName("QXmlStreamWriter_WriteAttribute")]
	public static extern void QXmlStreamWriter_WriteAttribute(Self* c_this, libqt_string qualifiedName, libqt_string value);
	[LinkName("QXmlStreamWriter_WriteAttribute2")]
	public static extern void QXmlStreamWriter_WriteAttribute2(Self* c_this, libqt_string namespaceUri, libqt_string name, libqt_string value);
	[LinkName("QXmlStreamWriter_WriteAttributeWithAttribute")]
	public static extern void QXmlStreamWriter_WriteAttributeWithAttribute(Self* c_this, QXmlStreamAttribute* attribute);
	[LinkName("QXmlStreamWriter_WriteCDATA")]
	public static extern void QXmlStreamWriter_WriteCDATA(Self* c_this, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteCharacters")]
	public static extern void QXmlStreamWriter_WriteCharacters(Self* c_this, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteComment")]
	public static extern void QXmlStreamWriter_WriteComment(Self* c_this, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteDTD")]
	public static extern void QXmlStreamWriter_WriteDTD(Self* c_this, libqt_string dtd);
	[LinkName("QXmlStreamWriter_WriteEmptyElement")]
	public static extern void QXmlStreamWriter_WriteEmptyElement(Self* c_this, libqt_string qualifiedName);
	[LinkName("QXmlStreamWriter_WriteEmptyElement2")]
	public static extern void QXmlStreamWriter_WriteEmptyElement2(Self* c_this, libqt_string namespaceUri, libqt_string name);
	[LinkName("QXmlStreamWriter_WriteTextElement")]
	public static extern void QXmlStreamWriter_WriteTextElement(Self* c_this, libqt_string qualifiedName, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteTextElement2")]
	public static extern void QXmlStreamWriter_WriteTextElement2(Self* c_this, libqt_string namespaceUri, libqt_string name, libqt_string text);
	[LinkName("QXmlStreamWriter_WriteEndDocument")]
	public static extern void QXmlStreamWriter_WriteEndDocument(Self* c_this);
	[LinkName("QXmlStreamWriter_WriteEndElement")]
	public static extern void QXmlStreamWriter_WriteEndElement(Self* c_this);
	[LinkName("QXmlStreamWriter_WriteEntityReference")]
	public static extern void QXmlStreamWriter_WriteEntityReference(Self* c_this, libqt_string name);
	[LinkName("QXmlStreamWriter_WriteNamespace")]
	public static extern void QXmlStreamWriter_WriteNamespace(Self* c_this, libqt_string namespaceUri);
	[LinkName("QXmlStreamWriter_WriteDefaultNamespace")]
	public static extern void QXmlStreamWriter_WriteDefaultNamespace(Self* c_this, libqt_string namespaceUri);
	[LinkName("QXmlStreamWriter_WriteProcessingInstruction")]
	public static extern void QXmlStreamWriter_WriteProcessingInstruction(Self* c_this, libqt_string target);
	[LinkName("QXmlStreamWriter_WriteStartDocument")]
	public static extern void QXmlStreamWriter_WriteStartDocument(Self* c_this);
	[LinkName("QXmlStreamWriter_WriteStartDocumentWithVersion")]
	public static extern void QXmlStreamWriter_WriteStartDocumentWithVersion(Self* c_this, libqt_string version);
	[LinkName("QXmlStreamWriter_WriteStartDocument2")]
	public static extern void QXmlStreamWriter_WriteStartDocument2(Self* c_this, libqt_string version, bool standalone);
	[LinkName("QXmlStreamWriter_WriteStartElement")]
	public static extern void QXmlStreamWriter_WriteStartElement(Self* c_this, libqt_string qualifiedName);
	[LinkName("QXmlStreamWriter_WriteStartElement2")]
	public static extern void QXmlStreamWriter_WriteStartElement2(Self* c_this, libqt_string namespaceUri, libqt_string name);
	[LinkName("QXmlStreamWriter_WriteCurrentToken")]
	public static extern void QXmlStreamWriter_WriteCurrentToken(Self* c_this, QXmlStreamReader* reader);
	[LinkName("QXmlStreamWriter_HasError")]
	public static extern bool QXmlStreamWriter_HasError(Self* c_this);
	[LinkName("QXmlStreamWriter_WriteNamespace2")]
	public static extern void QXmlStreamWriter_WriteNamespace2(Self* c_this, libqt_string namespaceUri, libqt_string prefix);
	[LinkName("QXmlStreamWriter_WriteProcessingInstruction2")]
	public static extern void QXmlStreamWriter_WriteProcessingInstruction2(Self* c_this, libqt_string target, libqt_string data);
}