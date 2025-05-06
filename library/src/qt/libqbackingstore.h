#pragma once
#ifndef SRC_QTC_LIBQBACKINGSTORE_H
#define SRC_QTC_LIBQBACKINGSTORE_H

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
typedef struct QBackingStore QBackingStore;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPoint QPoint;
typedef struct QRegion QRegion;
typedef struct QSize QSize;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QBackingStore* QBackingStore_new(QWindow* window);
QTLIBC_API QWindow* QBackingStore_Window(const QBackingStore* self);
QTLIBC_API QPaintDevice* QBackingStore_PaintDevice(QBackingStore* self);
QTLIBC_API void QBackingStore_Flush(QBackingStore* self, QRegion* region);
QTLIBC_API void QBackingStore_Resize(QBackingStore* self, QSize* size);
QTLIBC_API QSize* QBackingStore_Size(const QBackingStore* self);
QTLIBC_API bool QBackingStore_Scroll(QBackingStore* self, QRegion* area, int dx, int dy);
QTLIBC_API void QBackingStore_BeginPaint(QBackingStore* self, QRegion* param1);
QTLIBC_API void QBackingStore_EndPaint(QBackingStore* self);
QTLIBC_API void QBackingStore_SetStaticContents(QBackingStore* self, QRegion* region);
QTLIBC_API QRegion* QBackingStore_StaticContents(const QBackingStore* self);
QTLIBC_API bool QBackingStore_HasStaticContents(const QBackingStore* self);
QTLIBC_API void QBackingStore_Flush2(QBackingStore* self, QRegion* region, QWindow* window);
QTLIBC_API void QBackingStore_Flush3(QBackingStore* self, QRegion* region, QWindow* window, QPoint* offset);
QTLIBC_API void QBackingStore_Delete(QBackingStore* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
