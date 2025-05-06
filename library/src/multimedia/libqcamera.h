#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERA_H
#define SRC_MULTIMEDIAC_LIBQCAMERA_H

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
typedef struct QCamera QCamera;
typedef struct QCameraDevice QCameraDevice;
typedef struct QCameraFormat QCameraFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPointF QPointF;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QCamera::Error Error;                       // C++ enum
typedef QCamera::ExposureMode ExposureMode;         // C++ enum
typedef QCamera::Feature Feature;                   // C++ enum
typedef QCamera::Features Features;                 // C++ QFlags
typedef QCamera::FlashMode FlashMode;               // C++ enum
typedef QCamera::FocusMode FocusMode;               // C++ enum
typedef QCamera::TorchMode TorchMode;               // C++ enum
typedef QCamera::WhiteBalanceMode WhiteBalanceMode; // C++ enum
#else
typedef int Error;            // C ABI enum
typedef int ExposureMode;     // C ABI enum
typedef int Feature;          // C ABI enum
typedef int Features;         // C ABI QFlags
typedef int FlashMode;        // C ABI enum
typedef int FocusMode;        // C ABI enum
typedef int TorchMode;        // C ABI enum
typedef int WhiteBalanceMode; // C ABI enum
#endif

QTLIBC_API QCamera* QCamera_new();
QTLIBC_API QCamera* QCamera_new2(QCameraDevice* cameraDevice);
QTLIBC_API QCamera* QCamera_new3(int position);
QTLIBC_API QCamera* QCamera_new4(QObject* parent);
QTLIBC_API QCamera* QCamera_new5(QCameraDevice* cameraDevice, QObject* parent);
QTLIBC_API QCamera* QCamera_new6(int position, QObject* parent);
QTLIBC_API QMetaObject* QCamera_MetaObject(const QCamera* self);
QTLIBC_API void* QCamera_Metacast(QCamera* self, const char* param1);
QTLIBC_API int QCamera_Metacall(QCamera* self, int param1, int param2, void** param3);
QTLIBC_API void QCamera_OnMetacall(QCamera* self, intptr_t slot);
QTLIBC_API int QCamera_QBaseMetacall(QCamera* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QCamera_Tr(const char* s);
QTLIBC_API bool QCamera_IsAvailable(const QCamera* self);
QTLIBC_API bool QCamera_IsActive(const QCamera* self);
QTLIBC_API QMediaCaptureSession* QCamera_CaptureSession(const QCamera* self);
QTLIBC_API QCameraDevice* QCamera_CameraDevice(const QCamera* self);
QTLIBC_API void QCamera_SetCameraDevice(QCamera* self, QCameraDevice* cameraDevice);
QTLIBC_API QCameraFormat* QCamera_CameraFormat(const QCamera* self);
QTLIBC_API void QCamera_SetCameraFormat(QCamera* self, QCameraFormat* format);
QTLIBC_API int QCamera_Error(const QCamera* self);
QTLIBC_API libqt_string QCamera_ErrorString(const QCamera* self);
QTLIBC_API int QCamera_SupportedFeatures(const QCamera* self);
QTLIBC_API int QCamera_FocusMode(const QCamera* self);
QTLIBC_API void QCamera_SetFocusMode(QCamera* self, int mode);
QTLIBC_API bool QCamera_IsFocusModeSupported(const QCamera* self, int mode);
QTLIBC_API QPointF* QCamera_FocusPoint(const QCamera* self);
QTLIBC_API QPointF* QCamera_CustomFocusPoint(const QCamera* self);
QTLIBC_API void QCamera_SetCustomFocusPoint(QCamera* self, QPointF* point);
QTLIBC_API void QCamera_SetFocusDistance(QCamera* self, float d);
QTLIBC_API float QCamera_FocusDistance(const QCamera* self);
QTLIBC_API float QCamera_MinimumZoomFactor(const QCamera* self);
QTLIBC_API float QCamera_MaximumZoomFactor(const QCamera* self);
QTLIBC_API float QCamera_ZoomFactor(const QCamera* self);
QTLIBC_API void QCamera_SetZoomFactor(QCamera* self, float factor);
QTLIBC_API int QCamera_FlashMode(const QCamera* self);
QTLIBC_API bool QCamera_IsFlashModeSupported(const QCamera* self, int mode);
QTLIBC_API bool QCamera_IsFlashReady(const QCamera* self);
QTLIBC_API int QCamera_TorchMode(const QCamera* self);
QTLIBC_API bool QCamera_IsTorchModeSupported(const QCamera* self, int mode);
QTLIBC_API int QCamera_ExposureMode(const QCamera* self);
QTLIBC_API bool QCamera_IsExposureModeSupported(const QCamera* self, int mode);
QTLIBC_API float QCamera_ExposureCompensation(const QCamera* self);
QTLIBC_API int QCamera_IsoSensitivity(const QCamera* self);
QTLIBC_API int QCamera_ManualIsoSensitivity(const QCamera* self);
QTLIBC_API float QCamera_ExposureTime(const QCamera* self);
QTLIBC_API float QCamera_ManualExposureTime(const QCamera* self);
QTLIBC_API int QCamera_MinimumIsoSensitivity(const QCamera* self);
QTLIBC_API int QCamera_MaximumIsoSensitivity(const QCamera* self);
QTLIBC_API float QCamera_MinimumExposureTime(const QCamera* self);
QTLIBC_API float QCamera_MaximumExposureTime(const QCamera* self);
QTLIBC_API int QCamera_WhiteBalanceMode(const QCamera* self);
QTLIBC_API bool QCamera_IsWhiteBalanceModeSupported(const QCamera* self, int mode);
QTLIBC_API int QCamera_ColorTemperature(const QCamera* self);
QTLIBC_API void QCamera_SetActive(QCamera* self, bool active);
QTLIBC_API void QCamera_Start(QCamera* self);
QTLIBC_API void QCamera_Stop(QCamera* self);
QTLIBC_API void QCamera_ZoomTo(QCamera* self, float zoom, float rate);
QTLIBC_API void QCamera_SetFlashMode(QCamera* self, int mode);
QTLIBC_API void QCamera_SetTorchMode(QCamera* self, int mode);
QTLIBC_API void QCamera_SetExposureMode(QCamera* self, int mode);
QTLIBC_API void QCamera_SetExposureCompensation(QCamera* self, float ev);
QTLIBC_API void QCamera_SetManualIsoSensitivity(QCamera* self, int iso);
QTLIBC_API void QCamera_SetAutoIsoSensitivity(QCamera* self);
QTLIBC_API void QCamera_SetManualExposureTime(QCamera* self, float seconds);
QTLIBC_API void QCamera_SetAutoExposureTime(QCamera* self);
QTLIBC_API void QCamera_SetWhiteBalanceMode(QCamera* self, int mode);
QTLIBC_API void QCamera_SetColorTemperature(QCamera* self, int colorTemperature);
QTLIBC_API void QCamera_ActiveChanged(QCamera* self, bool param1);
void QCamera_Connect_ActiveChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ErrorChanged(QCamera* self);
void QCamera_Connect_ErrorChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ErrorOccurred(QCamera* self, int errorVal, libqt_string errorString);
void QCamera_Connect_ErrorOccurred(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_CameraDeviceChanged(QCamera* self);
void QCamera_Connect_CameraDeviceChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_CameraFormatChanged(QCamera* self);
void QCamera_Connect_CameraFormatChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_SupportedFeaturesChanged(QCamera* self);
void QCamera_Connect_SupportedFeaturesChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_FocusModeChanged(QCamera* self);
void QCamera_Connect_FocusModeChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ZoomFactorChanged(QCamera* self, float param1);
void QCamera_Connect_ZoomFactorChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_MinimumZoomFactorChanged(QCamera* self, float param1);
void QCamera_Connect_MinimumZoomFactorChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_MaximumZoomFactorChanged(QCamera* self, float param1);
void QCamera_Connect_MaximumZoomFactorChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_FocusDistanceChanged(QCamera* self, float param1);
void QCamera_Connect_FocusDistanceChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_FocusPointChanged(QCamera* self);
void QCamera_Connect_FocusPointChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_CustomFocusPointChanged(QCamera* self);
void QCamera_Connect_CustomFocusPointChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_FlashReady(QCamera* self, bool param1);
void QCamera_Connect_FlashReady(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_FlashModeChanged(QCamera* self);
void QCamera_Connect_FlashModeChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_TorchModeChanged(QCamera* self);
void QCamera_Connect_TorchModeChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ExposureTimeChanged(QCamera* self, float speed);
void QCamera_Connect_ExposureTimeChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ManualExposureTimeChanged(QCamera* self, float speed);
void QCamera_Connect_ManualExposureTimeChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_IsoSensitivityChanged(QCamera* self, int param1);
void QCamera_Connect_IsoSensitivityChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ManualIsoSensitivityChanged(QCamera* self, int param1);
void QCamera_Connect_ManualIsoSensitivityChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ExposureCompensationChanged(QCamera* self, float param1);
void QCamera_Connect_ExposureCompensationChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ExposureModeChanged(QCamera* self);
void QCamera_Connect_ExposureModeChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_WhiteBalanceModeChanged(const QCamera* self);
void QCamera_Connect_WhiteBalanceModeChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ColorTemperatureChanged(const QCamera* self);
void QCamera_Connect_ColorTemperatureChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_BrightnessChanged(QCamera* self);
void QCamera_Connect_BrightnessChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_ContrastChanged(QCamera* self);
void QCamera_Connect_ContrastChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_SaturationChanged(QCamera* self);
void QCamera_Connect_SaturationChanged(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_HueChanged(QCamera* self);
void QCamera_Connect_HueChanged(QCamera* self, intptr_t slot);
QTLIBC_API libqt_string QCamera_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QCamera_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QCamera_Event(QCamera* self, QEvent* event);
QTLIBC_API void QCamera_OnEvent(QCamera* self, intptr_t slot);
QTLIBC_API bool QCamera_QBaseEvent(QCamera* self, QEvent* event);
QTLIBC_API bool QCamera_EventFilter(QCamera* self, QObject* watched, QEvent* event);
QTLIBC_API void QCamera_OnEventFilter(QCamera* self, intptr_t slot);
QTLIBC_API bool QCamera_QBaseEventFilter(QCamera* self, QObject* watched, QEvent* event);
QTLIBC_API void QCamera_TimerEvent(QCamera* self, QTimerEvent* event);
QTLIBC_API void QCamera_OnTimerEvent(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_QBaseTimerEvent(QCamera* self, QTimerEvent* event);
QTLIBC_API void QCamera_ChildEvent(QCamera* self, QChildEvent* event);
QTLIBC_API void QCamera_OnChildEvent(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_QBaseChildEvent(QCamera* self, QChildEvent* event);
QTLIBC_API void QCamera_CustomEvent(QCamera* self, QEvent* event);
QTLIBC_API void QCamera_OnCustomEvent(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_QBaseCustomEvent(QCamera* self, QEvent* event);
QTLIBC_API void QCamera_ConnectNotify(QCamera* self, QMetaMethod* signal);
QTLIBC_API void QCamera_OnConnectNotify(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_QBaseConnectNotify(QCamera* self, QMetaMethod* signal);
QTLIBC_API void QCamera_DisconnectNotify(QCamera* self, QMetaMethod* signal);
QTLIBC_API void QCamera_OnDisconnectNotify(QCamera* self, intptr_t slot);
QTLIBC_API void QCamera_QBaseDisconnectNotify(QCamera* self, QMetaMethod* signal);
QTLIBC_API QObject* QCamera_Sender(const QCamera* self);
QTLIBC_API void QCamera_OnSender(const QCamera* self, intptr_t slot);
QTLIBC_API QObject* QCamera_QBaseSender(const QCamera* self);
QTLIBC_API int QCamera_SenderSignalIndex(const QCamera* self);
QTLIBC_API void QCamera_OnSenderSignalIndex(const QCamera* self, intptr_t slot);
QTLIBC_API int QCamera_QBaseSenderSignalIndex(const QCamera* self);
QTLIBC_API int QCamera_Receivers(const QCamera* self, const char* signal);
QTLIBC_API void QCamera_OnReceivers(const QCamera* self, intptr_t slot);
QTLIBC_API int QCamera_QBaseReceivers(const QCamera* self, const char* signal);
QTLIBC_API bool QCamera_IsSignalConnected(const QCamera* self, QMetaMethod* signal);
QTLIBC_API void QCamera_OnIsSignalConnected(const QCamera* self, intptr_t slot);
QTLIBC_API bool QCamera_QBaseIsSignalConnected(const QCamera* self, QMetaMethod* signal);
QTLIBC_API void QCamera_Delete(QCamera* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
