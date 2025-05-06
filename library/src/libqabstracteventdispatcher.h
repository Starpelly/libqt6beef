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
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QSocketNotifier QSocketNotifier;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QMetaObject* QAbstractEventDispatcher_MetaObject(const QAbstractEventDispatcher* self);
QTLIBC_API void* QAbstractEventDispatcher_Metacast(QAbstractEventDispatcher* self, const char* param1);
QTLIBC_API int QAbstractEventDispatcher_Metacall(QAbstractEventDispatcher* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAbstractEventDispatcher_Tr(const char* s);
QTLIBC_API QAbstractEventDispatcher* QAbstractEventDispatcher_Instance();
QTLIBC_API bool QAbstractEventDispatcher_ProcessEvents(QAbstractEventDispatcher* self, int flags);
QTLIBC_API void QAbstractEventDispatcher_RegisterSocketNotifier(QAbstractEventDispatcher* self, QSocketNotifier* notifier);
QTLIBC_API void QAbstractEventDispatcher_UnregisterSocketNotifier(QAbstractEventDispatcher* self, QSocketNotifier* notifier);
QTLIBC_API int QAbstractEventDispatcher_RegisterTimer(QAbstractEventDispatcher* self, long long interval, int timerType, QObject* object);
QTLIBC_API void QAbstractEventDispatcher_RegisterTimer2(QAbstractEventDispatcher* self, int timerId, long long interval, int timerType, QObject* object);
QTLIBC_API bool QAbstractEventDispatcher_UnregisterTimer(QAbstractEventDispatcher* self, int timerId);
QTLIBC_API bool QAbstractEventDispatcher_UnregisterTimers(QAbstractEventDispatcher* self, QObject* object);
QTLIBC_API libqt_list /* of QAbstractEventDispatcher__TimerInfo* */ QAbstractEventDispatcher_RegisteredTimers(const QAbstractEventDispatcher* self, QObject* object);
QTLIBC_API int QAbstractEventDispatcher_RemainingTime(QAbstractEventDispatcher* self, int timerId);
QTLIBC_API void QAbstractEventDispatcher_WakeUp(QAbstractEventDispatcher* self);
QTLIBC_API void QAbstractEventDispatcher_Interrupt(QAbstractEventDispatcher* self);
QTLIBC_API void QAbstractEventDispatcher_StartingUp(QAbstractEventDispatcher* self);
QTLIBC_API void QAbstractEventDispatcher_ClosingDown(QAbstractEventDispatcher* self);
QTLIBC_API void QAbstractEventDispatcher_InstallNativeEventFilter(QAbstractEventDispatcher* self, QAbstractNativeEventFilter* filterObj);
QTLIBC_API void QAbstractEventDispatcher_RemoveNativeEventFilter(QAbstractEventDispatcher* self, QAbstractNativeEventFilter* filterObj);
QTLIBC_API bool QAbstractEventDispatcher_FilterNativeEvent(QAbstractEventDispatcher* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QAbstractEventDispatcher_AboutToBlock(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_Connect_AboutToBlock(QAbstractEventDispatcher* self, intptr_t slot);
QTLIBC_API void QAbstractEventDispatcher_Awake(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_Connect_Awake(QAbstractEventDispatcher* self, intptr_t slot);
QTLIBC_API libqt_string QAbstractEventDispatcher_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAbstractEventDispatcher_Tr3(const char* s, const char* c, int n);
QTLIBC_API QAbstractEventDispatcher* QAbstractEventDispatcher_Instance1(QThread* thread);
QTLIBC_API bool QAbstractEventDispatcher_Event(QAbstractEventDispatcher* self, QEvent* event);
QTLIBC_API bool QAbstractEventDispatcher_EventFilter(QAbstractEventDispatcher* self, QObject* watched, QEvent* event);
QTLIBC_API void QAbstractEventDispatcher_Delete(QAbstractEventDispatcher* self);

QTLIBC_API QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new(QAbstractEventDispatcher__TimerInfo* other);
QTLIBC_API QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new2(QAbstractEventDispatcher__TimerInfo* other);
QTLIBC_API QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new3(int id, int i, int t);
QTLIBC_API void QAbstractEventDispatcher__TimerInfo_CopyAssign(QAbstractEventDispatcher__TimerInfo* self, QAbstractEventDispatcher__TimerInfo* other);
QTLIBC_API void QAbstractEventDispatcher__TimerInfo_MoveAssign(QAbstractEventDispatcher__TimerInfo* self, QAbstractEventDispatcher__TimerInfo* other);
QTLIBC_API void QAbstractEventDispatcher__TimerInfo_Delete(QAbstractEventDispatcher__TimerInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
