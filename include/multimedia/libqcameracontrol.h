#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERACONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERACONTROL_H

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
typedef struct QCameraControl QCameraControl;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QCameraControl::PropertyChangeType PropertyChangeType; // C++ enum
#else
typedef int PropertyChangeType; // C ABI enum
#endif

QMetaObject* QCameraControl_MetaObject(const QCameraControl* self);
void* QCameraControl_Metacast(QCameraControl* self, const char* param1);
int QCameraControl_Metacall(QCameraControl* self, int param1, int param2, void** param3);
libqt_string QCameraControl_Tr(const char* s);
libqt_string QCameraControl_TrUtf8(const char* s);
int QCameraControl_State(const QCameraControl* self);
void QCameraControl_SetState(QCameraControl* self, int state);
int QCameraControl_Status(const QCameraControl* self);
int QCameraControl_CaptureMode(const QCameraControl* self);
void QCameraControl_SetCaptureMode(QCameraControl* self, int captureMode);
bool QCameraControl_IsCaptureModeSupported(const QCameraControl* self, int mode);
bool QCameraControl_CanChangeProperty(const QCameraControl* self, int changeType, int status);
void QCameraControl_StateChanged(QCameraControl* self, int param1);
void QCameraControl_Connect_StateChanged(QCameraControl* self, intptr_t slot);
void QCameraControl_StatusChanged(QCameraControl* self, int param1);
void QCameraControl_Connect_StatusChanged(QCameraControl* self, intptr_t slot);
void QCameraControl_Error(QCameraControl* self, int errorVal, libqt_string errorString);
void QCameraControl_Connect_Error(QCameraControl* self, intptr_t slot);
void QCameraControl_CaptureModeChanged(QCameraControl* self, int mode);
void QCameraControl_Connect_CaptureModeChanged(QCameraControl* self, intptr_t slot);
libqt_string QCameraControl_Tr2(const char* s, const char* c);
libqt_string QCameraControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraControl_Event(QCameraControl* self, QEvent* event);
bool QCameraControl_EventFilter(QCameraControl* self, QObject* watched, QEvent* event);
void QCameraControl_Delete(QCameraControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
