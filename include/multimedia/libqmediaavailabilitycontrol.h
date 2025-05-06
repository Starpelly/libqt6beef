#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAAVAILABILITYCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIAAVAILABILITYCONTROL_H

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
typedef struct QMediaAvailabilityControl QMediaAvailabilityControl;
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

QMetaObject* QMediaAvailabilityControl_MetaObject(const QMediaAvailabilityControl* self);
void* QMediaAvailabilityControl_Metacast(QMediaAvailabilityControl* self, const char* param1);
int QMediaAvailabilityControl_Metacall(QMediaAvailabilityControl* self, int param1, int param2, void** param3);
libqt_string QMediaAvailabilityControl_Tr(const char* s);
libqt_string QMediaAvailabilityControl_TrUtf8(const char* s);
int QMediaAvailabilityControl_Availability(const QMediaAvailabilityControl* self);
void QMediaAvailabilityControl_AvailabilityChanged(QMediaAvailabilityControl* self, int availability);
void QMediaAvailabilityControl_Connect_AvailabilityChanged(QMediaAvailabilityControl* self, intptr_t slot);
libqt_string QMediaAvailabilityControl_Tr2(const char* s, const char* c);
libqt_string QMediaAvailabilityControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaAvailabilityControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaAvailabilityControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaAvailabilityControl_Event(QMediaAvailabilityControl* self, QEvent* event);
bool QMediaAvailabilityControl_EventFilter(QMediaAvailabilityControl* self, QObject* watched, QEvent* event);
void QMediaAvailabilityControl_Delete(QMediaAvailabilityControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
