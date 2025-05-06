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

QCryptographicHash* QCryptographicHash_new(int method);
void QCryptographicHash_Reset(QCryptographicHash* self);
void QCryptographicHash_AddData(QCryptographicHash* self, const char* data, int length);
void QCryptographicHash_AddDataWithData(QCryptographicHash* self, libqt_string data);
bool QCryptographicHash_AddDataWithDevice(QCryptographicHash* self, QIODevice* device);
libqt_string QCryptographicHash_Result(const QCryptographicHash* self);
libqt_string QCryptographicHash_Hash(libqt_string data, int method);
int QCryptographicHash_HashLength(int method);
void QCryptographicHash_Delete(QCryptographicHash* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
