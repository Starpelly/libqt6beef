#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIARECORDER_H
#define SRC_MULTIMEDIAC_LIBQMEDIARECORDER_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAudioEncoderSettings QAudioEncoderSettings;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QVideoEncoderSettings QVideoEncoderSettings;
#endif

#ifdef __cplusplus
typedef QMediaRecorder::Error Error;   // C++ enum
typedef QMediaRecorder::State State;   // C++ enum
typedef QMediaRecorder::Status Status; // C++ enum
#else
typedef int Error;  // C ABI enum
typedef int State;  // C ABI enum
typedef int Status; // C ABI enum
#endif

QMediaRecorder* QMediaRecorder_new(QMediaObject* mediaObject);
QMediaRecorder* QMediaRecorder_new2(QMediaObject* mediaObject, QObject* parent);
QMetaObject* QMediaRecorder_MetaObject(const QMediaRecorder* self);
void* QMediaRecorder_Metacast(QMediaRecorder* self, const char* param1);
int QMediaRecorder_Metacall(QMediaRecorder* self, int param1, int param2, void** param3);
void QMediaRecorder_OnMetacall(QMediaRecorder* self, intptr_t slot);
int QMediaRecorder_QBaseMetacall(QMediaRecorder* self, int param1, int param2, void** param3);
libqt_string QMediaRecorder_Tr(const char* s);
libqt_string QMediaRecorder_TrUtf8(const char* s);
QMediaObject* QMediaRecorder_MediaObject(const QMediaRecorder* self);
void QMediaRecorder_OnMediaObject(const QMediaRecorder* self, intptr_t slot);
QMediaObject* QMediaRecorder_QBaseMediaObject(const QMediaRecorder* self);
bool QMediaRecorder_IsAvailable(const QMediaRecorder* self);
int QMediaRecorder_Availability(const QMediaRecorder* self);
QUrl* QMediaRecorder_OutputLocation(const QMediaRecorder* self);
bool QMediaRecorder_SetOutputLocation(QMediaRecorder* self, QUrl* location);
QUrl* QMediaRecorder_ActualLocation(const QMediaRecorder* self);
int QMediaRecorder_State(const QMediaRecorder* self);
int QMediaRecorder_Status(const QMediaRecorder* self);
int QMediaRecorder_Error(const QMediaRecorder* self);
libqt_string QMediaRecorder_ErrorString(const QMediaRecorder* self);
long long QMediaRecorder_Duration(const QMediaRecorder* self);
bool QMediaRecorder_IsMuted(const QMediaRecorder* self);
double QMediaRecorder_Volume(const QMediaRecorder* self);
libqt_list /* of libqt_string */ QMediaRecorder_SupportedContainers(const QMediaRecorder* self);
libqt_string QMediaRecorder_ContainerDescription(const QMediaRecorder* self, libqt_string format);
libqt_list /* of libqt_string */ QMediaRecorder_SupportedAudioCodecs(const QMediaRecorder* self);
libqt_string QMediaRecorder_AudioCodecDescription(const QMediaRecorder* self, libqt_string codecName);
libqt_list /* of int */ QMediaRecorder_SupportedAudioSampleRates(const QMediaRecorder* self);
libqt_list /* of libqt_string */ QMediaRecorder_SupportedVideoCodecs(const QMediaRecorder* self);
libqt_string QMediaRecorder_VideoCodecDescription(const QMediaRecorder* self, libqt_string codecName);
libqt_list /* of QSize* */ QMediaRecorder_SupportedResolutions(const QMediaRecorder* self);
libqt_list /* of double */ QMediaRecorder_SupportedFrameRates(const QMediaRecorder* self);
QAudioEncoderSettings* QMediaRecorder_AudioSettings(const QMediaRecorder* self);
QVideoEncoderSettings* QMediaRecorder_VideoSettings(const QMediaRecorder* self);
libqt_string QMediaRecorder_ContainerFormat(const QMediaRecorder* self);
void QMediaRecorder_SetAudioSettings(QMediaRecorder* self, QAudioEncoderSettings* audioSettings);
void QMediaRecorder_SetVideoSettings(QMediaRecorder* self, QVideoEncoderSettings* videoSettings);
void QMediaRecorder_SetContainerFormat(QMediaRecorder* self, libqt_string container);
void QMediaRecorder_SetEncodingSettings(QMediaRecorder* self, QAudioEncoderSettings* audioSettings);
bool QMediaRecorder_IsMetaDataAvailable(const QMediaRecorder* self);
bool QMediaRecorder_IsMetaDataWritable(const QMediaRecorder* self);
QVariant* QMediaRecorder_MetaData(const QMediaRecorder* self, libqt_string key);
void QMediaRecorder_SetMetaData(QMediaRecorder* self, libqt_string key, QVariant* value);
libqt_list /* of libqt_string */ QMediaRecorder_AvailableMetaData(const QMediaRecorder* self);
void QMediaRecorder_Record(QMediaRecorder* self);
void QMediaRecorder_Pause(QMediaRecorder* self);
void QMediaRecorder_Stop(QMediaRecorder* self);
void QMediaRecorder_SetMuted(QMediaRecorder* self, bool muted);
void QMediaRecorder_SetVolume(QMediaRecorder* self, double volume);
void QMediaRecorder_StateChanged(QMediaRecorder* self, int state);
void QMediaRecorder_Connect_StateChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_StatusChanged(QMediaRecorder* self, int status);
void QMediaRecorder_Connect_StatusChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_DurationChanged(QMediaRecorder* self, long long duration);
void QMediaRecorder_Connect_DurationChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_MutedChanged(QMediaRecorder* self, bool muted);
void QMediaRecorder_Connect_MutedChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_VolumeChanged(QMediaRecorder* self, double volume);
void QMediaRecorder_Connect_VolumeChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_ActualLocationChanged(QMediaRecorder* self, QUrl* location);
void QMediaRecorder_Connect_ActualLocationChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_ErrorWithErrorVal(QMediaRecorder* self, int errorVal);
void QMediaRecorder_Connect_ErrorWithErrorVal(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_MetaDataAvailableChanged(QMediaRecorder* self, bool available);
void QMediaRecorder_Connect_MetaDataAvailableChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_MetaDataWritableChanged(QMediaRecorder* self, bool writable);
void QMediaRecorder_Connect_MetaDataWritableChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_MetaDataChanged(QMediaRecorder* self);
void QMediaRecorder_Connect_MetaDataChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_MetaDataChanged2(QMediaRecorder* self, libqt_string key, QVariant* value);
void QMediaRecorder_Connect_MetaDataChanged2(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_AvailabilityChanged(QMediaRecorder* self, bool available);
void QMediaRecorder_Connect_AvailabilityChanged(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_AvailabilityChangedWithAvailability(QMediaRecorder* self, int availability);
void QMediaRecorder_Connect_AvailabilityChangedWithAvailability(QMediaRecorder* self, intptr_t slot);
bool QMediaRecorder_SetMediaObject(QMediaRecorder* self, QMediaObject* object);
void QMediaRecorder_OnSetMediaObject(QMediaRecorder* self, intptr_t slot);
bool QMediaRecorder_QBaseSetMediaObject(QMediaRecorder* self, QMediaObject* object);
libqt_string QMediaRecorder_Tr2(const char* s, const char* c);
libqt_string QMediaRecorder_Tr3(const char* s, const char* c, int n);
libqt_string QMediaRecorder_TrUtf82(const char* s, const char* c);
libqt_string QMediaRecorder_TrUtf83(const char* s, const char* c, int n);
libqt_list /* of int */ QMediaRecorder_SupportedAudioSampleRates1(const QMediaRecorder* self, QAudioEncoderSettings* settings);
libqt_list /* of int */ QMediaRecorder_SupportedAudioSampleRates2(const QMediaRecorder* self, QAudioEncoderSettings* settings, bool* continuous);
libqt_list /* of QSize* */ QMediaRecorder_SupportedResolutions1(const QMediaRecorder* self, QVideoEncoderSettings* settings);
libqt_list /* of QSize* */ QMediaRecorder_SupportedResolutions2(const QMediaRecorder* self, QVideoEncoderSettings* settings, bool* continuous);
libqt_list /* of double */ QMediaRecorder_SupportedFrameRates1(const QMediaRecorder* self, QVideoEncoderSettings* settings);
libqt_list /* of double */ QMediaRecorder_SupportedFrameRates2(const QMediaRecorder* self, QVideoEncoderSettings* settings, bool* continuous);
void QMediaRecorder_SetEncodingSettings2(QMediaRecorder* self, QAudioEncoderSettings* audioSettings, QVideoEncoderSettings* videoSettings);
void QMediaRecorder_SetEncodingSettings3(QMediaRecorder* self, QAudioEncoderSettings* audioSettings, QVideoEncoderSettings* videoSettings, libqt_string containerMimeType);
bool QMediaRecorder_Event(QMediaRecorder* self, QEvent* event);
void QMediaRecorder_OnEvent(QMediaRecorder* self, intptr_t slot);
bool QMediaRecorder_QBaseEvent(QMediaRecorder* self, QEvent* event);
bool QMediaRecorder_EventFilter(QMediaRecorder* self, QObject* watched, QEvent* event);
void QMediaRecorder_OnEventFilter(QMediaRecorder* self, intptr_t slot);
bool QMediaRecorder_QBaseEventFilter(QMediaRecorder* self, QObject* watched, QEvent* event);
void QMediaRecorder_TimerEvent(QMediaRecorder* self, QTimerEvent* event);
void QMediaRecorder_OnTimerEvent(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_QBaseTimerEvent(QMediaRecorder* self, QTimerEvent* event);
void QMediaRecorder_ChildEvent(QMediaRecorder* self, QChildEvent* event);
void QMediaRecorder_OnChildEvent(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_QBaseChildEvent(QMediaRecorder* self, QChildEvent* event);
void QMediaRecorder_CustomEvent(QMediaRecorder* self, QEvent* event);
void QMediaRecorder_OnCustomEvent(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_QBaseCustomEvent(QMediaRecorder* self, QEvent* event);
void QMediaRecorder_ConnectNotify(QMediaRecorder* self, QMetaMethod* signal);
void QMediaRecorder_OnConnectNotify(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_QBaseConnectNotify(QMediaRecorder* self, QMetaMethod* signal);
void QMediaRecorder_DisconnectNotify(QMediaRecorder* self, QMetaMethod* signal);
void QMediaRecorder_OnDisconnectNotify(QMediaRecorder* self, intptr_t slot);
void QMediaRecorder_QBaseDisconnectNotify(QMediaRecorder* self, QMetaMethod* signal);
QObject* QMediaRecorder_Sender(const QMediaRecorder* self);
void QMediaRecorder_OnSender(const QMediaRecorder* self, intptr_t slot);
QObject* QMediaRecorder_QBaseSender(const QMediaRecorder* self);
int QMediaRecorder_SenderSignalIndex(const QMediaRecorder* self);
void QMediaRecorder_OnSenderSignalIndex(const QMediaRecorder* self, intptr_t slot);
int QMediaRecorder_QBaseSenderSignalIndex(const QMediaRecorder* self);
int QMediaRecorder_Receivers(const QMediaRecorder* self, const char* signal);
void QMediaRecorder_OnReceivers(const QMediaRecorder* self, intptr_t slot);
int QMediaRecorder_QBaseReceivers(const QMediaRecorder* self, const char* signal);
bool QMediaRecorder_IsSignalConnected(const QMediaRecorder* self, QMetaMethod* signal);
void QMediaRecorder_OnIsSignalConnected(const QMediaRecorder* self, intptr_t slot);
bool QMediaRecorder_QBaseIsSignalConnected(const QMediaRecorder* self, QMetaMethod* signal);
void QMediaRecorder_Delete(QMediaRecorder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
