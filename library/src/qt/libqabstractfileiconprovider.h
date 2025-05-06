#pragma once
#ifndef SRC_QTC_LIBQABSTRACTFILEICONPROVIDER_H
#define SRC_QTC_LIBQABSTRACTFILEICONPROVIDER_H

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
typedef struct QAbstractFileIconProvider QAbstractFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QIcon QIcon;
#endif

#ifdef __cplusplus
typedef QAbstractFileIconProvider::IconType IconType; // C++ enum
typedef QAbstractFileIconProvider::Option Option;     // C++ enum
typedef QAbstractFileIconProvider::Options Options;   // C++ QFlags
#else
typedef int IconType; // C ABI enum
typedef int Option;   // C ABI enum
typedef int Options;  // C ABI QFlags
#endif

QTLIBC_API QAbstractFileIconProvider* QAbstractFileIconProvider_new();
QTLIBC_API QIcon* QAbstractFileIconProvider_Icon(const QAbstractFileIconProvider* self, int param1);
QTLIBC_API void QAbstractFileIconProvider_OnIcon(const QAbstractFileIconProvider* self, intptr_t slot);
QTLIBC_API QIcon* QAbstractFileIconProvider_QBaseIcon(const QAbstractFileIconProvider* self, int param1);
QTLIBC_API QIcon* QAbstractFileIconProvider_IconWithQFileInfo(const QAbstractFileIconProvider* self, QFileInfo* param1);
QTLIBC_API void QAbstractFileIconProvider_OnIconWithQFileInfo(const QAbstractFileIconProvider* self, intptr_t slot);
QTLIBC_API QIcon* QAbstractFileIconProvider_QBaseIconWithQFileInfo(const QAbstractFileIconProvider* self, QFileInfo* param1);
QTLIBC_API libqt_string QAbstractFileIconProvider_Type(const QAbstractFileIconProvider* self, QFileInfo* param1);
QTLIBC_API void QAbstractFileIconProvider_OnType(const QAbstractFileIconProvider* self, intptr_t slot);
QTLIBC_API libqt_string QAbstractFileIconProvider_QBaseType(const QAbstractFileIconProvider* self, QFileInfo* param1);
QTLIBC_API void QAbstractFileIconProvider_SetOptions(QAbstractFileIconProvider* self, int options);
QTLIBC_API void QAbstractFileIconProvider_OnSetOptions(QAbstractFileIconProvider* self, intptr_t slot);
QTLIBC_API void QAbstractFileIconProvider_QBaseSetOptions(QAbstractFileIconProvider* self, int options);
QTLIBC_API int QAbstractFileIconProvider_Options(const QAbstractFileIconProvider* self);
QTLIBC_API void QAbstractFileIconProvider_OnOptions(const QAbstractFileIconProvider* self, intptr_t slot);
QTLIBC_API int QAbstractFileIconProvider_QBaseOptions(const QAbstractFileIconProvider* self);
QTLIBC_API void QAbstractFileIconProvider_Delete(QAbstractFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
