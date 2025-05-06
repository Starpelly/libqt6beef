#pragma once
#ifndef SRC_QTC_LIBQUNDOSTACK_H
#define SRC_QTC_LIBQUNDOSTACK_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUndoCommand QUndoCommand;
typedef struct QUndoStack QUndoStack;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QUndoCommand* QUndoCommand_new();
QTLIBC_API QUndoCommand* QUndoCommand_new2(libqt_string text);
QTLIBC_API QUndoCommand* QUndoCommand_new3(QUndoCommand* parent);
QTLIBC_API QUndoCommand* QUndoCommand_new4(libqt_string text, QUndoCommand* parent);
QTLIBC_API void QUndoCommand_Undo(QUndoCommand* self);
QTLIBC_API void QUndoCommand_OnUndo(QUndoCommand* self, intptr_t slot);
QTLIBC_API void QUndoCommand_QBaseUndo(QUndoCommand* self);
QTLIBC_API void QUndoCommand_Redo(QUndoCommand* self);
QTLIBC_API void QUndoCommand_OnRedo(QUndoCommand* self, intptr_t slot);
QTLIBC_API void QUndoCommand_QBaseRedo(QUndoCommand* self);
QTLIBC_API libqt_string QUndoCommand_Text(const QUndoCommand* self);
QTLIBC_API libqt_string QUndoCommand_ActionText(const QUndoCommand* self);
QTLIBC_API void QUndoCommand_SetText(QUndoCommand* self, libqt_string text);
QTLIBC_API bool QUndoCommand_IsObsolete(const QUndoCommand* self);
QTLIBC_API void QUndoCommand_SetObsolete(QUndoCommand* self, bool obsolete);
QTLIBC_API int QUndoCommand_Id(const QUndoCommand* self);
QTLIBC_API void QUndoCommand_OnId(const QUndoCommand* self, intptr_t slot);
QTLIBC_API int QUndoCommand_QBaseId(const QUndoCommand* self);
QTLIBC_API bool QUndoCommand_MergeWith(QUndoCommand* self, QUndoCommand* other);
QTLIBC_API void QUndoCommand_OnMergeWith(QUndoCommand* self, intptr_t slot);
QTLIBC_API bool QUndoCommand_QBaseMergeWith(QUndoCommand* self, QUndoCommand* other);
QTLIBC_API int QUndoCommand_ChildCount(const QUndoCommand* self);
QTLIBC_API QUndoCommand* QUndoCommand_Child(const QUndoCommand* self, int index);
QTLIBC_API void QUndoCommand_Delete(QUndoCommand* self);

