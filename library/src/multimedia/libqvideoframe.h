#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQVIDEOFRAME_H
#define SRC_MULTIMEDIAC_LIBQVIDEOFRAME_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QVideoFrame__PaintOptions)
typedef QVideoFrame::PaintOptions QVideoFrame__PaintOptions;
#endif
#else
typedef struct QImage QImage;
typedef struct QPainter QPainter;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoFrameFormat QVideoFrameFormat;
typedef struct QVideoFrame__PaintOptions QVideoFrame__PaintOptions;
#endif

#ifdef __cplusplus
typedef QVideoFrame::HandleType HandleType;                           // C++ enum
typedef QVideoFrame::MapMode MapMode;                                 // C++ enum
typedef QVideoFrame::PaintOptions::PaintFlag PaintOptionsPaintFlag;   // C++ enum
typedef QVideoFrame::PaintOptions::PaintFlags PaintOptionsPaintFlags; // C++ QFlags
typedef QVideoFrame::RotationAngle RotationAngle;                     // C++ enum
#else
typedef int HandleType;             // C ABI enum
typedef int MapMode;                // C ABI enum
typedef int PaintOptionsPaintFlag;  // C ABI enum
typedef int PaintOptionsPaintFlags; // C ABI QFlags
typedef int RotationAngle;          // C ABI enum
#endif

QTLIBC_API QVideoFrame* QVideoFrame_new();
QTLIBC_API QVideoFrame* QVideoFrame_new2(QVideoFrameFormat* format);
QTLIBC_API QVideoFrame* QVideoFrame_new3(QVideoFrame* other);
QTLIBC_API void QVideoFrame_Swap(QVideoFrame* self, QVideoFrame* other);
QTLIBC_API void QVideoFrame_OperatorAssign(QVideoFrame* self, QVideoFrame* other);
QTLIBC_API bool QVideoFrame_OperatorEqual(const QVideoFrame* self, QVideoFrame* other);
QTLIBC_API bool QVideoFrame_OperatorNotEqual(const QVideoFrame* self, QVideoFrame* other);
QTLIBC_API bool QVideoFrame_IsValid(const QVideoFrame* self);
QTLIBC_API int QVideoFrame_PixelFormat(const QVideoFrame* self);
QTLIBC_API QVideoFrameFormat* QVideoFrame_SurfaceFormat(const QVideoFrame* self);
QTLIBC_API int QVideoFrame_HandleType(const QVideoFrame* self);
QTLIBC_API QSize* QVideoFrame_Size(const QVideoFrame* self);
QTLIBC_API int QVideoFrame_Width(const QVideoFrame* self);
QTLIBC_API int QVideoFrame_Height(const QVideoFrame* self);
QTLIBC_API bool QVideoFrame_IsMapped(const QVideoFrame* self);
QTLIBC_API bool QVideoFrame_IsReadable(const QVideoFrame* self);
QTLIBC_API bool QVideoFrame_IsWritable(const QVideoFrame* self);
QTLIBC_API int QVideoFrame_MapMode(const QVideoFrame* self);
QTLIBC_API bool QVideoFrame_Map(QVideoFrame* self, int mode);
QTLIBC_API void QVideoFrame_Unmap(QVideoFrame* self);
QTLIBC_API int QVideoFrame_BytesPerLine(const QVideoFrame* self, int plane);
QTLIBC_API unsigned char* QVideoFrame_Bits(QVideoFrame* self, int plane);
QTLIBC_API const unsigned char* QVideoFrame_BitsWithPlane(const QVideoFrame* self, int plane);
QTLIBC_API int QVideoFrame_MappedBytes(const QVideoFrame* self, int plane);
QTLIBC_API int QVideoFrame_PlaneCount(const QVideoFrame* self);
QTLIBC_API long long QVideoFrame_StartTime(const QVideoFrame* self);
QTLIBC_API void QVideoFrame_SetStartTime(QVideoFrame* self, long long time);
QTLIBC_API long long QVideoFrame_EndTime(const QVideoFrame* self);
QTLIBC_API void QVideoFrame_SetEndTime(QVideoFrame* self, long long time);
QTLIBC_API void QVideoFrame_SetRotationAngle(QVideoFrame* self, int rotationAngle);
QTLIBC_API int QVideoFrame_RotationAngle(const QVideoFrame* self);
QTLIBC_API void QVideoFrame_SetMirrored(QVideoFrame* self, bool mirrored);
QTLIBC_API bool QVideoFrame_Mirrored(const QVideoFrame* self);
QTLIBC_API QImage* QVideoFrame_ToImage(const QVideoFrame* self);
QTLIBC_API libqt_string QVideoFrame_SubtitleText(const QVideoFrame* self);
QTLIBC_API void QVideoFrame_SetSubtitleText(QVideoFrame* self, libqt_string text);
QTLIBC_API void QVideoFrame_Paint(QVideoFrame* self, QPainter* painter, QRectF* rect, QVideoFrame__PaintOptions* options);
QTLIBC_API void QVideoFrame_Delete(QVideoFrame* self);

QTLIBC_API QVideoFrame__PaintOptions* QVideoFrame__PaintOptions_new(QVideoFrame__PaintOptions* other);
QTLIBC_API QVideoFrame__PaintOptions* QVideoFrame__PaintOptions_new2(QVideoFrame__PaintOptions* other);
QTLIBC_API void QVideoFrame__PaintOptions_CopyAssign(QVideoFrame__PaintOptions* self, QVideoFrame__PaintOptions* other);
QTLIBC_API void QVideoFrame__PaintOptions_MoveAssign(QVideoFrame__PaintOptions* self, QVideoFrame__PaintOptions* other);
QTLIBC_API void QVideoFrame__PaintOptions_Delete(QVideoFrame__PaintOptions* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
