#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQMEDIAFORMAT_H
#define SRC_QT_MULTIMEDIAC_LIBQMEDIAFORMAT_H

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
typedef struct QMediaFormat QMediaFormat;
typedef struct QMimeType QMimeType;
#endif

#ifdef __cplusplus
typedef QMediaFormat::AudioCodec AudioCodec;         // C++ enum
typedef QMediaFormat::ConversionMode ConversionMode; // C++ enum
typedef QMediaFormat::FileFormat FileFormat;         // C++ enum
typedef QMediaFormat::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QMediaFormat::ResolveFlags ResolveFlags;     // C++ enum
typedef QMediaFormat::VideoCodec VideoCodec;         // C++ enum
#else
typedef int AudioCodec;      // C ABI enum
typedef int ConversionMode;  // C ABI enum
typedef int FileFormat;      // C ABI enum
typedef int ResolveFlags;    // C ABI enum
typedef int VideoCodec;      // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QMediaFormat* QMediaFormat_new();
QTLIBC_API QMediaFormat* QMediaFormat_new2(QMediaFormat* other);
QTLIBC_API QMediaFormat* QMediaFormat_new3(int format);
QTLIBC_API void QMediaFormat_OperatorAssign(QMediaFormat* self, QMediaFormat* other);
QTLIBC_API void QMediaFormat_Swap(QMediaFormat* self, QMediaFormat* other);
QTLIBC_API int QMediaFormat_FileFormat(const QMediaFormat* self);
QTLIBC_API void QMediaFormat_SetFileFormat(QMediaFormat* self, int f);
QTLIBC_API void QMediaFormat_SetVideoCodec(QMediaFormat* self, int codec);
QTLIBC_API int QMediaFormat_VideoCodec(const QMediaFormat* self);
QTLIBC_API void QMediaFormat_SetAudioCodec(QMediaFormat* self, int codec);
QTLIBC_API int QMediaFormat_AudioCodec(const QMediaFormat* self);
QTLIBC_API bool QMediaFormat_IsSupported(const QMediaFormat* self, int mode);
QTLIBC_API QMimeType* QMediaFormat_MimeType(const QMediaFormat* self);
QTLIBC_API libqt_list /* of int */ QMediaFormat_SupportedFileFormats(QMediaFormat* self, int m);
QTLIBC_API libqt_list /* of int */ QMediaFormat_SupportedVideoCodecs(QMediaFormat* self, int m);
QTLIBC_API libqt_list /* of int */ QMediaFormat_SupportedAudioCodecs(QMediaFormat* self, int m);
QTLIBC_API libqt_string QMediaFormat_FileFormatName(int fileFormat);
QTLIBC_API libqt_string QMediaFormat_AudioCodecName(int codec);
QTLIBC_API libqt_string QMediaFormat_VideoCodecName(int codec);
QTLIBC_API libqt_string QMediaFormat_FileFormatDescription(int fileFormat);
QTLIBC_API libqt_string QMediaFormat_AudioCodecDescription(int codec);
QTLIBC_API libqt_string QMediaFormat_VideoCodecDescription(int codec);
QTLIBC_API bool QMediaFormat_OperatorEqual(const QMediaFormat* self, QMediaFormat* other);
QTLIBC_API bool QMediaFormat_OperatorNotEqual(const QMediaFormat* self, QMediaFormat* other);
QTLIBC_API void QMediaFormat_ResolveForEncoding(QMediaFormat* self, int flags);
QTLIBC_API void QMediaFormat_Delete(QMediaFormat* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
