#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIASTREAMSCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIASTREAMSCONTROL_H

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
typedef struct QMediaStreamsControl QMediaStreamsControl;
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
typedef QMediaStreamsControl::StreamType StreamType; // C++ enum
#else
typedef int StreamType; // C ABI enum
#endif

QMetaObject* QMediaStreamsControl_MetaObject(const QMediaStreamsControl* self);
void* QMediaStreamsControl_Metacast(QMediaStreamsControl* self, const char* param1);
int QMediaStreamsControl_Metacall(QMediaStreamsControl* self, int param1, int param2, void** param3);
libqt_string QMediaStreamsControl_Tr(const char* s);
libqt_string QMediaStreamsControl_TrUtf8(const char* s);
int QMediaStreamsControl_StreamCount(QMediaStreamsControl* self);
int QMediaStreamsControl_StreamType(QMediaStreamsControl* self, int streamNumber);
QVariant* QMediaStreamsControl_MetaData(QMediaStreamsControl* self, int streamNumber, libqt_string key);
bool QMediaStreamsControl_IsActive(QMediaStreamsControl* self, int streamNumber);
void QMediaStreamsControl_SetActive(QMediaStreamsControl* self, int streamNumber, bool state);
void QMediaStreamsControl_StreamsChanged(QMediaStreamsControl* self);
void QMediaStreamsControl_Connect_StreamsChanged(QMediaStreamsControl* self, intptr_t slot);
void QMediaStreamsControl_ActiveStreamsChanged(QMediaStreamsControl* self);
void QMediaStreamsControl_Connect_ActiveStreamsChanged(QMediaStreamsControl* self, intptr_t slot);
libqt_string QMediaStreamsControl_Tr2(const char* s, const char* c);
libqt_string QMediaStreamsControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaStreamsControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaStreamsControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaStreamsControl_Event(QMediaStreamsControl* self, QEvent* event);
bool QMediaStreamsControl_EventFilter(QMediaStreamsControl* self, QObject* watched, QEvent* event);
void QMediaStreamsControl_Delete(QMediaStreamsControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
