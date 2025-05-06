#pragma once
#ifndef SRC_QTC_LIBQXMLSTREAM_H
#define SRC_QTC_LIBQXMLSTREAM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QIODevice QIODevice;
typedef struct QXmlStreamAttribute QXmlStreamAttribute;
typedef struct QXmlStreamEntityDeclaration QXmlStreamEntityDeclaration;
typedef struct QXmlStreamEntityResolver QXmlStreamEntityResolver;
typedef struct QXmlStreamNamespaceDeclaration QXmlStreamNamespaceDeclaration;
typedef struct QXmlStreamNotationDeclaration QXmlStreamNotationDeclaration;
typedef struct QXmlStreamReader QXmlStreamReader;
typedef struct QXmlStreamWriter QXmlStreamWriter;
#endif

#ifdef __cplusplus
typedef QXmlStreamReader::Error Error;                                       // C++ enum
typedef QXmlStreamReader::ReadElementTextBehaviour ReadElementTextBehaviour; // C++ enum
typedef QXmlStreamReader::TokenType TokenType;                               // C++ enum
#else
typedef int Error;                    // C ABI enum
typedef int ReadElementTextBehaviour; // C ABI enum
typedef int TokenType;                // C ABI enum
#endif

QTLIBC_API QXmlStreamAttribute* QXmlStreamAttribute_new();
QTLIBC_API QXmlStreamAttribute* QXmlStreamAttribute_new2(libqt_string qualifiedName, libqt_string value);
QTLIBC_API QXmlStreamAttribute* QXmlStreamAttribute_new3(libqt_string namespaceUri, libqt_string name, libqt_string value);
QTLIBC_API QXmlStreamAttribute* QXmlStreamAttribute_new4(QXmlStreamAttribute* param1);
QTLIBC_API bool QXmlStreamAttribute_IsDefault(const QXmlStreamAttribute* self);
QTLIBC_API bool QXmlStreamAttribute_OperatorEqual(const QXmlStreamAttribute* self, QXmlStreamAttribute* other);
QTLIBC_API bool QXmlStreamAttribute_OperatorNotEqual(const QXmlStreamAttribute* self, QXmlStreamAttribute* other);
QTLIBC_API void QXmlStreamAttribute_OperatorAssign(QXmlStreamAttribute* self, QXmlStreamAttribute* param1);
QTLIBC_API void QXmlStreamAttribute_Delete(QXmlStreamAttribute* self);

QTLIBC_API QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new();
QTLIBC_API QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new2(libqt_string prefix, libqt_string namespaceUri);
QTLIBC_API bool QXmlStreamNamespaceDeclaration_OperatorEqual(const QXmlStreamNamespaceDeclaration* self, QXmlStreamNamespaceDeclaration* other);
QTLIBC_API bool QXmlStreamNamespaceDeclaration_OperatorNotEqual(const QXmlStreamNamespaceDeclaration* self, QXmlStreamNamespaceDeclaration* other);
QTLIBC_API void QXmlStreamNamespaceDeclaration_Delete(QXmlStreamNamespaceDeclaration* self);

QTLIBC_API QXmlStreamNotationDeclaration* QXmlStreamNotationDeclaration_new();
QTLIBC_API bool QXmlStreamNotationDeclaration_OperatorEqual(const QXmlStreamNotationDeclaration* self, QXmlStreamNotationDeclaration* other);
QTLIBC_API bool QXmlStreamNotationDeclaration_OperatorNotEqual(const QXmlStreamNotationDeclaration* self, QXmlStreamNotationDeclaration* other);
QTLIBC_API void QXmlStreamNotationDeclaration_Delete(QXmlStreamNotationDeclaration* self);

QTLIBC_API QXmlStreamEntityDeclaration* QXmlStreamEntityDeclaration_new();
QTLIBC_API bool QXmlStreamEntityDeclaration_OperatorEqual(const QXmlStreamEntityDeclaration* self, QXmlStreamEntityDeclaration* other);
QTLIBC_API bool QXmlStreamEntityDeclaration_OperatorNotEqual(const QXmlStreamEntityDeclaration* self, QXmlStreamEntityDeclaration* other);
QTLIBC_API void QXmlStreamEntityDeclaration_Delete(QXmlStreamEntityDeclaration* self);

QTLIBC_API libqt_string QXmlStreamEntityResolver_ResolveEntity(QXmlStreamEntityResolver* self, libqt_string publicId, libqt_string systemId);
QTLIBC_API libqt_string QXmlStreamEntityResolver_ResolveUndeclaredEntity(QXmlStreamEntityResolver* self, libqt_string name);
QTLIBC_API void QXmlStreamEntityResolver_Delete(QXmlStreamEntityResolver* self);

