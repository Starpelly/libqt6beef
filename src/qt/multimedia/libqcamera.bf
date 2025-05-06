using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCamera__Error
{
	NoError = 0,
	CameraError = 1,
}
[AllowDuplicates]
public enum QCamera__FocusMode
{
	FocusModeAuto = 0,
	FocusModeAutoNear = 1,
	FocusModeAutoFar = 2,
	FocusModeHyperfocal = 3,
	FocusModeInfinity = 4,
	FocusModeManual = 5,
}
[AllowDuplicates]
public enum QCamera__FlashMode
{
	FlashOff = 0,
	FlashOn = 1,
	FlashAuto = 2,
}
[AllowDuplicates]
public enum QCamera__TorchMode
{
	TorchOff = 0,
	TorchOn = 1,
	TorchAuto = 2,
}
[AllowDuplicates]
public enum QCamera__ExposureMode
{
	ExposureAuto = 0,
	ExposureManual = 1,
	ExposurePortrait = 2,
	ExposureNight = 3,
	ExposureSports = 4,
	ExposureSnow = 5,
	ExposureBeach = 6,
	ExposureAction = 7,
	ExposureLandscape = 8,
	ExposureNightPortrait = 9,
	ExposureTheatre = 10,
	ExposureSunset = 11,
	ExposureSteadyPhoto = 12,
	ExposureFireworks = 13,
	ExposureParty = 14,
	ExposureCandlelight = 15,
	ExposureBarcode = 16,
}
[AllowDuplicates]
public enum QCamera__WhiteBalanceMode
{
	WhiteBalanceAuto = 0,
	WhiteBalanceManual = 1,
	WhiteBalanceSunlight = 2,
	WhiteBalanceCloudy = 3,
	WhiteBalanceShade = 4,
	WhiteBalanceTungsten = 5,
	WhiteBalanceFluorescent = 6,
	WhiteBalanceFlash = 7,
	WhiteBalanceSunset = 8,
}
[AllowDuplicates]
public enum QCamera__Feature
{
	ColorTemperature = 1,
	ExposureCompensation = 2,
	IsoSensitivity = 4,
	ManualExposureTime = 8,
	CustomFocusPoint = 16,
	FocusDistance = 32,
}
public struct QCamera : QObject
{
	[LinkName("QCamera_new")]
	public static extern QCamera* QCamera_new();
	[LinkName("QCamera_new2")]
	public static extern QCamera* QCamera_new2(QCameraDevice* cameraDevice);
	[LinkName("QCamera_new3")]
	public static extern QCamera* QCamera_new3(int64 position);
	[LinkName("QCamera_new4")]
	public static extern QCamera* QCamera_new4(QObject* parent);
	[LinkName("QCamera_new5")]
	public static extern QCamera* QCamera_new5(QCameraDevice* cameraDevice, QObject* parent);
	[LinkName("QCamera_new6")]
	public static extern QCamera* QCamera_new6(int64 position, QObject* parent);
	[LinkName("QCamera_MetaObject")]
	public static extern QMetaObject* QCamera_MetaObject(Self* c_this);
	[LinkName("QCamera_Metacast")]
	public static extern void* QCamera_Metacast(Self* c_this, char8[] param1);
	[LinkName("QCamera_Metacall")]
	public static extern int32 QCamera_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QCamera_Tr")]
	public static extern libqt_string QCamera_Tr(char8[] s);
	[LinkName("QCamera_IsAvailable")]
	public static extern bool QCamera_IsAvailable(Self* c_this);
	[LinkName("QCamera_IsActive")]
	public static extern bool QCamera_IsActive(Self* c_this);
	[LinkName("QCamera_CaptureSession")]
	public static extern QMediaCaptureSession* QCamera_CaptureSession(Self* c_this);
	[LinkName("QCamera_CameraDevice")]
	public static extern QCameraDevice QCamera_CameraDevice(Self* c_this);
	[LinkName("QCamera_SetCameraDevice")]
	public static extern void QCamera_SetCameraDevice(Self* c_this, QCameraDevice* cameraDevice);
	[LinkName("QCamera_CameraFormat")]
	public static extern QCameraFormat QCamera_CameraFormat(Self* c_this);
	[LinkName("QCamera_SetCameraFormat")]
	public static extern void QCamera_SetCameraFormat(Self* c_this, QCameraFormat* format);
	[LinkName("QCamera_Error")]
	public static extern int64 QCamera_Error(Self* c_this);
	[LinkName("QCamera_ErrorString")]
	public static extern libqt_string QCamera_ErrorString(Self* c_this);
	[LinkName("QCamera_SupportedFeatures")]
	public static extern int64 QCamera_SupportedFeatures(Self* c_this);
	[LinkName("QCamera_FocusMode")]
	public static extern int64 QCamera_FocusMode(Self* c_this);
	[LinkName("QCamera_SetFocusMode")]
	public static extern void QCamera_SetFocusMode(Self* c_this, int64 mode);
	[LinkName("QCamera_IsFocusModeSupported")]
	public static extern bool QCamera_IsFocusModeSupported(Self* c_this, int64 mode);
	[LinkName("QCamera_FocusPoint")]
	public static extern QPointF QCamera_FocusPoint(Self* c_this);
	[LinkName("QCamera_CustomFocusPoint")]
	public static extern QPointF QCamera_CustomFocusPoint(Self* c_this);
	[LinkName("QCamera_SetCustomFocusPoint")]
	public static extern void QCamera_SetCustomFocusPoint(Self* c_this, QPointF* point);
	[LinkName("QCamera_SetFocusDistance")]
	public static extern void QCamera_SetFocusDistance(Self* c_this, float d);
	[LinkName("QCamera_FocusDistance")]
	public static extern float QCamera_FocusDistance(Self* c_this);
	[LinkName("QCamera_MinimumZoomFactor")]
	public static extern float QCamera_MinimumZoomFactor(Self* c_this);
	[LinkName("QCamera_MaximumZoomFactor")]
	public static extern float QCamera_MaximumZoomFactor(Self* c_this);
	[LinkName("QCamera_ZoomFactor")]
	public static extern float QCamera_ZoomFactor(Self* c_this);
	[LinkName("QCamera_SetZoomFactor")]
	public static extern void QCamera_SetZoomFactor(Self* c_this, float factor);
	[LinkName("QCamera_FlashMode")]
	public static extern int64 QCamera_FlashMode(Self* c_this);
	[LinkName("QCamera_IsFlashModeSupported")]
	public static extern bool QCamera_IsFlashModeSupported(Self* c_this, int64 mode);
	[LinkName("QCamera_IsFlashReady")]
	public static extern bool QCamera_IsFlashReady(Self* c_this);
	[LinkName("QCamera_TorchMode")]
	public static extern int64 QCamera_TorchMode(Self* c_this);
	[LinkName("QCamera_IsTorchModeSupported")]
	public static extern bool QCamera_IsTorchModeSupported(Self* c_this, int64 mode);
	[LinkName("QCamera_ExposureMode")]
	public static extern int64 QCamera_ExposureMode(Self* c_this);
	[LinkName("QCamera_IsExposureModeSupported")]
	public static extern bool QCamera_IsExposureModeSupported(Self* c_this, int64 mode);
	[LinkName("QCamera_ExposureCompensation")]
	public static extern float QCamera_ExposureCompensation(Self* c_this);
	[LinkName("QCamera_IsoSensitivity")]
	public static extern int32 QCamera_IsoSensitivity(Self* c_this);
	[LinkName("QCamera_ManualIsoSensitivity")]
	public static extern int32 QCamera_ManualIsoSensitivity(Self* c_this);
	[LinkName("QCamera_ExposureTime")]
	public static extern float QCamera_ExposureTime(Self* c_this);
	[LinkName("QCamera_ManualExposureTime")]
	public static extern float QCamera_ManualExposureTime(Self* c_this);
	[LinkName("QCamera_MinimumIsoSensitivity")]
	public static extern int32 QCamera_MinimumIsoSensitivity(Self* c_this);
	[LinkName("QCamera_MaximumIsoSensitivity")]
	public static extern int32 QCamera_MaximumIsoSensitivity(Self* c_this);
	[LinkName("QCamera_MinimumExposureTime")]
	public static extern float QCamera_MinimumExposureTime(Self* c_this);
	[LinkName("QCamera_MaximumExposureTime")]
	public static extern float QCamera_MaximumExposureTime(Self* c_this);
	[LinkName("QCamera_WhiteBalanceMode")]
	public static extern int64 QCamera_WhiteBalanceMode(Self* c_this);
	[LinkName("QCamera_IsWhiteBalanceModeSupported")]
	public static extern bool QCamera_IsWhiteBalanceModeSupported(Self* c_this, int64 mode);
	[LinkName("QCamera_ColorTemperature")]
	public static extern int32 QCamera_ColorTemperature(Self* c_this);
	[LinkName("QCamera_SetActive")]
	public static extern void QCamera_SetActive(Self* c_this, bool active);
	[LinkName("QCamera_Start")]
	public static extern void QCamera_Start(Self* c_this);
	[LinkName("QCamera_Stop")]
	public static extern void QCamera_Stop(Self* c_this);
	[LinkName("QCamera_ZoomTo")]
	public static extern void QCamera_ZoomTo(Self* c_this, float zoom, float rate);
	[LinkName("QCamera_SetFlashMode")]
	public static extern void QCamera_SetFlashMode(Self* c_this, int64 mode);
	[LinkName("QCamera_SetTorchMode")]
	public static extern void QCamera_SetTorchMode(Self* c_this, int64 mode);
	[LinkName("QCamera_SetExposureMode")]
	public static extern void QCamera_SetExposureMode(Self* c_this, int64 mode);
	[LinkName("QCamera_SetExposureCompensation")]
	public static extern void QCamera_SetExposureCompensation(Self* c_this, float ev);
	[LinkName("QCamera_SetManualIsoSensitivity")]
	public static extern void QCamera_SetManualIsoSensitivity(Self* c_this, int32 iso);
	[LinkName("QCamera_SetAutoIsoSensitivity")]
	public static extern void QCamera_SetAutoIsoSensitivity(Self* c_this);
	[LinkName("QCamera_SetManualExposureTime")]
	public static extern void QCamera_SetManualExposureTime(Self* c_this, float seconds);
	[LinkName("QCamera_SetAutoExposureTime")]
	public static extern void QCamera_SetAutoExposureTime(Self* c_this);
	[LinkName("QCamera_SetWhiteBalanceMode")]
	public static extern void QCamera_SetWhiteBalanceMode(Self* c_this, int64 mode);
	[LinkName("QCamera_SetColorTemperature")]
	public static extern void QCamera_SetColorTemperature(Self* c_this, int32 colorTemperature);
	[LinkName("QCamera_Connect_ActiveChanged")]
	public static extern void QCamera_Connect_ActiveChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ErrorChanged")]
	public static extern void QCamera_Connect_ErrorChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ErrorOccurred")]
	public static extern void QCamera_Connect_ErrorOccurred(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_CameraDeviceChanged")]
	public static extern void QCamera_Connect_CameraDeviceChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_CameraFormatChanged")]
	public static extern void QCamera_Connect_CameraFormatChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_SupportedFeaturesChanged")]
	public static extern void QCamera_Connect_SupportedFeaturesChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FocusModeChanged")]
	public static extern void QCamera_Connect_FocusModeChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ZoomFactorChanged")]
	public static extern void QCamera_Connect_ZoomFactorChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_MinimumZoomFactorChanged")]
	public static extern void QCamera_Connect_MinimumZoomFactorChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_MaximumZoomFactorChanged")]
	public static extern void QCamera_Connect_MaximumZoomFactorChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FocusDistanceChanged")]
	public static extern void QCamera_Connect_FocusDistanceChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FocusPointChanged")]
	public static extern void QCamera_Connect_FocusPointChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_CustomFocusPointChanged")]
	public static extern void QCamera_Connect_CustomFocusPointChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FlashReady")]
	public static extern void QCamera_Connect_FlashReady(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FlashModeChanged")]
	public static extern void QCamera_Connect_FlashModeChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_TorchModeChanged")]
	public static extern void QCamera_Connect_TorchModeChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ExposureTimeChanged")]
	public static extern void QCamera_Connect_ExposureTimeChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ManualExposureTimeChanged")]
	public static extern void QCamera_Connect_ManualExposureTimeChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_IsoSensitivityChanged")]
	public static extern void QCamera_Connect_IsoSensitivityChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ManualIsoSensitivityChanged")]
	public static extern void QCamera_Connect_ManualIsoSensitivityChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ExposureCompensationChanged")]
	public static extern void QCamera_Connect_ExposureCompensationChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ExposureModeChanged")]
	public static extern void QCamera_Connect_ExposureModeChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_WhiteBalanceModeChanged")]
	public static extern void QCamera_Connect_WhiteBalanceModeChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ColorTemperatureChanged")]
	public static extern void QCamera_Connect_ColorTemperatureChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_BrightnessChanged")]
	public static extern void QCamera_Connect_BrightnessChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ContrastChanged")]
	public static extern void QCamera_Connect_ContrastChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_SaturationChanged")]
	public static extern void QCamera_Connect_SaturationChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_HueChanged")]
	public static extern void QCamera_Connect_HueChanged(Self* c_this, c_intptr slot);
	[LinkName("QCamera_Tr2")]
	public static extern libqt_string QCamera_Tr2(char8[] s, char8[] c);
	[LinkName("QCamera_Tr3")]
	public static extern libqt_string QCamera_Tr3(char8[] s, char8[] c, int32 n);
}