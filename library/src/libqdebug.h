#pragma once
#ifndef SRCC_LIBQDEBUG_H
#define SRCC_LIBQDEBUG_H

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
typedef struct QByteArrayView QByteArrayView;
typedef struct QChar QChar;
typedef struct QDebug QDebug;
typedef struct QDebugStateSaver QDebugStateSaver;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QNoDebug QNoDebug;
#endif

#ifdef __cplusplus
typedef QDebug::VerbosityLevel VerbosityLevel; // C++ enum
#else
typedef int VerbosityLevel; // C ABI enum
#endif

QTLIBC_API QDebug* QDebug_new(QIODevice* device);
QTLIBC_API QDebug* QDebug_new2(QDebug* o);
QTLIBC_API void QDebug_OperatorAssign(QDebug* self, QDebug* other);
QTLIBC_API void QDebug_Swap(QDebug* self, QDebug* other);
QTLIBC_API QDebug* QDebug_ResetFormat(QDebug* self);
QTLIBC_API QDebug* QDebug_Space(QDebug* self);
QTLIBC_API QDebug* QDebug_Nospace(QDebug* self);
QTLIBC_API QDebug* QDebug_MaybeSpace(QDebug* self);
QTLIBC_API QDebug* QDebug_Verbosity(QDebug* self, int verbosityLevel);
QTLIBC_API int QDebug_Verbosity2(const QDebug* self);
QTLIBC_API void QDebug_SetVerbosity(QDebug* self, int verbosityLevel);
QTLIBC_API bool QDebug_AutoInsertSpaces(const QDebug* self);
QTLIBC_API void QDebug_SetAutoInsertSpaces(QDebug* self, bool b);
QTLIBC_API QDebug* QDebug_Quote(QDebug* self);
QTLIBC_API QDebug* QDebug_Noquote(QDebug* self);
QTLIBC_API QDebug* QDebug_MaybeQuote(QDebug* self);
QTLIBC_API QDebug* QDebug_OperatorShiftLeft(QDebug* self, QChar* t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithBool(QDebug* self, bool t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithChar(QDebug* self, char t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithShort(QDebug* self, int16_t t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithUnsignedshort(QDebug* self, uint16_t t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithInt(QDebug* self, int t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithUnsignedint(QDebug* self, unsigned int t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithLong(QDebug* self, long t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithUnsignedlong(QDebug* self, unsigned long t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithQint64(QDebug* self, long long t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithQuint64(QDebug* self, unsigned long long t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithFloat(QDebug* self, float t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithDouble(QDebug* self, double t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeft2(QDebug* self, const char* t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithQString(QDebug* self, libqt_string t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithQByteArray(QDebug* self, libqt_string t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithQByteArrayView(QDebug* self, QByteArrayView* t);
QTLIBC_API QDebug* QDebug_OperatorShiftLeftWithVoid(QDebug* self, const void* t);
QTLIBC_API QDebug* QDebug_MaybeQuote1(QDebug* self, char c);
QTLIBC_API void QDebug_Delete(QDebug* self);

QTLIBC_API QDebugStateSaver* QDebugStateSaver_new(QDebug* dbg);
QTLIBC_API void QDebugStateSaver_Delete(QDebugStateSaver* self);

QTLIBC_API QNoDebug* QNoDebug_new(QNoDebug* other);
QTLIBC_API QNoDebug* QNoDebug_new2(QNoDebug* other);
QTLIBC_API void QNoDebug_CopyAssign(QNoDebug* self, QNoDebug* other);
QTLIBC_API void QNoDebug_MoveAssign(QNoDebug* self, QNoDebug* other);
QTLIBC_API QNoDebug* QNoDebug_Space(QNoDebug* self);
QTLIBC_API QNoDebug* QNoDebug_Nospace(QNoDebug* self);
QTLIBC_API QNoDebug* QNoDebug_MaybeSpace(QNoDebug* self);
QTLIBC_API QNoDebug* QNoDebug_Quote(QNoDebug* self);
QTLIBC_API QNoDebug* QNoDebug_Noquote(QNoDebug* self);
QTLIBC_API QNoDebug* QNoDebug_MaybeQuote(QNoDebug* self);
QTLIBC_API QNoDebug* QNoDebug_Verbosity(QNoDebug* self, int param1);
QTLIBC_API QNoDebug* QNoDebug_MaybeQuote1(QNoDebug* self, const char param1);
QTLIBC_API void QNoDebug_Delete(QNoDebug* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
