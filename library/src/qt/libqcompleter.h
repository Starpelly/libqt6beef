#pragma once
#ifndef SRC_QTC_LIBQCOMPLETER_H
#define SRC_QTC_LIBQCOMPLETER_H

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
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QCompleter QCompleter;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QCompleter::CompletionMode CompletionMode; // C++ enum
typedef QCompleter::ModelSorting ModelSorting;     // C++ enum
#else
typedef int CompletionMode; // C ABI enum
typedef int ModelSorting;   // C ABI enum
#endif

QTLIBC_API QCompleter* QCompleter_new();
QTLIBC_API QCompleter* QCompleter_new2(QAbstractItemModel* model);
QTLIBC_API QCompleter* QCompleter_new3(libqt_list /* of libqt_string */ completions);
QTLIBC_API QCompleter* QCompleter_new4(QObject* parent);
QTLIBC_API QCompleter* QCompleter_new5(QAbstractItemModel* model, QObject* parent);
QTLIBC_API QCompleter* QCompleter_new6(libqt_list /* of libqt_string */ completions, QObject* parent);
QTLIBC_API QMetaObject* QCompleter_MetaObject(const QCompleter* self);
QTLIBC_API void* QCompleter_Metacast(QCompleter* self, const char* param1);
QTLIBC_API int QCompleter_Metacall(QCompleter* self, int param1, int param2, void** param3);
QTLIBC_API void QCompleter_OnMetacall(QCompleter* self, intptr_t slot);
QTLIBC_API int QCompleter_QBaseMetacall(QCompleter* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QCompleter_Tr(const char* s);
QTLIBC_API void QCompleter_SetWidget(QCompleter* self, QWidget* widget);
QTLIBC_API QWidget* QCompleter_Widget(const QCompleter* self);
QTLIBC_API void QCompleter_SetModel(QCompleter* self, QAbstractItemModel* c);
QTLIBC_API QAbstractItemModel* QCompleter_Model(const QCompleter* self);
QTLIBC_API void QCompleter_SetCompletionMode(QCompleter* self, int mode);
QTLIBC_API int QCompleter_CompletionMode(const QCompleter* self);
QTLIBC_API void QCompleter_SetFilterMode(QCompleter* self, int filterMode);
QTLIBC_API int QCompleter_FilterMode(const QCompleter* self);
QTLIBC_API QAbstractItemView* QCompleter_Popup(const QCompleter* self);
QTLIBC_API void QCompleter_SetPopup(QCompleter* self, QAbstractItemView* popup);
QTLIBC_API void QCompleter_SetCaseSensitivity(QCompleter* self, int caseSensitivity);
QTLIBC_API int QCompleter_CaseSensitivity(const QCompleter* self);
QTLIBC_API void QCompleter_SetModelSorting(QCompleter* self, int sorting);
QTLIBC_API int QCompleter_ModelSorting(const QCompleter* self);
QTLIBC_API void QCompleter_SetCompletionColumn(QCompleter* self, int column);
QTLIBC_API int QCompleter_CompletionColumn(const QCompleter* self);
QTLIBC_API void QCompleter_SetCompletionRole(QCompleter* self, int role);
QTLIBC_API int QCompleter_CompletionRole(const QCompleter* self);
QTLIBC_API bool QCompleter_WrapAround(const QCompleter* self);
QTLIBC_API int QCompleter_MaxVisibleItems(const QCompleter* self);
QTLIBC_API void QCompleter_SetMaxVisibleItems(QCompleter* self, int maxItems);
QTLIBC_API int QCompleter_CompletionCount(const QCompleter* self);
QTLIBC_API bool QCompleter_SetCurrentRow(QCompleter* self, int row);
QTLIBC_API int QCompleter_CurrentRow(const QCompleter* self);
QTLIBC_API QModelIndex* QCompleter_CurrentIndex(const QCompleter* self);
QTLIBC_API libqt_string QCompleter_CurrentCompletion(const QCompleter* self);
QTLIBC_API QAbstractItemModel* QCompleter_CompletionModel(const QCompleter* self);
QTLIBC_API libqt_string QCompleter_CompletionPrefix(const QCompleter* self);
QTLIBC_API void QCompleter_SetCompletionPrefix(QCompleter* self, libqt_string prefix);
QTLIBC_API void QCompleter_Complete(QCompleter* self);
QTLIBC_API void QCompleter_SetWrapAround(QCompleter* self, bool wrap);
QTLIBC_API libqt_string QCompleter_PathFromIndex(const QCompleter* self, QModelIndex* index);
QTLIBC_API void QCompleter_OnPathFromIndex(const QCompleter* self, intptr_t slot);
QTLIBC_API libqt_string QCompleter_QBasePathFromIndex(const QCompleter* self, QModelIndex* index);
QTLIBC_API libqt_list /* of libqt_string */ QCompleter_SplitPath(const QCompleter* self, libqt_string path);
QTLIBC_API void QCompleter_OnSplitPath(const QCompleter* self, intptr_t slot);
QTLIBC_API libqt_list /* of libqt_string */ QCompleter_QBaseSplitPath(const QCompleter* self, libqt_string path);
QTLIBC_API bool QCompleter_EventFilter(QCompleter* self, QObject* o, QEvent* e);
QTLIBC_API void QCompleter_OnEventFilter(QCompleter* self, intptr_t slot);
QTLIBC_API bool QCompleter_QBaseEventFilter(QCompleter* self, QObject* o, QEvent* e);
QTLIBC_API bool QCompleter_Event(QCompleter* self, QEvent* param1);
QTLIBC_API void QCompleter_OnEvent(QCompleter* self, intptr_t slot);
QTLIBC_API bool QCompleter_QBaseEvent(QCompleter* self, QEvent* param1);
QTLIBC_API void QCompleter_Activated(QCompleter* self, libqt_string text);
QTLIBC_API void QCompleter_ActivatedWithIndex(QCompleter* self, QModelIndex* index);
QTLIBC_API void QCompleter_Highlighted(QCompleter* self, libqt_string text);
QTLIBC_API void QCompleter_HighlightedWithIndex(QCompleter* self, QModelIndex* index);
QTLIBC_API libqt_string QCompleter_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QCompleter_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QCompleter_Complete1(QCompleter* self, QRect* rect);
QTLIBC_API void QCompleter_TimerEvent(QCompleter* self, QTimerEvent* event);
QTLIBC_API void QCompleter_OnTimerEvent(QCompleter* self, intptr_t slot);
QTLIBC_API void QCompleter_QBaseTimerEvent(QCompleter* self, QTimerEvent* event);
QTLIBC_API void QCompleter_ChildEvent(QCompleter* self, QChildEvent* event);
QTLIBC_API void QCompleter_OnChildEvent(QCompleter* self, intptr_t slot);
QTLIBC_API void QCompleter_QBaseChildEvent(QCompleter* self, QChildEvent* event);
QTLIBC_API void QCompleter_CustomEvent(QCompleter* self, QEvent* event);
QTLIBC_API void QCompleter_OnCustomEvent(QCompleter* self, intptr_t slot);
QTLIBC_API void QCompleter_QBaseCustomEvent(QCompleter* self, QEvent* event);
QTLIBC_API void QCompleter_ConnectNotify(QCompleter* self, QMetaMethod* signal);
QTLIBC_API void QCompleter_OnConnectNotify(QCompleter* self, intptr_t slot);
QTLIBC_API void QCompleter_QBaseConnectNotify(QCompleter* self, QMetaMethod* signal);
QTLIBC_API void QCompleter_DisconnectNotify(QCompleter* self, QMetaMethod* signal);
QTLIBC_API void QCompleter_OnDisconnectNotify(QCompleter* self, intptr_t slot);
QTLIBC_API void QCompleter_QBaseDisconnectNotify(QCompleter* self, QMetaMethod* signal);
QTLIBC_API QObject* QCompleter_Sender(const QCompleter* self);
QTLIBC_API void QCompleter_OnSender(const QCompleter* self, intptr_t slot);
QTLIBC_API QObject* QCompleter_QBaseSender(const QCompleter* self);
QTLIBC_API int QCompleter_SenderSignalIndex(const QCompleter* self);
QTLIBC_API void QCompleter_OnSenderSignalIndex(const QCompleter* self, intptr_t slot);
QTLIBC_API int QCompleter_QBaseSenderSignalIndex(const QCompleter* self);
QTLIBC_API int QCompleter_Receivers(const QCompleter* self, const char* signal);
QTLIBC_API void QCompleter_OnReceivers(const QCompleter* self, intptr_t slot);
QTLIBC_API int QCompleter_QBaseReceivers(const QCompleter* self, const char* signal);
QTLIBC_API bool QCompleter_IsSignalConnected(const QCompleter* self, QMetaMethod* signal);
QTLIBC_API void QCompleter_OnIsSignalConnected(const QCompleter* self, intptr_t slot);
QTLIBC_API bool QCompleter_QBaseIsSignalConnected(const QCompleter* self, QMetaMethod* signal);
QTLIBC_API void QCompleter_Delete(QCompleter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
