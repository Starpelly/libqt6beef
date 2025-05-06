#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERA_H
#define SRC_MULTIMEDIAC_LIBQCAMERA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCamera__FrameRateRange)
typedef QCamera::FrameRateRange QCamera__FrameRateRange;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
typedef struct QCamera QCamera;
typedef struct QCameraExposure QCameraExposure;
typedef struct QCameraFocus QCameraFocus;
typedef struct QCameraImageProcessing QCameraImageProcessing;
typedef struct QCameraInfo QCameraInfo;
typedef struct QCameraViewfinderSettings QCameraViewfinderSettings;
typedef struct QCamera__FrameRateRange QCamera__FrameRateRange;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGraphicsVideoItem QGraphicsVideoItem;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoWidget QVideoWidget;
#endif

#ifdef __cplusplus
typedef QCamera::CaptureMode CaptureMode;           // C++ enum
typedef QCamera::CaptureModes CaptureModes;         // C++ QFlags
typedef QCamera::Error Error;                       // C++ enum
typedef QCamera::LockChangeReason LockChangeReason; // C++ enum
typedef QCamera::LockStatus LockStatus;             // C++ enum
typedef QCamera::LockType LockType;                 // C++ enum
typedef QCamera::LockTypes LockTypes;               // C++ QFlags
typedef QCamera::Position Position;                 // C++ enum
typedef QCamera::State State;                       // C++ enum
typedef QCamera::Status Status;                     // C++ enum
#else
typedef int CaptureMode;      // C ABI enum
typedef int CaptureModes;     // C ABI QFlags
typedef int Error;            // C ABI enum
typedef int LockChangeReason; // C ABI enum
typedef int LockStatus;       // C ABI enum
typedef int LockType;         // C ABI enum
typedef int LockTypes;        // C ABI QFlags
typedef int Position;         // C ABI enum
typedef int State;            // C ABI enum
typedef int Status;           // C ABI enum
#endif

