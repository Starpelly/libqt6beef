#pragma once
#ifndef SRCC_LIBQFILEICONPROVIDER_H
#define SRCC_LIBQFILEICONPROVIDER_H

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
typedef struct QFileIconProvider QFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QIcon QIcon;
#endif

#ifdef __cplusplus
typedef QFileIconProvider::IconType IconType; // C++ enum
typedef QFileIconProvider::Option Option;     // C++ enum
typedef QFileIconProvider::Options Options;   // C++ QFlags
#else
typedef int IconType; // C ABI enum
typedef int Option;   // C ABI enum
typedef int Options;  // C ABI QFlags
#endif

QFileIconProvider* QFileIconProvider_new();
QIcon* QFileIconProvider_Icon(const QFileIconProvider* self, int typeVal);
void QFileIconProvider_OnIcon(const QFileIconProvider* self, intptr_t slot);
QIcon* QFileIconProvider_QBaseIcon(const QFileIconProvider* self, int typeVal);
QIcon* QFileIconProvider_IconWithInfo(const QFileIconProvider* self, QFileInfo* info);
void QFileIconProvider_OnIconWithInfo(const QFileIconProvider* self, intptr_t slot);
QIcon* QFileIconProvider_QBaseIconWithInfo(const QFileIconProvider* self, QFileInfo* info);
libqt_string QFileIconProvider_Type(const QFileIconProvider* self, QFileInfo* info);
void QFileIconProvider_OnType(const QFileIconProvider* self, intptr_t slot);
libqt_string QFileIconProvider_QBaseType(const QFileIconProvider* self, QFileInfo* info);
void QFileIconProvider_SetOptions(QFileIconProvider* self, int options);
int QFileIconProvider_Options(const QFileIconProvider* self);
void QFileIconProvider_Delete(QFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
