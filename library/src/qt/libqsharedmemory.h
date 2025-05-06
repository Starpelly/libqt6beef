#pragma once
#ifndef SRC_QTC_LIBQSHAREDMEMORY_H
#define SRC_QTC_LIBQSHAREDMEMORY_H

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
typedef struct QSharedMemory QSharedMemory;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QSharedMemory::AccessMode AccessMode;               // C++ enum
typedef QSharedMemory::SharedMemoryError SharedMemoryError; // C++ enum
#else
typedef int AccessMode;        // C ABI enum
typedef int SharedMemoryError; // C ABI enum
#endif

QTLIBC_API QSharedMemory* QSharedMemory_new();
QTLIBC_API QSharedMemory* QSharedMemory_new2(libqt_string key);
QTLIBC_API QSharedMemory* QSharedMemory_new3(QObject* parent);
QTLIBC_API QSharedMemory* QSharedMemory_new4(libqt_string key, QObject* parent);
QTLIBC_API QMetaObject* QSharedMemory_MetaObject(const QSharedMemory* self);
QTLIBC_API void* QSharedMemory_Metacast(QSharedMemory* self, const char* param1);
QTLIBC_API int QSharedMemory_Metacall(QSharedMemory* self, int param1, int param2, void** param3);
QTLIBC_API void QSharedMemory_OnMetacall(QSharedMemory* self, intptr_t slot);
QTLIBC_API int QSharedMemory_QBaseMetacall(QSharedMemory* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSharedMemory_Tr(const char* s);
QTLIBC_API void QSharedMemory_SetKey(QSharedMemory* self, libqt_string key);
QTLIBC_API libqt_string QSharedMemory_Key(const QSharedMemory* self);
QTLIBC_API void QSharedMemory_SetNativeKey(QSharedMemory* self, libqt_string key);
QTLIBC_API libqt_string QSharedMemory_NativeKey(const QSharedMemory* self);
QTLIBC_API bool QSharedMemory_Create(QSharedMemory* self, ptrdiff_t size);
QTLIBC_API ptrdiff_t QSharedMemory_Size(const QSharedMemory* self);
QTLIBC_API bool QSharedMemory_Attach(QSharedMemory* self);
QTLIBC_API bool QSharedMemory_IsAttached(const QSharedMemory* self);
QTLIBC_API bool QSharedMemory_Detach(QSharedMemory* self);
QTLIBC_API void* QSharedMemory_Data(QSharedMemory* self);
QTLIBC_API const void* QSharedMemory_ConstData(const QSharedMemory* self);
QTLIBC_API const void* QSharedMemory_Data2(const QSharedMemory* self);
QTLIBC_API bool QSharedMemory_Lock(QSharedMemory* self);
QTLIBC_API bool QSharedMemory_Unlock(QSharedMemory* self);
QTLIBC_API int QSharedMemory_Error(const QSharedMemory* self);
QTLIBC_API libqt_string QSharedMemory_ErrorString(const QSharedMemory* self);
QTLIBC_API libqt_string QSharedMemory_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSharedMemory_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QSharedMemory_Create2(QSharedMemory* self, ptrdiff_t size, int mode);
QTLIBC_API bool QSharedMemory_Attach1(QSharedMemory* self, int mode);
QTLIBC_API bool QSharedMemory_Event(QSharedMemory* self, QEvent* event);
QTLIBC_API void QSharedMemory_OnEvent(QSharedMemory* self, intptr_t slot);
QTLIBC_API bool QSharedMemory_QBaseEvent(QSharedMemory* self, QEvent* event);
QTLIBC_API bool QSharedMemory_EventFilter(QSharedMemory* self, QObject* watched, QEvent* event);
QTLIBC_API void QSharedMemory_OnEventFilter(QSharedMemory* self, intptr_t slot);
QTLIBC_API bool QSharedMemory_QBaseEventFilter(QSharedMemory* self, QObject* watched, QEvent* event);
QTLIBC_API void QSharedMemory_TimerEvent(QSharedMemory* self, QTimerEvent* event);
QTLIBC_API void QSharedMemory_OnTimerEvent(QSharedMemory* self, intptr_t slot);
QTLIBC_API void QSharedMemory_QBaseTimerEvent(QSharedMemory* self, QTimerEvent* event);
QTLIBC_API void QSharedMemory_ChildEvent(QSharedMemory* self, QChildEvent* event);
QTLIBC_API void QSharedMemory_OnChildEvent(QSharedMemory* self, intptr_t slot);
QTLIBC_API void QSharedMemory_QBaseChildEvent(QSharedMemory* self, QChildEvent* event);
QTLIBC_API void QSharedMemory_CustomEvent(QSharedMemory* self, QEvent* event);
QTLIBC_API void QSharedMemory_OnCustomEvent(QSharedMemory* self, intptr_t slot);
QTLIBC_API void QSharedMemory_QBaseCustomEvent(QSharedMemory* self, QEvent* event);
QTLIBC_API void QSharedMemory_ConnectNotify(QSharedMemory* self, QMetaMethod* signal);
QTLIBC_API void QSharedMemory_OnConnectNotify(QSharedMemory* self, intptr_t slot);
QTLIBC_API void QSharedMemory_QBaseConnectNotify(QSharedMemory* self, QMetaMethod* signal);
QTLIBC_API void QSharedMemory_DisconnectNotify(QSharedMemory* self, QMetaMethod* signal);
QTLIBC_API void QSharedMemory_OnDisconnectNotify(QSharedMemory* self, intptr_t slot);
QTLIBC_API void QSharedMemory_QBaseDisconnectNotify(QSharedMemory* self, QMetaMethod* signal);
QTLIBC_API QObject* QSharedMemory_Sender(const QSharedMemory* self);
QTLIBC_API void QSharedMemory_OnSender(const QSharedMemory* self, intptr_t slot);
QTLIBC_API QObject* QSharedMemory_QBaseSender(const QSharedMemory* self);
QTLIBC_API int QSharedMemory_SenderSignalIndex(const QSharedMemory* self);
QTLIBC_API void QSharedMemory_OnSenderSignalIndex(const QSharedMemory* self, intptr_t slot);
QTLIBC_API int QSharedMemory_QBaseSenderSignalIndex(const QSharedMemory* self);
QTLIBC_API int QSharedMemory_Receivers(const QSharedMemory* self, const char* signal);
QTLIBC_API void QSharedMemory_OnReceivers(const QSharedMemory* self, intptr_t slot);
QTLIBC_API int QSharedMemory_QBaseReceivers(const QSharedMemory* self, const char* signal);
QTLIBC_API bool QSharedMemory_IsSignalConnected(const QSharedMemory* self, QMetaMethod* signal);
QTLIBC_API void QSharedMemory_OnIsSignalConnected(const QSharedMemory* self, intptr_t slot);
QTLIBC_API bool QSharedMemory_QBaseIsSignalConnected(const QSharedMemory* self, QMetaMethod* signal);
QTLIBC_API void QSharedMemory_Delete(QSharedMemory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
