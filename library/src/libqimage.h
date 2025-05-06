#pragma once
#ifndef SRCC_LIBQIMAGE_H
#define SRCC_LIBQIMAGE_H

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
typedef struct QByteArrayView QByteArrayView;
typedef struct QColor QColor;
typedef struct QColorSpace QColorSpace;
typedef struct QColorTransform QColorTransform;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPixelFormat QPixelFormat;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QImage::DataPtr DataPtr;               // C++ QFlags
typedef QImage::Format Format;                 // C++ enum
typedef QImage::InvertMode InvertMode;         // C++ enum
typedef QImage::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef int Format;          // C ABI enum
typedef int InvertMode;      // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QImage* QImage_new();
QTLIBC_API QImage* QImage_new2(QSize* size, int format);
QTLIBC_API QImage* QImage_new3(int width, int height, int format);
QTLIBC_API QImage* QImage_new4(unsigned char* data, int width, int height, int format);
QTLIBC_API QImage* QImage_new5(const unsigned char* data, int width, int height, int format);
QTLIBC_API QImage* QImage_new6(unsigned char* data, int width, int height, ptrdiff_t bytesPerLine, int format);
QTLIBC_API QImage* QImage_new7(const unsigned char* data, int width, int height, ptrdiff_t bytesPerLine, int format);
QTLIBC_API QImage* QImage_new8(libqt_string fileName);
QTLIBC_API QImage* QImage_new9(QImage* param1);
QTLIBC_API QImage* QImage_new10(libqt_string fileName, const char* format);
QTLIBC_API void QImage_OperatorAssign(QImage* self, QImage* param1);
QTLIBC_API void QImage_Swap(QImage* self, QImage* other);
QTLIBC_API bool QImage_IsNull(const QImage* self);
QTLIBC_API int QImage_DevType(const QImage* self);
QTLIBC_API void QImage_OnDevType(const QImage* self, intptr_t slot);
QTLIBC_API int QImage_QBaseDevType(const QImage* self);
QTLIBC_API bool QImage_OperatorEqual(const QImage* self, QImage* param1);
QTLIBC_API bool QImage_OperatorNotEqual(const QImage* self, QImage* param1);
QTLIBC_API QVariant* QImage_ToQVariant(const QImage* self);
QTLIBC_API void QImage_Detach(QImage* self);
QTLIBC_API bool QImage_IsDetached(const QImage* self);
QTLIBC_API QImage* QImage_Copy(const QImage* self);
QTLIBC_API QImage* QImage_Copy2(const QImage* self, int x, int y, int w, int h);
QTLIBC_API int QImage_Format(const QImage* self);
QTLIBC_API QImage* QImage_ConvertToFormat(const QImage* self, int f);
QTLIBC_API QImage* QImage_ConvertToFormat2(const QImage* self, int f, libqt_list /* of unsigned int */ colorTable);
QTLIBC_API bool QImage_ReinterpretAsFormat(QImage* self, int f);
QTLIBC_API QImage* QImage_ConvertedTo(const QImage* self, int f);
QTLIBC_API void QImage_ConvertTo(QImage* self, int f);
QTLIBC_API int QImage_Width(const QImage* self);
QTLIBC_API int QImage_Height(const QImage* self);
QTLIBC_API QSize* QImage_Size(const QImage* self);
QTLIBC_API QRect* QImage_Rect(const QImage* self);
QTLIBC_API int QImage_Depth(const QImage* self);
QTLIBC_API int QImage_ColorCount(const QImage* self);
QTLIBC_API int QImage_BitPlaneCount(const QImage* self);
QTLIBC_API unsigned int QImage_Color(const QImage* self, int i);
QTLIBC_API void QImage_SetColor(QImage* self, int i, unsigned int c);
QTLIBC_API void QImage_SetColorCount(QImage* self, int colorCount);
QTLIBC_API bool QImage_AllGray(const QImage* self);
QTLIBC_API bool QImage_IsGrayscale(const QImage* self);
QTLIBC_API unsigned char* QImage_Bits(QImage* self);
QTLIBC_API const unsigned char* QImage_Bits2(const QImage* self);
QTLIBC_API const unsigned char* QImage_ConstBits(const QImage* self);
QTLIBC_API ptrdiff_t QImage_SizeInBytes(const QImage* self);
QTLIBC_API unsigned char* QImage_ScanLine(QImage* self, int param1);
QTLIBC_API const unsigned char* QImage_ScanLineWithInt(const QImage* self, int param1);
QTLIBC_API const unsigned char* QImage_ConstScanLine(const QImage* self, int param1);
QTLIBC_API ptrdiff_t QImage_BytesPerLine(const QImage* self);
QTLIBC_API bool QImage_Valid(const QImage* self, int x, int y);
QTLIBC_API bool QImage_ValidWithPt(const QImage* self, QPoint* pt);
QTLIBC_API int QImage_PixelIndex(const QImage* self, int x, int y);
QTLIBC_API int QImage_PixelIndexWithPt(const QImage* self, QPoint* pt);
QTLIBC_API unsigned int QImage_Pixel(const QImage* self, int x, int y);
QTLIBC_API unsigned int QImage_PixelWithPt(const QImage* self, QPoint* pt);
QTLIBC_API void QImage_SetPixel(QImage* self, int x, int y, unsigned int index_or_rgb);
QTLIBC_API void QImage_SetPixel2(QImage* self, QPoint* pt, unsigned int index_or_rgb);
QTLIBC_API QColor* QImage_PixelColor(const QImage* self, int x, int y);
QTLIBC_API QColor* QImage_PixelColorWithPt(const QImage* self, QPoint* pt);
QTLIBC_API void QImage_SetPixelColor(QImage* self, int x, int y, QColor* c);
QTLIBC_API void QImage_SetPixelColor2(QImage* self, QPoint* pt, QColor* c);
QTLIBC_API libqt_list /* of unsigned int */ QImage_ColorTable(const QImage* self);
QTLIBC_API void QImage_SetColorTable(QImage* self, libqt_list /* of unsigned int */ colors);
QTLIBC_API double QImage_DevicePixelRatio(const QImage* self);
QTLIBC_API void QImage_SetDevicePixelRatio(QImage* self, double scaleFactor);
QTLIBC_API QSizeF* QImage_DeviceIndependentSize(const QImage* self);
QTLIBC_API void QImage_Fill(QImage* self, unsigned int pixel);
QTLIBC_API void QImage_FillWithColor(QImage* self, QColor* color);
QTLIBC_API void QImage_Fill2(QImage* self, int color);
QTLIBC_API bool QImage_HasAlphaChannel(const QImage* self);
QTLIBC_API void QImage_SetAlphaChannel(QImage* self, QImage* alphaChannel);
QTLIBC_API QImage* QImage_CreateAlphaMask(const QImage* self);
QTLIBC_API QImage* QImage_CreateHeuristicMask(const QImage* self);
QTLIBC_API QImage* QImage_CreateMaskFromColor(const QImage* self, unsigned int color);
QTLIBC_API QImage* QImage_Scaled(const QImage* self, int w, int h);
QTLIBC_API QImage* QImage_ScaledWithQSize(const QImage* self, QSize* s);
QTLIBC_API QImage* QImage_ScaledToWidth(const QImage* self, int w);
QTLIBC_API QImage* QImage_ScaledToHeight(const QImage* self, int h);
QTLIBC_API QImage* QImage_Transformed(const QImage* self, QTransform* matrix);
QTLIBC_API QTransform* QImage_TrueMatrix(QTransform* param1, int w, int h);
QTLIBC_API QImage* QImage_Mirrored(const QImage* self);
QTLIBC_API QImage* QImage_RgbSwapped(const QImage* self);
QTLIBC_API void QImage_Mirror(QImage* self);
QTLIBC_API void QImage_RgbSwap(QImage* self);
QTLIBC_API void QImage_InvertPixels(QImage* self);
QTLIBC_API QColorSpace* QImage_ColorSpace(const QImage* self);
QTLIBC_API QImage* QImage_ConvertedToColorSpace(const QImage* self, QColorSpace* param1);
QTLIBC_API void QImage_ConvertToColorSpace(QImage* self, QColorSpace* param1);
QTLIBC_API void QImage_SetColorSpace(QImage* self, QColorSpace* colorSpace);
QTLIBC_API QImage* QImage_ColorTransformed(const QImage* self, QColorTransform* transform);
QTLIBC_API void QImage_ApplyColorTransform(QImage* self, QColorTransform* transform);
QTLIBC_API bool QImage_Load(QImage* self, QIODevice* device, const char* format);
QTLIBC_API bool QImage_LoadWithFileName(QImage* self, libqt_string fileName);
QTLIBC_API bool QImage_LoadFromData(QImage* self, QByteArrayView* data);
QTLIBC_API bool QImage_LoadFromData2(QImage* self, const unsigned char* buf, int lenVal);
QTLIBC_API bool QImage_LoadFromDataWithData(QImage* self, libqt_string data);
QTLIBC_API bool QImage_Save(const QImage* self, libqt_string fileName);
QTLIBC_API bool QImage_SaveWithDevice(const QImage* self, QIODevice* device);
QTLIBC_API QImage* QImage_FromData(QByteArrayView* data);
QTLIBC_API QImage* QImage_FromData2(const unsigned char* data, int size);
QTLIBC_API QImage* QImage_FromDataWithData(libqt_string data);
QTLIBC_API long long QImage_CacheKey(const QImage* self);
QTLIBC_API QPaintEngine* QImage_PaintEngine(const QImage* self);
QTLIBC_API void QImage_OnPaintEngine(const QImage* self, intptr_t slot);
QTLIBC_API QPaintEngine* QImage_QBasePaintEngine(const QImage* self);
QTLIBC_API int QImage_DotsPerMeterX(const QImage* self);
QTLIBC_API int QImage_DotsPerMeterY(const QImage* self);
QTLIBC_API void QImage_SetDotsPerMeterX(QImage* self, int dotsPerMeterX);
QTLIBC_API void QImage_SetDotsPerMeterY(QImage* self, int dotsPerMeterY);
QTLIBC_API QPoint* QImage_Offset(const QImage* self);
QTLIBC_API void QImage_SetOffset(QImage* self, QPoint* offset);
QTLIBC_API libqt_list /* of libqt_string */ QImage_TextKeys(const QImage* self);
QTLIBC_API libqt_string QImage_Text(const QImage* self);
QTLIBC_API void QImage_SetText(QImage* self, libqt_string key, libqt_string value);
QTLIBC_API QPixelFormat* QImage_PixelFormat(const QImage* self);
QTLIBC_API QPixelFormat* QImage_ToPixelFormat(int format);
QTLIBC_API int QImage_ToImageFormat(QPixelFormat* format);
QTLIBC_API int QImage_Metric(const QImage* self, int metric);
QTLIBC_API void QImage_OnMetric(const QImage* self, intptr_t slot);
QTLIBC_API int QImage_QBaseMetric(const QImage* self, int metric);
QTLIBC_API QImage* QImage_Copy1(const QImage* self, QRect* rect);
QTLIBC_API QImage* QImage_ConvertToFormat22(const QImage* self, int f, int flags);
QTLIBC_API QImage* QImage_ConvertToFormat3(const QImage* self, int f, libqt_list /* of unsigned int */ colorTable, int flags);
QTLIBC_API QImage* QImage_ConvertedTo2(const QImage* self, int f, int flags);
QTLIBC_API void QImage_ConvertTo2(QImage* self, int f, int flags);
QTLIBC_API QImage* QImage_CreateAlphaMask1(const QImage* self, int flags);
QTLIBC_API QImage* QImage_CreateHeuristicMask1(const QImage* self, bool clipTight);
QTLIBC_API QImage* QImage_CreateMaskFromColor2(const QImage* self, unsigned int color, int mode);
QTLIBC_API QImage* QImage_Scaled3(const QImage* self, int w, int h, int aspectMode);
QTLIBC_API QImage* QImage_Scaled4(const QImage* self, int w, int h, int aspectMode, int mode);
QTLIBC_API QImage* QImage_Scaled2(const QImage* self, QSize* s, int aspectMode);
QTLIBC_API QImage* QImage_Scaled32(const QImage* self, QSize* s, int aspectMode, int mode);
QTLIBC_API QImage* QImage_ScaledToWidth2(const QImage* self, int w, int mode);
QTLIBC_API QImage* QImage_ScaledToHeight2(const QImage* self, int h, int mode);
QTLIBC_API QImage* QImage_Transformed2(const QImage* self, QTransform* matrix, int mode);
QTLIBC_API QImage* QImage_Mirrored1(const QImage* self, bool horizontally);
QTLIBC_API QImage* QImage_Mirrored2(const QImage* self, bool horizontally, bool vertically);
QTLIBC_API void QImage_Mirror1(QImage* self, bool horizontally);
QTLIBC_API void QImage_Mirror2(QImage* self, bool horizontally, bool vertically);
QTLIBC_API void QImage_InvertPixels1(QImage* self, int param1);
QTLIBC_API bool QImage_Load2(QImage* self, libqt_string fileName, const char* format);
QTLIBC_API bool QImage_LoadFromData22(QImage* self, QByteArrayView* data, const char* format);
QTLIBC_API bool QImage_LoadFromData3(QImage* self, const unsigned char* buf, int lenVal, const char* format);
QTLIBC_API bool QImage_LoadFromData23(QImage* self, libqt_string data, const char* format);
QTLIBC_API bool QImage_Save2(const QImage* self, libqt_string fileName, const char* format);
QTLIBC_API bool QImage_Save3(const QImage* self, libqt_string fileName, const char* format, int quality);
QTLIBC_API bool QImage_Save22(const QImage* self, QIODevice* device, const char* format);
QTLIBC_API bool QImage_Save32(const QImage* self, QIODevice* device, const char* format, int quality);
QTLIBC_API QImage* QImage_FromData22(QByteArrayView* data, const char* format);
QTLIBC_API QImage* QImage_FromData3(const unsigned char* data, int size, const char* format);
QTLIBC_API QImage* QImage_FromData23(libqt_string data, const char* format);
QTLIBC_API libqt_string QImage_Text1(const QImage* self, libqt_string key);
QTLIBC_API void QImage_InitPainter(const QImage* self, QPainter* painter);
QTLIBC_API void QImage_OnInitPainter(const QImage* self, intptr_t slot);
QTLIBC_API void QImage_QBaseInitPainter(const QImage* self, QPainter* painter);
QTLIBC_API QPaintDevice* QImage_Redirected(const QImage* self, QPoint* offset);
QTLIBC_API void QImage_OnRedirected(const QImage* self, intptr_t slot);
QTLIBC_API QPaintDevice* QImage_QBaseRedirected(const QImage* self, QPoint* offset);
QTLIBC_API QPainter* QImage_SharedPainter(const QImage* self);
QTLIBC_API void QImage_OnSharedPainter(const QImage* self, intptr_t slot);
QTLIBC_API QPainter* QImage_QBaseSharedPainter(const QImage* self);
QTLIBC_API QImage* QImage_MirroredHelper(const QImage* self, bool horizontal, bool vertical);
QTLIBC_API void QImage_OnMirroredHelper(const QImage* self, intptr_t slot);
QTLIBC_API QImage* QImage_QBaseMirroredHelper(const QImage* self, bool horizontal, bool vertical);
QTLIBC_API QImage* QImage_RgbSwappedHelper(const QImage* self);
QTLIBC_API void QImage_OnRgbSwappedHelper(const QImage* self, intptr_t slot);
QTLIBC_API QImage* QImage_QBaseRgbSwappedHelper(const QImage* self);
QTLIBC_API void QImage_MirroredInplace(QImage* self, bool horizontal, bool vertical);
QTLIBC_API void QImage_OnMirroredInplace(QImage* self, intptr_t slot);
QTLIBC_API void QImage_QBaseMirroredInplace(QImage* self, bool horizontal, bool vertical);
QTLIBC_API void QImage_RgbSwappedInplace(QImage* self);
QTLIBC_API void QImage_OnRgbSwappedInplace(QImage* self, intptr_t slot);
QTLIBC_API void QImage_QBaseRgbSwappedInplace(QImage* self);
QTLIBC_API QImage* QImage_ConvertToFormatHelper(const QImage* self, int format, int flags);
QTLIBC_API void QImage_OnConvertToFormatHelper(const QImage* self, intptr_t slot);
QTLIBC_API QImage* QImage_QBaseConvertToFormatHelper(const QImage* self, int format, int flags);
QTLIBC_API bool QImage_ConvertToFormatInplace(QImage* self, int format, int flags);
QTLIBC_API void QImage_OnConvertToFormatInplace(QImage* self, intptr_t slot);
QTLIBC_API bool QImage_QBaseConvertToFormatInplace(QImage* self, int format, int flags);
QTLIBC_API QImage* QImage_SmoothScaled(const QImage* self, int w, int h);
QTLIBC_API void QImage_OnSmoothScaled(const QImage* self, intptr_t slot);
QTLIBC_API QImage* QImage_QBaseSmoothScaled(const QImage* self, int w, int h);
QTLIBC_API void QImage_DetachMetadata(QImage* self);
QTLIBC_API void QImage_OnDetachMetadata(QImage* self, intptr_t slot);
QTLIBC_API void QImage_QBaseDetachMetadata(QImage* self);
QTLIBC_API void QImage_DetachMetadata1(QImage* self, bool invalidateCache);
QTLIBC_API void QImage_OnDetachMetadata1(QImage* self, intptr_t slot);
QTLIBC_API void QImage_QBaseDetachMetadata1(QImage* self, bool invalidateCache);
QTLIBC_API void QImage_Delete(QImage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
