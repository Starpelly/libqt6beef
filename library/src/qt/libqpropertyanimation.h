#pragma once
#ifndef SRC_QTC_LIBQPROPERTYANIMATION_H
#define SRC_QTC_LIBQPROPERTYANIMATION_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QAnimationGroup QAnimationGroup;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEasingCurve QEasingCurve;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPropertyAnimation QPropertyAnimation;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVariantAnimation QVariantAnimation;
#endif

QTLIBC_API QPropertyAnimation* QPropertyAnimation_new();
QTLIBC_API QPropertyAnimation* QPropertyAnimation_new2(QObject* target, libqt_string propertyName);
QTLIBC_API QPropertyAnimation* QPropertyAnimation_new3(QObject* parent);
QTLIBC_API QPropertyAnimation* QPropertyAnimation_new4(QObject* target, libqt_string propertyName, QObject* parent);
QTLIBC_API QMetaObject* QPropertyAnimation_MetaObject(const QPropertyAnimation* self);
QTLIBC_API void* QPropertyAnimation_Metacast(QPropertyAnimation* self, const char* param1);
QTLIBC_API int QPropertyAnimation_Metacall(QPropertyAnimation* self, int param1, int param2, void** param3);
QTLIBC_API void QPropertyAnimation_OnMetacall(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API int QPropertyAnimation_QBaseMetacall(QPropertyAnimation* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QPropertyAnimation_Tr(const char* s);
QTLIBC_API QObject* QPropertyAnimation_TargetObject(const QPropertyAnimation* self);
QTLIBC_API void QPropertyAnimation_SetTargetObject(QPropertyAnimation* self, QObject* target);
QTLIBC_API libqt_string QPropertyAnimation_PropertyName(const QPropertyAnimation* self);
QTLIBC_API void QPropertyAnimation_SetPropertyName(QPropertyAnimation* self, libqt_string propertyName);
QTLIBC_API bool QPropertyAnimation_Event(QPropertyAnimation* self, QEvent* event);
QTLIBC_API void QPropertyAnimation_OnEvent(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API bool QPropertyAnimation_QBaseEvent(QPropertyAnimation* self, QEvent* event);
QTLIBC_API void QPropertyAnimation_UpdateCurrentValue(QPropertyAnimation* self, QVariant* value);
QTLIBC_API void QPropertyAnimation_OnUpdateCurrentValue(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseUpdateCurrentValue(QPropertyAnimation* self, QVariant* value);
QTLIBC_API void QPropertyAnimation_UpdateState(QPropertyAnimation* self, int newState, int oldState);
QTLIBC_API void QPropertyAnimation_OnUpdateState(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseUpdateState(QPropertyAnimation* self, int newState, int oldState);
QTLIBC_API libqt_string QPropertyAnimation_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QPropertyAnimation_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QPropertyAnimation_Duration(const QPropertyAnimation* self);
QTLIBC_API void QPropertyAnimation_OnDuration(const QPropertyAnimation* self, intptr_t slot);
QTLIBC_API int QPropertyAnimation_QBaseDuration(const QPropertyAnimation* self);
QTLIBC_API void QPropertyAnimation_UpdateCurrentTime(QPropertyAnimation* self, int param1);
QTLIBC_API void QPropertyAnimation_OnUpdateCurrentTime(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseUpdateCurrentTime(QPropertyAnimation* self, int param1);
QTLIBC_API void QPropertyAnimation_UpdateDirection(QPropertyAnimation* self, int direction);
QTLIBC_API void QPropertyAnimation_OnUpdateDirection(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseUpdateDirection(QPropertyAnimation* self, int direction);
QTLIBC_API bool QPropertyAnimation_EventFilter(QPropertyAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QPropertyAnimation_OnEventFilter(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API bool QPropertyAnimation_QBaseEventFilter(QPropertyAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QPropertyAnimation_TimerEvent(QPropertyAnimation* self, QTimerEvent* event);
QTLIBC_API void QPropertyAnimation_OnTimerEvent(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseTimerEvent(QPropertyAnimation* self, QTimerEvent* event);
QTLIBC_API void QPropertyAnimation_ChildEvent(QPropertyAnimation* self, QChildEvent* event);
QTLIBC_API void QPropertyAnimation_OnChildEvent(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseChildEvent(QPropertyAnimation* self, QChildEvent* event);
QTLIBC_API void QPropertyAnimation_CustomEvent(QPropertyAnimation* self, QEvent* event);
QTLIBC_API void QPropertyAnimation_OnCustomEvent(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseCustomEvent(QPropertyAnimation* self, QEvent* event);
QTLIBC_API void QPropertyAnimation_ConnectNotify(QPropertyAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPropertyAnimation_OnConnectNotify(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseConnectNotify(QPropertyAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPropertyAnimation_DisconnectNotify(QPropertyAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPropertyAnimation_OnDisconnectNotify(QPropertyAnimation* self, intptr_t slot);
QTLIBC_API void QPropertyAnimation_QBaseDisconnectNotify(QPropertyAnimation* self, QMetaMethod* signal);
QTLIBC_API QVariant* QPropertyAnimation_Interpolated(const QPropertyAnimation* self, QVariant* from, QVariant* to, double progress);
QTLIBC_API void QPropertyAnimation_OnInterpolated(const QPropertyAnimation* self, intptr_t slot);
QTLIBC_API QVariant* QPropertyAnimation_QBaseInterpolated(const QPropertyAnimation* self, QVariant* from, QVariant* to, double progress);
QTLIBC_API QObject* QPropertyAnimation_Sender(const QPropertyAnimation* self);
QTLIBC_API void QPropertyAnimation_OnSender(const QPropertyAnimation* self, intptr_t slot);
QTLIBC_API QObject* QPropertyAnimation_QBaseSender(const QPropertyAnimation* self);
QTLIBC_API int QPropertyAnimation_SenderSignalIndex(const QPropertyAnimation* self);
QTLIBC_API void QPropertyAnimation_OnSenderSignalIndex(const QPropertyAnimation* self, intptr_t slot);
QTLIBC_API int QPropertyAnimation_QBaseSenderSignalIndex(const QPropertyAnimation* self);
QTLIBC_API int QPropertyAnimation_Receivers(const QPropertyAnimation* self, const char* signal);
QTLIBC_API void QPropertyAnimation_OnReceivers(const QPropertyAnimation* self, intptr_t slot);
QTLIBC_API int QPropertyAnimation_QBaseReceivers(const QPropertyAnimation* self, const char* signal);
QTLIBC_API bool QPropertyAnimation_IsSignalConnected(const QPropertyAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPropertyAnimation_OnIsSignalConnected(const QPropertyAnimation* self, intptr_t slot);
QTLIBC_API bool QPropertyAnimation_QBaseIsSignalConnected(const QPropertyAnimation* self, QMetaMethod* signal);
QTLIBC_API void QPropertyAnimation_Delete(QPropertyAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
