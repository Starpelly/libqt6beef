#pragma once
#ifndef SRC_QTC_LIBQUNDOGROUP_H
#define SRC_QTC_LIBQUNDOGROUP_H

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
typedef struct QUndoGroup QUndoGroup;
typedef struct QUndoStack QUndoStack;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QUndoGroup* QUndoGroup_new();
QTLIBC_API QUndoGroup* QUndoGroup_new2(QObject* parent);
QTLIBC_API QMetaObject* QUndoGroup_MetaObject(const QUndoGroup* self);
QTLIBC_API void* QUndoGroup_Metacast(QUndoGroup* self, const char* param1);
QTLIBC_API int QUndoGroup_Metacall(QUndoGroup* self, int param1, int param2, void** param3);
QTLIBC_API void QUndoGroup_OnMetacall(QUndoGroup* self, intptr_t slot);
QTLIBC_API int QUndoGroup_QBaseMetacall(QUndoGroup* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QUndoGroup_Tr(const char* s);
QTLIBC_API void QUndoGroup_AddStack(QUndoGroup* self, QUndoStack* stack);
QTLIBC_API void QUndoGroup_RemoveStack(QUndoGroup* self, QUndoStack* stack);
QTLIBC_API libqt_list /* of QUndoStack* */ QUndoGroup_Stacks(const QUndoGroup* self);
QTLIBC_API QUndoStack* QUndoGroup_ActiveStack(const QUndoGroup* self);
QTLIBC_API QAction* QUndoGroup_CreateUndoAction(const QUndoGroup* self, QObject* parent);
QTLIBC_API QAction* QUndoGroup_CreateRedoAction(const QUndoGroup* self, QObject* parent);
QTLIBC_API bool QUndoGroup_CanUndo(const QUndoGroup* self);
QTLIBC_API bool QUndoGroup_CanRedo(const QUndoGroup* self);
QTLIBC_API libqt_string QUndoGroup_UndoText(const QUndoGroup* self);
QTLIBC_API libqt_string QUndoGroup_RedoText(const QUndoGroup* self);
QTLIBC_API bool QUndoGroup_IsClean(const QUndoGroup* self);
QTLIBC_API void QUndoGroup_Undo(QUndoGroup* self);
QTLIBC_API void QUndoGroup_Redo(QUndoGroup* self);
QTLIBC_API void QUndoGroup_SetActiveStack(QUndoGroup* self, QUndoStack* stack);
QTLIBC_API void QUndoGroup_ActiveStackChanged(QUndoGroup* self, QUndoStack* stack);
void QUndoGroup_Connect_ActiveStackChanged(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_IndexChanged(QUndoGroup* self, int idx);
void QUndoGroup_Connect_IndexChanged(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_CleanChanged(QUndoGroup* self, bool clean);
void QUndoGroup_Connect_CleanChanged(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_CanUndoChanged(QUndoGroup* self, bool canUndo);
void QUndoGroup_Connect_CanUndoChanged(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_CanRedoChanged(QUndoGroup* self, bool canRedo);
void QUndoGroup_Connect_CanRedoChanged(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_UndoTextChanged(QUndoGroup* self, libqt_string undoText);
void QUndoGroup_Connect_UndoTextChanged(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_RedoTextChanged(QUndoGroup* self, libqt_string redoText);
void QUndoGroup_Connect_RedoTextChanged(QUndoGroup* self, intptr_t slot);
QTLIBC_API libqt_string QUndoGroup_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QUndoGroup_Tr3(const char* s, const char* c, int n);
QTLIBC_API QAction* QUndoGroup_CreateUndoAction2(const QUndoGroup* self, QObject* parent, libqt_string prefix);
QTLIBC_API QAction* QUndoGroup_CreateRedoAction2(const QUndoGroup* self, QObject* parent, libqt_string prefix);
QTLIBC_API bool QUndoGroup_Event(QUndoGroup* self, QEvent* event);
QTLIBC_API void QUndoGroup_OnEvent(QUndoGroup* self, intptr_t slot);
QTLIBC_API bool QUndoGroup_QBaseEvent(QUndoGroup* self, QEvent* event);
QTLIBC_API bool QUndoGroup_EventFilter(QUndoGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QUndoGroup_OnEventFilter(QUndoGroup* self, intptr_t slot);
QTLIBC_API bool QUndoGroup_QBaseEventFilter(QUndoGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QUndoGroup_TimerEvent(QUndoGroup* self, QTimerEvent* event);
QTLIBC_API void QUndoGroup_OnTimerEvent(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_QBaseTimerEvent(QUndoGroup* self, QTimerEvent* event);
QTLIBC_API void QUndoGroup_ChildEvent(QUndoGroup* self, QChildEvent* event);
QTLIBC_API void QUndoGroup_OnChildEvent(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_QBaseChildEvent(QUndoGroup* self, QChildEvent* event);
QTLIBC_API void QUndoGroup_CustomEvent(QUndoGroup* self, QEvent* event);
QTLIBC_API void QUndoGroup_OnCustomEvent(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_QBaseCustomEvent(QUndoGroup* self, QEvent* event);
QTLIBC_API void QUndoGroup_ConnectNotify(QUndoGroup* self, QMetaMethod* signal);
QTLIBC_API void QUndoGroup_OnConnectNotify(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_QBaseConnectNotify(QUndoGroup* self, QMetaMethod* signal);
QTLIBC_API void QUndoGroup_DisconnectNotify(QUndoGroup* self, QMetaMethod* signal);
QTLIBC_API void QUndoGroup_OnDisconnectNotify(QUndoGroup* self, intptr_t slot);
QTLIBC_API void QUndoGroup_QBaseDisconnectNotify(QUndoGroup* self, QMetaMethod* signal);
QTLIBC_API QObject* QUndoGroup_Sender(const QUndoGroup* self);
QTLIBC_API void QUndoGroup_OnSender(const QUndoGroup* self, intptr_t slot);
QTLIBC_API QObject* QUndoGroup_QBaseSender(const QUndoGroup* self);
QTLIBC_API int QUndoGroup_SenderSignalIndex(const QUndoGroup* self);
QTLIBC_API void QUndoGroup_OnSenderSignalIndex(const QUndoGroup* self, intptr_t slot);
QTLIBC_API int QUndoGroup_QBaseSenderSignalIndex(const QUndoGroup* self);
QTLIBC_API int QUndoGroup_Receivers(const QUndoGroup* self, const char* signal);
QTLIBC_API void QUndoGroup_OnReceivers(const QUndoGroup* self, intptr_t slot);
QTLIBC_API int QUndoGroup_QBaseReceivers(const QUndoGroup* self, const char* signal);
QTLIBC_API bool QUndoGroup_IsSignalConnected(const QUndoGroup* self, QMetaMethod* signal);
QTLIBC_API void QUndoGroup_OnIsSignalConnected(const QUndoGroup* self, intptr_t slot);
QTLIBC_API bool QUndoGroup_QBaseIsSignalConnected(const QUndoGroup* self, QMetaMethod* signal);
QTLIBC_API void QUndoGroup_Delete(QUndoGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
