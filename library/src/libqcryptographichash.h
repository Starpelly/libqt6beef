#pragma once
#ifndef SRCC_LIBQCRYPTOGRAPHICHASH_H
#define SRCC_LIBQCRYPTOGRAPHICHASH_H

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
typedef struct QCryptographicHash QCryptographicHash;
typedef struct QIODevice QIODevice;
#endif

#ifdef __cplusplus
typedef QCryptographicHash::Algorithm Algorithm;           // C++ enum
typedef QCryptographicHash::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef int Algorithm;       // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QCryptographicHash* QCryptographicHash_new(int method);
QTLIBC_API void QCryptographicHash_Reset(QCryptographicHash* self);
QTLIBC_API void QCryptographicHash_AddData(QCryptographicHash* self, const char* data, ptrdiff_t length);
QTLIBC_API void QCryptographicHash_AddDataWithData(QCryptographicHash* self, QByteArrayView* data);
QTLIBC_API bool QCryptographicHash_AddDataWithDevice(QCryptographicHash* self, QIODevice* device);
QTLIBC_API libqt_string QCryptographicHash_Result(const QCryptographicHash* self);
QTLIBC_API QByteArrayView* QCryptographicHash_ResultView(const QCryptographicHash* self);
QTLIBC_API libqt_string QCryptographicHash_Hash(QByteArrayView* data, int method);
QTLIBC_API int QCryptographicHash_HashLength(int method);
QTLIBC_API void QCryptographicHash_Delete(QCryptographicHash* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
