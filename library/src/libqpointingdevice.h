#pragma once
#ifndef SRCC_LIBQPOINTINGDEVICE_H
#define SRCC_LIBQPOINTINGDEVICE_H

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
typedef struct QEventPoint QEventPoint;
typedef struct QInputDevice QInputDevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPointerEvent QPointerEvent;
typedef struct QPointingDevice QPointingDevice;
typedef struct QPointingDeviceUniqueId QPointingDeviceUniqueId;
typedef struct QRect QRect;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QPointingDevice::GrabTransition GrabTransition;         // C++ enum
typedef QPointingDevice::PointerType PointerType;               // C++ enum
typedef QPointingDevice::PointerTypes PointerTypes;             // C++ QFlags
typedef QPointingDeviceUniqueId::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef int GrabTransition;  // C ABI enum
typedef int PointerType;     // C ABI enum
typedef int PointerTypes;    // C ABI QFlags
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QPointingDeviceUniqueId* QPointingDeviceUniqueId_new(QPointingDeviceUniqueId* other);
QTLIBC_API QPointingDeviceUniqueId* QPointingDeviceUniqueId_new2(QPointingDeviceUniqueId* other);
QTLIBC_API QPointingDeviceUniqueId* QPointingDeviceUniqueId_new3();
QTLIBC_API QPointingDeviceUniqueId* QPointingDeviceUniqueId_new4(QPointingDeviceUniqueId* param1);
QTLIBC_API void QPointingDeviceUniqueId_CopyAssign(QPointingDeviceUniqueId* self, QPointingDeviceUniqueId* other);
QTLIBC_API void QPointingDeviceUniqueId_MoveAssign(QPointingDeviceUniqueId* self, QPointingDeviceUniqueId* other);
QTLIBC_API QPointingDeviceUniqueId* QPointingDeviceUniqueId_FromNumericId(long long id);
QTLIBC_API bool QPointingDeviceUniqueId_IsValid(const QPointingDeviceUniqueId* self);
QTLIBC_API long long QPointingDeviceUniqueId_NumericId(const QPointingDeviceUniqueId* self);
QTLIBC_API void QPointingDeviceUniqueId_Delete(QPointingDeviceUniqueId* self);

