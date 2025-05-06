#pragma once
#ifndef SRCC_LIBQFONTINFO_H
#define SRCC_LIBQFONTINFO_H

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
typedef struct QFont QFont;
typedef struct QFontInfo QFontInfo;
#endif

QTLIBC_API QFontInfo* QFontInfo_new(QFont* param1);
QTLIBC_API QFontInfo* QFontInfo_new2(QFontInfo* param1);
QTLIBC_API void QFontInfo_OperatorAssign(QFontInfo* self, QFontInfo* param1);
QTLIBC_API void QFontInfo_Swap(QFontInfo* self, QFontInfo* other);
QTLIBC_API libqt_string QFontInfo_Family(const QFontInfo* self);
QTLIBC_API libqt_string QFontInfo_StyleName(const QFontInfo* self);
QTLIBC_API int QFontInfo_PixelSize(const QFontInfo* self);
QTLIBC_API int QFontInfo_PointSize(const QFontInfo* self);
QTLIBC_API double QFontInfo_PointSizeF(const QFontInfo* self);
QTLIBC_API bool QFontInfo_Italic(const QFontInfo* self);
QTLIBC_API int QFontInfo_Style(const QFontInfo* self);
QTLIBC_API int QFontInfo_Weight(const QFontInfo* self);
QTLIBC_API bool QFontInfo_Bold(const QFontInfo* self);
QTLIBC_API bool QFontInfo_Underline(const QFontInfo* self);
QTLIBC_API bool QFontInfo_Overline(const QFontInfo* self);
QTLIBC_API bool QFontInfo_StrikeOut(const QFontInfo* self);
QTLIBC_API bool QFontInfo_FixedPitch(const QFontInfo* self);
QTLIBC_API int QFontInfo_StyleHint(const QFontInfo* self);
QTLIBC_API int QFontInfo_LegacyWeight(const QFontInfo* self);
QTLIBC_API bool QFontInfo_ExactMatch(const QFontInfo* self);
QTLIBC_API void QFontInfo_Delete(QFontInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