QTLIBC_API QXmlStreamReader* QXmlStreamReader_new();
QTLIBC_API QXmlStreamReader* QXmlStreamReader_new2(QIODevice* device);
QTLIBC_API QXmlStreamReader* QXmlStreamReader_new3(libqt_string data);
QTLIBC_API QXmlStreamReader* QXmlStreamReader_new4(libqt_string data);
QTLIBC_API QXmlStreamReader* QXmlStreamReader_new5(const char* data);
QTLIBC_API void QXmlStreamReader_SetDevice(QXmlStreamReader* self, QIODevice* device);
QTLIBC_API QIODevice* QXmlStreamReader_Device(const QXmlStreamReader* self);
QTLIBC_API void QXmlStreamReader_AddData(QXmlStreamReader* self, libqt_string data);
QTLIBC_API void QXmlStreamReader_AddDataWithData(QXmlStreamReader* self, libqt_string data);
QTLIBC_API void QXmlStreamReader_AddData2(QXmlStreamReader* self, const char* data);
QTLIBC_API void QXmlStreamReader_Clear(QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_AtEnd(const QXmlStreamReader* self);
QTLIBC_API int QXmlStreamReader_ReadNext(QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_ReadNextStartElement(QXmlStreamReader* self);
QTLIBC_API void QXmlStreamReader_SkipCurrentElement(QXmlStreamReader* self);
QTLIBC_API int QXmlStreamReader_TokenType(const QXmlStreamReader* self);
QTLIBC_API libqt_string QXmlStreamReader_TokenString(const QXmlStreamReader* self);
QTLIBC_API void QXmlStreamReader_SetNamespaceProcessing(QXmlStreamReader* self, bool namespaceProcessing);
QTLIBC_API bool QXmlStreamReader_NamespaceProcessing(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsStartDocument(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsEndDocument(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsStartElement(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsEndElement(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsCharacters(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsWhitespace(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsCDATA(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsComment(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsDTD(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsEntityReference(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsProcessingInstruction(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_IsStandaloneDocument(const QXmlStreamReader* self);
QTLIBC_API long long QXmlStreamReader_LineNumber(const QXmlStreamReader* self);
QTLIBC_API long long QXmlStreamReader_ColumnNumber(const QXmlStreamReader* self);
QTLIBC_API long long QXmlStreamReader_CharacterOffset(const QXmlStreamReader* self);
QTLIBC_API libqt_string QXmlStreamReader_ReadElementText(QXmlStreamReader* self);
QTLIBC_API libqt_list /* of QXmlStreamNamespaceDeclaration* */ QXmlStreamReader_NamespaceDeclarations(const QXmlStreamReader* self);
QTLIBC_API void QXmlStreamReader_AddExtraNamespaceDeclaration(QXmlStreamReader* self, QXmlStreamNamespaceDeclaration* extraNamespaceDeclaraction);
QTLIBC_API void QXmlStreamReader_AddExtraNamespaceDeclarations(QXmlStreamReader* self, libqt_list /* of QXmlStreamNamespaceDeclaration* */ extraNamespaceDeclaractions);
QTLIBC_API libqt_list /* of QXmlStreamNotationDeclaration* */ QXmlStreamReader_NotationDeclarations(const QXmlStreamReader* self);
QTLIBC_API libqt_list /* of QXmlStreamEntityDeclaration* */ QXmlStreamReader_EntityDeclarations(const QXmlStreamReader* self);
QTLIBC_API int QXmlStreamReader_EntityExpansionLimit(const QXmlStreamReader* self);
QTLIBC_API void QXmlStreamReader_SetEntityExpansionLimit(QXmlStreamReader* self, int limit);
QTLIBC_API void QXmlStreamReader_RaiseError(QXmlStreamReader* self);
QTLIBC_API libqt_string QXmlStreamReader_ErrorString(const QXmlStreamReader* self);
QTLIBC_API int QXmlStreamReader_Error(const QXmlStreamReader* self);
QTLIBC_API bool QXmlStreamReader_HasError(const QXmlStreamReader* self);
QTLIBC_API void QXmlStreamReader_SetEntityResolver(QXmlStreamReader* self, QXmlStreamEntityResolver* resolver);
QTLIBC_API QXmlStreamEntityResolver* QXmlStreamReader_EntityResolver(const QXmlStreamReader* self);
QTLIBC_API libqt_string QXmlStreamReader_ReadElementText1(QXmlStreamReader* self, int behaviour);
QTLIBC_API void QXmlStreamReader_RaiseError1(QXmlStreamReader* self, libqt_string message);
QTLIBC_API void QXmlStreamReader_Delete(QXmlStreamReader* self);

QTLIBC_API QXmlStreamWriter* QXmlStreamWriter_new();
QTLIBC_API QXmlStreamWriter* QXmlStreamWriter_new2(QIODevice* device);
QTLIBC_API void QXmlStreamWriter_SetDevice(QXmlStreamWriter* self, QIODevice* device);
QTLIBC_API QIODevice* QXmlStreamWriter_Device(const QXmlStreamWriter* self);
QTLIBC_API void QXmlStreamWriter_SetAutoFormatting(QXmlStreamWriter* self, bool autoFormatting);
QTLIBC_API bool QXmlStreamWriter_AutoFormatting(const QXmlStreamWriter* self);
QTLIBC_API void QXmlStreamWriter_SetAutoFormattingIndent(QXmlStreamWriter* self, int spacesOrTabs);
QTLIBC_API int QXmlStreamWriter_AutoFormattingIndent(const QXmlStreamWriter* self);
QTLIBC_API void QXmlStreamWriter_WriteAttribute(QXmlStreamWriter* self, libqt_string qualifiedName, libqt_string value);
QTLIBC_API void QXmlStreamWriter_WriteAttribute2(QXmlStreamWriter* self, libqt_string namespaceUri, libqt_string name, libqt_string value);
QTLIBC_API void QXmlStreamWriter_WriteAttributeWithAttribute(QXmlStreamWriter* self, QXmlStreamAttribute* attribute);
QTLIBC_API void QXmlStreamWriter_WriteCDATA(QXmlStreamWriter* self, libqt_string text);
QTLIBC_API void QXmlStreamWriter_WriteCharacters(QXmlStreamWriter* self, libqt_string text);
QTLIBC_API void QXmlStreamWriter_WriteComment(QXmlStreamWriter* self, libqt_string text);
QTLIBC_API void QXmlStreamWriter_WriteDTD(QXmlStreamWriter* self, libqt_string dtd);
QTLIBC_API void QXmlStreamWriter_WriteEmptyElement(QXmlStreamWriter* self, libqt_string qualifiedName);
QTLIBC_API void QXmlStreamWriter_WriteEmptyElement2(QXmlStreamWriter* self, libqt_string namespaceUri, libqt_string name);
QTLIBC_API void QXmlStreamWriter_WriteTextElement(QXmlStreamWriter* self, libqt_string qualifiedName, libqt_string text);
QTLIBC_API void QXmlStreamWriter_WriteTextElement2(QXmlStreamWriter* self, libqt_string namespaceUri, libqt_string name, libqt_string text);
QTLIBC_API void QXmlStreamWriter_WriteEndDocument(QXmlStreamWriter* self);
QTLIBC_API void QXmlStreamWriter_WriteEndElement(QXmlStreamWriter* self);
QTLIBC_API void QXmlStreamWriter_WriteEntityReference(QXmlStreamWriter* self, libqt_string name);
QTLIBC_API void QXmlStreamWriter_WriteNamespace(QXmlStreamWriter* self, libqt_string namespaceUri);
QTLIBC_API void QXmlStreamWriter_WriteDefaultNamespace(QXmlStreamWriter* self, libqt_string namespaceUri);
QTLIBC_API void QXmlStreamWriter_WriteProcessingInstruction(QXmlStreamWriter* self, libqt_string target);
QTLIBC_API void QXmlStreamWriter_WriteStartDocument(QXmlStreamWriter* self);
QTLIBC_API void QXmlStreamWriter_WriteStartDocumentWithVersion(QXmlStreamWriter* self, libqt_string version);
QTLIBC_API void QXmlStreamWriter_WriteStartDocument2(QXmlStreamWriter* self, libqt_string version, bool standalone);
QTLIBC_API void QXmlStreamWriter_WriteStartElement(QXmlStreamWriter* self, libqt_string qualifiedName);
QTLIBC_API void QXmlStreamWriter_WriteStartElement2(QXmlStreamWriter* self, libqt_string namespaceUri, libqt_string name);
QTLIBC_API void QXmlStreamWriter_WriteCurrentToken(QXmlStreamWriter* self, QXmlStreamReader* reader);
QTLIBC_API bool QXmlStreamWriter_HasError(const QXmlStreamWriter* self);
QTLIBC_API void QXmlStreamWriter_WriteNamespace2(QXmlStreamWriter* self, libqt_string namespaceUri, libqt_string prefix);
QTLIBC_API void QXmlStreamWriter_WriteProcessingInstruction2(QXmlStreamWriter* self, libqt_string target, libqt_string data);
QTLIBC_API void QXmlStreamWriter_Delete(QXmlStreamWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
