#pragma once
#ifndef SRC_SVGC_LIBQSVGGENERATOR_H
#define SRC_SVGC_LIBQSVGGENERATOR_H

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
typedef struct QIODevice QIODevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSvgGenerator QSvgGenerator;
#endif

QTLIBC_API QSvgGenerator* QSvgGenerator_new();
QTLIBC_API libqt_string QSvgGenerator_Title(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_SetTitle(QSvgGenerator* self, libqt_string title);
QTLIBC_API libqt_string QSvgGenerator_Description(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_SetDescription(QSvgGenerator* self, libqt_string description);
QTLIBC_API QSize* QSvgGenerator_Size(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_SetSize(QSvgGenerator* self, QSize* size);
QTLIBC_API QRect* QSvgGenerator_ViewBox(const QSvgGenerator* self);
QTLIBC_API QRectF* QSvgGenerator_ViewBoxF(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_SetViewBox(QSvgGenerator* self, QRect* viewBox);
QTLIBC_API void QSvgGenerator_SetViewBoxWithViewBox(QSvgGenerator* self, QRectF* viewBox);
QTLIBC_API libqt_string QSvgGenerator_FileName(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_SetFileName(QSvgGenerator* self, libqt_string fileName);
QTLIBC_API QIODevice* QSvgGenerator_OutputDevice(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_SetOutputDevice(QSvgGenerator* self, QIODevice* outputDevice);
QTLIBC_API void QSvgGenerator_SetResolution(QSvgGenerator* self, int dpi);
QTLIBC_API int QSvgGenerator_Resolution(const QSvgGenerator* self);
QTLIBC_API QPaintEngine* QSvgGenerator_PaintEngine(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_OnPaintEngine(const QSvgGenerator* self, intptr_t slot);
QTLIBC_API QPaintEngine* QSvgGenerator_QBasePaintEngine(const QSvgGenerator* self);
QTLIBC_API int QSvgGenerator_Metric(const QSvgGenerator* self, int metric);
QTLIBC_API void QSvgGenerator_OnMetric(const QSvgGenerator* self, intptr_t slot);
QTLIBC_API int QSvgGenerator_QBaseMetric(const QSvgGenerator* self, int metric);
QTLIBC_API int QSvgGenerator_DevType(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_OnDevType(const QSvgGenerator* self, intptr_t slot);
QTLIBC_API int QSvgGenerator_QBaseDevType(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_InitPainter(const QSvgGenerator* self, QPainter* painter);
QTLIBC_API void QSvgGenerator_OnInitPainter(const QSvgGenerator* self, intptr_t slot);
QTLIBC_API void QSvgGenerator_QBaseInitPainter(const QSvgGenerator* self, QPainter* painter);
QTLIBC_API QPaintDevice* QSvgGenerator_Redirected(const QSvgGenerator* self, QPoint* offset);
QTLIBC_API void QSvgGenerator_OnRedirected(const QSvgGenerator* self, intptr_t slot);
QTLIBC_API QPaintDevice* QSvgGenerator_QBaseRedirected(const QSvgGenerator* self, QPoint* offset);
QTLIBC_API QPainter* QSvgGenerator_SharedPainter(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_OnSharedPainter(const QSvgGenerator* self, intptr_t slot);
QTLIBC_API QPainter* QSvgGenerator_QBaseSharedPainter(const QSvgGenerator* self);
QTLIBC_API void QSvgGenerator_Delete(QSvgGenerator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
