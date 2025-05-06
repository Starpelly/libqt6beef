#pragma once
#ifndef SRCC_LIBQSHORTCUT_H
#define SRCC_LIBQSHORTCUT_H

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
typedef struct QKeySequence QKeySequence;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QShortcut QShortcut;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QShortcut* QShortcut_new(QObject* parent);
QTLIBC_API QShortcut* QShortcut_new2(QKeySequence* key, QObject* parent);
QTLIBC_API QShortcut* QShortcut_new3(int key, QObject* parent);
QTLIBC_API QShortcut* QShortcut_new4(QKeySequence* key, QObject* parent, const char* member);
QTLIBC_API QShortcut* QShortcut_new5(QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember);
QTLIBC_API QShortcut* QShortcut_new6(QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember, int context);
QTLIBC_API QShortcut* QShortcut_new7(int key, QObject* parent, const char* member);
QTLIBC_API QShortcut* QShortcut_new8(int key, QObject* parent, const char* member, const char* ambiguousMember);
QTLIBC_API QShortcut* QShortcut_new9(int key, QObject* parent, const char* member, const char* ambiguousMember, int context);
QTLIBC_API QMetaObject* QShortcut_MetaObject(const QShortcut* self);
QTLIBC_API void* QShortcut_Metacast(QShortcut* self, const char* param1);
QTLIBC_API int QShortcut_Metacall(QShortcut* self, int param1, int param2, void** param3);
QTLIBC_API void QShortcut_OnMetacall(QShortcut* self, intptr_t slot);
QTLIBC_API int QShortcut_QBaseMetacall(QShortcut* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QShortcut_Tr(const char* s);
QTLIBC_API void QShortcut_SetKey(QShortcut* self, QKeySequence* key);
QTLIBC_API QKeySequence* QShortcut_Key(const QShortcut* self);
QTLIBC_API void QShortcut_SetKeys(QShortcut* self, int key);
QTLIBC_API void QShortcut_SetKeysWithKeys(QShortcut* self, libqt_list /* of QKeySequence* */ keys);
QTLIBC_API libqt_list /* of QKeySequence* */ QShortcut_Keys(const QShortcut* self);
QTLIBC_API void QShortcut_SetEnabled(QShortcut* self, bool enable);
QTLIBC_API bool QShortcut_IsEnabled(const QShortcut* self);
QTLIBC_API void QShortcut_SetContext(QShortcut* self, int context);
QTLIBC_API int QShortcut_Context(const QShortcut* self);
QTLIBC_API void QShortcut_SetAutoRepeat(QShortcut* self, bool on);
QTLIBC_API bool QShortcut_AutoRepeat(const QShortcut* self);
QTLIBC_API int QShortcut_Id(const QShortcut* self);
QTLIBC_API void QShortcut_SetWhatsThis(QShortcut* self, libqt_string text);
QTLIBC_API libqt_string QShortcut_WhatsThis(const QShortcut* self);
QTLIBC_API void QShortcut_Activated(QShortcut* self);
void QShortcut_Connect_Activated(QShortcut* self, intptr_t slot);
QTLIBC_API void QShortcut_ActivatedAmbiguously(QShortcut* self);
void QShortcut_Connect_ActivatedAmbiguously(QShortcut* self, intptr_t slot);
QTLIBC_API bool QShortcut_Event(QShortcut* self, QEvent* e);
QTLIBC_API void QShortcut_OnEvent(QShortcut* self, intptr_t slot);
QTLIBC_API bool QShortcut_QBaseEvent(QShortcut* self, QEvent* e);
QTLIBC_API libqt_string QShortcut_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QShortcut_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QShortcut_EventFilter(QShortcut* self, QObject* watched, QEvent* event);
QTLIBC_API void QShortcut_OnEventFilter(QShortcut* self, intptr_t slot);
QTLIBC_API bool QShortcut_QBaseEventFilter(QShortcut* self, QObject* watched, QEvent* event);
QTLIBC_API void QShortcut_TimerEvent(QShortcut* self, QTimerEvent* event);
QTLIBC_API void QShortcut_OnTimerEvent(QShortcut* self, intptr_t slot);
QTLIBC_API void QShortcut_QBaseTimerEvent(QShortcut* self, QTimerEvent* event);
QTLIBC_API void QShortcut_ChildEvent(QShortcut* self, QChildEvent* event);
QTLIBC_API void QShortcut_OnChildEvent(QShortcut* self, intptr_t slot);
QTLIBC_API void QShortcut_QBaseChildEvent(QShortcut* self, QChildEvent* event);
QTLIBC_API void QShortcut_CustomEvent(QShortcut* self, QEvent* event);
QTLIBC_API void QShortcut_OnCustomEvent(QShortcut* self, intptr_t slot);
QTLIBC_API void QShortcut_QBaseCustomEvent(QShortcut* self, QEvent* event);
QTLIBC_API void QShortcut_ConnectNotify(QShortcut* self, QMetaMethod* signal);
QTLIBC_API void QShortcut_OnConnectNotify(QShortcut* self, intptr_t slot);
QTLIBC_API void QShortcut_QBaseConnectNotify(QShortcut* self, QMetaMethod* signal);
QTLIBC_API void QShortcut_DisconnectNotify(QShortcut* self, QMetaMethod* signal);
QTLIBC_API void QShortcut_OnDisconnectNotify(QShortcut* self, intptr_t slot);
QTLIBC_API void QShortcut_QBaseDisconnectNotify(QShortcut* self, QMetaMethod* signal);
QTLIBC_API QObject* QShortcut_Sender(const QShortcut* self);
QTLIBC_API void QShortcut_OnSender(const QShortcut* self, intptr_t slot);
QTLIBC_API QObject* QShortcut_QBaseSender(const QShortcut* self);
QTLIBC_API int QShortcut_SenderSignalIndex(const QShortcut* self);
QTLIBC_API void QShortcut_OnSenderSignalIndex(const QShortcut* self, intptr_t slot);
QTLIBC_API int QShortcut_QBaseSenderSignalIndex(const QShortcut* self);
QTLIBC_API int QShortcut_Receivers(const QShortcut* self, const char* signal);
QTLIBC_API void QShortcut_OnReceivers(const QShortcut* self, intptr_t slot);
QTLIBC_API int QShortcut_QBaseReceivers(const QShortcut* self, const char* signal);
QTLIBC_API bool QShortcut_IsSignalConnected(const QShortcut* self, QMetaMethod* signal);
QTLIBC_API void QShortcut_OnIsSignalConnected(const QShortcut* self, intptr_t slot);
QTLIBC_API bool QShortcut_QBaseIsSignalConnected(const QShortcut* self, QMetaMethod* signal);
QTLIBC_API void QShortcut_Delete(QShortcut* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
