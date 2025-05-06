#pragma once
#ifndef SRC_QTC_LIBQMESSAGEAUTHENTICATIONCODE_H
#define SRC_QTC_LIBQMESSAGEAUTHENTICATIONCODE_H

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
typedef struct QMessageAuthenticationCode QMessageAuthenticationCode;
#endif

QTLIBC_API QMessageAuthenticationCode* QMessageAuthenticationCode_new(int method);
QTLIBC_API QMessageAuthenticationCode* QMessageAuthenticationCode_new2(int method, libqt_string key);
QTLIBC_API void QMessageAuthenticationCode_Reset(QMessageAuthenticationCode* self);
QTLIBC_API void QMessageAuthenticationCode_SetKey(QMessageAuthenticationCode* self, libqt_string key);
QTLIBC_API void QMessageAuthenticationCode_AddData(QMessageAuthenticationCode* self, const char* data, ptrdiff_t length);
QTLIBC_API void QMessageAuthenticationCode_AddDataWithData(QMessageAuthenticationCode* self, libqt_string data);
QTLIBC_API bool QMessageAuthenticationCode_AddDataWithDevice(QMessageAuthenticationCode* self, QIODevice* device);
QTLIBC_API libqt_string QMessageAuthenticationCode_Result(const QMessageAuthenticationCode* self);
QTLIBC_API libqt_string QMessageAuthenticationCode_Hash(libqt_string message, libqt_string key, int method);
QTLIBC_API void QMessageAuthenticationCode_Delete(QMessageAuthenticationCode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
