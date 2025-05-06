#pragma once
#ifndef SRCC_LIBQSYNTAXHIGHLIGHTER_H
#define SRCC_LIBQSYNTAXHIGHLIGHTER_H

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
typedef struct QColor QColor;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QSyntaxHighlighter QSyntaxHighlighter;
typedef struct QTextBlock QTextBlock;
typedef struct QTextBlockUserData QTextBlockUserData;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextDocument QTextDocument;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QSyntaxHighlighter* QSyntaxHighlighter_new(QObject* parent);
QTLIBC_API QSyntaxHighlighter* QSyntaxHighlighter_new2(QTextDocument* parent);
QTLIBC_API QMetaObject* QSyntaxHighlighter_MetaObject(const QSyntaxHighlighter* self);
QTLIBC_API void* QSyntaxHighlighter_Metacast(QSyntaxHighlighter* self, const char* param1);
QTLIBC_API int QSyntaxHighlighter_Metacall(QSyntaxHighlighter* self, int param1, int param2, void** param3);
QTLIBC_API void QSyntaxHighlighter_OnMetacall(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API int QSyntaxHighlighter_QBaseMetacall(QSyntaxHighlighter* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSyntaxHighlighter_Tr(const char* s);
QTLIBC_API void QSyntaxHighlighter_SetDocument(QSyntaxHighlighter* self, QTextDocument* doc);
QTLIBC_API QTextDocument* QSyntaxHighlighter_Document(const QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_Rehighlight(QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_RehighlightBlock(QSyntaxHighlighter* self, QTextBlock* block);
QTLIBC_API void QSyntaxHighlighter_HighlightBlock(QSyntaxHighlighter* self, libqt_string text);
QTLIBC_API void QSyntaxHighlighter_OnHighlightBlock(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseHighlightBlock(QSyntaxHighlighter* self, libqt_string text);
QTLIBC_API libqt_string QSyntaxHighlighter_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSyntaxHighlighter_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QSyntaxHighlighter_Event(QSyntaxHighlighter* self, QEvent* event);
QTLIBC_API void QSyntaxHighlighter_OnEvent(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API bool QSyntaxHighlighter_QBaseEvent(QSyntaxHighlighter* self, QEvent* event);
QTLIBC_API bool QSyntaxHighlighter_EventFilter(QSyntaxHighlighter* self, QObject* watched, QEvent* event);
QTLIBC_API void QSyntaxHighlighter_OnEventFilter(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API bool QSyntaxHighlighter_QBaseEventFilter(QSyntaxHighlighter* self, QObject* watched, QEvent* event);
QTLIBC_API void QSyntaxHighlighter_TimerEvent(QSyntaxHighlighter* self, QTimerEvent* event);
QTLIBC_API void QSyntaxHighlighter_OnTimerEvent(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseTimerEvent(QSyntaxHighlighter* self, QTimerEvent* event);
QTLIBC_API void QSyntaxHighlighter_ChildEvent(QSyntaxHighlighter* self, QChildEvent* event);
QTLIBC_API void QSyntaxHighlighter_OnChildEvent(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseChildEvent(QSyntaxHighlighter* self, QChildEvent* event);
QTLIBC_API void QSyntaxHighlighter_CustomEvent(QSyntaxHighlighter* self, QEvent* event);
QTLIBC_API void QSyntaxHighlighter_OnCustomEvent(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseCustomEvent(QSyntaxHighlighter* self, QEvent* event);
QTLIBC_API void QSyntaxHighlighter_ConnectNotify(QSyntaxHighlighter* self, QMetaMethod* signal);
QTLIBC_API void QSyntaxHighlighter_OnConnectNotify(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseConnectNotify(QSyntaxHighlighter* self, QMetaMethod* signal);
QTLIBC_API void QSyntaxHighlighter_DisconnectNotify(QSyntaxHighlighter* self, QMetaMethod* signal);
QTLIBC_API void QSyntaxHighlighter_OnDisconnectNotify(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseDisconnectNotify(QSyntaxHighlighter* self, QMetaMethod* signal);
QTLIBC_API void QSyntaxHighlighter_SetFormat(QSyntaxHighlighter* self, int start, int count, QTextCharFormat* format);
QTLIBC_API void QSyntaxHighlighter_OnSetFormat(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseSetFormat(QSyntaxHighlighter* self, int start, int count, QTextCharFormat* format);
QTLIBC_API void QSyntaxHighlighter_SetFormat2(QSyntaxHighlighter* self, int start, int count, QColor* color);
QTLIBC_API void QSyntaxHighlighter_OnSetFormat2(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseSetFormat2(QSyntaxHighlighter* self, int start, int count, QColor* color);
QTLIBC_API void QSyntaxHighlighter_SetFormat3(QSyntaxHighlighter* self, int start, int count, QFont* font);
QTLIBC_API void QSyntaxHighlighter_OnSetFormat3(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseSetFormat3(QSyntaxHighlighter* self, int start, int count, QFont* font);
QTLIBC_API QTextCharFormat* QSyntaxHighlighter_Format(const QSyntaxHighlighter* self, int pos);
QTLIBC_API void QSyntaxHighlighter_OnFormat(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API QTextCharFormat* QSyntaxHighlighter_QBaseFormat(const QSyntaxHighlighter* self, int pos);
QTLIBC_API int QSyntaxHighlighter_PreviousBlockState(const QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_OnPreviousBlockState(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API int QSyntaxHighlighter_QBasePreviousBlockState(const QSyntaxHighlighter* self);
QTLIBC_API int QSyntaxHighlighter_CurrentBlockState(const QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_OnCurrentBlockState(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API int QSyntaxHighlighter_QBaseCurrentBlockState(const QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_SetCurrentBlockState(QSyntaxHighlighter* self, int newState);
QTLIBC_API void QSyntaxHighlighter_OnSetCurrentBlockState(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseSetCurrentBlockState(QSyntaxHighlighter* self, int newState);
QTLIBC_API void QSyntaxHighlighter_SetCurrentBlockUserData(QSyntaxHighlighter* self, QTextBlockUserData* data);
QTLIBC_API void QSyntaxHighlighter_OnSetCurrentBlockUserData(QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API void QSyntaxHighlighter_QBaseSetCurrentBlockUserData(QSyntaxHighlighter* self, QTextBlockUserData* data);
QTLIBC_API QTextBlockUserData* QSyntaxHighlighter_CurrentBlockUserData(const QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_OnCurrentBlockUserData(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API QTextBlockUserData* QSyntaxHighlighter_QBaseCurrentBlockUserData(const QSyntaxHighlighter* self);
QTLIBC_API QTextBlock* QSyntaxHighlighter_CurrentBlock(const QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_OnCurrentBlock(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API QTextBlock* QSyntaxHighlighter_QBaseCurrentBlock(const QSyntaxHighlighter* self);
QTLIBC_API QObject* QSyntaxHighlighter_Sender(const QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_OnSender(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API QObject* QSyntaxHighlighter_QBaseSender(const QSyntaxHighlighter* self);
QTLIBC_API int QSyntaxHighlighter_SenderSignalIndex(const QSyntaxHighlighter* self);
QTLIBC_API void QSyntaxHighlighter_OnSenderSignalIndex(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API int QSyntaxHighlighter_QBaseSenderSignalIndex(const QSyntaxHighlighter* self);
QTLIBC_API int QSyntaxHighlighter_Receivers(const QSyntaxHighlighter* self, const char* signal);
QTLIBC_API void QSyntaxHighlighter_OnReceivers(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API int QSyntaxHighlighter_QBaseReceivers(const QSyntaxHighlighter* self, const char* signal);
QTLIBC_API bool QSyntaxHighlighter_IsSignalConnected(const QSyntaxHighlighter* self, QMetaMethod* signal);
QTLIBC_API void QSyntaxHighlighter_OnIsSignalConnected(const QSyntaxHighlighter* self, intptr_t slot);
QTLIBC_API bool QSyntaxHighlighter_QBaseIsSignalConnected(const QSyntaxHighlighter* self, QMetaMethod* signal);
QTLIBC_API void QSyntaxHighlighter_Delete(QSyntaxHighlighter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
