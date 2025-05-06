#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAIMAGECAPTURECONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAIMAGECAPTURECONTROL_H

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
typedef struct QCameraImageCaptureControl QCameraImageCaptureControl;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoFrame QVideoFrame;
#endif

QMetaObject* QCameraImageCaptureControl_MetaObject(const QCameraImageCaptureControl* self);
void* QCameraImageCaptureControl_Metacast(QCameraImageCaptureControl* self, const char* param1);
int QCameraImageCaptureControl_Metacall(QCameraImageCaptureControl* self, int param1, int param2, void** param3);
libqt_string QCameraImageCaptureControl_Tr(const char* s);
libqt_string QCameraImageCaptureControl_TrUtf8(const char* s);
bool QCameraImageCaptureControl_IsReadyForCapture(const QCameraImageCaptureControl* self);
int QCameraImageCaptureControl_DriveMode(const QCameraImageCaptureControl* self);
void QCameraImageCaptureControl_SetDriveMode(QCameraImageCaptureControl* self, int mode);
int QCameraImageCaptureControl_Capture(QCameraImageCaptureControl* self, libqt_string fileName);
void QCameraImageCaptureControl_CancelCapture(QCameraImageCaptureControl* self);
void QCameraImageCaptureControl_ReadyForCaptureChanged(QCameraImageCaptureControl* self, bool ready);
void QCameraImageCaptureControl_Connect_ReadyForCaptureChanged(QCameraImageCaptureControl* self, intptr_t slot);
void QCameraImageCaptureControl_ImageExposed(QCameraImageCaptureControl* self, int requestId);
void QCameraImageCaptureControl_Connect_ImageExposed(QCameraImageCaptureControl* self, intptr_t slot);
void QCameraImageCaptureControl_ImageCaptured(QCameraImageCaptureControl* self, int requestId, QImage* preview);
void QCameraImageCaptureControl_Connect_ImageCaptured(QCameraImageCaptureControl* self, intptr_t slot);
void QCameraImageCaptureControl_ImageMetadataAvailable(QCameraImageCaptureControl* self, int id, libqt_string key, QVariant* value);
void QCameraImageCaptureControl_Connect_ImageMetadataAvailable(QCameraImageCaptureControl* self, intptr_t slot);
void QCameraImageCaptureControl_ImageAvailable(QCameraImageCaptureControl* self, int requestId, QVideoFrame* buffer);
void QCameraImageCaptureControl_Connect_ImageAvailable(QCameraImageCaptureControl* self, intptr_t slot);
void QCameraImageCaptureControl_ImageSaved(QCameraImageCaptureControl* self, int requestId, libqt_string fileName);
void QCameraImageCaptureControl_Connect_ImageSaved(QCameraImageCaptureControl* self, intptr_t slot);
void QCameraImageCaptureControl_Error(QCameraImageCaptureControl* self, int id, int errorVal, libqt_string errorString);
void QCameraImageCaptureControl_Connect_Error(QCameraImageCaptureControl* self, intptr_t slot);
libqt_string QCameraImageCaptureControl_Tr2(const char* s, const char* c);
libqt_string QCameraImageCaptureControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraImageCaptureControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraImageCaptureControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraImageCaptureControl_Event(QCameraImageCaptureControl* self, QEvent* event);
bool QCameraImageCaptureControl_EventFilter(QCameraImageCaptureControl* self, QObject* watched, QEvent* event);
void QCameraImageCaptureControl_Delete(QCameraImageCaptureControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
