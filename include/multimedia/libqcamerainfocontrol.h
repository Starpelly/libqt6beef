#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAINFOCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAINFOCONTROL_H

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
typedef struct QCameraInfoControl QCameraInfoControl;
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

QMetaObject* QCameraInfoControl_MetaObject(const QCameraInfoControl* self);
void* QCameraInfoControl_Metacast(QCameraInfoControl* self, const char* param1);
int QCameraInfoControl_Metacall(QCameraInfoControl* self, int param1, int param2, void** param3);
libqt_string QCameraInfoControl_Tr(const char* s);
libqt_string QCameraInfoControl_TrUtf8(const char* s);
int QCameraInfoControl_CameraPosition(const QCameraInfoControl* self, libqt_string deviceName);
int QCameraInfoControl_CameraOrientation(const QCameraInfoControl* self, libqt_string deviceName);
libqt_string QCameraInfoControl_Tr2(const char* s, const char* c);
libqt_string QCameraInfoControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraInfoControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraInfoControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraInfoControl_Event(QCameraInfoControl* self, QEvent* event);
bool QCameraInfoControl_EventFilter(QCameraInfoControl* self, QObject* watched, QEvent* event);
void QCameraInfoControl_Delete(QCameraInfoControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
