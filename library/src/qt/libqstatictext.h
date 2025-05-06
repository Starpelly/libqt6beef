#pragma once
#ifndef SRC_QTC_LIBQSTATICTEXT_H
#define SRC_QTC_LIBQSTATICTEXT_H

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
typedef struct QSizeF QSizeF;
typedef struct QStaticText QStaticText;
typedef struct QTextOption QTextOption;
typedef struct QTransform QTransform;
#endif

#ifdef __cplusplus
typedef QStaticText::PerformanceHint PerformanceHint; // C++ enum
#else
typedef int PerformanceHint; // C ABI enum
#endif

QTLIBC_API QStaticText* QStaticText_new();
QTLIBC_API QStaticText* QStaticText_new2(libqt_string text);
QTLIBC_API QStaticText* QStaticText_new3(QStaticText* other);
QTLIBC_API void QStaticText_OperatorAssign(QStaticText* self, QStaticText* param1);
QTLIBC_API void QStaticText_Swap(QStaticText* self, QStaticText* other);
QTLIBC_API void QStaticText_SetText(QStaticText* self, libqt_string text);
QTLIBC_API libqt_string QStaticText_Text(const QStaticText* self);
QTLIBC_API void QStaticText_SetTextFormat(QStaticText* self, int textFormat);
QTLIBC_API int QStaticText_TextFormat(const QStaticText* self);
QTLIBC_API void QStaticText_SetTextWidth(QStaticText* self, double textWidth);
QTLIBC_API double QStaticText_TextWidth(const QStaticText* self);
QTLIBC_API void QStaticText_SetTextOption(QStaticText* self, QTextOption* textOption);
QTLIBC_API QTextOption* QStaticText_TextOption(const QStaticText* self);
QTLIBC_API QSizeF* QStaticText_Size(const QStaticText* self);
QTLIBC_API void QStaticText_Prepare(QStaticText* self);
QTLIBC_API void QStaticText_SetPerformanceHint(QStaticText* self, int performanceHint);
QTLIBC_API int QStaticText_PerformanceHint(const QStaticText* self);
QTLIBC_API bool QStaticText_OperatorEqual(const QStaticText* self, QStaticText* param1);
QTLIBC_API bool QStaticText_OperatorNotEqual(const QStaticText* self, QStaticText* param1);
QTLIBC_API void QStaticText_Prepare1(QStaticText* self, QTransform* matrix);
QTLIBC_API void QStaticText_Prepare2(QStaticText* self, QTransform* matrix, QFont* font);
QTLIBC_API void QStaticText_Delete(QStaticText* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
