#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIASERVICE_H
#define SRC_MULTIMEDIAC_LIBQMEDIASERVICE_H

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
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMediaService_MetaObject(const QMediaService* self);
void* QMediaService_Metacast(QMediaService* self, const char* param1);
int QMediaService_Metacall(QMediaService* self, int param1, int param2, void** param3);
libqt_string QMediaService_Tr(const char* s);
libqt_string QMediaService_TrUtf8(const char* s);
QMediaControl* QMediaService_RequestControl(QMediaService* self, const char* name);
void QMediaService_ReleaseControl(QMediaService* self, QMediaControl* control);
libqt_string QMediaService_Tr2(const char* s, const char* c);
libqt_string QMediaService_Tr3(const char* s, const char* c, int n);
libqt_string QMediaService_TrUtf82(const char* s, const char* c);
libqt_string QMediaService_TrUtf83(const char* s, const char* c, int n);
bool QMediaService_Event(QMediaService* self, QEvent* event);
bool QMediaService_EventFilter(QMediaService* self, QObject* watched, QEvent* event);
void QMediaService_Delete(QMediaService* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
