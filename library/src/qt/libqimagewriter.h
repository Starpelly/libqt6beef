#pragma once
#ifndef SRC_QTC_LIBQIMAGEWRITER_H
#define SRC_QTC_LIBQIMAGEWRITER_H

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
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QImageWriter QImageWriter;
#endif

#ifdef __cplusplus
typedef QImageWriter::ImageWriterError ImageWriterError; // C++ enum
#else
typedef int ImageWriterError; // C ABI enum
#endif

QTLIBC_API QImageWriter* QImageWriter_new();
QTLIBC_API QImageWriter* QImageWriter_new2(QIODevice* device, libqt_string format);
QTLIBC_API QImageWriter* QImageWriter_new3(libqt_string fileName);
QTLIBC_API QImageWriter* QImageWriter_new4(libqt_string fileName, libqt_string format);
QTLIBC_API libqt_string QImageWriter_Tr(const char* sourceText);
QTLIBC_API void QImageWriter_SetFormat(QImageWriter* self, libqt_string format);
QTLIBC_API libqt_string QImageWriter_Format(const QImageWriter* self);
QTLIBC_API void QImageWriter_SetDevice(QImageWriter* self, QIODevice* device);
QTLIBC_API QIODevice* QImageWriter_Device(const QImageWriter* self);
QTLIBC_API void QImageWriter_SetFileName(QImageWriter* self, libqt_string fileName);
QTLIBC_API libqt_string QImageWriter_FileName(const QImageWriter* self);
QTLIBC_API void QImageWriter_SetQuality(QImageWriter* self, int quality);
QTLIBC_API int QImageWriter_Quality(const QImageWriter* self);
QTLIBC_API void QImageWriter_SetCompression(QImageWriter* self, int compression);
QTLIBC_API int QImageWriter_Compression(const QImageWriter* self);
QTLIBC_API void QImageWriter_SetSubType(QImageWriter* self, libqt_string typeVal);
QTLIBC_API libqt_string QImageWriter_SubType(const QImageWriter* self);
QTLIBC_API libqt_list /* of libqt_string */ QImageWriter_SupportedSubTypes(const QImageWriter* self);
QTLIBC_API void QImageWriter_SetOptimizedWrite(QImageWriter* self, bool optimize);
QTLIBC_API bool QImageWriter_OptimizedWrite(const QImageWriter* self);
QTLIBC_API void QImageWriter_SetProgressiveScanWrite(QImageWriter* self, bool progressive);
QTLIBC_API bool QImageWriter_ProgressiveScanWrite(const QImageWriter* self);
QTLIBC_API int QImageWriter_Transformation(const QImageWriter* self);
QTLIBC_API void QImageWriter_SetTransformation(QImageWriter* self, int orientation);
QTLIBC_API void QImageWriter_SetText(QImageWriter* self, libqt_string key, libqt_string text);
QTLIBC_API bool QImageWriter_CanWrite(const QImageWriter* self);
QTLIBC_API bool QImageWriter_Write(QImageWriter* self, QImage* image);
QTLIBC_API int QImageWriter_Error(const QImageWriter* self);
QTLIBC_API libqt_string QImageWriter_ErrorString(const QImageWriter* self);
QTLIBC_API bool QImageWriter_SupportsOption(const QImageWriter* self, int option);
QTLIBC_API libqt_list /* of libqt_string */ QImageWriter_SupportedImageFormats();
QTLIBC_API libqt_list /* of libqt_string */ QImageWriter_SupportedMimeTypes();
QTLIBC_API libqt_list /* of libqt_string */ QImageWriter_ImageFormatsForMimeType(libqt_string mimeType);
QTLIBC_API libqt_string QImageWriter_Tr2(const char* sourceText, const char* disambiguation);
QTLIBC_API libqt_string QImageWriter_Tr3(const char* sourceText, const char* disambiguation, int n);
QTLIBC_API void QImageWriter_Delete(QImageWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
