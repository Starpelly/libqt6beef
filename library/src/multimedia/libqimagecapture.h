#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQIMAGECAPTURE_H
#define SRC_MULTIMEDIAC_LIBQIMAGECAPTURE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QImageCapture QImageCapture;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMediaMetaData QMediaMetaData;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoFrame QVideoFrame;
#endif

#ifdef __cplusplus
typedef QImageCapture::Error Error;           // C++ enum
typedef QImageCapture::FileFormat FileFormat; // C++ enum
typedef QImageCapture::Quality Quality;       // C++ enum
#else
typedef int Error;      // C ABI enum
typedef int FileFormat; // C ABI enum
typedef int Quality;    // C ABI enum
#endif

QTLIBC_API QImageCapture* QImageCapture_new();
QTLIBC_API QImageCapture* QImageCapture_new2(QObject* parent);
QTLIBC_API QMetaObject* QImageCapture_MetaObject(const QImageCapture* self);
QTLIBC_API void* QImageCapture_Metacast(QImageCapture* self, const char* param1);
QTLIBC_API int QImageCapture_Metacall(QImageCapture* self, int param1, int param2, void** param3);
QTLIBC_API void QImageCapture_OnMetacall(QImageCapture* self, intptr_t slot);
QTLIBC_API int QImageCapture_QBaseMetacall(QImageCapture* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QImageCapture_Tr(const char* s);
QTLIBC_API bool QImageCapture_IsAvailable(const QImageCapture* self);
QTLIBC_API QMediaCaptureSession* QImageCapture_CaptureSession(const QImageCapture* self);
QTLIBC_API int QImageCapture_Error(const QImageCapture* self);
QTLIBC_API libqt_string QImageCapture_ErrorString(const QImageCapture* self);
QTLIBC_API bool QImageCapture_IsReadyForCapture(const QImageCapture* self);
QTLIBC_API int QImageCapture_FileFormat(const QImageCapture* self);
QTLIBC_API void QImageCapture_SetFileFormat(QImageCapture* self, int format);
QTLIBC_API libqt_list /* of int */ QImageCapture_SupportedFormats();
QTLIBC_API libqt_string QImageCapture_FileFormatName(int c);
QTLIBC_API libqt_string QImageCapture_FileFormatDescription(int c);
QTLIBC_API QSize* QImageCapture_Resolution(const QImageCapture* self);
QTLIBC_API void QImageCapture_SetResolution(QImageCapture* self, QSize* resolution);
QTLIBC_API void QImageCapture_SetResolution2(QImageCapture* self, int width, int height);
QTLIBC_API int QImageCapture_Quality(const QImageCapture* self);
QTLIBC_API void QImageCapture_SetQuality(QImageCapture* self, int quality);
QTLIBC_API QMediaMetaData* QImageCapture_MetaData(const QImageCapture* self);
QTLIBC_API void QImageCapture_SetMetaData(QImageCapture* self, QMediaMetaData* metaData);
QTLIBC_API void QImageCapture_AddMetaData(QImageCapture* self, QMediaMetaData* metaData);
QTLIBC_API int QImageCapture_CaptureToFile(QImageCapture* self);
QTLIBC_API int QImageCapture_Capture(QImageCapture* self);
QTLIBC_API void QImageCapture_ErrorChanged(QImageCapture* self);
void QImageCapture_Connect_ErrorChanged(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_ErrorOccurred(QImageCapture* self, int id, int errorVal, libqt_string errorString);
void QImageCapture_Connect_ErrorOccurred(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_ReadyForCaptureChanged(QImageCapture* self, bool ready);
void QImageCapture_Connect_ReadyForCaptureChanged(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_MetaDataChanged(QImageCapture* self);
void QImageCapture_Connect_MetaDataChanged(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_FileFormatChanged(QImageCapture* self);
void QImageCapture_Connect_FileFormatChanged(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_QualityChanged(QImageCapture* self);
void QImageCapture_Connect_QualityChanged(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_ResolutionChanged(QImageCapture* self);
void QImageCapture_Connect_ResolutionChanged(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_ImageExposed(QImageCapture* self, int id);
void QImageCapture_Connect_ImageExposed(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_ImageCaptured(QImageCapture* self, int id, QImage* preview);
void QImageCapture_Connect_ImageCaptured(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_ImageMetadataAvailable(QImageCapture* self, int id, QMediaMetaData* metaData);
void QImageCapture_Connect_ImageMetadataAvailable(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_ImageAvailable(QImageCapture* self, int id, QVideoFrame* frame);
void QImageCapture_Connect_ImageAvailable(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_ImageSaved(QImageCapture* self, int id, libqt_string fileName);
void QImageCapture_Connect_ImageSaved(QImageCapture* self, intptr_t slot);
QTLIBC_API libqt_string QImageCapture_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QImageCapture_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QImageCapture_CaptureToFile1(QImageCapture* self, libqt_string location);
QTLIBC_API bool QImageCapture_Event(QImageCapture* self, QEvent* event);
QTLIBC_API void QImageCapture_OnEvent(QImageCapture* self, intptr_t slot);
QTLIBC_API bool QImageCapture_QBaseEvent(QImageCapture* self, QEvent* event);
QTLIBC_API bool QImageCapture_EventFilter(QImageCapture* self, QObject* watched, QEvent* event);
QTLIBC_API void QImageCapture_OnEventFilter(QImageCapture* self, intptr_t slot);
QTLIBC_API bool QImageCapture_QBaseEventFilter(QImageCapture* self, QObject* watched, QEvent* event);
QTLIBC_API void QImageCapture_TimerEvent(QImageCapture* self, QTimerEvent* event);
QTLIBC_API void QImageCapture_OnTimerEvent(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_QBaseTimerEvent(QImageCapture* self, QTimerEvent* event);
QTLIBC_API void QImageCapture_ChildEvent(QImageCapture* self, QChildEvent* event);
QTLIBC_API void QImageCapture_OnChildEvent(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_QBaseChildEvent(QImageCapture* self, QChildEvent* event);
QTLIBC_API void QImageCapture_CustomEvent(QImageCapture* self, QEvent* event);
QTLIBC_API void QImageCapture_OnCustomEvent(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_QBaseCustomEvent(QImageCapture* self, QEvent* event);
QTLIBC_API void QImageCapture_ConnectNotify(QImageCapture* self, QMetaMethod* signal);
QTLIBC_API void QImageCapture_OnConnectNotify(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_QBaseConnectNotify(QImageCapture* self, QMetaMethod* signal);
QTLIBC_API void QImageCapture_DisconnectNotify(QImageCapture* self, QMetaMethod* signal);
QTLIBC_API void QImageCapture_OnDisconnectNotify(QImageCapture* self, intptr_t slot);
QTLIBC_API void QImageCapture_QBaseDisconnectNotify(QImageCapture* self, QMetaMethod* signal);
QTLIBC_API QObject* QImageCapture_Sender(const QImageCapture* self);
QTLIBC_API void QImageCapture_OnSender(const QImageCapture* self, intptr_t slot);
QTLIBC_API QObject* QImageCapture_QBaseSender(const QImageCapture* self);
QTLIBC_API int QImageCapture_SenderSignalIndex(const QImageCapture* self);
QTLIBC_API void QImageCapture_OnSenderSignalIndex(const QImageCapture* self, intptr_t slot);
QTLIBC_API int QImageCapture_QBaseSenderSignalIndex(const QImageCapture* self);
QTLIBC_API int QImageCapture_Receivers(const QImageCapture* self, const char* signal);
QTLIBC_API void QImageCapture_OnReceivers(const QImageCapture* self, intptr_t slot);
QTLIBC_API int QImageCapture_QBaseReceivers(const QImageCapture* self, const char* signal);
QTLIBC_API bool QImageCapture_IsSignalConnected(const QImageCapture* self, QMetaMethod* signal);
QTLIBC_API void QImageCapture_OnIsSignalConnected(const QImageCapture* self, intptr_t slot);
QTLIBC_API bool QImageCapture_QBaseIsSignalConnected(const QImageCapture* self, QMetaMethod* signal);
QTLIBC_API void QImageCapture_Delete(QImageCapture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
