#pragma once
#ifndef SRC_QTC_LIBQTEXTLIST_H
#define SRC_QTC_LIBQTEXTLIST_H

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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QTextBlock QTextBlock;
typedef struct QTextBlockGroup QTextBlockGroup;
typedef struct QTextDocument QTextDocument;
typedef struct QTextFormat QTextFormat;
typedef struct QTextList QTextList;
typedef struct QTextListFormat QTextListFormat;
typedef struct QTextObject QTextObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QTextList* QTextList_new(QTextDocument* doc);
QTLIBC_API QMetaObject* QTextList_MetaObject(const QTextList* self);
QTLIBC_API void* QTextList_Metacast(QTextList* self, const char* param1);
QTLIBC_API int QTextList_Metacall(QTextList* self, int param1, int param2, void** param3);
QTLIBC_API void QTextList_OnMetacall(QTextList* self, intptr_t slot);
QTLIBC_API int QTextList_QBaseMetacall(QTextList* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTextList_Tr(const char* s);
QTLIBC_API int QTextList_Count(const QTextList* self);
QTLIBC_API QTextBlock* QTextList_Item(const QTextList* self, int i);
QTLIBC_API int QTextList_ItemNumber(const QTextList* self, QTextBlock* param1);
QTLIBC_API libqt_string QTextList_ItemText(const QTextList* self, QTextBlock* param1);
QTLIBC_API void QTextList_RemoveItem(QTextList* self, int i);
QTLIBC_API void QTextList_Remove(QTextList* self, QTextBlock* param1);
QTLIBC_API void QTextList_Add(QTextList* self, QTextBlock* block);
QTLIBC_API void QTextList_SetFormat(QTextList* self, QTextListFormat* format);
QTLIBC_API QTextListFormat* QTextList_Format(const QTextList* self);
QTLIBC_API libqt_string QTextList_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTextList_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QTextList_BlockInserted(QTextList* self, QTextBlock* block);
QTLIBC_API void QTextList_OnBlockInserted(QTextList* self, intptr_t slot);
QTLIBC_API void QTextList_QBaseBlockInserted(QTextList* self, QTextBlock* block);
QTLIBC_API void QTextList_BlockRemoved(QTextList* self, QTextBlock* block);
QTLIBC_API void QTextList_OnBlockRemoved(QTextList* self, intptr_t slot);
QTLIBC_API void QTextList_QBaseBlockRemoved(QTextList* self, QTextBlock* block);
QTLIBC_API void QTextList_BlockFormatChanged(QTextList* self, QTextBlock* block);
QTLIBC_API void QTextList_OnBlockFormatChanged(QTextList* self, intptr_t slot);
QTLIBC_API void QTextList_QBaseBlockFormatChanged(QTextList* self, QTextBlock* block);
QTLIBC_API bool QTextList_Event(QTextList* self, QEvent* event);
QTLIBC_API void QTextList_OnEvent(QTextList* self, intptr_t slot);
QTLIBC_API bool QTextList_QBaseEvent(QTextList* self, QEvent* event);
QTLIBC_API bool QTextList_EventFilter(QTextList* self, QObject* watched, QEvent* event);
QTLIBC_API void QTextList_OnEventFilter(QTextList* self, intptr_t slot);
QTLIBC_API bool QTextList_QBaseEventFilter(QTextList* self, QObject* watched, QEvent* event);
QTLIBC_API void QTextList_TimerEvent(QTextList* self, QTimerEvent* event);
QTLIBC_API void QTextList_OnTimerEvent(QTextList* self, intptr_t slot);
QTLIBC_API void QTextList_QBaseTimerEvent(QTextList* self, QTimerEvent* event);
QTLIBC_API void QTextList_ChildEvent(QTextList* self, QChildEvent* event);
QTLIBC_API void QTextList_OnChildEvent(QTextList* self, intptr_t slot);
QTLIBC_API void QTextList_QBaseChildEvent(QTextList* self, QChildEvent* event);
QTLIBC_API void QTextList_CustomEvent(QTextList* self, QEvent* event);
QTLIBC_API void QTextList_OnCustomEvent(QTextList* self, intptr_t slot);
QTLIBC_API void QTextList_QBaseCustomEvent(QTextList* self, QEvent* event);
QTLIBC_API void QTextList_ConnectNotify(QTextList* self, QMetaMethod* signal);
QTLIBC_API void QTextList_OnConnectNotify(QTextList* self, intptr_t slot);
QTLIBC_API void QTextList_QBaseConnectNotify(QTextList* self, QMetaMethod* signal);
QTLIBC_API void QTextList_DisconnectNotify(QTextList* self, QMetaMethod* signal);
QTLIBC_API void QTextList_OnDisconnectNotify(QTextList* self, intptr_t slot);
QTLIBC_API void QTextList_QBaseDisconnectNotify(QTextList* self, QMetaMethod* signal);
QTLIBC_API libqt_list /* of QTextBlock* */ QTextList_BlockList(const QTextList* self);
QTLIBC_API void QTextList_OnBlockList(const QTextList* self, intptr_t slot);
QTLIBC_API libqt_list /* of QTextBlock* */ QTextList_QBaseBlockList(const QTextList* self);
QTLIBC_API QObject* QTextList_Sender(const QTextList* self);
QTLIBC_API void QTextList_OnSender(const QTextList* self, intptr_t slot);
QTLIBC_API QObject* QTextList_QBaseSender(const QTextList* self);
QTLIBC_API int QTextList_SenderSignalIndex(const QTextList* self);
QTLIBC_API void QTextList_OnSenderSignalIndex(const QTextList* self, intptr_t slot);
QTLIBC_API int QTextList_QBaseSenderSignalIndex(const QTextList* self);
QTLIBC_API int QTextList_Receivers(const QTextList* self, const char* signal);
QTLIBC_API void QTextList_OnReceivers(const QTextList* self, intptr_t slot);
QTLIBC_API int QTextList_QBaseReceivers(const QTextList* self, const char* signal);
QTLIBC_API bool QTextList_IsSignalConnected(const QTextList* self, QMetaMethod* signal);
QTLIBC_API void QTextList_OnIsSignalConnected(const QTextList* self, intptr_t slot);
QTLIBC_API bool QTextList_QBaseIsSignalConnected(const QTextList* self, QMetaMethod* signal);
QTLIBC_API void QTextList_Delete(QTextList* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
