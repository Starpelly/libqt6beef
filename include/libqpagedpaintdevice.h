#pragma once
#ifndef SRCC_LIBQPAGEDPAINTDEVICE_H
#define SRCC_LIBQPAGEDPAINTDEVICE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins)
typedef QPagedPaintDevice::Margins QPagedPaintDevice__Margins;
#endif
#else
typedef struct QMarginsF QMarginsF;
typedef struct QPageLayout QPageLayout;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPagedPaintDevice__Margins QPagedPaintDevice__Margins;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QSizeF QSizeF;
#endif

#ifdef __cplusplus
typedef QPagedPaintDevice::PageSize PageSize;     // C++ enum
typedef QPagedPaintDevice::PdfVersion PdfVersion; // C++ enum
#else
typedef int PageSize;   // C ABI enum
typedef int PdfVersion; // C ABI enum
#endif

bool QPagedPaintDevice_NewPage(QPagedPaintDevice* self);
bool QPagedPaintDevice_SetPageLayout(QPagedPaintDevice* self, QPageLayout* pageLayout);
bool QPagedPaintDevice_SetPageSize(QPagedPaintDevice* self, QPageSize* pageSize);
bool QPagedPaintDevice_SetPageOrientation(QPagedPaintDevice* self, int orientation);
bool QPagedPaintDevice_SetPageMargins(QPagedPaintDevice* self, QMarginsF* margins);
bool QPagedPaintDevice_SetPageMargins2(QPagedPaintDevice* self, QMarginsF* margins, int units);
QPageLayout* QPagedPaintDevice_PageLayout(const QPagedPaintDevice* self);
void QPagedPaintDevice_SetPageSizeWithSize(QPagedPaintDevice* self, int size);
int QPagedPaintDevice_PageSize(const QPagedPaintDevice* self);
void QPagedPaintDevice_SetPageSizeMM(QPagedPaintDevice* self, QSizeF* size);
QSizeF* QPagedPaintDevice_PageSizeMM(const QPagedPaintDevice* self);
void QPagedPaintDevice_SetMargins(QPagedPaintDevice* self, QPagedPaintDevice__Margins* margins);
QPagedPaintDevice__Margins* QPagedPaintDevice_Margins(const QPagedPaintDevice* self);
int QPagedPaintDevice_DevType(const QPagedPaintDevice* self);
QPaintEngine* QPagedPaintDevice_PaintEngine(const QPagedPaintDevice* self);
void QPagedPaintDevice_Delete(QPagedPaintDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
