#pragma once
#ifndef SRC_QTC_LIBQCOLLATOR_H
#define SRC_QTC_LIBQCOLLATOR_H

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
typedef struct QChar QChar;
typedef struct QCollator QCollator;
typedef struct QCollatorSortKey QCollatorSortKey;
typedef struct QLocale QLocale;
#endif

QTLIBC_API QCollatorSortKey* QCollatorSortKey_new(QCollatorSortKey* other);
QTLIBC_API void QCollatorSortKey_OperatorAssign(QCollatorSortKey* self, QCollatorSortKey* other);
QTLIBC_API void QCollatorSortKey_Swap(QCollatorSortKey* self, QCollatorSortKey* other);
QTLIBC_API int QCollatorSortKey_Compare(const QCollatorSortKey* self, QCollatorSortKey* key);
QTLIBC_API void QCollatorSortKey_Delete(QCollatorSortKey* self);

QTLIBC_API QCollator* QCollator_new();
QTLIBC_API QCollator* QCollator_new2(QLocale* locale);
QTLIBC_API QCollator* QCollator_new3(QCollator* param1);
QTLIBC_API void QCollator_OperatorAssign(QCollator* self, QCollator* param1);
QTLIBC_API void QCollator_Swap(QCollator* self, QCollator* other);
QTLIBC_API void QCollator_SetLocale(QCollator* self, QLocale* locale);
QTLIBC_API QLocale* QCollator_Locale(const QCollator* self);
QTLIBC_API int QCollator_CaseSensitivity(const QCollator* self);
QTLIBC_API void QCollator_SetCaseSensitivity(QCollator* self, int cs);
QTLIBC_API void QCollator_SetNumericMode(QCollator* self, bool on);
QTLIBC_API bool QCollator_NumericMode(const QCollator* self);
QTLIBC_API void QCollator_SetIgnorePunctuation(QCollator* self, bool on);
QTLIBC_API bool QCollator_IgnorePunctuation(const QCollator* self);
QTLIBC_API int QCollator_Compare(const QCollator* self, libqt_string s1, libqt_string s2);
QTLIBC_API int QCollator_Compare2(const QCollator* self, QChar* s1, ptrdiff_t len1, QChar* s2, ptrdiff_t len2);
QTLIBC_API bool QCollator_OperatorCall(const QCollator* self, libqt_string s1, libqt_string s2);
QTLIBC_API QCollatorSortKey* QCollator_SortKey(const QCollator* self, libqt_string stringVal);
QTLIBC_API void QCollator_Delete(QCollator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
