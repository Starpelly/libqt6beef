#pragma once
#ifndef SRC_QTC_LIBQCOLORMAP_H
#define SRC_QTC_LIBQCOLORMAP_H

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
typedef struct QColor QColor;
typedef struct QColormap QColormap;
#endif

#ifdef __cplusplus
typedef QColormap::Mode Mode; // C++ enum
#else
typedef int Mode; // C ABI enum
#endif

QTLIBC_API QColormap* QColormap_new(QColormap* colormap);
QTLIBC_API void QColormap_Initialize();
QTLIBC_API void QColormap_Cleanup();
QTLIBC_API QColormap* QColormap_Instance();
QTLIBC_API void QColormap_OperatorAssign(QColormap* self, QColormap* colormap);
QTLIBC_API int QColormap_Mode(const QColormap* self);
QTLIBC_API int QColormap_Depth(const QColormap* self);
QTLIBC_API int QColormap_Size(const QColormap* self);
QTLIBC_API unsigned int QColormap_Pixel(const QColormap* self, QColor* color);
QTLIBC_API QColor* QColormap_ColorAt(const QColormap* self, unsigned int pixel);
QTLIBC_API libqt_list /* of QColor* */ QColormap_Colormap(const QColormap* self);
QTLIBC_API QColormap* QColormap_Instance1(int screen);
QTLIBC_API void QColormap_Delete(QColormap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
