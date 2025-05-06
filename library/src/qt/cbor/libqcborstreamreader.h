#pragma once
#ifndef SRC_QT_CBORC_LIBQCBORSTREAMREADER_H
#define SRC_QT_CBORC_LIBQCBORSTREAMREADER_H

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
typedef struct QCborError QCborError;
typedef struct QCborStreamReader QCborStreamReader;
typedef struct QIODevice QIODevice;
#endif

#ifdef __cplusplus
typedef QCborStreamReader::QtGadgetHelper QtGadgetHelper;     // C++ QFlags
typedef QCborStreamReader::StringResultCode StringResultCode; // C++ enum
typedef QCborStreamReader::Type Type;                         // C++ enum
#else
typedef int StringResultCode; // C ABI enum
typedef unsigned char Type;   // C ABI enum
typedef void QtGadgetHelper;  // C ABI QFlags
#endif

QTLIBC_API QCborStreamReader* QCborStreamReader_new();
QTLIBC_API QCborStreamReader* QCborStreamReader_new2(const char* data, ptrdiff_t lenVal);
QTLIBC_API QCborStreamReader* QCborStreamReader_new3(const unsigned char* data, ptrdiff_t lenVal);
QTLIBC_API QCborStreamReader* QCborStreamReader_new4(libqt_string data);
QTLIBC_API QCborStreamReader* QCborStreamReader_new5(QIODevice* device);
QTLIBC_API void QCborStreamReader_SetDevice(QCborStreamReader* self, QIODevice* device);
QTLIBC_API QIODevice* QCborStreamReader_Device(const QCborStreamReader* self);
QTLIBC_API void QCborStreamReader_AddData(QCborStreamReader* self, libqt_string data);
QTLIBC_API void QCborStreamReader_AddData2(QCborStreamReader* self, const char* data, ptrdiff_t lenVal);
QTLIBC_API void QCborStreamReader_AddData3(QCborStreamReader* self, const unsigned char* data, ptrdiff_t lenVal);
QTLIBC_API void QCborStreamReader_Reparse(QCborStreamReader* self);
QTLIBC_API void QCborStreamReader_Clear(QCborStreamReader* self);
QTLIBC_API void QCborStreamReader_Reset(QCborStreamReader* self);
QTLIBC_API QCborError* QCborStreamReader_LastError(QCborStreamReader* self);
QTLIBC_API long long QCborStreamReader_CurrentOffset(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsValid(const QCborStreamReader* self);
QTLIBC_API int QCborStreamReader_ContainerDepth(const QCborStreamReader* self);
QTLIBC_API uint8_t QCborStreamReader_ParentContainerType(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_HasNext(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_Next(QCborStreamReader* self);
QTLIBC_API uint8_t QCborStreamReader_Type(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsUnsignedInteger(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsNegativeInteger(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsInteger(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsByteArray(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsString(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsArray(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsMap(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsTag(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsSimpleType(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsFloat16(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsFloat(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsDouble(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsInvalid(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsSimpleTypeWithSt(const QCborStreamReader* self, uint8_t st);
QTLIBC_API bool QCborStreamReader_IsFalse(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsTrue(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsBool(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsNull(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsUndefined(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsLengthKnown(const QCborStreamReader* self);
QTLIBC_API unsigned long long QCborStreamReader_Length(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_IsContainer(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_EnterContainer(QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_LeaveContainer(QCborStreamReader* self);
QTLIBC_API ptrdiff_t QCborStreamReader_CurrentStringChunkSize(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_ToBool(const QCborStreamReader* self);
QTLIBC_API uint64_t QCborStreamReader_ToTag(const QCborStreamReader* self);
QTLIBC_API unsigned long long QCborStreamReader_ToUnsignedInteger(const QCborStreamReader* self);
QTLIBC_API uint64_t QCborStreamReader_ToNegativeInteger(const QCborStreamReader* self);
QTLIBC_API uint8_t QCborStreamReader_ToSimpleType(const QCborStreamReader* self);
QTLIBC_API float QCborStreamReader_ToFloat(const QCborStreamReader* self);
QTLIBC_API double QCborStreamReader_ToDouble(const QCborStreamReader* self);
QTLIBC_API long long QCborStreamReader_ToInteger(const QCborStreamReader* self);
QTLIBC_API bool QCborStreamReader_Next1(QCborStreamReader* self, int maxRecursion);
QTLIBC_API void QCborStreamReader_Delete(QCborStreamReader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
