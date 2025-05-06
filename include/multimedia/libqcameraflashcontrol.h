#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAFLASHCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAFLASHCONTROL_H

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
typedef struct QCameraFlashControl QCameraFlashControl;
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

QMetaObject* QCameraFlashControl_MetaObject(const QCameraFlashControl* self);
void* QCameraFlashControl_Metacast(QCameraFlashControl* self, const char* param1);
int QCameraFlashControl_Metacall(QCameraFlashControl* self, int param1, int param2, void** param3);
libqt_string QCameraFlashControl_Tr(const char* s);
libqt_string QCameraFlashControl_TrUtf8(const char* s);
int QCameraFlashControl_FlashMode(const QCameraFlashControl* self);
void QCameraFlashControl_SetFlashMode(QCameraFlashControl* self, int mode);
bool QCameraFlashControl_IsFlashModeSupported(const QCameraFlashControl* self, int mode);
bool QCameraFlashControl_IsFlashReady(const QCameraFlashControl* self);
void QCameraFlashControl_FlashReady(QCameraFlashControl* self, bool param1);
void QCameraFlashControl_Connect_FlashReady(QCameraFlashControl* self, intptr_t slot);
libqt_string QCameraFlashControl_Tr2(const char* s, const char* c);
libqt_string QCameraFlashControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraFlashControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraFlashControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraFlashControl_Event(QCameraFlashControl* self, QEvent* event);
bool QCameraFlashControl_EventFilter(QCameraFlashControl* self, QObject* watched, QEvent* event);
void QCameraFlashControl_Delete(QCameraFlashControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
