#pragma once
#ifndef SRCC_LIBQACTION_H
#define SRCC_LIBQACTION_H

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
#endif

#ifdef __cplusplus
typedef QAction::ActionEvent ActionEvent; // C++ enum
typedef QAction::MenuRole MenuRole;       // C++ enum
typedef QAction::Priority Priority;       // C++ enum
#else
typedef int ActionEvent; // C ABI enum
typedef int MenuRole;    // C ABI enum
typedef int Priority;    // C ABI enum
#endif

QTLIBC_API QAction* QAction_new();
QTLIBC_API QAction* QAction_new2(libqt_string text);
QTLIBC_API QAction* QAction_new3(QIcon* icon, libqt_string text);
QTLIBC_API QAction* QAction_new4(QObject* parent);
QTLIBC_API QAction* QAction_new5(libqt_string text, QObject* parent);
QTLIBC_API QAction* QAction_new6(QIcon* icon, libqt_string text, QObject* parent);
QTLIBC_API QMetaObject* QAction_MetaObject(const QAction* self);
QTLIBC_API void* QAction_Metacast(QAction* self, const char* param1);
QTLIBC_API int QAction_Metacall(QAction* self, int param1, int param2, void** param3);
QTLIBC_API void QAction_OnMetacall(QAction* self, intptr_t slot);
QTLIBC_API int QAction_QBaseMetacall(QAction* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAction_Tr(const char* s);
QTLIBC_API libqt_list /* of QObject* */ QAction_AssociatedObjects(const QAction* self);
QTLIBC_API void QAction_SetActionGroup(QAction* self, QActionGroup* group);
QTLIBC_API QActionGroup* QAction_ActionGroup(const QAction* self);
QTLIBC_API void QAction_SetIcon(QAction* self, QIcon* icon);
QTLIBC_API QIcon* QAction_Icon(const QAction* self);
QTLIBC_API void QAction_SetText(QAction* self, libqt_string text);
QTLIBC_API libqt_string QAction_Text(const QAction* self);
QTLIBC_API void QAction_SetIconText(QAction* self, libqt_string text);
QTLIBC_API libqt_string QAction_IconText(const QAction* self);
QTLIBC_API void QAction_SetToolTip(QAction* self, libqt_string tip);
QTLIBC_API libqt_string QAction_ToolTip(const QAction* self);
QTLIBC_API void QAction_SetStatusTip(QAction* self, libqt_string statusTip);
QTLIBC_API libqt_string QAction_StatusTip(const QAction* self);
QTLIBC_API void QAction_SetWhatsThis(QAction* self, libqt_string what);
QTLIBC_API libqt_string QAction_WhatsThis(const QAction* self);
QTLIBC_API void QAction_SetPriority(QAction* self, int priority);
QTLIBC_API int QAction_Priority(const QAction* self);
QTLIBC_API void QAction_SetSeparator(QAction* self, bool b);
QTLIBC_API bool QAction_IsSeparator(const QAction* self);
QTLIBC_API void QAction_SetShortcut(QAction* self, QKeySequence* shortcut);
QTLIBC_API QKeySequence* QAction_Shortcut(const QAction* self);
QTLIBC_API void QAction_SetShortcuts(QAction* self, libqt_list /* of QKeySequence* */ shortcuts);
QTLIBC_API void QAction_SetShortcutsWithShortcuts(QAction* self, int shortcuts);
QTLIBC_API libqt_list /* of QKeySequence* */ QAction_Shortcuts(const QAction* self);
QTLIBC_API void QAction_SetShortcutContext(QAction* self, int context);
QTLIBC_API int QAction_ShortcutContext(const QAction* self);
QTLIBC_API void QAction_SetAutoRepeat(QAction* self, bool autoRepeat);
QTLIBC_API bool QAction_AutoRepeat(const QAction* self);
QTLIBC_API void QAction_SetFont(QAction* self, QFont* font);
QTLIBC_API QFont* QAction_Font(const QAction* self);
QTLIBC_API void QAction_SetCheckable(QAction* self, bool checkable);
QTLIBC_API bool QAction_IsCheckable(const QAction* self);
QTLIBC_API QVariant* QAction_Data(const QAction* self);
QTLIBC_API void QAction_SetData(QAction* self, QVariant* varVal);
QTLIBC_API bool QAction_IsChecked(const QAction* self);
QTLIBC_API bool QAction_IsEnabled(const QAction* self);
QTLIBC_API bool QAction_IsVisible(const QAction* self);
QTLIBC_API void QAction_Activate(QAction* self, int event);
QTLIBC_API void QAction_SetMenuRole(QAction* self, int menuRole);
QTLIBC_API int QAction_MenuRole(const QAction* self);
QTLIBC_API void QAction_SetIconVisibleInMenu(QAction* self, bool visible);
QTLIBC_API bool QAction_IsIconVisibleInMenu(const QAction* self);
QTLIBC_API void QAction_SetShortcutVisibleInContextMenu(QAction* self, bool show);
QTLIBC_API bool QAction_IsShortcutVisibleInContextMenu(const QAction* self);
QTLIBC_API bool QAction_ShowStatusText(QAction* self);
QTLIBC_API bool QAction_Event(QAction* self, QEvent* param1);
QTLIBC_API void QAction_OnEvent(QAction* self, intptr_t slot);
QTLIBC_API bool QAction_QBaseEvent(QAction* self, QEvent* param1);
QTLIBC_API void QAction_Trigger(QAction* self);
QTLIBC_API void QAction_Hover(QAction* self);
QTLIBC_API void QAction_SetChecked(QAction* self, bool checked);
QTLIBC_API void QAction_Toggle(QAction* self);
QTLIBC_API void QAction_SetEnabled(QAction* self, bool enabled);
QTLIBC_API void QAction_ResetEnabled(QAction* self);
QTLIBC_API void QAction_SetDisabled(QAction* self, bool b);
QTLIBC_API void QAction_SetVisible(QAction* self, bool visible);
QTLIBC_API void QAction_Changed(QAction* self);
void QAction_Connect_Changed(QAction* self, intptr_t slot);
QTLIBC_API void QAction_EnabledChanged(QAction* self, bool enabled);
void QAction_Connect_EnabledChanged(QAction* self, intptr_t slot);
QTLIBC_API void QAction_CheckableChanged(QAction* self, bool checkable);
void QAction_Connect_CheckableChanged(QAction* self, intptr_t slot);
QTLIBC_API void QAction_VisibleChanged(QAction* self);
void QAction_Connect_VisibleChanged(QAction* self, intptr_t slot);
QTLIBC_API void QAction_Triggered(QAction* self);
void QAction_Connect_Triggered(QAction* self, intptr_t slot);
QTLIBC_API void QAction_Hovered(QAction* self);
void QAction_Connect_Hovered(QAction* self, intptr_t slot);
QTLIBC_API void QAction_Toggled(QAction* self, bool param1);
void QAction_Connect_Toggled(QAction* self, intptr_t slot);
QTLIBC_API libqt_string QAction_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAction_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAction_ShowStatusText1(QAction* self, QObject* object);
QTLIBC_API void QAction_Triggered1(QAction* self, bool checked);
void QAction_Connect_Triggered1(QAction* self, intptr_t slot);
QTLIBC_API bool QAction_EventFilter(QAction* self, QObject* watched, QEvent* event);
QTLIBC_API void QAction_OnEventFilter(QAction* self, intptr_t slot);
QTLIBC_API bool QAction_QBaseEventFilter(QAction* self, QObject* watched, QEvent* event);
QTLIBC_API void QAction_TimerEvent(QAction* self, QTimerEvent* event);
QTLIBC_API void QAction_OnTimerEvent(QAction* self, intptr_t slot);
QTLIBC_API void QAction_QBaseTimerEvent(QAction* self, QTimerEvent* event);
QTLIBC_API void QAction_ChildEvent(QAction* self, QChildEvent* event);
QTLIBC_API void QAction_OnChildEvent(QAction* self, intptr_t slot);
QTLIBC_API void QAction_QBaseChildEvent(QAction* self, QChildEvent* event);
QTLIBC_API void QAction_CustomEvent(QAction* self, QEvent* event);
QTLIBC_API void QAction_OnCustomEvent(QAction* self, intptr_t slot);
QTLIBC_API void QAction_QBaseCustomEvent(QAction* self, QEvent* event);
QTLIBC_API void QAction_ConnectNotify(QAction* self, QMetaMethod* signal);
QTLIBC_API void QAction_OnConnectNotify(QAction* self, intptr_t slot);
QTLIBC_API void QAction_QBaseConnectNotify(QAction* self, QMetaMethod* signal);
QTLIBC_API void QAction_DisconnectNotify(QAction* self, QMetaMethod* signal);
QTLIBC_API void QAction_OnDisconnectNotify(QAction* self, intptr_t slot);
QTLIBC_API void QAction_QBaseDisconnectNotify(QAction* self, QMetaMethod* signal);
QTLIBC_API QObject* QAction_Sender(const QAction* self);
QTLIBC_API void QAction_OnSender(const QAction* self, intptr_t slot);
QTLIBC_API QObject* QAction_QBaseSender(const QAction* self);
QTLIBC_API int QAction_SenderSignalIndex(const QAction* self);
QTLIBC_API void QAction_OnSenderSignalIndex(const QAction* self, intptr_t slot);
QTLIBC_API int QAction_QBaseSenderSignalIndex(const QAction* self);
QTLIBC_API int QAction_Receivers(const QAction* self, const char* signal);
QTLIBC_API void QAction_OnReceivers(const QAction* self, intptr_t slot);
QTLIBC_API int QAction_QBaseReceivers(const QAction* self, const char* signal);
QTLIBC_API bool QAction_IsSignalConnected(const QAction* self, QMetaMethod* signal);
QTLIBC_API void QAction_OnIsSignalConnected(const QAction* self, intptr_t slot);
QTLIBC_API bool QAction_QBaseIsSignalConnected(const QAction* self, QMetaMethod* signal);
QTLIBC_API void QAction_Delete(QAction* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
