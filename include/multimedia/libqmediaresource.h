#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIARESOURCE_H
#define SRC_MULTIMEDIAC_LIBQMEDIARESOURCE_H

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
typedef struct QMediaResource QMediaResource;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QSize QSize;
typedef struct QUrl QUrl;
#endif

QMediaResource* QMediaResource_new();
QMediaResource* QMediaResource_new2(QUrl* url);
QMediaResource* QMediaResource_new3(QNetworkRequest* request);
QMediaResource* QMediaResource_new4(QMediaResource* other);
QMediaResource* QMediaResource_new5(QUrl* url, libqt_string mimeType);
QMediaResource* QMediaResource_new6(QNetworkRequest* request, libqt_string mimeType);
void QMediaResource_OperatorAssign(QMediaResource* self, QMediaResource* other);
bool QMediaResource_IsNull(const QMediaResource* self);
bool QMediaResource_OperatorEqual(const QMediaResource* self, QMediaResource* other);
bool QMediaResource_OperatorNotEqual(const QMediaResource* self, QMediaResource* other);
QUrl* QMediaResource_Url(const QMediaResource* self);
QNetworkRequest* QMediaResource_Request(const QMediaResource* self);
libqt_string QMediaResource_MimeType(const QMediaResource* self);
libqt_string QMediaResource_Language(const QMediaResource* self);
void QMediaResource_SetLanguage(QMediaResource* self, libqt_string language);
libqt_string QMediaResource_AudioCodec(const QMediaResource* self);
void QMediaResource_SetAudioCodec(QMediaResource* self, libqt_string codec);
libqt_string QMediaResource_VideoCodec(const QMediaResource* self);
void QMediaResource_SetVideoCodec(QMediaResource* self, libqt_string codec);
long long QMediaResource_DataSize(const QMediaResource* self);
void QMediaResource_SetDataSize(QMediaResource* self, const long long size);
int QMediaResource_AudioBitRate(const QMediaResource* self);
void QMediaResource_SetAudioBitRate(QMediaResource* self, int rate);
int QMediaResource_SampleRate(const QMediaResource* self);
void QMediaResource_SetSampleRate(QMediaResource* self, int frequency);
int QMediaResource_ChannelCount(const QMediaResource* self);
void QMediaResource_SetChannelCount(QMediaResource* self, int channels);
int QMediaResource_VideoBitRate(const QMediaResource* self);
void QMediaResource_SetVideoBitRate(QMediaResource* self, int rate);
QSize* QMediaResource_Resolution(const QMediaResource* self);
void QMediaResource_SetResolution(QMediaResource* self, QSize* resolution);
void QMediaResource_SetResolution2(QMediaResource* self, int width, int height);
void QMediaResource_Delete(QMediaResource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
