#pragma once
#ifndef SRC_QTC_LIBQINPUTDEVICE_H
#define SRC_QTC_LIBQINPUTDEVICE_H

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
typedef struct QInputDevice QInputDevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QInputDevice::Capabilities Capabilities; // C++ QFlags
typedef QInputDevice::Capability Capability;     // C++ enum
typedef QInputDevice::DeviceType DeviceType;     // C++ enum
typedef QInputDevice::DeviceTypes DeviceTypes;   // C++ QFlags
#else
typedef int Capabilities; // C ABI QFlags
typedef int Capability;   // C ABI enum
typedef int DeviceType;   // C ABI enum
typedef int DeviceTypes;  // C ABI QFlags
#endif

QTLIBC_API QInputDevice* QInputDevice_new();
QTLIBC_API QInputDevice* QInputDevice_new2(libqt_string name, long long systemId, int typeVal);
QTLIBC_API QInputDevice* QInputDevice_new3(QObject* parent);
QTLIBC_API QInputDevice* QInputDevice_new4(libqt_string name, long long systemId, int typeVal, libqt_string seatName);
QTLIBC_API QInputDevice* QInputDevice_new5(libqt_string name, long long systemId, int typeVal, libqt_string seatName, QObject* parent);
QTLIBC_API QMetaObject* QInputDevice_MetaObject(const QInputDevice* self);
QTLIBC_API void* QInputDevice_Metacast(QInputDevice* self, const char* param1);
QTLIBC_API int QInputDevice_Metacall(QInputDevice* self, int param1, int param2, void** param3);
QTLIBC_API void QInputDevice_OnMetacall(QInputDevice* self, intptr_t slot);
QTLIBC_API int QInputDevice_QBaseMetacall(QInputDevice* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QInputDevice_Tr(const char* s);
QTLIBC_API libqt_string QInputDevice_Name(const QInputDevice* self);
QTLIBC_API int QInputDevice_Type(const QInputDevice* self);
QTLIBC_API int QInputDevice_Capabilities(const QInputDevice* self);
QTLIBC_API bool QInputDevice_HasCapability(const QInputDevice* self, int cap);
QTLIBC_API long long QInputDevice_SystemId(const QInputDevice* self);
QTLIBC_API libqt_string QInputDevice_SeatName(const QInputDevice* self);
QTLIBC_API QRect* QInputDevice_AvailableVirtualGeometry(const QInputDevice* self);
QTLIBC_API libqt_list /* of libqt_string */ QInputDevice_SeatNames();
QTLIBC_API libqt_list /* of QInputDevice* */ QInputDevice_Devices();
QTLIBC_API QInputDevice* QInputDevice_PrimaryKeyboard();
QTLIBC_API bool QInputDevice_OperatorEqual(const QInputDevice* self, QInputDevice* other);
QTLIBC_API void QInputDevice_AvailableVirtualGeometryChanged(QInputDevice* self, QRect* area);
void QInputDevice_Connect_AvailableVirtualGeometryChanged(QInputDevice* self, intptr_t slot);
QTLIBC_API libqt_string QInputDevice_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QInputDevice_Tr3(const char* s, const char* c, int n);
QTLIBC_API QInputDevice* QInputDevice_PrimaryKeyboard1(libqt_string seatName);
QTLIBC_API bool QInputDevice_Event(QInputDevice* self, QEvent* event);
QTLIBC_API void QInputDevice_OnEvent(QInputDevice* self, intptr_t slot);
QTLIBC_API bool QInputDevice_QBaseEvent(QInputDevice* self, QEvent* event);
QTLIBC_API bool QInputDevice_EventFilter(QInputDevice* self, QObject* watched, QEvent* event);
QTLIBC_API void QInputDevice_OnEventFilter(QInputDevice* self, intptr_t slot);
QTLIBC_API bool QInputDevice_QBaseEventFilter(QInputDevice* self, QObject* watched, QEvent* event);
QTLIBC_API void QInputDevice_TimerEvent(QInputDevice* self, QTimerEvent* event);
QTLIBC_API void QInputDevice_OnTimerEvent(QInputDevice* self, intptr_t slot);
QTLIBC_API void QInputDevice_QBaseTimerEvent(QInputDevice* self, QTimerEvent* event);
QTLIBC_API void QInputDevice_ChildEvent(QInputDevice* self, QChildEvent* event);
QTLIBC_API void QInputDevice_OnChildEvent(QInputDevice* self, intptr_t slot);
QTLIBC_API void QInputDevice_QBaseChildEvent(QInputDevice* self, QChildEvent* event);
QTLIBC_API void QInputDevice_CustomEvent(QInputDevice* self, QEvent* event);
QTLIBC_API void QInputDevice_OnCustomEvent(QInputDevice* self, intptr_t slot);
QTLIBC_API void QInputDevice_QBaseCustomEvent(QInputDevice* self, QEvent* event);
QTLIBC_API void QInputDevice_ConnectNotify(QInputDevice* self, QMetaMethod* signal);
QTLIBC_API void QInputDevice_OnConnectNotify(QInputDevice* self, intptr_t slot);
QTLIBC_API void QInputDevice_QBaseConnectNotify(QInputDevice* self, QMetaMethod* signal);
QTLIBC_API void QInputDevice_DisconnectNotify(QInputDevice* self, QMetaMethod* signal);
QTLIBC_API void QInputDevice_OnDisconnectNotify(QInputDevice* self, intptr_t slot);
QTLIBC_API void QInputDevice_QBaseDisconnectNotify(QInputDevice* self, QMetaMethod* signal);
QTLIBC_API QObject* QInputDevice_Sender(const QInputDevice* self);
QTLIBC_API void QInputDevice_OnSender(const QInputDevice* self, intptr_t slot);
QTLIBC_API QObject* QInputDevice_QBaseSender(const QInputDevice* self);
QTLIBC_API int QInputDevice_SenderSignalIndex(const QInputDevice* self);
QTLIBC_API void QInputDevice_OnSenderSignalIndex(const QInputDevice* self, intptr_t slot);
QTLIBC_API int QInputDevice_QBaseSenderSignalIndex(const QInputDevice* self);
QTLIBC_API int QInputDevice_Receivers(const QInputDevice* self, const char* signal);
QTLIBC_API void QInputDevice_OnReceivers(const QInputDevice* self, intptr_t slot);
QTLIBC_API int QInputDevice_QBaseReceivers(const QInputDevice* self, const char* signal);
QTLIBC_API bool QInputDevice_IsSignalConnected(const QInputDevice* self, QMetaMethod* signal);
QTLIBC_API void QInputDevice_OnIsSignalConnected(const QInputDevice* self, intptr_t slot);
QTLIBC_API bool QInputDevice_QBaseIsSignalConnected(const QInputDevice* self, QMetaMethod* signal);
QTLIBC_API void QInputDevice_Delete(QInputDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
