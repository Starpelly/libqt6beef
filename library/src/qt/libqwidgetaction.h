#pragma once
#ifndef SRC_QTC_LIBQWIDGETACTION_H
#define SRC_QTC_LIBQWIDGETACTION_H

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
typedef struct QAction QAction;
typedef struct QActionGroup QActionGroup;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QIcon QIcon;
typedef struct QKeySequence QKeySequence;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
typedef struct QWidgetAction QWidgetAction;
#endif

QTLIBC_API QWidgetAction* QWidgetAction_new(QObject* parent);
QTLIBC_API QMetaObject* QWidgetAction_MetaObject(const QWidgetAction* self);
QTLIBC_API void* QWidgetAction_Metacast(QWidgetAction* self, const char* param1);
QTLIBC_API int QWidgetAction_Metacall(QWidgetAction* self, int param1, int param2, void** param3);
QTLIBC_API void QWidgetAction_OnMetacall(QWidgetAction* self, intptr_t slot);
QTLIBC_API int QWidgetAction_QBaseMetacall(QWidgetAction* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QWidgetAction_Tr(const char* s);
QTLIBC_API void QWidgetAction_SetDefaultWidget(QWidgetAction* self, QWidget* w);
QTLIBC_API QWidget* QWidgetAction_DefaultWidget(const QWidgetAction* self);
QTLIBC_API QWidget* QWidgetAction_RequestWidget(QWidgetAction* self, QWidget* parent);
QTLIBC_API void QWidgetAction_ReleaseWidget(QWidgetAction* self, QWidget* widget);
QTLIBC_API bool QWidgetAction_Event(QWidgetAction* self, QEvent* param1);
QTLIBC_API void QWidgetAction_OnEvent(QWidgetAction* self, intptr_t slot);
QTLIBC_API bool QWidgetAction_QBaseEvent(QWidgetAction* self, QEvent* param1);
QTLIBC_API bool QWidgetAction_EventFilter(QWidgetAction* self, QObject* param1, QEvent* param2);
QTLIBC_API void QWidgetAction_OnEventFilter(QWidgetAction* self, intptr_t slot);
QTLIBC_API bool QWidgetAction_QBaseEventFilter(QWidgetAction* self, QObject* param1, QEvent* param2);
QTLIBC_API QWidget* QWidgetAction_CreateWidget(QWidgetAction* self, QWidget* parent);
QTLIBC_API void QWidgetAction_OnCreateWidget(QWidgetAction* self, intptr_t slot);
QTLIBC_API QWidget* QWidgetAction_QBaseCreateWidget(QWidgetAction* self, QWidget* parent);
QTLIBC_API void QWidgetAction_DeleteWidget(QWidgetAction* self, QWidget* widget);
QTLIBC_API void QWidgetAction_OnDeleteWidget(QWidgetAction* self, intptr_t slot);
QTLIBC_API void QWidgetAction_QBaseDeleteWidget(QWidgetAction* self, QWidget* widget);
QTLIBC_API libqt_string QWidgetAction_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QWidgetAction_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QWidgetAction_TimerEvent(QWidgetAction* self, QTimerEvent* event);
QTLIBC_API void QWidgetAction_OnTimerEvent(QWidgetAction* self, intptr_t slot);
QTLIBC_API void QWidgetAction_QBaseTimerEvent(QWidgetAction* self, QTimerEvent* event);
QTLIBC_API void QWidgetAction_ChildEvent(QWidgetAction* self, QChildEvent* event);
QTLIBC_API void QWidgetAction_OnChildEvent(QWidgetAction* self, intptr_t slot);
QTLIBC_API void QWidgetAction_QBaseChildEvent(QWidgetAction* self, QChildEvent* event);
QTLIBC_API void QWidgetAction_CustomEvent(QWidgetAction* self, QEvent* event);
QTLIBC_API void QWidgetAction_OnCustomEvent(QWidgetAction* self, intptr_t slot);
QTLIBC_API void QWidgetAction_QBaseCustomEvent(QWidgetAction* self, QEvent* event);
QTLIBC_API void QWidgetAction_ConnectNotify(QWidgetAction* self, QMetaMethod* signal);
QTLIBC_API void QWidgetAction_OnConnectNotify(QWidgetAction* self, intptr_t slot);
QTLIBC_API void QWidgetAction_QBaseConnectNotify(QWidgetAction* self, QMetaMethod* signal);
QTLIBC_API void QWidgetAction_DisconnectNotify(QWidgetAction* self, QMetaMethod* signal);
QTLIBC_API void QWidgetAction_OnDisconnectNotify(QWidgetAction* self, intptr_t slot);
QTLIBC_API void QWidgetAction_QBaseDisconnectNotify(QWidgetAction* self, QMetaMethod* signal);
QTLIBC_API libqt_list /* of QWidget* */ QWidgetAction_CreatedWidgets(const QWidgetAction* self);
QTLIBC_API void QWidgetAction_OnCreatedWidgets(const QWidgetAction* self, intptr_t slot);
QTLIBC_API libqt_list /* of QWidget* */ QWidgetAction_QBaseCreatedWidgets(const QWidgetAction* self);
QTLIBC_API QObject* QWidgetAction_Sender(const QWidgetAction* self);
QTLIBC_API void QWidgetAction_OnSender(const QWidgetAction* self, intptr_t slot);
QTLIBC_API QObject* QWidgetAction_QBaseSender(const QWidgetAction* self);
QTLIBC_API int QWidgetAction_SenderSignalIndex(const QWidgetAction* self);
QTLIBC_API void QWidgetAction_OnSenderSignalIndex(const QWidgetAction* self, intptr_t slot);
QTLIBC_API int QWidgetAction_QBaseSenderSignalIndex(const QWidgetAction* self);
QTLIBC_API int QWidgetAction_Receivers(const QWidgetAction* self, const char* signal);
QTLIBC_API void QWidgetAction_OnReceivers(const QWidgetAction* self, intptr_t slot);
QTLIBC_API int QWidgetAction_QBaseReceivers(const QWidgetAction* self, const char* signal);
QTLIBC_API bool QWidgetAction_IsSignalConnected(const QWidgetAction* self, QMetaMethod* signal);
QTLIBC_API void QWidgetAction_OnIsSignalConnected(const QWidgetAction* self, intptr_t slot);
QTLIBC_API bool QWidgetAction_QBaseIsSignalConnected(const QWidgetAction* self, QMetaMethod* signal);
QTLIBC_API void QWidgetAction_Delete(QWidgetAction* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
