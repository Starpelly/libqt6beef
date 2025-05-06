#pragma once
#ifndef SRCC_LIBQTEXTSTREAM_H
#define SRCC_LIBQTEXTSTREAM_H

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
typedef struct QChar QChar;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QLocale QLocale;
typedef struct QTextStream QTextStream;
#endif

#ifdef __cplusplus
typedef QTextStream::FieldAlignment FieldAlignment;         // C++ enum
typedef QTextStream::NumberFlag NumberFlag;                 // C++ enum
typedef QTextStream::NumberFlags NumberFlags;               // C++ QFlags
typedef QTextStream::RealNumberNotation RealNumberNotation; // C++ enum
typedef QTextStream::Status Status;                         // C++ enum
#else
typedef int FieldAlignment;     // C ABI enum
typedef int NumberFlag;         // C ABI enum
typedef int NumberFlags;        // C ABI QFlags
typedef int RealNumberNotation; // C ABI enum
typedef int Status;             // C ABI enum
#endif

QTLIBC_API QTextStream* QTextStream_new();
QTLIBC_API QTextStream* QTextStream_new2(QIODevice* device);
QTLIBC_API QTextStream* QTextStream_new3(libqt_string array);
QTLIBC_API QTextStream* QTextStream_new4(libqt_string array, int openMode);
QTLIBC_API void QTextStream_SetEncoding(QTextStream* self, int encoding);
QTLIBC_API int QTextStream_Encoding(const QTextStream* self);
QTLIBC_API void QTextStream_SetAutoDetectUnicode(QTextStream* self, bool enabled);
QTLIBC_API bool QTextStream_AutoDetectUnicode(const QTextStream* self);
QTLIBC_API void QTextStream_SetGenerateByteOrderMark(QTextStream* self, bool generate);
QTLIBC_API bool QTextStream_GenerateByteOrderMark(const QTextStream* self);
QTLIBC_API void QTextStream_SetLocale(QTextStream* self, QLocale* locale);
QTLIBC_API QLocale* QTextStream_Locale(const QTextStream* self);
QTLIBC_API void QTextStream_SetDevice(QTextStream* self, QIODevice* device);
QTLIBC_API QIODevice* QTextStream_Device(const QTextStream* self);
QTLIBC_API libqt_string QTextStream_String(const QTextStream* self);
QTLIBC_API int QTextStream_Status(const QTextStream* self);
QTLIBC_API void QTextStream_SetStatus(QTextStream* self, int status);
QTLIBC_API void QTextStream_ResetStatus(QTextStream* self);
QTLIBC_API bool QTextStream_AtEnd(const QTextStream* self);
QTLIBC_API void QTextStream_Reset(QTextStream* self);
QTLIBC_API void QTextStream_Flush(QTextStream* self);
QTLIBC_API bool QTextStream_Seek(QTextStream* self, long long pos);
QTLIBC_API long long QTextStream_Pos(const QTextStream* self);
QTLIBC_API void QTextStream_SkipWhiteSpace(QTextStream* self);
QTLIBC_API libqt_string QTextStream_ReadLine(QTextStream* self);
QTLIBC_API libqt_string QTextStream_ReadAll(QTextStream* self);
QTLIBC_API libqt_string QTextStream_Read(QTextStream* self, long long maxlen);
QTLIBC_API void QTextStream_SetFieldAlignment(QTextStream* self, int alignment);
QTLIBC_API int QTextStream_FieldAlignment(const QTextStream* self);
QTLIBC_API void QTextStream_SetPadChar(QTextStream* self, QChar* ch);
QTLIBC_API QChar* QTextStream_PadChar(const QTextStream* self);
QTLIBC_API void QTextStream_SetFieldWidth(QTextStream* self, int width);
QTLIBC_API int QTextStream_FieldWidth(const QTextStream* self);
QTLIBC_API void QTextStream_SetNumberFlags(QTextStream* self, int flags);
QTLIBC_API int QTextStream_NumberFlags(const QTextStream* self);
QTLIBC_API void QTextStream_SetIntegerBase(QTextStream* self, int base);
QTLIBC_API int QTextStream_IntegerBase(const QTextStream* self);
QTLIBC_API void QTextStream_SetRealNumberNotation(QTextStream* self, int notation);
QTLIBC_API int QTextStream_RealNumberNotation(const QTextStream* self);
QTLIBC_API void QTextStream_SetRealNumberPrecision(QTextStream* self, int precision);
QTLIBC_API int QTextStream_RealNumberPrecision(const QTextStream* self);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRight(QTextStream* self, QChar* ch);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithCh(QTextStream* self, char* ch);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithShort(QTextStream* self, int16_t* i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithUnsignedshort(QTextStream* self, uint16_t* i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithInt(QTextStream* self, int* i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithUnsignedint(QTextStream* self, unsigned int* i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithLong(QTextStream* self, long* i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithUnsignedlong(QTextStream* self, unsigned long* i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithQlonglong(QTextStream* self, long long* i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithQulonglong(QTextStream* self, unsigned long long* i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithFloat(QTextStream* self, float* f);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithDouble(QTextStream* self, double* f);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithQString(QTextStream* self, libqt_string s);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithArray(QTextStream* self, libqt_string array);
QTLIBC_API QTextStream* QTextStream_OperatorShiftRightWithChar(QTextStream* self, char* c);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeft(QTextStream* self, QChar* ch);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithCh(QTextStream* self, char ch);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithShort(QTextStream* self, int16_t i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithUnsignedshort(QTextStream* self, uint16_t i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithInt(QTextStream* self, int i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithUnsignedint(QTextStream* self, unsigned int i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithLong(QTextStream* self, long i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithUnsignedlong(QTextStream* self, unsigned long i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithQlonglong(QTextStream* self, long long i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithQulonglong(QTextStream* self, unsigned long long i);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithFloat(QTextStream* self, float f);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithDouble(QTextStream* self, double f);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithQString(QTextStream* self, libqt_string s);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithArray(QTextStream* self, libqt_string array);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithChar(QTextStream* self, const char* c);
QTLIBC_API QTextStream* QTextStream_OperatorShiftLeftWithPtr(QTextStream* self, const void* ptr);
QTLIBC_API libqt_string QTextStream_ReadLine1(QTextStream* self, long long maxlen);
QTLIBC_API void QTextStream_Delete(QTextStream* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
