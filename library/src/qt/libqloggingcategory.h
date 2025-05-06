#pragma once
#ifndef SRC_QTC_LIBQLOGGINGCATEGORY_H
#define SRC_QTC_LIBQLOGGINGCATEGORY_H

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
typedef struct QLoggingCategory QLoggingCategory;
#endif

#ifdef __cplusplus
typedef QLoggingCategory::CategoryFilter CategoryFilter; // C++ QFlags
#else

#endif

QTLIBC_API QLoggingCategory* QLoggingCategory_new(const char* category);
QTLIBC_API bool QLoggingCategory_IsDebugEnabled(const QLoggingCategory* self);
QTLIBC_API bool QLoggingCategory_IsInfoEnabled(const QLoggingCategory* self);
QTLIBC_API bool QLoggingCategory_IsWarningEnabled(const QLoggingCategory* self);
QTLIBC_API bool QLoggingCategory_IsCriticalEnabled(const QLoggingCategory* self);
QTLIBC_API const char* QLoggingCategory_CategoryName(const QLoggingCategory* self);
QTLIBC_API QLoggingCategory* QLoggingCategory_OperatorCall(QLoggingCategory* self);
QTLIBC_API QLoggingCategory* QLoggingCategory_OperatorCall2(const QLoggingCategory* self);
QTLIBC_API QLoggingCategory* QLoggingCategory_DefaultCategory();
QTLIBC_API void QLoggingCategory_SetFilterRules(libqt_string rules);
QTLIBC_API void QLoggingCategory_Delete(QLoggingCategory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
