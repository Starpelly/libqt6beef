#pragma once
#ifndef SRCC_LIBQABSTRACTEVENTDISPATCHER_H
#define SRCC_LIBQABSTRACTEVENTDISPATCHER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAbstractEventDispatcher__TimerInfo)
typedef QAbstractEventDispatcher::TimerInfo QAbstractEventDispatcher__TimerInfo;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractEventDispatcher QAbstractEventDispatcher;
typedef struct QAbstractEventDispatcher__TimerInfo QAbstractEventDispatcher__TimerInfo;
typedef struct QAbstractNativeEventFilter QAbstractNativeEventFilter;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSocketNotifier QSocketNotifier;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QAbstractEventDispatcher_MetaObject(const QAbstractEventDispatcher* self);
void* QAbstractEventDispatcher_Metacast(QAbstractEventDispatcher* self, const char* param1);
int QAbstractEventDispatcher_Metacall(QAbstractEventDispatcher* self, int param1, int param2, void** param3);
libqt_string QAbstractEventDispatcher_Tr(const char* s);
libqt_string QAbstractEventDispatcher_TrUtf8(const char* s);
QAbstractEventDispatcher* QAbstractEventDispatcher_Instance();
bool QAbstractEventDispatcher_ProcessEvents(QAbstractEventDispatcher* self, int flags);
bool QAbstractEventDispatcher_HasPendingEvents(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_RegisterSocketNotifier(QAbstractEventDispatcher* self, QSocketNotifier* notifier);
void QAbstractEventDispatcher_UnregisterSocketNotifier(QAbstractEventDispatcher* self, QSocketNotifier* notifier);
int QAbstractEventDispatcher_RegisterTimer(QAbstractEventDispatcher* self, int interval, int timerType, QObject* object);
void QAbstractEventDispatcher_RegisterTimer2(QAbstractEventDispatcher* self, int timerId, int interval, int timerType, QObject* object);
bool QAbstractEventDispatcher_UnregisterTimer(QAbstractEventDispatcher* self, int timerId);
bool QAbstractEventDispatcher_UnregisterTimers(QAbstractEventDispatcher* self, QObject* object);
libqt_list /* of QAbstractEventDispatcher__TimerInfo* */ QAbstractEventDispatcher_RegisteredTimers(const QAbstractEventDispatcher* self, QObject* object);
int QAbstractEventDispatcher_RemainingTime(QAbstractEventDispatcher* self, int timerId);
void QAbstractEventDispatcher_WakeUp(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_Interrupt(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_Flush(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_StartingUp(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_ClosingDown(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_InstallNativeEventFilter(QAbstractEventDispatcher* self, QAbstractNativeEventFilter* filterObj);
void QAbstractEventDispatcher_RemoveNativeEventFilter(QAbstractEventDispatcher* self, QAbstractNativeEventFilter* filterObj);
bool QAbstractEventDispatcher_FilterNativeEvent(QAbstractEventDispatcher* self, libqt_string eventType, void* message, long* result);
void QAbstractEventDispatcher_AboutToBlock(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_Connect_AboutToBlock(QAbstractEventDispatcher* self, intptr_t slot);
void QAbstractEventDispatcher_Awake(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_Connect_Awake(QAbstractEventDispatcher* self, intptr_t slot);
libqt_string QAbstractEventDispatcher_Tr2(const char* s, const char* c);
libqt_string QAbstractEventDispatcher_Tr3(const char* s, const char* c, int n);
libqt_string QAbstractEventDispatcher_TrUtf82(const char* s, const char* c);
libqt_string QAbstractEventDispatcher_TrUtf83(const char* s, const char* c, int n);
QAbstractEventDispatcher* QAbstractEventDispatcher_Instance1(QThread* thread);
bool QAbstractEventDispatcher_Event(QAbstractEventDispatcher* self, QEvent* event);
bool QAbstractEventDispatcher_EventFilter(QAbstractEventDispatcher* self, QObject* watched, QEvent* event);
void QAbstractEventDispatcher_Delete(QAbstractEventDispatcher* self);

QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new(QAbstractEventDispatcher__TimerInfo* other);
QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new2(QAbstractEventDispatcher__TimerInfo* other);
QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new3(int id, int i, int t);
void QAbstractEventDispatcher__TimerInfo_CopyAssign(QAbstractEventDispatcher__TimerInfo* self, QAbstractEventDispatcher__TimerInfo* other);
void QAbstractEventDispatcher__TimerInfo_MoveAssign(QAbstractEventDispatcher__TimerInfo* self, QAbstractEventDispatcher__TimerInfo* other);
void QAbstractEventDispatcher__TimerInfo_Delete(QAbstractEventDispatcher__TimerInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
