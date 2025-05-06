#pragma once
#ifndef SRCC_LIBQDESKTOPSERVICES_H
#define SRCC_LIBQDESKTOPSERVICES_H

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
typedef struct QDesktopServices QDesktopServices;
typedef struct QObject QObject;
typedef struct QUrl QUrl;
#endif

QTLIBC_API QDesktopServices* QDesktopServices_new(QDesktopServices* other);
QTLIBC_API QDesktopServices* QDesktopServices_new2(QDesktopServices* other);
QTLIBC_API void QDesktopServices_CopyAssign(QDesktopServices* self, QDesktopServices* other);
QTLIBC_API void QDesktopServices_MoveAssign(QDesktopServices* self, QDesktopServices* other);
QTLIBC_API bool QDesktopServices_OpenUrl(QUrl* url);
QTLIBC_API void QDesktopServices_SetUrlHandler(libqt_string scheme, QObject* receiver, const char* method);
QTLIBC_API void QDesktopServices_UnsetUrlHandler(libqt_string scheme);
QTLIBC_API void QDesktopServices_Delete(QDesktopServices* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
