#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERALOCKSCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERALOCKSCONTROL_H

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
typedef struct QCameraLocksControl QCameraLocksControl;
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

QMetaObject* QCameraLocksControl_MetaObject(const QCameraLocksControl* self);
void* QCameraLocksControl_Metacast(QCameraLocksControl* self, const char* param1);
int QCameraLocksControl_Metacall(QCameraLocksControl* self, int param1, int param2, void** param3);
libqt_string QCameraLocksControl_Tr(const char* s);
libqt_string QCameraLocksControl_TrUtf8(const char* s);
int QCameraLocksControl_SupportedLocks(const QCameraLocksControl* self);
int QCameraLocksControl_LockStatus(const QCameraLocksControl* self, int lock);
void QCameraLocksControl_SearchAndLock(QCameraLocksControl* self, int locks);
void QCameraLocksControl_Unlock(QCameraLocksControl* self, int locks);
void QCameraLocksControl_LockStatusChanged(QCameraLocksControl* self, int typeVal, int status, int reason);
void QCameraLocksControl_Connect_LockStatusChanged(QCameraLocksControl* self, intptr_t slot);
libqt_string QCameraLocksControl_Tr2(const char* s, const char* c);
libqt_string QCameraLocksControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraLocksControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraLocksControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraLocksControl_Event(QCameraLocksControl* self, QEvent* event);
bool QCameraLocksControl_EventFilter(QCameraLocksControl* self, QObject* watched, QEvent* event);
void QCameraLocksControl_Delete(QCameraLocksControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
