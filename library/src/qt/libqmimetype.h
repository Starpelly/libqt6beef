#pragma once
#ifndef SRC_QTC_LIBQMIMETYPE_H
#define SRC_QTC_LIBQMIMETYPE_H

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
typedef struct QMimeType QMimeType;
#endif

#ifdef __cplusplus
typedef QMimeType::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QMimeType* QMimeType_new();
QTLIBC_API QMimeType* QMimeType_new2(QMimeType* other);
QTLIBC_API void QMimeType_OperatorAssign(QMimeType* self, QMimeType* other);
QTLIBC_API void QMimeType_Swap(QMimeType* self, QMimeType* other);
QTLIBC_API bool QMimeType_OperatorEqual(const QMimeType* self, QMimeType* other);
QTLIBC_API bool QMimeType_OperatorNotEqual(const QMimeType* self, QMimeType* other);
QTLIBC_API bool QMimeType_IsValid(const QMimeType* self);
QTLIBC_API bool QMimeType_IsDefault(const QMimeType* self);
QTLIBC_API libqt_string QMimeType_Name(const QMimeType* self);
QTLIBC_API libqt_string QMimeType_Comment(const QMimeType* self);
QTLIBC_API libqt_string QMimeType_GenericIconName(const QMimeType* self);
QTLIBC_API libqt_string QMimeType_IconName(const QMimeType* self);
QTLIBC_API libqt_list /* of libqt_string */ QMimeType_GlobPatterns(const QMimeType* self);
QTLIBC_API libqt_list /* of libqt_string */ QMimeType_ParentMimeTypes(const QMimeType* self);
QTLIBC_API libqt_list /* of libqt_string */ QMimeType_AllAncestors(const QMimeType* self);
QTLIBC_API libqt_list /* of libqt_string */ QMimeType_Aliases(const QMimeType* self);
QTLIBC_API libqt_list /* of libqt_string */ QMimeType_Suffixes(const QMimeType* self);
QTLIBC_API libqt_string QMimeType_PreferredSuffix(const QMimeType* self);
QTLIBC_API bool QMimeType_Inherits(const QMimeType* self, libqt_string mimeTypeName);
QTLIBC_API libqt_string QMimeType_FilterString(const QMimeType* self);
QTLIBC_API void QMimeType_Delete(QMimeType* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
