#pragma once
#ifndef SRC_QTC_LIBQACTIONGROUP_H
#define SRC_QTC_LIBQACTIONGROUP_H

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
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QActionGroup::ExclusionPolicy ExclusionPolicy; // C++ enum
#else
typedef int ExclusionPolicy; // C ABI enum
#endif

QTLIBC_API QActionGroup* QActionGroup_new(QObject* parent);
QTLIBC_API QMetaObject* QActionGroup_MetaObject(const QActionGroup* self);
QTLIBC_API void* QActionGroup_Metacast(QActionGroup* self, const char* param1);
QTLIBC_API int QActionGroup_Metacall(QActionGroup* self, int param1, int param2, void** param3);
QTLIBC_API void QActionGroup_OnMetacall(QActionGroup* self, intptr_t slot);
QTLIBC_API int QActionGroup_QBaseMetacall(QActionGroup* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QActionGroup_Tr(const char* s);
QTLIBC_API QAction* QActionGroup_AddAction(QActionGroup* self, QAction* a);
QTLIBC_API QAction* QActionGroup_AddActionWithText(QActionGroup* self, libqt_string text);
QTLIBC_API QAction* QActionGroup_AddAction2(QActionGroup* self, QIcon* icon, libqt_string text);
QTLIBC_API void QActionGroup_RemoveAction(QActionGroup* self, QAction* a);
QTLIBC_API libqt_list /* of QAction* */ QActionGroup_Actions(const QActionGroup* self);
QTLIBC_API QAction* QActionGroup_CheckedAction(const QActionGroup* self);
QTLIBC_API bool QActionGroup_IsExclusive(const QActionGroup* self);
QTLIBC_API bool QActionGroup_IsEnabled(const QActionGroup* self);
QTLIBC_API bool QActionGroup_IsVisible(const QActionGroup* self);
QTLIBC_API int QActionGroup_ExclusionPolicy(const QActionGroup* self);
QTLIBC_API void QActionGroup_SetEnabled(QActionGroup* self, bool enabled);
QTLIBC_API void QActionGroup_SetDisabled(QActionGroup* self, bool b);
QTLIBC_API void QActionGroup_SetVisible(QActionGroup* self, bool visible);
QTLIBC_API void QActionGroup_SetExclusive(QActionGroup* self, bool exclusive);
QTLIBC_API void QActionGroup_SetExclusionPolicy(QActionGroup* self, int policy);
QTLIBC_API void QActionGroup_Triggered(QActionGroup* self, QAction* param1);
void QActionGroup_Connect_Triggered(QActionGroup* self, intptr_t slot);
QTLIBC_API void QActionGroup_Hovered(QActionGroup* self, QAction* param1);
void QActionGroup_Connect_Hovered(QActionGroup* self, intptr_t slot);
QTLIBC_API libqt_string QActionGroup_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QActionGroup_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QActionGroup_Event(QActionGroup* self, QEvent* event);
QTLIBC_API void QActionGroup_OnEvent(QActionGroup* self, intptr_t slot);
QTLIBC_API bool QActionGroup_QBaseEvent(QActionGroup* self, QEvent* event);
QTLIBC_API bool QActionGroup_EventFilter(QActionGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QActionGroup_OnEventFilter(QActionGroup* self, intptr_t slot);
QTLIBC_API bool QActionGroup_QBaseEventFilter(QActionGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QActionGroup_TimerEvent(QActionGroup* self, QTimerEvent* event);
QTLIBC_API void QActionGroup_OnTimerEvent(QActionGroup* self, intptr_t slot);
QTLIBC_API void QActionGroup_QBaseTimerEvent(QActionGroup* self, QTimerEvent* event);
QTLIBC_API void QActionGroup_ChildEvent(QActionGroup* self, QChildEvent* event);
QTLIBC_API void QActionGroup_OnChildEvent(QActionGroup* self, intptr_t slot);
QTLIBC_API void QActionGroup_QBaseChildEvent(QActionGroup* self, QChildEvent* event);
QTLIBC_API void QActionGroup_CustomEvent(QActionGroup* self, QEvent* event);
QTLIBC_API void QActionGroup_OnCustomEvent(QActionGroup* self, intptr_t slot);
QTLIBC_API void QActionGroup_QBaseCustomEvent(QActionGroup* self, QEvent* event);
QTLIBC_API void QActionGroup_ConnectNotify(QActionGroup* self, QMetaMethod* signal);
QTLIBC_API void QActionGroup_OnConnectNotify(QActionGroup* self, intptr_t slot);
QTLIBC_API void QActionGroup_QBaseConnectNotify(QActionGroup* self, QMetaMethod* signal);
QTLIBC_API void QActionGroup_DisconnectNotify(QActionGroup* self, QMetaMethod* signal);
QTLIBC_API void QActionGroup_OnDisconnectNotify(QActionGroup* self, intptr_t slot);
QTLIBC_API void QActionGroup_QBaseDisconnectNotify(QActionGroup* self, QMetaMethod* signal);
QTLIBC_API QObject* QActionGroup_Sender(const QActionGroup* self);
QTLIBC_API void QActionGroup_OnSender(const QActionGroup* self, intptr_t slot);
QTLIBC_API QObject* QActionGroup_QBaseSender(const QActionGroup* self);
QTLIBC_API int QActionGroup_SenderSignalIndex(const QActionGroup* self);
QTLIBC_API void QActionGroup_OnSenderSignalIndex(const QActionGroup* self, intptr_t slot);
QTLIBC_API int QActionGroup_QBaseSenderSignalIndex(const QActionGroup* self);
QTLIBC_API int QActionGroup_Receivers(const QActionGroup* self, const char* signal);
QTLIBC_API void QActionGroup_OnReceivers(const QActionGroup* self, intptr_t slot);
QTLIBC_API int QActionGroup_QBaseReceivers(const QActionGroup* self, const char* signal);
QTLIBC_API bool QActionGroup_IsSignalConnected(const QActionGroup* self, QMetaMethod* signal);
QTLIBC_API void QActionGroup_OnIsSignalConnected(const QActionGroup* self, intptr_t slot);
QTLIBC_API bool QActionGroup_QBaseIsSignalConnected(const QActionGroup* self, QMetaMethod* signal);
QTLIBC_API void QActionGroup_Delete(QActionGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