QTLIBC_API QUndoStack* QUndoStack_new();
QTLIBC_API QUndoStack* QUndoStack_new2(QObject* parent);
QTLIBC_API QMetaObject* QUndoStack_MetaObject(const QUndoStack* self);
QTLIBC_API void* QUndoStack_Metacast(QUndoStack* self, const char* param1);
QTLIBC_API int QUndoStack_Metacall(QUndoStack* self, int param1, int param2, void** param3);
QTLIBC_API void QUndoStack_OnMetacall(QUndoStack* self, intptr_t slot);
QTLIBC_API int QUndoStack_QBaseMetacall(QUndoStack* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QUndoStack_Tr(const char* s);
QTLIBC_API void QUndoStack_Clear(QUndoStack* self);
QTLIBC_API void QUndoStack_Push(QUndoStack* self, QUndoCommand* cmd);
QTLIBC_API bool QUndoStack_CanUndo(const QUndoStack* self);
QTLIBC_API bool QUndoStack_CanRedo(const QUndoStack* self);
QTLIBC_API libqt_string QUndoStack_UndoText(const QUndoStack* self);
QTLIBC_API libqt_string QUndoStack_RedoText(const QUndoStack* self);
QTLIBC_API int QUndoStack_Count(const QUndoStack* self);
QTLIBC_API int QUndoStack_Index(const QUndoStack* self);
QTLIBC_API libqt_string QUndoStack_Text(const QUndoStack* self, int idx);
QTLIBC_API QAction* QUndoStack_CreateUndoAction(const QUndoStack* self, QObject* parent);
QTLIBC_API QAction* QUndoStack_CreateRedoAction(const QUndoStack* self, QObject* parent);
QTLIBC_API bool QUndoStack_IsActive(const QUndoStack* self);
QTLIBC_API bool QUndoStack_IsClean(const QUndoStack* self);
QTLIBC_API int QUndoStack_CleanIndex(const QUndoStack* self);
QTLIBC_API void QUndoStack_BeginMacro(QUndoStack* self, libqt_string text);
QTLIBC_API void QUndoStack_EndMacro(QUndoStack* self);
QTLIBC_API void QUndoStack_SetUndoLimit(QUndoStack* self, int limit);
QTLIBC_API int QUndoStack_UndoLimit(const QUndoStack* self);
QTLIBC_API QUndoCommand* QUndoStack_Command(const QUndoStack* self, int index);
QTLIBC_API void QUndoStack_SetClean(QUndoStack* self);
QTLIBC_API void QUndoStack_ResetClean(QUndoStack* self);
QTLIBC_API void QUndoStack_SetIndex(QUndoStack* self, int idx);
QTLIBC_API void QUndoStack_Undo(QUndoStack* self);
QTLIBC_API void QUndoStack_Redo(QUndoStack* self);
QTLIBC_API void QUndoStack_SetActive(QUndoStack* self);
QTLIBC_API void QUndoStack_IndexChanged(QUndoStack* self, int idx);
void QUndoStack_Connect_IndexChanged(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_CleanChanged(QUndoStack* self, bool clean);
void QUndoStack_Connect_CleanChanged(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_CanUndoChanged(QUndoStack* self, bool canUndo);
void QUndoStack_Connect_CanUndoChanged(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_CanRedoChanged(QUndoStack* self, bool canRedo);
void QUndoStack_Connect_CanRedoChanged(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_UndoTextChanged(QUndoStack* self, libqt_string undoText);
void QUndoStack_Connect_UndoTextChanged(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_RedoTextChanged(QUndoStack* self, libqt_string redoText);
void QUndoStack_Connect_RedoTextChanged(QUndoStack* self, intptr_t slot);
QTLIBC_API libqt_string QUndoStack_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QUndoStack_Tr3(const char* s, const char* c, int n);
QTLIBC_API QAction* QUndoStack_CreateUndoAction2(const QUndoStack* self, QObject* parent, libqt_string prefix);
QTLIBC_API QAction* QUndoStack_CreateRedoAction2(const QUndoStack* self, QObject* parent, libqt_string prefix);
QTLIBC_API void QUndoStack_SetActive1(QUndoStack* self, bool active);
QTLIBC_API bool QUndoStack_Event(QUndoStack* self, QEvent* event);
QTLIBC_API void QUndoStack_OnEvent(QUndoStack* self, intptr_t slot);
QTLIBC_API bool QUndoStack_QBaseEvent(QUndoStack* self, QEvent* event);
QTLIBC_API bool QUndoStack_EventFilter(QUndoStack* self, QObject* watched, QEvent* event);
QTLIBC_API void QUndoStack_OnEventFilter(QUndoStack* self, intptr_t slot);
QTLIBC_API bool QUndoStack_QBaseEventFilter(QUndoStack* self, QObject* watched, QEvent* event);
QTLIBC_API void QUndoStack_TimerEvent(QUndoStack* self, QTimerEvent* event);
QTLIBC_API void QUndoStack_OnTimerEvent(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_QBaseTimerEvent(QUndoStack* self, QTimerEvent* event);
QTLIBC_API void QUndoStack_ChildEvent(QUndoStack* self, QChildEvent* event);
QTLIBC_API void QUndoStack_OnChildEvent(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_QBaseChildEvent(QUndoStack* self, QChildEvent* event);
QTLIBC_API void QUndoStack_CustomEvent(QUndoStack* self, QEvent* event);
QTLIBC_API void QUndoStack_OnCustomEvent(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_QBaseCustomEvent(QUndoStack* self, QEvent* event);
QTLIBC_API void QUndoStack_ConnectNotify(QUndoStack* self, QMetaMethod* signal);
QTLIBC_API void QUndoStack_OnConnectNotify(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_QBaseConnectNotify(QUndoStack* self, QMetaMethod* signal);
QTLIBC_API void QUndoStack_DisconnectNotify(QUndoStack* self, QMetaMethod* signal);
QTLIBC_API void QUndoStack_OnDisconnectNotify(QUndoStack* self, intptr_t slot);
QTLIBC_API void QUndoStack_QBaseDisconnectNotify(QUndoStack* self, QMetaMethod* signal);
QTLIBC_API QObject* QUndoStack_Sender(const QUndoStack* self);
QTLIBC_API void QUndoStack_OnSender(const QUndoStack* self, intptr_t slot);
QTLIBC_API QObject* QUndoStack_QBaseSender(const QUndoStack* self);
QTLIBC_API int QUndoStack_SenderSignalIndex(const QUndoStack* self);
QTLIBC_API void QUndoStack_OnSenderSignalIndex(const QUndoStack* self, intptr_t slot);
QTLIBC_API int QUndoStack_QBaseSenderSignalIndex(const QUndoStack* self);
QTLIBC_API int QUndoStack_Receivers(const QUndoStack* self, const char* signal);
QTLIBC_API void QUndoStack_OnReceivers(const QUndoStack* self, intptr_t slot);
QTLIBC_API int QUndoStack_QBaseReceivers(const QUndoStack* self, const char* signal);
QTLIBC_API bool QUndoStack_IsSignalConnected(const QUndoStack* self, QMetaMethod* signal);
QTLIBC_API void QUndoStack_OnIsSignalConnected(const QUndoStack* self, intptr_t slot);
QTLIBC_API bool QUndoStack_QBaseIsSignalConnected(const QUndoStack* self, QMetaMethod* signal);
QTLIBC_API void QUndoStack_Delete(QUndoStack* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
