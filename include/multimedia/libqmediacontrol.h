#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIACONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIACONTROL_H

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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMediaControl_MetaObject(const QMediaControl* self);
void* QMediaControl_Metacast(QMediaControl* self, const char* param1);
int QMediaControl_Metacall(QMediaControl* self, int param1, int param2, void** param3);
libqt_string QMediaControl_Tr(const char* s);
libqt_string QMediaControl_TrUtf8(const char* s);
libqt_string QMediaControl_Tr2(const char* s, const char* c);
libqt_string QMediaControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaControl_Event(QMediaControl* self, QEvent* event);
bool QMediaControl_EventFilter(QMediaControl* self, QObject* watched, QEvent* event);
void QMediaControl_Delete(QMediaControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
