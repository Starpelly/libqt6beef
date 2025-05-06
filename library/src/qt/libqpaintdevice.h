#pragma once
#ifndef SRC_QTC_LIBQPAINTDEVICE_H
#define SRC_QTC_LIBQPAINTDEVICE_H

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
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
#endif

#ifdef __cplusplus
typedef QPaintDevice::PaintDeviceMetric PaintDeviceMetric; // C++ enum
#else
typedef int PaintDeviceMetric; // C ABI enum
#endif

QTLIBC_API int QPaintDevice_DevType(const QPaintDevice* self);
QTLIBC_API bool QPaintDevice_PaintingActive(const QPaintDevice* self);
QTLIBC_API QPaintEngine* QPaintDevice_PaintEngine(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_Width(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_Height(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_WidthMM(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_HeightMM(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_LogicalDpiX(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_LogicalDpiY(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_PhysicalDpiX(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_PhysicalDpiY(const QPaintDevice* self);
QTLIBC_API double QPaintDevice_DevicePixelRatio(const QPaintDevice* self);
QTLIBC_API double QPaintDevice_DevicePixelRatioF(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_ColorCount(const QPaintDevice* self);
QTLIBC_API int QPaintDevice_Depth(const QPaintDevice* self);
QTLIBC_API double QPaintDevice_DevicePixelRatioFScale();
QTLIBC_API void QPaintDevice_Delete(QPaintDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
