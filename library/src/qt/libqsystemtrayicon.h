#pragma once
#ifndef SRC_QTC_LIBQSYSTEMTRAYICON_H
#define SRC_QTC_LIBQSYSTEMTRAYICON_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIcon QIcon;
typedef struct QMenu QMenu;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSystemTrayIcon QSystemTrayIcon;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QSystemTrayIcon::ActivationReason ActivationReason; // C++ enum
typedef QSystemTrayIcon::MessageIcon MessageIcon;           // C++ enum
#else
typedef int ActivationReason; // C ABI enum
typedef int MessageIcon;      // C ABI enum
#endif

QTLIBC_API QSystemTrayIcon* QSystemTrayIcon_new();
QTLIBC_API QSystemTrayIcon* QSystemTrayIcon_new2(QIcon* icon);
QTLIBC_API QSystemTrayIcon* QSystemTrayIcon_new3(QObject* parent);
QTLIBC_API QSystemTrayIcon* QSystemTrayIcon_new4(QIcon* icon, QObject* parent);
QTLIBC_API QMetaObject* QSystemTrayIcon_MetaObject(const QSystemTrayIcon* self);
QTLIBC_API void* QSystemTrayIcon_Metacast(QSystemTrayIcon* self, const char* param1);
QTLIBC_API int QSystemTrayIcon_Metacall(QSystemTrayIcon* self, int param1, int param2, void** param3);
QTLIBC_API void QSystemTrayIcon_OnMetacall(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API int QSystemTrayIcon_QBaseMetacall(QSystemTrayIcon* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSystemTrayIcon_Tr(const char* s);
QTLIBC_API void QSystemTrayIcon_SetContextMenu(QSystemTrayIcon* self, QMenu* menu);
QTLIBC_API QMenu* QSystemTrayIcon_ContextMenu(const QSystemTrayIcon* self);
QTLIBC_API QIcon* QSystemTrayIcon_Icon(const QSystemTrayIcon* self);
QTLIBC_API void QSystemTrayIcon_SetIcon(QSystemTrayIcon* self, QIcon* icon);
QTLIBC_API libqt_string QSystemTrayIcon_ToolTip(const QSystemTrayIcon* self);
QTLIBC_API void QSystemTrayIcon_SetToolTip(QSystemTrayIcon* self, libqt_string tip);
QTLIBC_API bool QSystemTrayIcon_IsSystemTrayAvailable();
QTLIBC_API bool QSystemTrayIcon_SupportsMessages();
QTLIBC_API QRect* QSystemTrayIcon_Geometry(const QSystemTrayIcon* self);
QTLIBC_API bool QSystemTrayIcon_IsVisible(const QSystemTrayIcon* self);
QTLIBC_API void QSystemTrayIcon_SetVisible(QSystemTrayIcon* self, bool visible);
QTLIBC_API void QSystemTrayIcon_Show(QSystemTrayIcon* self);
QTLIBC_API void QSystemTrayIcon_Hide(QSystemTrayIcon* self);
QTLIBC_API void QSystemTrayIcon_ShowMessage(QSystemTrayIcon* self, libqt_string title, libqt_string msg, QIcon* icon);
QTLIBC_API void QSystemTrayIcon_ShowMessage2(QSystemTrayIcon* self, libqt_string title, libqt_string msg);
QTLIBC_API void QSystemTrayIcon_Activated(QSystemTrayIcon* self, int reason);
void QSystemTrayIcon_Connect_Activated(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API void QSystemTrayIcon_MessageClicked(QSystemTrayIcon* self);
void QSystemTrayIcon_Connect_MessageClicked(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API bool QSystemTrayIcon_Event(QSystemTrayIcon* self, QEvent* event);
QTLIBC_API void QSystemTrayIcon_OnEvent(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API bool QSystemTrayIcon_QBaseEvent(QSystemTrayIcon* self, QEvent* event);
QTLIBC_API libqt_string QSystemTrayIcon_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSystemTrayIcon_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QSystemTrayIcon_ShowMessage4(QSystemTrayIcon* self, libqt_string title, libqt_string msg, QIcon* icon, int msecs);
QTLIBC_API void QSystemTrayIcon_ShowMessage3(QSystemTrayIcon* self, libqt_string title, libqt_string msg, int icon);
QTLIBC_API void QSystemTrayIcon_ShowMessage42(QSystemTrayIcon* self, libqt_string title, libqt_string msg, int icon, int msecs);
QTLIBC_API bool QSystemTrayIcon_EventFilter(QSystemTrayIcon* self, QObject* watched, QEvent* event);
QTLIBC_API void QSystemTrayIcon_OnEventFilter(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API bool QSystemTrayIcon_QBaseEventFilter(QSystemTrayIcon* self, QObject* watched, QEvent* event);
QTLIBC_API void QSystemTrayIcon_TimerEvent(QSystemTrayIcon* self, QTimerEvent* event);
QTLIBC_API void QSystemTrayIcon_OnTimerEvent(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API void QSystemTrayIcon_QBaseTimerEvent(QSystemTrayIcon* self, QTimerEvent* event);
QTLIBC_API void QSystemTrayIcon_ChildEvent(QSystemTrayIcon* self, QChildEvent* event);
QTLIBC_API void QSystemTrayIcon_OnChildEvent(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API void QSystemTrayIcon_QBaseChildEvent(QSystemTrayIcon* self, QChildEvent* event);
QTLIBC_API void QSystemTrayIcon_CustomEvent(QSystemTrayIcon* self, QEvent* event);
QTLIBC_API void QSystemTrayIcon_OnCustomEvent(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API void QSystemTrayIcon_QBaseCustomEvent(QSystemTrayIcon* self, QEvent* event);
QTLIBC_API void QSystemTrayIcon_ConnectNotify(QSystemTrayIcon* self, QMetaMethod* signal);
QTLIBC_API void QSystemTrayIcon_OnConnectNotify(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API void QSystemTrayIcon_QBaseConnectNotify(QSystemTrayIcon* self, QMetaMethod* signal);
QTLIBC_API void QSystemTrayIcon_DisconnectNotify(QSystemTrayIcon* self, QMetaMethod* signal);
QTLIBC_API void QSystemTrayIcon_OnDisconnectNotify(QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API void QSystemTrayIcon_QBaseDisconnectNotify(QSystemTrayIcon* self, QMetaMethod* signal);
QTLIBC_API QObject* QSystemTrayIcon_Sender(const QSystemTrayIcon* self);
QTLIBC_API void QSystemTrayIcon_OnSender(const QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API QObject* QSystemTrayIcon_QBaseSender(const QSystemTrayIcon* self);
QTLIBC_API int QSystemTrayIcon_SenderSignalIndex(const QSystemTrayIcon* self);
QTLIBC_API void QSystemTrayIcon_OnSenderSignalIndex(const QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API int QSystemTrayIcon_QBaseSenderSignalIndex(const QSystemTrayIcon* self);
QTLIBC_API int QSystemTrayIcon_Receivers(const QSystemTrayIcon* self, const char* signal);
QTLIBC_API void QSystemTrayIcon_OnReceivers(const QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API int QSystemTrayIcon_QBaseReceivers(const QSystemTrayIcon* self, const char* signal);
QTLIBC_API bool QSystemTrayIcon_IsSignalConnected(const QSystemTrayIcon* self, QMetaMethod* signal);
QTLIBC_API void QSystemTrayIcon_OnIsSignalConnected(const QSystemTrayIcon* self, intptr_t slot);
QTLIBC_API bool QSystemTrayIcon_QBaseIsSignalConnected(const QSystemTrayIcon* self, QMetaMethod* signal);
QTLIBC_API void QSystemTrayIcon_Delete(QSystemTrayIcon* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
