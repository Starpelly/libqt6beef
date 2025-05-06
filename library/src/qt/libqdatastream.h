#pragma once
#ifndef SRC_QTC_LIBQDATASTREAM_H
#define SRC_QTC_LIBQDATASTREAM_H

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
typedef struct QDataStream QDataStream;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
#endif

#ifdef __cplusplus
typedef QDataStream::ByteOrder ByteOrder;                           // C++ enum
typedef QDataStream::FloatingPointPrecision FloatingPointPrecision; // C++ enum
typedef QDataStream::Status Status;                                 // C++ enum
typedef QDataStream::Version Version;                               // C++ enum
#else
typedef int ByteOrder;              // C ABI enum
typedef int FloatingPointPrecision; // C ABI enum
typedef int Status;                 // C ABI enum
typedef int Version;                // C ABI enum
#endif

QTLIBC_API QDataStream* QDataStream_new();
QTLIBC_API QDataStream* QDataStream_new2(QIODevice* param1);
QTLIBC_API QDataStream* QDataStream_new3(libqt_string param1);
QTLIBC_API QIODevice* QDataStream_Device(const QDataStream* self);
QTLIBC_API void QDataStream_SetDevice(QDataStream* self, QIODevice* device);
QTLIBC_API bool QDataStream_AtEnd(const QDataStream* self);
QTLIBC_API int QDataStream_Status(const QDataStream* self);
QTLIBC_API void QDataStream_SetStatus(QDataStream* self, int status);
QTLIBC_API void QDataStream_ResetStatus(QDataStream* self);
QTLIBC_API int QDataStream_FloatingPointPrecision(const QDataStream* self);
QTLIBC_API void QDataStream_SetFloatingPointPrecision(QDataStream* self, int precision);
QTLIBC_API int QDataStream_ByteOrder(const QDataStream* self);
QTLIBC_API void QDataStream_SetByteOrder(QDataStream* self, int byteOrder);
QTLIBC_API int QDataStream_Version(const QDataStream* self);
QTLIBC_API void QDataStream_SetVersion(QDataStream* self, int version);
QTLIBC_API void QDataStream_OperatorShiftRight(QDataStream* self, char* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithQint8(QDataStream* self, signed char* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithQuint8(QDataStream* self, unsigned char* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithQint16(QDataStream* self, int16_t* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithQuint16(QDataStream* self, uint16_t* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithQint32(QDataStream* self, int* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithQuint32(QDataStream* self, unsigned int* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithQint64(QDataStream* self, long long* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithQuint64(QDataStream* self, unsigned long long* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithBool(QDataStream* self, bool* i);
QTLIBC_API void QDataStream_OperatorShiftRightWithFloat(QDataStream* self, float* f);
QTLIBC_API void QDataStream_OperatorShiftRightWithDouble(QDataStream* self, double* f);
QTLIBC_API void QDataStream_OperatorShiftRightWithStr(QDataStream* self, char* str);
QTLIBC_API void QDataStream_OperatorShiftLeft(QDataStream* self, char i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithQint8(QDataStream* self, signed char i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithQuint8(QDataStream* self, unsigned char i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithQint16(QDataStream* self, int16_t i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithQuint16(QDataStream* self, uint16_t i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithQint32(QDataStream* self, int i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithQuint32(QDataStream* self, unsigned int i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithQint64(QDataStream* self, long long i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithQuint64(QDataStream* self, unsigned long long i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithBool(QDataStream* self, bool i);
QTLIBC_API void QDataStream_OperatorShiftLeftWithFloat(QDataStream* self, float f);
QTLIBC_API void QDataStream_OperatorShiftLeftWithDouble(QDataStream* self, double f);
QTLIBC_API void QDataStream_OperatorShiftLeftWithStr(QDataStream* self, const char* str);
QTLIBC_API QDataStream* QDataStream_ReadBytes(QDataStream* self, char* param1, unsigned int* lenVal);
QTLIBC_API int QDataStream_ReadRawData(QDataStream* self, char* param1, int lenVal);
QTLIBC_API void QDataStream_WriteBytes(QDataStream* self, const char* param1, unsigned int lenVal);
QTLIBC_API int QDataStream_WriteRawData(QDataStream* self, const char* param1, int lenVal);
QTLIBC_API int QDataStream_SkipRawData(QDataStream* self, int lenVal);
QTLIBC_API void QDataStream_StartTransaction(QDataStream* self);
QTLIBC_API bool QDataStream_CommitTransaction(QDataStream* self);
QTLIBC_API void QDataStream_RollbackTransaction(QDataStream* self);
QTLIBC_API void QDataStream_AbortTransaction(QDataStream* self);
QTLIBC_API bool QDataStream_IsDeviceTransactionStarted(const QDataStream* self);
QTLIBC_API void QDataStream_Delete(QDataStream* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
