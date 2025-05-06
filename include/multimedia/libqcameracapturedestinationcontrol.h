#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERACAPTUREDESTINATIONCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERACAPTUREDESTINATIONCONTROL_H

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
typedef struct QCameraCaptureDestinationControl QCameraCaptureDestinationControl;
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

QMetaObject* QCameraCaptureDestinationControl_MetaObject(const QCameraCaptureDestinationControl* self);
void* QCameraCaptureDestinationControl_Metacast(QCameraCaptureDestinationControl* self, const char* param1);
int QCameraCaptureDestinationControl_Metacall(QCameraCaptureDestinationControl* self, int param1, int param2, void** param3);
libqt_string QCameraCaptureDestinationControl_Tr(const char* s);
libqt_string QCameraCaptureDestinationControl_TrUtf8(const char* s);
bool QCameraCaptureDestinationControl_IsCaptureDestinationSupported(const QCameraCaptureDestinationControl* self, int destination);
int QCameraCaptureDestinationControl_CaptureDestination(const QCameraCaptureDestinationControl* self);
void QCameraCaptureDestinationControl_SetCaptureDestination(QCameraCaptureDestinationControl* self, int destination);
void QCameraCaptureDestinationControl_CaptureDestinationChanged(QCameraCaptureDestinationControl* self, int destination);
void QCameraCaptureDestinationControl_Connect_CaptureDestinationChanged(QCameraCaptureDestinationControl* self, intptr_t slot);
libqt_string QCameraCaptureDestinationControl_Tr2(const char* s, const char* c);
libqt_string QCameraCaptureDestinationControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraCaptureDestinationControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraCaptureDestinationControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraCaptureDestinationControl_Event(QCameraCaptureDestinationControl* self, QEvent* event);
bool QCameraCaptureDestinationControl_EventFilter(QCameraCaptureDestinationControl* self, QObject* watched, QEvent* event);
void QCameraCaptureDestinationControl_Delete(QCameraCaptureDestinationControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
