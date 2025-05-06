#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAENCODERSETTINGS_H
#define SRC_MULTIMEDIAC_LIBQMEDIAENCODERSETTINGS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QAudioEncoderSettings QAudioEncoderSettings;
typedef struct QImageEncoderSettings QImageEncoderSettings;
typedef struct QSize QSize;
typedef struct QVariant QVariant;
typedef struct QVideoEncoderSettings QVideoEncoderSettings;
#endif

QAudioEncoderSettings* QAudioEncoderSettings_new();
QAudioEncoderSettings* QAudioEncoderSettings_new2(QAudioEncoderSettings* other);
void QAudioEncoderSettings_OperatorAssign(QAudioEncoderSettings* self, QAudioEncoderSettings* other);
bool QAudioEncoderSettings_OperatorEqual(const QAudioEncoderSettings* self, QAudioEncoderSettings* other);
bool QAudioEncoderSettings_OperatorNotEqual(const QAudioEncoderSettings* self, QAudioEncoderSettings* other);
bool QAudioEncoderSettings_IsNull(const QAudioEncoderSettings* self);
int QAudioEncoderSettings_EncodingMode(const QAudioEncoderSettings* self);
void QAudioEncoderSettings_SetEncodingMode(QAudioEncoderSettings* self, int encodingMode);
libqt_string QAudioEncoderSettings_Codec(const QAudioEncoderSettings* self);
void QAudioEncoderSettings_SetCodec(QAudioEncoderSettings* self, libqt_string codec);
int QAudioEncoderSettings_BitRate(const QAudioEncoderSettings* self);
void QAudioEncoderSettings_SetBitRate(QAudioEncoderSettings* self, int bitrate);
int QAudioEncoderSettings_ChannelCount(const QAudioEncoderSettings* self);
void QAudioEncoderSettings_SetChannelCount(QAudioEncoderSettings* self, int channels);
int QAudioEncoderSettings_SampleRate(const QAudioEncoderSettings* self);
void QAudioEncoderSettings_SetSampleRate(QAudioEncoderSettings* self, int rate);
int QAudioEncoderSettings_Quality(const QAudioEncoderSettings* self);
void QAudioEncoderSettings_SetQuality(QAudioEncoderSettings* self, int quality);
QVariant* QAudioEncoderSettings_EncodingOption(const QAudioEncoderSettings* self, libqt_string option);
libqt_map /* of libqt_string to QVariant* */ QAudioEncoderSettings_EncodingOptions(const QAudioEncoderSettings* self);
void QAudioEncoderSettings_SetEncodingOption(QAudioEncoderSettings* self, libqt_string option, QVariant* value);
void QAudioEncoderSettings_SetEncodingOptions(QAudioEncoderSettings* self, libqt_map /* of libqt_string to QVariant* */ options);
void QAudioEncoderSettings_Delete(QAudioEncoderSettings* self);

QVideoEncoderSettings* QVideoEncoderSettings_new();
QVideoEncoderSettings* QVideoEncoderSettings_new2(QVideoEncoderSettings* other);
void QVideoEncoderSettings_OperatorAssign(QVideoEncoderSettings* self, QVideoEncoderSettings* other);
bool QVideoEncoderSettings_OperatorEqual(const QVideoEncoderSettings* self, QVideoEncoderSettings* other);
bool QVideoEncoderSettings_OperatorNotEqual(const QVideoEncoderSettings* self, QVideoEncoderSettings* other);
bool QVideoEncoderSettings_IsNull(const QVideoEncoderSettings* self);
int QVideoEncoderSettings_EncodingMode(const QVideoEncoderSettings* self);
void QVideoEncoderSettings_SetEncodingMode(QVideoEncoderSettings* self, int encodingMode);
libqt_string QVideoEncoderSettings_Codec(const QVideoEncoderSettings* self);
void QVideoEncoderSettings_SetCodec(QVideoEncoderSettings* self, libqt_string codec);
QSize* QVideoEncoderSettings_Resolution(const QVideoEncoderSettings* self);
void QVideoEncoderSettings_SetResolution(QVideoEncoderSettings* self, QSize* resolution);
void QVideoEncoderSettings_SetResolution2(QVideoEncoderSettings* self, int width, int height);
double QVideoEncoderSettings_FrameRate(const QVideoEncoderSettings* self);
void QVideoEncoderSettings_SetFrameRate(QVideoEncoderSettings* self, double rate);
int QVideoEncoderSettings_BitRate(const QVideoEncoderSettings* self);
void QVideoEncoderSettings_SetBitRate(QVideoEncoderSettings* self, int bitrate);
int QVideoEncoderSettings_Quality(const QVideoEncoderSettings* self);
void QVideoEncoderSettings_SetQuality(QVideoEncoderSettings* self, int quality);
QVariant* QVideoEncoderSettings_EncodingOption(const QVideoEncoderSettings* self, libqt_string option);
libqt_map /* of libqt_string to QVariant* */ QVideoEncoderSettings_EncodingOptions(const QVideoEncoderSettings* self);
void QVideoEncoderSettings_SetEncodingOption(QVideoEncoderSettings* self, libqt_string option, QVariant* value);
void QVideoEncoderSettings_SetEncodingOptions(QVideoEncoderSettings* self, libqt_map /* of libqt_string to QVariant* */ options);
void QVideoEncoderSettings_Delete(QVideoEncoderSettings* self);

QImageEncoderSettings* QImageEncoderSettings_new();
QImageEncoderSettings* QImageEncoderSettings_new2(QImageEncoderSettings* other);
void QImageEncoderSettings_OperatorAssign(QImageEncoderSettings* self, QImageEncoderSettings* other);
bool QImageEncoderSettings_OperatorEqual(const QImageEncoderSettings* self, QImageEncoderSettings* other);
bool QImageEncoderSettings_OperatorNotEqual(const QImageEncoderSettings* self, QImageEncoderSettings* other);
bool QImageEncoderSettings_IsNull(const QImageEncoderSettings* self);
libqt_string QImageEncoderSettings_Codec(const QImageEncoderSettings* self);
void QImageEncoderSettings_SetCodec(QImageEncoderSettings* self, libqt_string codec);
QSize* QImageEncoderSettings_Resolution(const QImageEncoderSettings* self);
void QImageEncoderSettings_SetResolution(QImageEncoderSettings* self, QSize* resolution);
void QImageEncoderSettings_SetResolution2(QImageEncoderSettings* self, int width, int height);
int QImageEncoderSettings_Quality(const QImageEncoderSettings* self);
void QImageEncoderSettings_SetQuality(QImageEncoderSettings* self, int quality);
QVariant* QImageEncoderSettings_EncodingOption(const QImageEncoderSettings* self, libqt_string option);
libqt_map /* of libqt_string to QVariant* */ QImageEncoderSettings_EncodingOptions(const QImageEncoderSettings* self);
void QImageEncoderSettings_SetEncodingOption(QImageEncoderSettings* self, libqt_string option, QVariant* value);
void QImageEncoderSettings_SetEncodingOptions(QImageEncoderSettings* self, libqt_map /* of libqt_string to QVariant* */ options);
void QImageEncoderSettings_Delete(QImageEncoderSettings* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
