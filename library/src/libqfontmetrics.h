#pragma once
#ifndef SRCC_LIBQFONTMETRICS_H
#define SRCC_LIBQFONTMETRICS_H

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
typedef struct QFont QFont;
typedef struct QFontMetrics QFontMetrics;
typedef struct QFontMetricsF QFontMetricsF;
typedef struct QPaintDevice QPaintDevice;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTextOption QTextOption;
#endif

QTLIBC_API QFontMetrics* QFontMetrics_new(QFont* param1);
QTLIBC_API QFontMetrics* QFontMetrics_new2(QFont* font, QPaintDevice* pd);
QTLIBC_API QFontMetrics* QFontMetrics_new3(QFontMetrics* param1);
QTLIBC_API void QFontMetrics_OperatorAssign(QFontMetrics* self, QFontMetrics* param1);
QTLIBC_API void QFontMetrics_Swap(QFontMetrics* self, QFontMetrics* other);
QTLIBC_API int QFontMetrics_Ascent(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_CapHeight(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_Descent(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_Height(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_Leading(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_LineSpacing(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_MinLeftBearing(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_MinRightBearing(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_MaxWidth(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_XHeight(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_AverageCharWidth(const QFontMetrics* self);
QTLIBC_API bool QFontMetrics_InFont(const QFontMetrics* self, QChar* param1);
QTLIBC_API bool QFontMetrics_InFontUcs4(const QFontMetrics* self, unsigned int ucs4);
QTLIBC_API int QFontMetrics_LeftBearing(const QFontMetrics* self, QChar* param1);
QTLIBC_API int QFontMetrics_RightBearing(const QFontMetrics* self, QChar* param1);
QTLIBC_API int QFontMetrics_HorizontalAdvance(const QFontMetrics* self, libqt_string param1);
QTLIBC_API int QFontMetrics_HorizontalAdvance2(const QFontMetrics* self, libqt_string param1, QTextOption* textOption);
QTLIBC_API int QFontMetrics_HorizontalAdvanceWithQChar(const QFontMetrics* self, QChar* param1);
QTLIBC_API QRect* QFontMetrics_BoundingRect(const QFontMetrics* self, QChar* param1);
QTLIBC_API QRect* QFontMetrics_BoundingRectWithText(const QFontMetrics* self, libqt_string text);
QTLIBC_API QRect* QFontMetrics_BoundingRect2(const QFontMetrics* self, libqt_string text, QTextOption* textOption);
QTLIBC_API QRect* QFontMetrics_BoundingRect3(const QFontMetrics* self, QRect* r, int flags, libqt_string text);
QTLIBC_API QRect* QFontMetrics_BoundingRect4(const QFontMetrics* self, int x, int y, int w, int h, int flags, libqt_string text);
QTLIBC_API QSize* QFontMetrics_Size(const QFontMetrics* self, int flags, libqt_string str);
QTLIBC_API QRect* QFontMetrics_TightBoundingRect(const QFontMetrics* self, libqt_string text);
QTLIBC_API QRect* QFontMetrics_TightBoundingRect2(const QFontMetrics* self, libqt_string text, QTextOption* textOption);
QTLIBC_API libqt_string QFontMetrics_ElidedText(const QFontMetrics* self, libqt_string text, int mode, int width);
QTLIBC_API int QFontMetrics_UnderlinePos(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_OverlinePos(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_StrikeOutPos(const QFontMetrics* self);
QTLIBC_API int QFontMetrics_LineWidth(const QFontMetrics* self);
QTLIBC_API double QFontMetrics_FontDpi(const QFontMetrics* self);
QTLIBC_API bool QFontMetrics_OperatorEqual(const QFontMetrics* self, QFontMetrics* other);
QTLIBC_API bool QFontMetrics_OperatorNotEqual(const QFontMetrics* self, QFontMetrics* other);
QTLIBC_API int QFontMetrics_HorizontalAdvance22(const QFontMetrics* self, libqt_string param1, int lenVal);
QTLIBC_API QRect* QFontMetrics_BoundingRect42(const QFontMetrics* self, QRect* r, int flags, libqt_string text, int tabstops);
QTLIBC_API QRect* QFontMetrics_BoundingRect5(const QFontMetrics* self, QRect* r, int flags, libqt_string text, int tabstops, int* tabarray);
QTLIBC_API QRect* QFontMetrics_BoundingRect7(const QFontMetrics* self, int x, int y, int w, int h, int flags, libqt_string text, int tabstops);
QTLIBC_API QRect* QFontMetrics_BoundingRect8(const QFontMetrics* self, int x, int y, int w, int h, int flags, libqt_string text, int tabstops, int* tabarray);
QTLIBC_API QSize* QFontMetrics_Size3(const QFontMetrics* self, int flags, libqt_string str, int tabstops);
QTLIBC_API QSize* QFontMetrics_Size4(const QFontMetrics* self, int flags, libqt_string str, int tabstops, int* tabarray);
QTLIBC_API libqt_string QFontMetrics_ElidedText4(const QFontMetrics* self, libqt_string text, int mode, int width, int flags);
QTLIBC_API void QFontMetrics_Delete(QFontMetrics* self);

QTLIBC_API QFontMetricsF* QFontMetricsF_new(QFont* font);
QTLIBC_API QFontMetricsF* QFontMetricsF_new2(QFont* font, QPaintDevice* pd);
QTLIBC_API QFontMetricsF* QFontMetricsF_new3(QFontMetrics* param1);
QTLIBC_API QFontMetricsF* QFontMetricsF_new4(QFontMetricsF* param1);
QTLIBC_API void QFontMetricsF_OperatorAssign(QFontMetricsF* self, QFontMetricsF* param1);
QTLIBC_API void QFontMetricsF_OperatorAssignWithQFontMetrics(QFontMetricsF* self, QFontMetrics* param1);
QTLIBC_API void QFontMetricsF_Swap(QFontMetricsF* self, QFontMetricsF* other);
QTLIBC_API double QFontMetricsF_Ascent(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_CapHeight(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_Descent(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_Height(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_Leading(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_LineSpacing(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_MinLeftBearing(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_MinRightBearing(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_MaxWidth(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_XHeight(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_AverageCharWidth(const QFontMetricsF* self);
QTLIBC_API bool QFontMetricsF_InFont(const QFontMetricsF* self, QChar* param1);
QTLIBC_API bool QFontMetricsF_InFontUcs4(const QFontMetricsF* self, unsigned int ucs4);
QTLIBC_API double QFontMetricsF_LeftBearing(const QFontMetricsF* self, QChar* param1);
QTLIBC_API double QFontMetricsF_RightBearing(const QFontMetricsF* self, QChar* param1);
QTLIBC_API double QFontMetricsF_HorizontalAdvance(const QFontMetricsF* self, libqt_string stringVal);
QTLIBC_API double QFontMetricsF_HorizontalAdvanceWithQChar(const QFontMetricsF* self, QChar* param1);
QTLIBC_API double QFontMetricsF_HorizontalAdvance2(const QFontMetricsF* self, libqt_string stringVal, QTextOption* textOption);
QTLIBC_API QRectF* QFontMetricsF_BoundingRect(const QFontMetricsF* self, libqt_string stringVal);
QTLIBC_API QRectF* QFontMetricsF_BoundingRect2(const QFontMetricsF* self, libqt_string text, QTextOption* textOption);
QTLIBC_API QRectF* QFontMetricsF_BoundingRectWithQChar(const QFontMetricsF* self, QChar* param1);
QTLIBC_API QRectF* QFontMetricsF_BoundingRect3(const QFontMetricsF* self, QRectF* r, int flags, libqt_string stringVal);
QTLIBC_API QSizeF* QFontMetricsF_Size(const QFontMetricsF* self, int flags, libqt_string str);
QTLIBC_API QRectF* QFontMetricsF_TightBoundingRect(const QFontMetricsF* self, libqt_string text);
QTLIBC_API QRectF* QFontMetricsF_TightBoundingRect2(const QFontMetricsF* self, libqt_string text, QTextOption* textOption);
QTLIBC_API libqt_string QFontMetricsF_ElidedText(const QFontMetricsF* self, libqt_string text, int mode, double width);
QTLIBC_API double QFontMetricsF_UnderlinePos(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_OverlinePos(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_StrikeOutPos(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_LineWidth(const QFontMetricsF* self);
QTLIBC_API double QFontMetricsF_FontDpi(const QFontMetricsF* self);
QTLIBC_API bool QFontMetricsF_OperatorEqual(const QFontMetricsF* self, QFontMetricsF* other);
QTLIBC_API bool QFontMetricsF_OperatorNotEqual(const QFontMetricsF* self, QFontMetricsF* other);
QTLIBC_API double QFontMetricsF_HorizontalAdvance22(const QFontMetricsF* self, libqt_string stringVal, int length);
QTLIBC_API QRectF* QFontMetricsF_BoundingRect4(const QFontMetricsF* self, QRectF* r, int flags, libqt_string stringVal, int tabstops);
QTLIBC_API QRectF* QFontMetricsF_BoundingRect5(const QFontMetricsF* self, QRectF* r, int flags, libqt_string stringVal, int tabstops, int* tabarray);
QTLIBC_API QSizeF* QFontMetricsF_Size3(const QFontMetricsF* self, int flags, libqt_string str, int tabstops);
QTLIBC_API QSizeF* QFontMetricsF_Size4(const QFontMetricsF* self, int flags, libqt_string str, int tabstops, int* tabarray);
QTLIBC_API libqt_string QFontMetricsF_ElidedText4(const QFontMetricsF* self, libqt_string text, int mode, double width, int flags);
QTLIBC_API void QFontMetricsF_Delete(QFontMetricsF* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