QTLIBC_API QPointingDevice* QPointingDevice_new();
QTLIBC_API QPointingDevice* QPointingDevice_new2(libqt_string name, long long systemId, int devType, int pType, int caps, int maxPoints, int buttonCount);
QTLIBC_API QPointingDevice* QPointingDevice_new3(QObject* parent);
QTLIBC_API QPointingDevice* QPointingDevice_new4(libqt_string name, long long systemId, int devType, int pType, int caps, int maxPoints, int buttonCount, libqt_string seatName);
QTLIBC_API QPointingDevice* QPointingDevice_new5(libqt_string name, long long systemId, int devType, int pType, int caps, int maxPoints, int buttonCount, libqt_string seatName, QPointingDeviceUniqueId* uniqueId);
QTLIBC_API QPointingDevice* QPointingDevice_new6(libqt_string name, long long systemId, int devType, int pType, int caps, int maxPoints, int buttonCount, libqt_string seatName, QPointingDeviceUniqueId* uniqueId, QObject* parent);
QTLIBC_API QMetaObject* QPointingDevice_MetaObject(const QPointingDevice* self);
QTLIBC_API void* QPointingDevice_Metacast(QPointingDevice* self, const char* param1);
QTLIBC_API int QPointingDevice_Metacall(QPointingDevice* self, int param1, int param2, void** param3);
QTLIBC_API void QPointingDevice_OnMetacall(QPointingDevice* self, intptr_t slot);
QTLIBC_API int QPointingDevice_QBaseMetacall(QPointingDevice* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QPointingDevice_Tr(const char* s);
QTLIBC_API void QPointingDevice_SetType(QPointingDevice* self, int devType);
QTLIBC_API void QPointingDevice_SetCapabilities(QPointingDevice* self, int caps);
QTLIBC_API void QPointingDevice_SetMaximumTouchPoints(QPointingDevice* self, int c);
QTLIBC_API int QPointingDevice_PointerType(const QPointingDevice* self);
QTLIBC_API int QPointingDevice_MaximumPoints(const QPointingDevice* self);
QTLIBC_API int QPointingDevice_ButtonCount(const QPointingDevice* self);
QTLIBC_API QPointingDeviceUniqueId* QPointingDevice_UniqueId(const QPointingDevice* self);
QTLIBC_API QPointingDevice* QPointingDevice_PrimaryPointingDevice();
QTLIBC_API bool QPointingDevice_OperatorEqual(const QPointingDevice* self, QPointingDevice* other);
QTLIBC_API void QPointingDevice_GrabChanged(const QPointingDevice* self, QObject* grabber, int transition, QPointerEvent* event, QEventPoint* point);
void QPointingDevice_Connect_GrabChanged(QPointingDevice* self, intptr_t slot);
QTLIBC_API libqt_string QPointingDevice_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QPointingDevice_Tr3(const char* s, const char* c, int n);
QTLIBC_API QPointingDevice* QPointingDevice_PrimaryPointingDevice1(libqt_string seatName);
QTLIBC_API bool QPointingDevice_Event(QPointingDevice* self, QEvent* event);
QTLIBC_API void QPointingDevice_OnEvent(QPointingDevice* self, intptr_t slot);
QTLIBC_API bool QPointingDevice_QBaseEvent(QPointingDevice* self, QEvent* event);
QTLIBC_API bool QPointingDevice_EventFilter(QPointingDevice* self, QObject* watched, QEvent* event);
QTLIBC_API void QPointingDevice_OnEventFilter(QPointingDevice* self, intptr_t slot);
QTLIBC_API bool QPointingDevice_QBaseEventFilter(QPointingDevice* self, QObject* watched, QEvent* event);
QTLIBC_API void QPointingDevice_TimerEvent(QPointingDevice* self, QTimerEvent* event);
QTLIBC_API void QPointingDevice_OnTimerEvent(QPointingDevice* self, intptr_t slot);
QTLIBC_API void QPointingDevice_QBaseTimerEvent(QPointingDevice* self, QTimerEvent* event);
QTLIBC_API void QPointingDevice_ChildEvent(QPointingDevice* self, QChildEvent* event);
QTLIBC_API void QPointingDevice_OnChildEvent(QPointingDevice* self, intptr_t slot);
QTLIBC_API void QPointingDevice_QBaseChildEvent(QPointingDevice* self, QChildEvent* event);
QTLIBC_API void QPointingDevice_CustomEvent(QPointingDevice* self, QEvent* event);
QTLIBC_API void QPointingDevice_OnCustomEvent(QPointingDevice* self, intptr_t slot);
QTLIBC_API void QPointingDevice_QBaseCustomEvent(QPointingDevice* self, QEvent* event);
QTLIBC_API void QPointingDevice_ConnectNotify(QPointingDevice* self, QMetaMethod* signal);
QTLIBC_API void QPointingDevice_OnConnectNotify(QPointingDevice* self, intptr_t slot);
QTLIBC_API void QPointingDevice_QBaseConnectNotify(QPointingDevice* self, QMetaMethod* signal);
QTLIBC_API void QPointingDevice_DisconnectNotify(QPointingDevice* self, QMetaMethod* signal);
QTLIBC_API void QPointingDevice_OnDisconnectNotify(QPointingDevice* self, intptr_t slot);
QTLIBC_API void QPointingDevice_QBaseDisconnectNotify(QPointingDevice* self, QMetaMethod* signal);
QTLIBC_API QObject* QPointingDevice_Sender(const QPointingDevice* self);
QTLIBC_API void QPointingDevice_OnSender(const QPointingDevice* self, intptr_t slot);
QTLIBC_API QObject* QPointingDevice_QBaseSender(const QPointingDevice* self);
QTLIBC_API int QPointingDevice_SenderSignalIndex(const QPointingDevice* self);
QTLIBC_API void QPointingDevice_OnSenderSignalIndex(const QPointingDevice* self, intptr_t slot);
QTLIBC_API int QPointingDevice_QBaseSenderSignalIndex(const QPointingDevice* self);
QTLIBC_API int QPointingDevice_Receivers(const QPointingDevice* self, const char* signal);
QTLIBC_API void QPointingDevice_OnReceivers(const QPointingDevice* self, intptr_t slot);
QTLIBC_API int QPointingDevice_QBaseReceivers(const QPointingDevice* self, const char* signal);
QTLIBC_API bool QPointingDevice_IsSignalConnected(const QPointingDevice* self, QMetaMethod* signal);
QTLIBC_API void QPointingDevice_OnIsSignalConnected(const QPointingDevice* self, intptr_t slot);
QTLIBC_API bool QPointingDevice_QBaseIsSignalConnected(const QPointingDevice* self, QMetaMethod* signal);
QTLIBC_API void QPointingDevice_Delete(QPointingDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
