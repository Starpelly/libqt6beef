#pragma once
#ifndef SRCC_LIBQVARIANTANIMATION_H
#define SRCC_LIBQVARIANTANIMATION_H

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
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVariantAnimation QVariantAnimation;
#endif

#ifdef __cplusplus
typedef QVariantAnimation::Interpolator Interpolator; // C++ QFlags
typedef QVariantAnimation::KeyValue KeyValue;         // C++ QFlags
typedef QVariantAnimation::KeyValues KeyValues;       // C++ QFlags
#else
typedef libqt_pair /* tuple of double and QVariant* */ KeyValue; // C ABI QFlags
#endif

QTLIBC_API QVariantAnimation* QVariantAnimation_new();
QTLIBC_API QVariantAnimation* QVariantAnimation_new2(QObject* parent);
QTLIBC_API QMetaObject* QVariantAnimation_MetaObject(const QVariantAnimation* self);
QTLIBC_API void* QVariantAnimation_Metacast(QVariantAnimation* self, const char* param1);
QTLIBC_API int QVariantAnimation_Metacall(QVariantAnimation* self, int param1, int param2, void** param3);
QTLIBC_API void QVariantAnimation_OnMetacall(QVariantAnimation* self, intptr_t slot);
QTLIBC_API int QVariantAnimation_QBaseMetacall(QVariantAnimation* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QVariantAnimation_Tr(const char* s);
QTLIBC_API QVariant* QVariantAnimation_StartValue(const QVariantAnimation* self);
QTLIBC_API void QVariantAnimation_SetStartValue(QVariantAnimation* self, QVariant* value);
QTLIBC_API QVariant* QVariantAnimation_EndValue(const QVariantAnimation* self);
QTLIBC_API void QVariantAnimation_SetEndValue(QVariantAnimation* self, QVariant* value);
QTLIBC_API QVariant* QVariantAnimation_KeyValueAt(const QVariantAnimation* self, double step);
QTLIBC_API void QVariantAnimation_SetKeyValueAt(QVariantAnimation* self, double step, QVariant* value);
QTLIBC_API libqt_list /* of libqt_pair  tuple of double and QVariant*  */ QVariantAnimation_KeyValues(const QVariantAnimation* self);
QTLIBC_API void QVariantAnimation_SetKeyValues(QVariantAnimation* self, libqt_list /* of libqt_pair  tuple of double and QVariant*  */ values);
QTLIBC_API QVariant* QVariantAnimation_CurrentValue(const QVariantAnimation* self);
QTLIBC_API int QVariantAnimation_Duration(const QVariantAnimation* self);
QTLIBC_API void QVariantAnimation_OnDuration(const QVariantAnimation* self, intptr_t slot);
QTLIBC_API int QVariantAnimation_QBaseDuration(const QVariantAnimation* self);
QTLIBC_API void QVariantAnimation_SetDuration(QVariantAnimation* self, int msecs);
QTLIBC_API QEasingCurve* QVariantAnimation_EasingCurve(const QVariantAnimation* self);
QTLIBC_API void QVariantAnimation_SetEasingCurve(QVariantAnimation* self, QEasingCurve* easing);
QTLIBC_API void QVariantAnimation_ValueChanged(QVariantAnimation* self, QVariant* value);
void QVariantAnimation_Connect_ValueChanged(QVariantAnimation* self, intptr_t slot);
QTLIBC_API bool QVariantAnimation_Event(QVariantAnimation* self, QEvent* event);
QTLIBC_API void QVariantAnimation_OnEvent(QVariantAnimation* self, intptr_t slot);
QTLIBC_API bool QVariantAnimation_QBaseEvent(QVariantAnimation* self, QEvent* event);
QTLIBC_API void QVariantAnimation_UpdateCurrentTime(QVariantAnimation* self, int param1);
QTLIBC_API void QVariantAnimation_OnUpdateCurrentTime(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseUpdateCurrentTime(QVariantAnimation* self, int param1);
QTLIBC_API void QVariantAnimation_UpdateState(QVariantAnimation* self, int newState, int oldState);
QTLIBC_API void QVariantAnimation_OnUpdateState(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseUpdateState(QVariantAnimation* self, int newState, int oldState);
QTLIBC_API void QVariantAnimation_UpdateCurrentValue(QVariantAnimation* self, QVariant* value);
QTLIBC_API void QVariantAnimation_OnUpdateCurrentValue(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseUpdateCurrentValue(QVariantAnimation* self, QVariant* value);
QTLIBC_API QVariant* QVariantAnimation_Interpolated(const QVariantAnimation* self, QVariant* from, QVariant* to, double progress);
QTLIBC_API void QVariantAnimation_OnInterpolated(const QVariantAnimation* self, intptr_t slot);
QTLIBC_API QVariant* QVariantAnimation_QBaseInterpolated(const QVariantAnimation* self, QVariant* from, QVariant* to, double progress);
QTLIBC_API libqt_string QVariantAnimation_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QVariantAnimation_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QVariantAnimation_UpdateDirection(QVariantAnimation* self, int direction);
QTLIBC_API void QVariantAnimation_OnUpdateDirection(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseUpdateDirection(QVariantAnimation* self, int direction);
QTLIBC_API bool QVariantAnimation_EventFilter(QVariantAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QVariantAnimation_OnEventFilter(QVariantAnimation* self, intptr_t slot);
QTLIBC_API bool QVariantAnimation_QBaseEventFilter(QVariantAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QVariantAnimation_TimerEvent(QVariantAnimation* self, QTimerEvent* event);
QTLIBC_API void QVariantAnimation_OnTimerEvent(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseTimerEvent(QVariantAnimation* self, QTimerEvent* event);
QTLIBC_API void QVariantAnimation_ChildEvent(QVariantAnimation* self, QChildEvent* event);
QTLIBC_API void QVariantAnimation_OnChildEvent(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseChildEvent(QVariantAnimation* self, QChildEvent* event);
QTLIBC_API void QVariantAnimation_CustomEvent(QVariantAnimation* self, QEvent* event);
QTLIBC_API void QVariantAnimation_OnCustomEvent(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseCustomEvent(QVariantAnimation* self, QEvent* event);
QTLIBC_API void QVariantAnimation_ConnectNotify(QVariantAnimation* self, QMetaMethod* signal);
QTLIBC_API void QVariantAnimation_OnConnectNotify(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseConnectNotify(QVariantAnimation* self, QMetaMethod* signal);
QTLIBC_API void QVariantAnimation_DisconnectNotify(QVariantAnimation* self, QMetaMethod* signal);
QTLIBC_API void QVariantAnimation_OnDisconnectNotify(QVariantAnimation* self, intptr_t slot);
QTLIBC_API void QVariantAnimation_QBaseDisconnectNotify(QVariantAnimation* self, QMetaMethod* signal);
QTLIBC_API QObject* QVariantAnimation_Sender(const QVariantAnimation* self);
QTLIBC_API void QVariantAnimation_OnSender(const QVariantAnimation* self, intptr_t slot);
QTLIBC_API QObject* QVariantAnimation_QBaseSender(const QVariantAnimation* self);
QTLIBC_API int QVariantAnimation_SenderSignalIndex(const QVariantAnimation* self);
QTLIBC_API void QVariantAnimation_OnSenderSignalIndex(const QVariantAnimation* self, intptr_t slot);
QTLIBC_API int QVariantAnimation_QBaseSenderSignalIndex(const QVariantAnimation* self);
QTLIBC_API int QVariantAnimation_Receivers(const QVariantAnimation* self, const char* signal);
QTLIBC_API void QVariantAnimation_OnReceivers(const QVariantAnimation* self, intptr_t slot);
QTLIBC_API int QVariantAnimation_QBaseReceivers(const QVariantAnimation* self, const char* signal);
QTLIBC_API bool QVariantAnimation_IsSignalConnected(const QVariantAnimation* self, QMetaMethod* signal);
QTLIBC_API void QVariantAnimation_OnIsSignalConnected(const QVariantAnimation* self, intptr_t slot);
QTLIBC_API bool QVariantAnimation_QBaseIsSignalConnected(const QVariantAnimation* self, QMetaMethod* signal);
QTLIBC_API void QVariantAnimation_Delete(QVariantAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
