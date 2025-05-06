#pragma once
#ifndef SRC_QTC_LIBQPIXMAP_H
#define SRC_QTC_LIBQPIXMAP_H

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
typedef QPixmap::DataPtr DataPtr; // C++ QFlags
#else

#endif

QTLIBC_API QPixmap* QPixmap_new();
QTLIBC_API QPixmap* QPixmap_new2(int w, int h);
QTLIBC_API QPixmap* QPixmap_new3(QSize* param1);
QTLIBC_API QPixmap* QPixmap_new4(libqt_string fileName);
QTLIBC_API QPixmap* QPixmap_new5(QPixmap* param1);
QTLIBC_API QPixmap* QPixmap_new6(libqt_string fileName, const char* format);
QTLIBC_API QPixmap* QPixmap_new7(libqt_string fileName, const char* format, int flags);
QTLIBC_API void QPixmap_OperatorAssign(QPixmap* self, QPixmap* param1);
QTLIBC_API void QPixmap_Swap(QPixmap* self, QPixmap* other);
QTLIBC_API QVariant* QPixmap_ToQVariant(const QPixmap* self);
QTLIBC_API bool QPixmap_IsNull(const QPixmap* self);
QTLIBC_API int QPixmap_DevType(const QPixmap* self);
QTLIBC_API void QPixmap_OnDevType(const QPixmap* self, intptr_t slot);
QTLIBC_API int QPixmap_QBaseDevType(const QPixmap* self);
QTLIBC_API int QPixmap_Width(const QPixmap* self);
QTLIBC_API int QPixmap_Height(const QPixmap* self);
QTLIBC_API QSize* QPixmap_Size(const QPixmap* self);
QTLIBC_API QRect* QPixmap_Rect(const QPixmap* self);
QTLIBC_API int QPixmap_Depth(const QPixmap* self);
QTLIBC_API int QPixmap_DefaultDepth();
QTLIBC_API void QPixmap_Fill(QPixmap* self);
QTLIBC_API QBitmap* QPixmap_Mask(const QPixmap* self);
QTLIBC_API void QPixmap_SetMask(QPixmap* self, QBitmap* mask);
QTLIBC_API double QPixmap_DevicePixelRatio(const QPixmap* self);
QTLIBC_API void QPixmap_SetDevicePixelRatio(QPixmap* self, double scaleFactor);
QTLIBC_API QSizeF* QPixmap_DeviceIndependentSize(const QPixmap* self);
QTLIBC_API bool QPixmap_HasAlpha(const QPixmap* self);
QTLIBC_API bool QPixmap_HasAlphaChannel(const QPixmap* self);
QTLIBC_API QBitmap* QPixmap_CreateHeuristicMask(const QPixmap* self);
QTLIBC_API QBitmap* QPixmap_CreateMaskFromColor(const QPixmap* self, QColor* maskColor);
QTLIBC_API QPixmap* QPixmap_Scaled(const QPixmap* self, int w, int h);
QTLIBC_API QPixmap* QPixmap_ScaledWithQSize(const QPixmap* self, QSize* s);
QTLIBC_API QPixmap* QPixmap_ScaledToWidth(const QPixmap* self, int w);
QTLIBC_API QPixmap* QPixmap_ScaledToHeight(const QPixmap* self, int h);
QTLIBC_API QPixmap* QPixmap_Transformed(const QPixmap* self, QTransform* param1);
QTLIBC_API QTransform* QPixmap_TrueMatrix(QTransform* m, int w, int h);
QTLIBC_API QImage* QPixmap_ToImage(const QPixmap* self);
QTLIBC_API QPixmap* QPixmap_FromImage(QImage* image);
QTLIBC_API QPixmap* QPixmap_FromImageReader(QImageReader* imageReader);
QTLIBC_API bool QPixmap_Load(QPixmap* self, libqt_string fileName);
QTLIBC_API bool QPixmap_LoadFromData(QPixmap* self, const unsigned char* buf, unsigned int lenVal);
QTLIBC_API bool QPixmap_LoadFromDataWithData(QPixmap* self, libqt_string data);
QTLIBC_API bool QPixmap_Save(const QPixmap* self, libqt_string fileName);
QTLIBC_API bool QPixmap_SaveWithDevice(const QPixmap* self, QIODevice* device);
QTLIBC_API bool QPixmap_ConvertFromImage(QPixmap* self, QImage* img);
QTLIBC_API QPixmap* QPixmap_Copy(const QPixmap* self, int x, int y, int width, int height);
QTLIBC_API QPixmap* QPixmap_Copy2(const QPixmap* self);
QTLIBC_API void QPixmap_Scroll(QPixmap* self, int dx, int dy, int x, int y, int width, int height);
QTLIBC_API void QPixmap_Scroll2(QPixmap* self, int dx, int dy, QRect* rect);
QTLIBC_API long long QPixmap_CacheKey(const QPixmap* self);
QTLIBC_API bool QPixmap_IsDetached(const QPixmap* self);
QTLIBC_API void QPixmap_Detach(QPixmap* self);
QTLIBC_API bool QPixmap_IsQBitmap(const QPixmap* self);
QTLIBC_API QPaintEngine* QPixmap_PaintEngine(const QPixmap* self);
QTLIBC_API void QPixmap_OnPaintEngine(const QPixmap* self, intptr_t slot);
QTLIBC_API QPaintEngine* QPixmap_QBasePaintEngine(const QPixmap* self);
QTLIBC_API bool QPixmap_OperatorNot(const QPixmap* self);
QTLIBC_API int QPixmap_Metric(const QPixmap* self, int param1);
QTLIBC_API void QPixmap_OnMetric(const QPixmap* self, intptr_t slot);
QTLIBC_API int QPixmap_QBaseMetric(const QPixmap* self, int param1);
QTLIBC_API void QPixmap_Fill1(QPixmap* self, QColor* fillColor);
QTLIBC_API QBitmap* QPixmap_CreateHeuristicMask1(const QPixmap* self, bool clipTight);
QTLIBC_API QBitmap* QPixmap_CreateMaskFromColor2(const QPixmap* self, QColor* maskColor, int mode);
QTLIBC_API QPixmap* QPixmap_Scaled3(const QPixmap* self, int w, int h, int aspectMode);
QTLIBC_API QPixmap* QPixmap_Scaled4(const QPixmap* self, int w, int h, int aspectMode, int mode);
QTLIBC_API QPixmap* QPixmap_Scaled2(const QPixmap* self, QSize* s, int aspectMode);
QTLIBC_API QPixmap* QPixmap_Scaled32(const QPixmap* self, QSize* s, int aspectMode, int mode);
QTLIBC_API QPixmap* QPixmap_ScaledToWidth2(const QPixmap* self, int w, int mode);
QTLIBC_API QPixmap* QPixmap_ScaledToHeight2(const QPixmap* self, int h, int mode);
QTLIBC_API QPixmap* QPixmap_Transformed2(const QPixmap* self, QTransform* param1, int mode);
QTLIBC_API QPixmap* QPixmap_FromImage2(QImage* image, int flags);
QTLIBC_API QPixmap* QPixmap_FromImageReader2(QImageReader* imageReader, int flags);
QTLIBC_API bool QPixmap_Load2(QPixmap* self, libqt_string fileName, const char* format);
QTLIBC_API bool QPixmap_Load3(QPixmap* self, libqt_string fileName, const char* format, int flags);
QTLIBC_API bool QPixmap_LoadFromData3(QPixmap* self, const unsigned char* buf, unsigned int lenVal, const char* format);
QTLIBC_API bool QPixmap_LoadFromData4(QPixmap* self, const unsigned char* buf, unsigned int lenVal, const char* format, int flags);
QTLIBC_API bool QPixmap_LoadFromData2(QPixmap* self, libqt_string data, const char* format);
QTLIBC_API bool QPixmap_LoadFromData32(QPixmap* self, libqt_string data, const char* format, int flags);
QTLIBC_API bool QPixmap_Save2(const QPixmap* self, libqt_string fileName, const char* format);
QTLIBC_API bool QPixmap_Save3(const QPixmap* self, libqt_string fileName, const char* format, int quality);
QTLIBC_API bool QPixmap_Save22(const QPixmap* self, QIODevice* device, const char* format);
QTLIBC_API bool QPixmap_Save32(const QPixmap* self, QIODevice* device, const char* format, int quality);
QTLIBC_API bool QPixmap_ConvertFromImage2(QPixmap* self, QImage* img, int flags);
QTLIBC_API QPixmap* QPixmap_Copy1(const QPixmap* self, QRect* rect);
QTLIBC_API void QPixmap_Scroll7(QPixmap* self, int dx, int dy, int x, int y, int width, int height, QRegion* exposed);
QTLIBC_API void QPixmap_Scroll4(QPixmap* self, int dx, int dy, QRect* rect, QRegion* exposed);
QTLIBC_API void QPixmap_InitPainter(const QPixmap* self, QPainter* painter);
QTLIBC_API void QPixmap_OnInitPainter(const QPixmap* self, intptr_t slot);
QTLIBC_API void QPixmap_QBaseInitPainter(const QPixmap* self, QPainter* painter);
QTLIBC_API QPaintDevice* QPixmap_Redirected(const QPixmap* self, QPoint* offset);
QTLIBC_API void QPixmap_OnRedirected(const QPixmap* self, intptr_t slot);
QTLIBC_API QPaintDevice* QPixmap_QBaseRedirected(const QPixmap* self, QPoint* offset);
QTLIBC_API QPainter* QPixmap_SharedPainter(const QPixmap* self);
QTLIBC_API void QPixmap_OnSharedPainter(const QPixmap* self, intptr_t slot);
QTLIBC_API QPainter* QPixmap_QBaseSharedPainter(const QPixmap* self);
QTLIBC_API void QPixmap_Delete(QPixmap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
