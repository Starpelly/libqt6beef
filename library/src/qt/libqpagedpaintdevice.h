#pragma once
#ifndef SRC_QTC_LIBQPAGEDPAINTDEVICE_H
#define SRC_QTC_LIBQPAGEDPAINTDEVICE_H

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
typedef struct QMarginsF QMarginsF;
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
#endif

#ifdef __cplusplus
typedef QPagedPaintDevice::PdfVersion PdfVersion; // C++ enum
#else
typedef int PdfVersion; // C ABI enum
#endif

QTLIBC_API bool QPagedPaintDevice_NewPage(QPagedPaintDevice* self);
QTLIBC_API bool QPagedPaintDevice_SetPageLayout(QPagedPaintDevice* self, QPageLayout* pageLayout);
QTLIBC_API bool QPagedPaintDevice_SetPageSize(QPagedPaintDevice* self, QPageSize* pageSize);
QTLIBC_API bool QPagedPaintDevice_SetPageOrientation(QPagedPaintDevice* self, int orientation);
QTLIBC_API bool QPagedPaintDevice_SetPageMargins(QPagedPaintDevice* self, QMarginsF* margins, int units);
QTLIBC_API QPageLayout* QPagedPaintDevice_PageLayout(const QPagedPaintDevice* self);
QTLIBC_API void QPagedPaintDevice_SetPageRanges(QPagedPaintDevice* self, QPageRanges* ranges);
QTLIBC_API QPageRanges* QPagedPaintDevice_PageRanges(const QPagedPaintDevice* self);
QTLIBC_API int QPagedPaintDevice_DevType(const QPagedPaintDevice* self);
QTLIBC_API QPaintEngine* QPagedPaintDevice_PaintEngine(const QPagedPaintDevice* self);
QTLIBC_API void QPagedPaintDevice_Delete(QPagedPaintDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
