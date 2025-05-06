#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQVIDEOFRAMEFORMAT_H
#define SRC_QT_MULTIMEDIAC_LIBQVIDEOFRAMEFORMAT_H

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
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QVideoFrameFormat QVideoFrameFormat;
#endif

#ifdef __cplusplus
typedef QVideoFrameFormat::ColorRange ColorRange;           // C++ enum
typedef QVideoFrameFormat::ColorSpace ColorSpace;           // C++ enum
typedef QVideoFrameFormat::ColorTransfer ColorTransfer;     // C++ enum
typedef QVideoFrameFormat::Direction Direction;             // C++ enum
typedef QVideoFrameFormat::PixelFormat PixelFormat;         // C++ enum
typedef QVideoFrameFormat::YCbCrColorSpace YCbCrColorSpace; // C++ enum
#else
typedef int ColorRange;      // C ABI enum
typedef int ColorSpace;      // C ABI enum
typedef int ColorTransfer;   // C ABI enum
typedef int Direction;       // C ABI enum
typedef int PixelFormat;     // C ABI enum
typedef int YCbCrColorSpace; // C ABI enum
#endif

QTLIBC_API QVideoFrameFormat* QVideoFrameFormat_new();
QTLIBC_API QVideoFrameFormat* QVideoFrameFormat_new2(QSize* size, int pixelFormat);
QTLIBC_API QVideoFrameFormat* QVideoFrameFormat_new3(QVideoFrameFormat* format);
QTLIBC_API void QVideoFrameFormat_Swap(QVideoFrameFormat* self, QVideoFrameFormat* other);
QTLIBC_API void QVideoFrameFormat_Detach(QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_OperatorAssign(QVideoFrameFormat* self, QVideoFrameFormat* format);
QTLIBC_API bool QVideoFrameFormat_OperatorEqual(const QVideoFrameFormat* self, QVideoFrameFormat* format);
QTLIBC_API bool QVideoFrameFormat_OperatorNotEqual(const QVideoFrameFormat* self, QVideoFrameFormat* format);
QTLIBC_API bool QVideoFrameFormat_IsValid(const QVideoFrameFormat* self);
QTLIBC_API int QVideoFrameFormat_PixelFormat(const QVideoFrameFormat* self);
QTLIBC_API QSize* QVideoFrameFormat_FrameSize(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetFrameSize(QVideoFrameFormat* self, QSize* size);
QTLIBC_API void QVideoFrameFormat_SetFrameSize2(QVideoFrameFormat* self, int width, int height);
QTLIBC_API int QVideoFrameFormat_FrameWidth(const QVideoFrameFormat* self);
QTLIBC_API int QVideoFrameFormat_FrameHeight(const QVideoFrameFormat* self);
QTLIBC_API int QVideoFrameFormat_PlaneCount(const QVideoFrameFormat* self);
QTLIBC_API QRect* QVideoFrameFormat_Viewport(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetViewport(QVideoFrameFormat* self, QRect* viewport);
QTLIBC_API int QVideoFrameFormat_ScanLineDirection(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetScanLineDirection(QVideoFrameFormat* self, int direction);
QTLIBC_API double QVideoFrameFormat_FrameRate(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetFrameRate(QVideoFrameFormat* self, double rate);
QTLIBC_API int QVideoFrameFormat_YCbCrColorSpace(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetYCbCrColorSpace(QVideoFrameFormat* self, int colorSpace);
QTLIBC_API int QVideoFrameFormat_ColorSpace(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetColorSpace(QVideoFrameFormat* self, int colorSpace);
QTLIBC_API int QVideoFrameFormat_ColorTransfer(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetColorTransfer(QVideoFrameFormat* self, int colorTransfer);
QTLIBC_API int QVideoFrameFormat_ColorRange(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetColorRange(QVideoFrameFormat* self, int range);
QTLIBC_API bool QVideoFrameFormat_IsMirrored(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetMirrored(QVideoFrameFormat* self, bool mirrored);
QTLIBC_API libqt_string QVideoFrameFormat_VertexShaderFileName(const QVideoFrameFormat* self);
QTLIBC_API libqt_string QVideoFrameFormat_FragmentShaderFileName(const QVideoFrameFormat* self);
QTLIBC_API float QVideoFrameFormat_MaxLuminance(const QVideoFrameFormat* self);
QTLIBC_API void QVideoFrameFormat_SetMaxLuminance(QVideoFrameFormat* self, float lum);
QTLIBC_API int QVideoFrameFormat_PixelFormatFromImageFormat(int format);
QTLIBC_API int QVideoFrameFormat_ImageFormatFromPixelFormat(int format);
QTLIBC_API libqt_string QVideoFrameFormat_PixelFormatToString(int pixelFormat);
QTLIBC_API void QVideoFrameFormat_Delete(QVideoFrameFormat* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
