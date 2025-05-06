#pragma once
#ifndef SRCC_LIBQSURFACEFORMAT_H
#define SRCC_LIBQSURFACEFORMAT_H

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
typedef struct QColorSpace QColorSpace;
typedef struct QSurfaceFormat QSurfaceFormat;
#endif

#ifdef __cplusplus
typedef QSurfaceFormat::ColorSpace ColorSpace;                     // C++ enum
typedef QSurfaceFormat::FormatOption FormatOption;                 // C++ enum
typedef QSurfaceFormat::FormatOptions FormatOptions;               // C++ QFlags
typedef QSurfaceFormat::OpenGLContextProfile OpenGLContextProfile; // C++ enum
typedef QSurfaceFormat::QtGadgetHelper QtGadgetHelper;             // C++ QFlags
typedef QSurfaceFormat::RenderableType RenderableType;             // C++ enum
typedef QSurfaceFormat::SwapBehavior SwapBehavior;                 // C++ enum
#else
typedef int ColorSpace;           // C ABI enum
typedef int FormatOption;         // C ABI enum
typedef int FormatOptions;        // C ABI QFlags
typedef int OpenGLContextProfile; // C ABI enum
typedef int RenderableType;       // C ABI enum
typedef int SwapBehavior;         // C ABI enum
typedef void QtGadgetHelper;      // C ABI QFlags
#endif

QTLIBC_API QSurfaceFormat* QSurfaceFormat_new();
QTLIBC_API QSurfaceFormat* QSurfaceFormat_new2(int options);
QTLIBC_API QSurfaceFormat* QSurfaceFormat_new3(QSurfaceFormat* other);
QTLIBC_API void QSurfaceFormat_OperatorAssign(QSurfaceFormat* self, QSurfaceFormat* other);
QTLIBC_API void QSurfaceFormat_SetDepthBufferSize(QSurfaceFormat* self, int size);
QTLIBC_API int QSurfaceFormat_DepthBufferSize(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetStencilBufferSize(QSurfaceFormat* self, int size);
QTLIBC_API int QSurfaceFormat_StencilBufferSize(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetRedBufferSize(QSurfaceFormat* self, int size);
QTLIBC_API int QSurfaceFormat_RedBufferSize(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetGreenBufferSize(QSurfaceFormat* self, int size);
QTLIBC_API int QSurfaceFormat_GreenBufferSize(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetBlueBufferSize(QSurfaceFormat* self, int size);
QTLIBC_API int QSurfaceFormat_BlueBufferSize(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetAlphaBufferSize(QSurfaceFormat* self, int size);
QTLIBC_API int QSurfaceFormat_AlphaBufferSize(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetSamples(QSurfaceFormat* self, int numSamples);
QTLIBC_API int QSurfaceFormat_Samples(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetSwapBehavior(QSurfaceFormat* self, int behavior);
QTLIBC_API int QSurfaceFormat_SwapBehavior(const QSurfaceFormat* self);
QTLIBC_API bool QSurfaceFormat_HasAlpha(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetProfile(QSurfaceFormat* self, int profile);
QTLIBC_API int QSurfaceFormat_Profile(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetRenderableType(QSurfaceFormat* self, int typeVal);
QTLIBC_API int QSurfaceFormat_RenderableType(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetMajorVersion(QSurfaceFormat* self, int majorVersion);
QTLIBC_API int QSurfaceFormat_MajorVersion(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetMinorVersion(QSurfaceFormat* self, int minorVersion);
QTLIBC_API int QSurfaceFormat_MinorVersion(const QSurfaceFormat* self);
QTLIBC_API libqt_pair /* tuple of int and int */ QSurfaceFormat_Version(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetVersion(QSurfaceFormat* self, int major, int minor);
QTLIBC_API bool QSurfaceFormat_Stereo(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetStereo(QSurfaceFormat* self, bool enable);
QTLIBC_API void QSurfaceFormat_SetOptions(QSurfaceFormat* self, int options);
QTLIBC_API void QSurfaceFormat_SetOption(QSurfaceFormat* self, int option);
QTLIBC_API bool QSurfaceFormat_TestOption(const QSurfaceFormat* self, int option);
QTLIBC_API int QSurfaceFormat_Options(const QSurfaceFormat* self);
QTLIBC_API int QSurfaceFormat_SwapInterval(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetSwapInterval(QSurfaceFormat* self, int interval);
QTLIBC_API QColorSpace* QSurfaceFormat_ColorSpace(const QSurfaceFormat* self);
QTLIBC_API void QSurfaceFormat_SetColorSpace(QSurfaceFormat* self, QColorSpace* colorSpace);
QTLIBC_API void QSurfaceFormat_SetColorSpaceWithColorSpace(QSurfaceFormat* self, int colorSpace);
QTLIBC_API void QSurfaceFormat_SetDefaultFormat(QSurfaceFormat* format);
QTLIBC_API QSurfaceFormat* QSurfaceFormat_DefaultFormat();
QTLIBC_API void QSurfaceFormat_SetOption2(QSurfaceFormat* self, int option, bool on);
QTLIBC_API void QSurfaceFormat_Delete(QSurfaceFormat* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
