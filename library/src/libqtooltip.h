#pragma once
#ifndef SRCC_LIBQTOOLTIP_H
#define SRCC_LIBQTOOLTIP_H

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
typedef struct QPalette QPalette;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QToolTip QToolTip;
typedef struct QWidget QWidget;
#endif

QTLIBC_API QToolTip* QToolTip_new(QToolTip* other);
QTLIBC_API QToolTip* QToolTip_new2(QToolTip* other);
QTLIBC_API void QToolTip_CopyAssign(QToolTip* self, QToolTip* other);
QTLIBC_API void QToolTip_MoveAssign(QToolTip* self, QToolTip* other);
QTLIBC_API void QToolTip_ShowText(QPoint* pos, libqt_string text);
QTLIBC_API void QToolTip_HideText();
QTLIBC_API bool QToolTip_IsVisible();
QTLIBC_API libqt_string QToolTip_Text();
QTLIBC_API QPalette* QToolTip_Palette();
QTLIBC_API void QToolTip_SetPalette(QPalette* palette);
QTLIBC_API QFont* QToolTip_Font();
QTLIBC_API void QToolTip_SetFont(QFont* font);
QTLIBC_API void QToolTip_ShowText3(QPoint* pos, libqt_string text, QWidget* w);
QTLIBC_API void QToolTip_ShowText4(QPoint* pos, libqt_string text, QWidget* w, QRect* rect);
QTLIBC_API void QToolTip_ShowText5(QPoint* pos, libqt_string text, QWidget* w, QRect* rect, int msecShowTime);
QTLIBC_API void QToolTip_Delete(QToolTip* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
