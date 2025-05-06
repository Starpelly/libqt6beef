#pragma once
#ifndef SRCC_LIBQBITMAP_H
#define SRCC_LIBQBITMAP_H

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
typedef struct QBitmap QBitmap;
typedef struct QColor QColor;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QImageReader QImageReader;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QBitmap::DataPtr DataPtr; // C++ QFlags
#else

#endif

QTLIBC_API QBitmap* QBitmap_new();
QTLIBC_API QBitmap* QBitmap_new2(QPixmap* param1);
QTLIBC_API QBitmap* QBitmap_new3(int w, int h);
QTLIBC_API QBitmap* QBitmap_new4(QSize* param1);
QTLIBC_API QBitmap* QBitmap_new5(libqt_string fileName);
QTLIBC_API QBitmap* QBitmap_new6(QBitmap* param1);
QTLIBC_API QBitmap* QBitmap_new7(libqt_string fileName, const char* format);
QTLIBC_API void QBitmap_OperatorAssign(QBitmap* self, QPixmap* param1);
QTLIBC_API void QBitmap_Swap(QBitmap* self, QBitmap* other);
QTLIBC_API QVariant* QBitmap_ToQVariant(const QBitmap* self);
QTLIBC_API void QBitmap_Clear(QBitmap* self);
QTLIBC_API QBitmap* QBitmap_FromImage(QImage* image);
QTLIBC_API QBitmap* QBitmap_FromData(QSize* size, const unsigned char* bits);
QTLIBC_API QBitmap* QBitmap_FromPixmap(QPixmap* pixmap);
QTLIBC_API QBitmap* QBitmap_Transformed(const QBitmap* self, QTransform* matrix);
QTLIBC_API void QBitmap_OperatorAssignWithQBitmap(QBitmap* self, QBitmap* param1);
QTLIBC_API QBitmap* QBitmap_FromImage2(QImage* image, int flags);
QTLIBC_API QBitmap* QBitmap_FromData3(QSize* size, const unsigned char* bits, int monoFormat);
QTLIBC_API int QBitmap_DevType(const QBitmap* self);
QTLIBC_API void QBitmap_OnDevType(const QBitmap* self, intptr_t slot);
QTLIBC_API int QBitmap_QBaseDevType(const QBitmap* self);
QTLIBC_API QPaintEngine* QBitmap_PaintEngine(const QBitmap* self);
QTLIBC_API void QBitmap_OnPaintEngine(const QBitmap* self, intptr_t slot);
QTLIBC_API QPaintEngine* QBitmap_QBasePaintEngine(const QBitmap* self);
QTLIBC_API int QBitmap_Metric(const QBitmap* self, int param1);
QTLIBC_API void QBitmap_OnMetric(const QBitmap* self, intptr_t slot);
QTLIBC_API int QBitmap_QBaseMetric(const QBitmap* self, int param1);
QTLIBC_API void QBitmap_InitPainter(const QBitmap* self, QPainter* painter);
QTLIBC_API void QBitmap_OnInitPainter(const QBitmap* self, intptr_t slot);
QTLIBC_API void QBitmap_QBaseInitPainter(const QBitmap* self, QPainter* painter);
QTLIBC_API QPaintDevice* QBitmap_Redirected(const QBitmap* self, QPoint* offset);
QTLIBC_API void QBitmap_OnRedirected(const QBitmap* self, intptr_t slot);
QTLIBC_API QPaintDevice* QBitmap_QBaseRedirected(const QBitmap* self, QPoint* offset);
QTLIBC_API QPainter* QBitmap_SharedPainter(const QBitmap* self);
QTLIBC_API void QBitmap_OnSharedPainter(const QBitmap* self, intptr_t slot);
QTLIBC_API QPainter* QBitmap_QBaseSharedPainter(const QBitmap* self);
QTLIBC_API void QBitmap_Delete(QBitmap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
