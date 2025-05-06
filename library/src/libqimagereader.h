#pragma once
#ifndef SRCC_LIBQIMAGEREADER_H
#define SRCC_LIBQIMAGEREADER_H

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
typedef struct QColor QColor;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QImageReader QImageReader;
typedef struct QRect QRect;
typedef struct QSize QSize;
#endif

#ifdef __cplusplus
typedef QImageReader::ImageReaderError ImageReaderError; // C++ enum
#else
typedef int ImageReaderError; // C ABI enum
#endif

QTLIBC_API QImageReader* QImageReader_new();
QTLIBC_API QImageReader* QImageReader_new2(QIODevice* device);
QTLIBC_API QImageReader* QImageReader_new3(libqt_string fileName);
QTLIBC_API QImageReader* QImageReader_new4(QIODevice* device, libqt_string format);
QTLIBC_API QImageReader* QImageReader_new5(libqt_string fileName, libqt_string format);
QTLIBC_API libqt_string QImageReader_Tr(const char* sourceText);
QTLIBC_API void QImageReader_SetFormat(QImageReader* self, libqt_string format);
QTLIBC_API libqt_string QImageReader_Format(const QImageReader* self);
QTLIBC_API void QImageReader_SetAutoDetectImageFormat(QImageReader* self, bool enabled);
QTLIBC_API bool QImageReader_AutoDetectImageFormat(const QImageReader* self);
QTLIBC_API void QImageReader_SetDecideFormatFromContent(QImageReader* self, bool ignored);
QTLIBC_API bool QImageReader_DecideFormatFromContent(const QImageReader* self);
QTLIBC_API void QImageReader_SetDevice(QImageReader* self, QIODevice* device);
QTLIBC_API QIODevice* QImageReader_Device(const QImageReader* self);
QTLIBC_API void QImageReader_SetFileName(QImageReader* self, libqt_string fileName);
QTLIBC_API libqt_string QImageReader_FileName(const QImageReader* self);
QTLIBC_API QSize* QImageReader_Size(const QImageReader* self);
QTLIBC_API int QImageReader_ImageFormat(const QImageReader* self);
QTLIBC_API libqt_list /* of libqt_string */ QImageReader_TextKeys(const QImageReader* self);
QTLIBC_API libqt_string QImageReader_Text(const QImageReader* self, libqt_string key);
QTLIBC_API void QImageReader_SetClipRect(QImageReader* self, QRect* rect);
QTLIBC_API QRect* QImageReader_ClipRect(const QImageReader* self);
QTLIBC_API void QImageReader_SetScaledSize(QImageReader* self, QSize* size);
QTLIBC_API QSize* QImageReader_ScaledSize(const QImageReader* self);
QTLIBC_API void QImageReader_SetQuality(QImageReader* self, int quality);
QTLIBC_API int QImageReader_Quality(const QImageReader* self);
QTLIBC_API void QImageReader_SetScaledClipRect(QImageReader* self, QRect* rect);
QTLIBC_API QRect* QImageReader_ScaledClipRect(const QImageReader* self);
QTLIBC_API void QImageReader_SetBackgroundColor(QImageReader* self, QColor* color);
QTLIBC_API QColor* QImageReader_BackgroundColor(const QImageReader* self);
QTLIBC_API bool QImageReader_SupportsAnimation(const QImageReader* self);
QTLIBC_API int QImageReader_Transformation(const QImageReader* self);
QTLIBC_API void QImageReader_SetAutoTransform(QImageReader* self, bool enabled);
QTLIBC_API bool QImageReader_AutoTransform(const QImageReader* self);
QTLIBC_API libqt_string QImageReader_SubType(const QImageReader* self);
QTLIBC_API libqt_list /* of libqt_string */ QImageReader_SupportedSubTypes(const QImageReader* self);
QTLIBC_API bool QImageReader_CanRead(const QImageReader* self);
QTLIBC_API QImage* QImageReader_Read(QImageReader* self);
QTLIBC_API bool QImageReader_ReadWithImage(QImageReader* self, QImage* image);
QTLIBC_API bool QImageReader_JumpToNextImage(QImageReader* self);
QTLIBC_API bool QImageReader_JumpToImage(QImageReader* self, int imageNumber);
QTLIBC_API int QImageReader_LoopCount(const QImageReader* self);
QTLIBC_API int QImageReader_ImageCount(const QImageReader* self);
QTLIBC_API int QImageReader_NextImageDelay(const QImageReader* self);
QTLIBC_API int QImageReader_CurrentImageNumber(const QImageReader* self);
QTLIBC_API QRect* QImageReader_CurrentImageRect(const QImageReader* self);
QTLIBC_API int QImageReader_Error(const QImageReader* self);
QTLIBC_API libqt_string QImageReader_ErrorString(const QImageReader* self);
QTLIBC_API bool QImageReader_SupportsOption(const QImageReader* self, int option);
QTLIBC_API libqt_string QImageReader_ImageFormatWithFileName(libqt_string fileName);
QTLIBC_API libqt_string QImageReader_ImageFormatWithDevice(QIODevice* device);
QTLIBC_API libqt_list /* of libqt_string */ QImageReader_SupportedImageFormats();
QTLIBC_API libqt_list /* of libqt_string */ QImageReader_SupportedMimeTypes();
QTLIBC_API libqt_list /* of libqt_string */ QImageReader_ImageFormatsForMimeType(libqt_string mimeType);
QTLIBC_API int QImageReader_AllocationLimit();
QTLIBC_API void QImageReader_SetAllocationLimit(int mbLimit);
QTLIBC_API libqt_string QImageReader_Tr2(const char* sourceText, const char* disambiguation);
QTLIBC_API libqt_string QImageReader_Tr3(const char* sourceText, const char* disambiguation, int n);
QTLIBC_API void QImageReader_Delete(QImageReader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
