#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAIMAGECAPTURE_H
#define SRC_MULTIMEDIAC_LIBQCAMERAIMAGECAPTURE_H

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
typedef struct QCameraImageCapture QCameraImageCapture;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QImageEncoderSettings QImageEncoderSettings;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoFrame QVideoFrame;
#endif

#ifdef __cplusplus
typedef QCameraImageCapture::CaptureDestination CaptureDestination;   // C++ enum
typedef QCameraImageCapture::CaptureDestinations CaptureDestinations; // C++ QFlags
typedef QCameraImageCapture::DriveMode DriveMode;                     // C++ enum
typedef QCameraImageCapture::Error Error;                             // C++ enum
#else
typedef int CaptureDestination;  // C ABI enum
typedef int CaptureDestinations; // C ABI QFlags
typedef int DriveMode;           // C ABI enum
typedef int Error;               // C ABI enum
#endif

QCameraImageCapture* QCameraImageCapture_new(QMediaObject* mediaObject);
QCameraImageCapture* QCameraImageCapture_new2(QMediaObject* mediaObject, QObject* parent);
QMetaObject* QCameraImageCapture_MetaObject(const QCameraImageCapture* self);
void* QCameraImageCapture_Metacast(QCameraImageCapture* self, const char* param1);
int QCameraImageCapture_Metacall(QCameraImageCapture* self, int param1, int param2, void** param3);
void QCameraImageCapture_OnMetacall(QCameraImageCapture* self, intptr_t slot);
int QCameraImageCapture_QBaseMetacall(QCameraImageCapture* self, int param1, int param2, void** param3);
libqt_string QCameraImageCapture_Tr(const char* s);
libqt_string QCameraImageCapture_TrUtf8(const char* s);
bool QCameraImageCapture_IsAvailable(const QCameraImageCapture* self);
int QCameraImageCapture_Availability(const QCameraImageCapture* self);
QMediaObject* QCameraImageCapture_MediaObject(const QCameraImageCapture* self);
void QCameraImageCapture_OnMediaObject(const QCameraImageCapture* self, intptr_t slot);
QMediaObject* QCameraImageCapture_QBaseMediaObject(const QCameraImageCapture* self);
int QCameraImageCapture_Error(const QCameraImageCapture* self);
libqt_string QCameraImageCapture_ErrorString(const QCameraImageCapture* self);
bool QCameraImageCapture_IsReadyForCapture(const QCameraImageCapture* self);
libqt_list /* of libqt_string */ QCameraImageCapture_SupportedImageCodecs(const QCameraImageCapture* self);
libqt_string QCameraImageCapture_ImageCodecDescription(const QCameraImageCapture* self, libqt_string codecName);
libqt_list /* of QSize* */ QCameraImageCapture_SupportedResolutions(const QCameraImageCapture* self);
QImageEncoderSettings* QCameraImageCapture_EncodingSettings(const QCameraImageCapture* self);
void QCameraImageCapture_SetEncodingSettings(QCameraImageCapture* self, QImageEncoderSettings* settings);
libqt_list /* of int */ QCameraImageCapture_SupportedBufferFormats(const QCameraImageCapture* self);
int QCameraImageCapture_BufferFormat(const QCameraImageCapture* self);
void QCameraImageCapture_SetBufferFormat(QCameraImageCapture* self, int format);
bool QCameraImageCapture_IsCaptureDestinationSupported(const QCameraImageCapture* self, int destination);
int QCameraImageCapture_CaptureDestination(const QCameraImageCapture* self);
void QCameraImageCapture_SetCaptureDestination(QCameraImageCapture* self, int destination);
int QCameraImageCapture_Capture(QCameraImageCapture* self);
void QCameraImageCapture_CancelCapture(QCameraImageCapture* self);
void QCameraImageCapture_Error2(QCameraImageCapture* self, int id, int errorVal, libqt_string errorString);
void QCameraImageCapture_Connect_Error2(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_ReadyForCaptureChanged(QCameraImageCapture* self, bool ready);
void QCameraImageCapture_Connect_ReadyForCaptureChanged(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_BufferFormatChanged(QCameraImageCapture* self, int format);
void QCameraImageCapture_Connect_BufferFormatChanged(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_CaptureDestinationChanged(QCameraImageCapture* self, int destination);
void QCameraImageCapture_Connect_CaptureDestinationChanged(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_ImageExposed(QCameraImageCapture* self, int id);
void QCameraImageCapture_Connect_ImageExposed(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_ImageCaptured(QCameraImageCapture* self, int id, QImage* preview);
void QCameraImageCapture_Connect_ImageCaptured(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_ImageMetadataAvailable(QCameraImageCapture* self, int id, libqt_string key, QVariant* value);
void QCameraImageCapture_Connect_ImageMetadataAvailable(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_ImageAvailable(QCameraImageCapture* self, int id, QVideoFrame* frame);
void QCameraImageCapture_Connect_ImageAvailable(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_ImageSaved(QCameraImageCapture* self, int id, libqt_string fileName);
void QCameraImageCapture_Connect_ImageSaved(QCameraImageCapture* self, intptr_t slot);
bool QCameraImageCapture_SetMediaObject(QCameraImageCapture* self, QMediaObject* mediaObject);
void QCameraImageCapture_OnSetMediaObject(QCameraImageCapture* self, intptr_t slot);
bool QCameraImageCapture_QBaseSetMediaObject(QCameraImageCapture* self, QMediaObject* mediaObject);
libqt_string QCameraImageCapture_Tr2(const char* s, const char* c);
libqt_string QCameraImageCapture_Tr3(const char* s, const char* c, int n);
libqt_string QCameraImageCapture_TrUtf82(const char* s, const char* c);
libqt_string QCameraImageCapture_TrUtf83(const char* s, const char* c, int n);
libqt_list /* of QSize* */ QCameraImageCapture_SupportedResolutions1(const QCameraImageCapture* self, QImageEncoderSettings* settings);
libqt_list /* of QSize* */ QCameraImageCapture_SupportedResolutions2(const QCameraImageCapture* self, QImageEncoderSettings* settings, bool* continuous);
int QCameraImageCapture_Capture1(QCameraImageCapture* self, libqt_string location);
bool QCameraImageCapture_Event(QCameraImageCapture* self, QEvent* event);
void QCameraImageCapture_OnEvent(QCameraImageCapture* self, intptr_t slot);
bool QCameraImageCapture_QBaseEvent(QCameraImageCapture* self, QEvent* event);
bool QCameraImageCapture_EventFilter(QCameraImageCapture* self, QObject* watched, QEvent* event);
void QCameraImageCapture_OnEventFilter(QCameraImageCapture* self, intptr_t slot);
bool QCameraImageCapture_QBaseEventFilter(QCameraImageCapture* self, QObject* watched, QEvent* event);
void QCameraImageCapture_TimerEvent(QCameraImageCapture* self, QTimerEvent* event);
void QCameraImageCapture_OnTimerEvent(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_QBaseTimerEvent(QCameraImageCapture* self, QTimerEvent* event);
void QCameraImageCapture_ChildEvent(QCameraImageCapture* self, QChildEvent* event);
void QCameraImageCapture_OnChildEvent(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_QBaseChildEvent(QCameraImageCapture* self, QChildEvent* event);
void QCameraImageCapture_CustomEvent(QCameraImageCapture* self, QEvent* event);
void QCameraImageCapture_OnCustomEvent(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_QBaseCustomEvent(QCameraImageCapture* self, QEvent* event);
void QCameraImageCapture_ConnectNotify(QCameraImageCapture* self, QMetaMethod* signal);
void QCameraImageCapture_OnConnectNotify(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_QBaseConnectNotify(QCameraImageCapture* self, QMetaMethod* signal);
void QCameraImageCapture_DisconnectNotify(QCameraImageCapture* self, QMetaMethod* signal);
void QCameraImageCapture_OnDisconnectNotify(QCameraImageCapture* self, intptr_t slot);
void QCameraImageCapture_QBaseDisconnectNotify(QCameraImageCapture* self, QMetaMethod* signal);
QObject* QCameraImageCapture_Sender(const QCameraImageCapture* self);
void QCameraImageCapture_OnSender(const QCameraImageCapture* self, intptr_t slot);
QObject* QCameraImageCapture_QBaseSender(const QCameraImageCapture* self);
int QCameraImageCapture_SenderSignalIndex(const QCameraImageCapture* self);
void QCameraImageCapture_OnSenderSignalIndex(const QCameraImageCapture* self, intptr_t slot);
int QCameraImageCapture_QBaseSenderSignalIndex(const QCameraImageCapture* self);
int QCameraImageCapture_Receivers(const QCameraImageCapture* self, const char* signal);
void QCameraImageCapture_OnReceivers(const QCameraImageCapture* self, intptr_t slot);
int QCameraImageCapture_QBaseReceivers(const QCameraImageCapture* self, const char* signal);
bool QCameraImageCapture_IsSignalConnected(const QCameraImageCapture* self, QMetaMethod* signal);
void QCameraImageCapture_OnIsSignalConnected(const QCameraImageCapture* self, intptr_t slot);
bool QCameraImageCapture_QBaseIsSignalConnected(const QCameraImageCapture* self, QMetaMethod* signal);
void QCameraImageCapture_Delete(QCameraImageCapture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