QCamera* QCamera_new();
QCamera* QCamera_new2(libqt_string deviceName);
QCamera* QCamera_new3(QCameraInfo* cameraInfo);
QCamera* QCamera_new4(int position);
QCamera* QCamera_new5(QObject* parent);
QCamera* QCamera_new6(libqt_string deviceName, QObject* parent);
QCamera* QCamera_new7(QCameraInfo* cameraInfo, QObject* parent);
QCamera* QCamera_new8(int position, QObject* parent);
QMetaObject* QCamera_MetaObject(const QCamera* self);
void* QCamera_Metacast(QCamera* self, const char* param1);
int QCamera_Metacall(QCamera* self, int param1, int param2, void** param3);
void QCamera_OnMetacall(QCamera* self, intptr_t slot);
int QCamera_QBaseMetacall(QCamera* self, int param1, int param2, void** param3);
libqt_string QCamera_Tr(const char* s);
libqt_string QCamera_TrUtf8(const char* s);
libqt_list /* of libqt_string */ QCamera_AvailableDevices();
libqt_string QCamera_DeviceDescription(libqt_string device);
int QCamera_Availability(const QCamera* self);
void QCamera_OnAvailability(const QCamera* self, intptr_t slot);
int QCamera_QBaseAvailability(const QCamera* self);
int QCamera_State(const QCamera* self);
int QCamera_Status(const QCamera* self);
int QCamera_CaptureMode(const QCamera* self);
bool QCamera_IsCaptureModeSupported(const QCamera* self, int mode);
QCameraExposure* QCamera_Exposure(const QCamera* self);
QCameraFocus* QCamera_Focus(const QCamera* self);
QCameraImageProcessing* QCamera_ImageProcessing(const QCamera* self);
void QCamera_SetViewfinder(QCamera* self, QVideoWidget* viewfinder);
void QCamera_SetViewfinderWithViewfinder(QCamera* self, QGraphicsVideoItem* viewfinder);
void QCamera_SetViewfinderWithSurface(QCamera* self, QAbstractVideoSurface* surface);
QCameraViewfinderSettings* QCamera_ViewfinderSettings(const QCamera* self);
void QCamera_SetViewfinderSettings(QCamera* self, QCameraViewfinderSettings* settings);
libqt_list /* of QCameraViewfinderSettings* */ QCamera_SupportedViewfinderSettings(const QCamera* self);
libqt_list /* of QSize* */ QCamera_SupportedViewfinderResolutions(const QCamera* self);
libqt_list /* of QCamera__FrameRateRange* */ QCamera_SupportedViewfinderFrameRateRanges(const QCamera* self);
libqt_list /* of int */ QCamera_SupportedViewfinderPixelFormats(const QCamera* self);
int QCamera_Error(const QCamera* self);
libqt_string QCamera_ErrorString(const QCamera* self);
int QCamera_SupportedLocks(const QCamera* self);
int QCamera_RequestedLocks(const QCamera* self);
int QCamera_LockStatus(const QCamera* self);
int QCamera_LockStatusWithLock(const QCamera* self, int lock);
void QCamera_SetCaptureMode(QCamera* self, int mode);
void QCamera_Load(QCamera* self);
void QCamera_Unload(QCamera* self);
void QCamera_Start(QCamera* self);
void QCamera_Stop(QCamera* self);
void QCamera_SearchAndLock(QCamera* self);
void QCamera_Unlock(QCamera* self);
void QCamera_SearchAndLockWithLocks(QCamera* self, int locks);
void QCamera_UnlockWithLocks(QCamera* self, int locks);
void QCamera_StateChanged(QCamera* self, int state);
void QCamera_Connect_StateChanged(QCamera* self, intptr_t slot);
void QCamera_CaptureModeChanged(QCamera* self, int param1);
void QCamera_Connect_CaptureModeChanged(QCamera* self, intptr_t slot);
void QCamera_StatusChanged(QCamera* self, int status);
void QCamera_Connect_StatusChanged(QCamera* self, intptr_t slot);
void QCamera_Locked(QCamera* self);
void QCamera_Connect_Locked(QCamera* self, intptr_t slot);
void QCamera_LockFailed(QCamera* self);
void QCamera_Connect_LockFailed(QCamera* self, intptr_t slot);
void QCamera_LockStatusChanged(QCamera* self, int status, int reason);
void QCamera_Connect_LockStatusChanged(QCamera* self, intptr_t slot);
void QCamera_LockStatusChanged2(QCamera* self, int lock, int status, int reason);
void QCamera_Connect_LockStatusChanged2(QCamera* self, intptr_t slot);
void QCamera_ErrorWithQCameraError(QCamera* self, int param1);
void QCamera_Connect_ErrorWithQCameraError(QCamera* self, intptr_t slot);
void QCamera_ErrorOccurred(QCamera* self, int param1);
void QCamera_Connect_ErrorOccurred(QCamera* self, intptr_t slot);
libqt_string QCamera_Tr2(const char* s, const char* c);
libqt_string QCamera_Tr3(const char* s, const char* c, int n);
libqt_string QCamera_TrUtf82(const char* s, const char* c);
libqt_string QCamera_TrUtf83(const char* s, const char* c, int n);
libqt_list /* of QCameraViewfinderSettings* */ QCamera_SupportedViewfinderSettings1(const QCamera* self, QCameraViewfinderSettings* settings);
libqt_list /* of QSize* */ QCamera_SupportedViewfinderResolutions1(const QCamera* self, QCameraViewfinderSettings* settings);
libqt_list /* of QCamera__FrameRateRange* */ QCamera_SupportedViewfinderFrameRateRanges1(const QCamera* self, QCameraViewfinderSettings* settings);
libqt_list /* of int */ QCamera_SupportedViewfinderPixelFormats1(const QCamera* self, QCameraViewfinderSettings* settings);
bool QCamera_IsAvailable(const QCamera* self);
void QCamera_OnIsAvailable(const QCamera* self, intptr_t slot);
bool QCamera_QBaseIsAvailable(const QCamera* self);
QMediaService* QCamera_Service(const QCamera* self);
void QCamera_OnService(const QCamera* self, intptr_t slot);
QMediaService* QCamera_QBaseService(const QCamera* self);
bool QCamera_Bind(QCamera* self, QObject* param1);
void QCamera_OnBind(QCamera* self, intptr_t slot);
bool QCamera_QBaseBind(QCamera* self, QObject* param1);
void QCamera_Unbind(QCamera* self, QObject* param1);
void QCamera_OnUnbind(QCamera* self, intptr_t slot);
void QCamera_QBaseUnbind(QCamera* self, QObject* param1);
bool QCamera_Event(QCamera* self, QEvent* event);
void QCamera_OnEvent(QCamera* self, intptr_t slot);
bool QCamera_QBaseEvent(QCamera* self, QEvent* event);
bool QCamera_EventFilter(QCamera* self, QObject* watched, QEvent* event);
void QCamera_OnEventFilter(QCamera* self, intptr_t slot);
bool QCamera_QBaseEventFilter(QCamera* self, QObject* watched, QEvent* event);
void QCamera_TimerEvent(QCamera* self, QTimerEvent* event);
void QCamera_OnTimerEvent(QCamera* self, intptr_t slot);
void QCamera_QBaseTimerEvent(QCamera* self, QTimerEvent* event);
void QCamera_ChildEvent(QCamera* self, QChildEvent* event);
void QCamera_OnChildEvent(QCamera* self, intptr_t slot);
void QCamera_QBaseChildEvent(QCamera* self, QChildEvent* event);
void QCamera_CustomEvent(QCamera* self, QEvent* event);
void QCamera_OnCustomEvent(QCamera* self, intptr_t slot);
void QCamera_QBaseCustomEvent(QCamera* self, QEvent* event);
void QCamera_ConnectNotify(QCamera* self, QMetaMethod* signal);
void QCamera_OnConnectNotify(QCamera* self, intptr_t slot);
void QCamera_QBaseConnectNotify(QCamera* self, QMetaMethod* signal);
void QCamera_DisconnectNotify(QCamera* self, QMetaMethod* signal);
void QCamera_OnDisconnectNotify(QCamera* self, intptr_t slot);
void QCamera_QBaseDisconnectNotify(QCamera* self, QMetaMethod* signal);
void QCamera_AddPropertyWatch(QCamera* self, libqt_string name);
void QCamera_OnAddPropertyWatch(QCamera* self, intptr_t slot);
void QCamera_QBaseAddPropertyWatch(QCamera* self, libqt_string name);
void QCamera_RemovePropertyWatch(QCamera* self, libqt_string name);
void QCamera_OnRemovePropertyWatch(QCamera* self, intptr_t slot);
void QCamera_QBaseRemovePropertyWatch(QCamera* self, libqt_string name);
QObject* QCamera_Sender(const QCamera* self);
void QCamera_OnSender(const QCamera* self, intptr_t slot);
QObject* QCamera_QBaseSender(const QCamera* self);
int QCamera_SenderSignalIndex(const QCamera* self);
void QCamera_OnSenderSignalIndex(const QCamera* self, intptr_t slot);
int QCamera_QBaseSenderSignalIndex(const QCamera* self);
int QCamera_Receivers(const QCamera* self, const char* signal);
void QCamera_OnReceivers(const QCamera* self, intptr_t slot);
int QCamera_QBaseReceivers(const QCamera* self, const char* signal);
bool QCamera_IsSignalConnected(const QCamera* self, QMetaMethod* signal);
void QCamera_OnIsSignalConnected(const QCamera* self, intptr_t slot);
bool QCamera_QBaseIsSignalConnected(const QCamera* self, QMetaMethod* signal);
void QCamera_Delete(QCamera* self);

QCamera__FrameRateRange* QCamera__FrameRateRange_new(QCamera__FrameRateRange* other);
QCamera__FrameRateRange* QCamera__FrameRateRange_new2(QCamera__FrameRateRange* other);
QCamera__FrameRateRange* QCamera__FrameRateRange_new3();
QCamera__FrameRateRange* QCamera__FrameRateRange_new4(double minimum, double maximum);
QCamera__FrameRateRange* QCamera__FrameRateRange_new5(QCamera__FrameRateRange* param1);
void QCamera__FrameRateRange_CopyAssign(QCamera__FrameRateRange* self, QCamera__FrameRateRange* other);
void QCamera__FrameRateRange_MoveAssign(QCamera__FrameRateRange* self, QCamera__FrameRateRange* other);
void QCamera__FrameRateRange_Delete(QCamera__FrameRateRange* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
