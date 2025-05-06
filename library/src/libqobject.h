#pragma once
#ifndef SRCC_LIBQOBJECT_H
#define SRCC_LIBQOBJECT_H

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

// Based on the macro from Qt (LGPLv3), see https://www.qt.io/qt-licensing/
// Macro is trivial and used here under fair use
// Usage does not imply derivation
#define QT_VERSION_CHECK(major, minor, patch) ((major << 16) | (minor << 8) | (patch))

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
typedef struct QObjectData QObjectData;
typedef struct QSignalBlocker QSignalBlocker;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

// This method's return type was changed from non-const to const in Qt 6.9
#if QT_VERSION >= QT_VERSION_CHECK(6, 9, 0)
const QMetaObject* QObjectData_DynamicMetaObject(const QObjectData* self);
#else
QMetaObject* QObjectData_DynamicMetaObject(const QObjectData* self);
#endif
QTLIBC_API void QObjectData_Delete(QObjectData* self);

QTLIBC_API QObject* QObject_new();
QTLIBC_API QObject* QObject_new2(QObject* parent);
QTLIBC_API QMetaObject* QObject_MetaObject(const QObject* self);
QTLIBC_API void* QObject_Metacast(QObject* self, const char* param1);
QTLIBC_API int QObject_Metacall(QObject* self, int param1, int param2, void** param3);
QTLIBC_API void QObject_OnMetacall(QObject* self, intptr_t slot);
QTLIBC_API int QObject_QBaseMetacall(QObject* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QObject_Tr(const char* s);
QTLIBC_API bool QObject_Event(QObject* self, QEvent* event);
QTLIBC_API void QObject_OnEvent(QObject* self, intptr_t slot);
QTLIBC_API bool QObject_QBaseEvent(QObject* self, QEvent* event);
QTLIBC_API bool QObject_EventFilter(QObject* self, QObject* watched, QEvent* event);
QTLIBC_API void QObject_OnEventFilter(QObject* self, intptr_t slot);
QTLIBC_API bool QObject_QBaseEventFilter(QObject* self, QObject* watched, QEvent* event);
QTLIBC_API libqt_string QObject_ObjectName(const QObject* self);
QTLIBC_API void QObject_SetObjectName(QObject* self, char* name);
QTLIBC_API bool QObject_IsWidgetType(const QObject* self);
QTLIBC_API bool QObject_IsWindowType(const QObject* self);
QTLIBC_API bool QObject_IsQuickItemType(const QObject* self);
QTLIBC_API bool QObject_SignalsBlocked(const QObject* self);
QTLIBC_API bool QObject_BlockSignals(QObject* self, bool b);
QTLIBC_API QThread* QObject_Thread(const QObject* self);
QTLIBC_API void QObject_MoveToThread(QObject* self, QThread* thread);
QTLIBC_API int QObject_StartTimer(QObject* self, int interval);
QTLIBC_API void QObject_KillTimer(QObject* self, int id);
QTLIBC_API libqt_list /* of QObject* */ QObject_Children(const QObject* self);
QTLIBC_API void QObject_SetParent(QObject* self, QObject* parent);
QTLIBC_API void QObject_InstallEventFilter(QObject* self, QObject* filterObj);
QTLIBC_API void QObject_RemoveEventFilter(QObject* self, QObject* obj);
QTLIBC_API QMetaObject__Connection* QObject_Connect(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* method);
QTLIBC_API QMetaObject__Connection* QObject_Connect2(const QObject* self, QObject* sender, const char* signal, const char* member);
QTLIBC_API bool QObject_Disconnect(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* member);
QTLIBC_API bool QObject_DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1);
QTLIBC_API void QObject_DumpObjectTree(const QObject* self);
QTLIBC_API void QObject_DumpObjectInfo(const QObject* self);
QTLIBC_API bool QObject_SetProperty(QObject* self, const char* name, QVariant* value);
QTLIBC_API QVariant* QObject_Property(const QObject* self, const char* name);
QTLIBC_API libqt_list /* of libqt_string */ QObject_DynamicPropertyNames(const QObject* self);
QTLIBC_API QBindingStorage* QObject_BindingStorage(QObject* self);
QTLIBC_API QBindingStorage* QObject_BindingStorage2(const QObject* self);
QTLIBC_API void QObject_Destroyed(QObject* self);
void QObject_Connect_Destroyed(QObject* self, intptr_t slot);
QTLIBC_API QObject* QObject_Parent(const QObject* self);
QTLIBC_API bool QObject_Inherits(const QObject* self, const char* classname);
QTLIBC_API void QObject_DeleteLater(QObject* self);
QTLIBC_API void QObject_TimerEvent(QObject* self, QTimerEvent* event);
QTLIBC_API void QObject_OnTimerEvent(QObject* self, intptr_t slot);
QTLIBC_API void QObject_QBaseTimerEvent(QObject* self, QTimerEvent* event);
QTLIBC_API void QObject_ChildEvent(QObject* self, QChildEvent* event);
QTLIBC_API void QObject_OnChildEvent(QObject* self, intptr_t slot);
QTLIBC_API void QObject_QBaseChildEvent(QObject* self, QChildEvent* event);
QTLIBC_API void QObject_CustomEvent(QObject* self, QEvent* event);
QTLIBC_API void QObject_OnCustomEvent(QObject* self, intptr_t slot);
QTLIBC_API void QObject_QBaseCustomEvent(QObject* self, QEvent* event);
QTLIBC_API void QObject_ConnectNotify(QObject* self, QMetaMethod* signal);
QTLIBC_API void QObject_OnConnectNotify(QObject* self, intptr_t slot);
QTLIBC_API void QObject_QBaseConnectNotify(QObject* self, QMetaMethod* signal);
QTLIBC_API void QObject_DisconnectNotify(QObject* self, QMetaMethod* signal);
QTLIBC_API void QObject_OnDisconnectNotify(QObject* self, intptr_t slot);
QTLIBC_API void QObject_QBaseDisconnectNotify(QObject* self, QMetaMethod* signal);
QTLIBC_API libqt_string QObject_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QObject_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QObject_StartTimer2(QObject* self, int interval, int timerType);
QTLIBC_API QMetaObject__Connection* QObject_Connect5(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* method, int typeVal);
QTLIBC_API QMetaObject__Connection* QObject_Connect4(const QObject* self, QObject* sender, const char* signal, const char* member, int typeVal);
QTLIBC_API void QObject_Destroyed1(QObject* self, QObject* param1);
void QObject_Connect_Destroyed1(QObject* self, intptr_t slot);
QTLIBC_API QObject* QObject_Sender(const QObject* self);
QTLIBC_API void QObject_OnSender(const QObject* self, intptr_t slot);
QTLIBC_API QObject* QObject_QBaseSender(const QObject* self);
QTLIBC_API int QObject_SenderSignalIndex(const QObject* self);
QTLIBC_API void QObject_OnSenderSignalIndex(const QObject* self, intptr_t slot);
QTLIBC_API int QObject_QBaseSenderSignalIndex(const QObject* self);
QTLIBC_API int QObject_Receivers(const QObject* self, const char* signal);
QTLIBC_API void QObject_OnReceivers(const QObject* self, intptr_t slot);
QTLIBC_API int QObject_QBaseReceivers(const QObject* self, const char* signal);
QTLIBC_API bool QObject_IsSignalConnected(const QObject* self, QMetaMethod* signal);
QTLIBC_API void QObject_OnIsSignalConnected(const QObject* self, intptr_t slot);
QTLIBC_API bool QObject_QBaseIsSignalConnected(const QObject* self, QMetaMethod* signal);
QTLIBC_API void QObject_Delete(QObject* self);

QTLIBC_API QSignalBlocker* QSignalBlocker_new(QObject* o);
QTLIBC_API QSignalBlocker* QSignalBlocker_new2(QObject* o);
QTLIBC_API void QSignalBlocker_Reblock(QSignalBlocker* self);
QTLIBC_API void QSignalBlocker_Unblock(QSignalBlocker* self);
QTLIBC_API void QSignalBlocker_Delete(QSignalBlocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
