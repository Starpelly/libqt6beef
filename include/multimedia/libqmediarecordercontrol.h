#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIARECORDERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIARECORDERCONTROL_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaControl QMediaControl;
typedef struct QMediaRecorderControl QMediaRecorderControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMediaRecorderControl_MetaObject(const QMediaRecorderControl* self);
void* QMediaRecorderControl_Metacast(QMediaRecorderControl* self, const char* param1);
int QMediaRecorderControl_Metacall(QMediaRecorderControl* self, int param1, int param2, void** param3);
libqt_string QMediaRecorderControl_Tr(const char* s);
libqt_string QMediaRecorderControl_TrUtf8(const char* s);
QUrl* QMediaRecorderControl_OutputLocation(const QMediaRecorderControl* self);
bool QMediaRecorderControl_SetOutputLocation(QMediaRecorderControl* self, QUrl* location);
int QMediaRecorderControl_State(const QMediaRecorderControl* self);
int QMediaRecorderControl_Status(const QMediaRecorderControl* self);
long long QMediaRecorderControl_Duration(const QMediaRecorderControl* self);
bool QMediaRecorderControl_IsMuted(const QMediaRecorderControl* self);
double QMediaRecorderControl_Volume(const QMediaRecorderControl* self);
void QMediaRecorderControl_ApplySettings(QMediaRecorderControl* self);
void QMediaRecorderControl_StateChanged(QMediaRecorderControl* self, int state);
void QMediaRecorderControl_Connect_StateChanged(QMediaRecorderControl* self, intptr_t slot);
void QMediaRecorderControl_StatusChanged(QMediaRecorderControl* self, int status);
void QMediaRecorderControl_Connect_StatusChanged(QMediaRecorderControl* self, intptr_t slot);
void QMediaRecorderControl_DurationChanged(QMediaRecorderControl* self, long long position);
void QMediaRecorderControl_Connect_DurationChanged(QMediaRecorderControl* self, intptr_t slot);
void QMediaRecorderControl_MutedChanged(QMediaRecorderControl* self, bool muted);
void QMediaRecorderControl_Connect_MutedChanged(QMediaRecorderControl* self, intptr_t slot);
void QMediaRecorderControl_VolumeChanged(QMediaRecorderControl* self, double volume);
void QMediaRecorderControl_Connect_VolumeChanged(QMediaRecorderControl* self, intptr_t slot);
void QMediaRecorderControl_ActualLocationChanged(QMediaRecorderControl* self, QUrl* location);
void QMediaRecorderControl_Connect_ActualLocationChanged(QMediaRecorderControl* self, intptr_t slot);
void QMediaRecorderControl_Error(QMediaRecorderControl* self, int errorVal, libqt_string errorString);
void QMediaRecorderControl_Connect_Error(QMediaRecorderControl* self, intptr_t slot);
void QMediaRecorderControl_SetState(QMediaRecorderControl* self, int state);
void QMediaRecorderControl_SetMuted(QMediaRecorderControl* self, bool muted);
void QMediaRecorderControl_SetVolume(QMediaRecorderControl* self, double volume);
libqt_string QMediaRecorderControl_Tr2(const char* s, const char* c);
libqt_string QMediaRecorderControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaRecorderControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaRecorderControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaRecorderControl_Event(QMediaRecorderControl* self, QEvent* event);
bool QMediaRecorderControl_EventFilter(QMediaRecorderControl* self, QObject* watched, QEvent* event);
void QMediaRecorderControl_Delete(QMediaRecorderControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
