#pragma once
#ifndef SRC_QTC_LIBQFILEICONPROVIDER_H
#define SRC_QTC_LIBQFILEICONPROVIDER_H

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
typedef struct QFileIconProvider QFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QIcon QIcon;
#endif

QTLIBC_API QFileIconProvider* QFileIconProvider_new();
QTLIBC_API QIcon* QFileIconProvider_Icon(const QFileIconProvider* self, int typeVal);
QTLIBC_API void QFileIconProvider_OnIcon(const QFileIconProvider* self, intptr_t slot);
QTLIBC_API QIcon* QFileIconProvider_QBaseIcon(const QFileIconProvider* self, int typeVal);
QTLIBC_API QIcon* QFileIconProvider_IconWithInfo(const QFileIconProvider* self, QFileInfo* info);
QTLIBC_API void QFileIconProvider_OnIconWithInfo(const QFileIconProvider* self, intptr_t slot);
QTLIBC_API QIcon* QFileIconProvider_QBaseIconWithInfo(const QFileIconProvider* self, QFileInfo* info);
QTLIBC_API libqt_string QFileIconProvider_Type(const QFileIconProvider* self, QFileInfo* param1);
QTLIBC_API void QFileIconProvider_OnType(const QFileIconProvider* self, intptr_t slot);
QTLIBC_API libqt_string QFileIconProvider_QBaseType(const QFileIconProvider* self, QFileInfo* param1);
QTLIBC_API void QFileIconProvider_SetOptions(QFileIconProvider* self, int options);
QTLIBC_API void QFileIconProvider_OnSetOptions(QFileIconProvider* self, intptr_t slot);
QTLIBC_API void QFileIconProvider_QBaseSetOptions(QFileIconProvider* self, int options);
QTLIBC_API int QFileIconProvider_Options(const QFileIconProvider* self);
QTLIBC_API void QFileIconProvider_OnOptions(const QFileIconProvider* self, intptr_t slot);
QTLIBC_API int QFileIconProvider_QBaseOptions(const QFileIconProvider* self);
QTLIBC_API void QFileIconProvider_Delete(QFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
