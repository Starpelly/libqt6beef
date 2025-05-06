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
public struct QCamera
{
	[LinkName("QCamera_new")]
	public static extern void* QCamera_new();
	[LinkName("QCamera_new2")]
	public static extern void* QCamera_new2(QCameraDevice cameraDevice);
	[LinkName("QCamera_new3")]
	public static extern void* QCamera_new3(int64 position);
	[LinkName("QCamera_new4")]
	public static extern void* QCamera_new4(QObject parent);
	[LinkName("QCamera_new5")]
	public static extern void* QCamera_new5(QCameraDevice cameraDevice, QObject parent);
	[LinkName("QCamera_new6")]
	public static extern void* QCamera_new6(int64 position, QObject parent);
	[LinkName("QCamera_MetaObject")]
	public static extern QMetaObject QCamera_MetaObject(void* c_this);
	[LinkName("QCamera_Metacast")]
	public static extern void QCamera_Metacast(void* c_this, char8[] param1);
	[LinkName("QCamera_Metacall")]
	public static extern int32 QCamera_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QCamera_Tr")]
	public static extern char8[] QCamera_Tr(char8[] s);
	[LinkName("QCamera_IsAvailable")]
	public static extern bool QCamera_IsAvailable(void* c_this);
	[LinkName("QCamera_IsActive")]
	public static extern bool QCamera_IsActive(void* c_this);
	[LinkName("QCamera_CaptureSession")]
	public static extern QMediaCaptureSession QCamera_CaptureSession(void* c_this);
	[LinkName("QCamera_CameraDevice")]
	public static extern QCameraDevice QCamera_CameraDevice(void* c_this);
	[LinkName("QCamera_SetCameraDevice")]
	public static extern void QCamera_SetCameraDevice(void* c_this, QCameraDevice cameraDevice);
	[LinkName("QCamera_CameraFormat")]
	public static extern QCameraFormat QCamera_CameraFormat(void* c_this);
	[LinkName("QCamera_SetCameraFormat")]
	public static extern void QCamera_SetCameraFormat(void* c_this, QCameraFormat format);
	[LinkName("QCamera_Error")]
	public static extern int64 QCamera_Error(void* c_this);
	[LinkName("QCamera_ErrorString")]
	public static extern char8[] QCamera_ErrorString(void* c_this);
	[LinkName("QCamera_SupportedFeatures")]
	public static extern int64 QCamera_SupportedFeatures(void* c_this);
	[LinkName("QCamera_FocusMode")]
	public static extern int64 QCamera_FocusMode(void* c_this);
	[LinkName("QCamera_SetFocusMode")]
	public static extern void QCamera_SetFocusMode(void* c_this, int64 mode);
	[LinkName("QCamera_IsFocusModeSupported")]
	public static extern bool QCamera_IsFocusModeSupported(void* c_this, int64 mode);
	[LinkName("QCamera_FocusPoint")]
	public static extern QPointF QCamera_FocusPoint(void* c_this);
	[LinkName("QCamera_CustomFocusPoint")]
	public static extern QPointF QCamera_CustomFocusPoint(void* c_this);
	[LinkName("QCamera_SetCustomFocusPoint")]
	public static extern void QCamera_SetCustomFocusPoint(void* c_this, QPointF point);
	[LinkName("QCamera_SetFocusDistance")]
	public static extern void QCamera_SetFocusDistance(void* c_this, float d);
	[LinkName("QCamera_FocusDistance")]
	public static extern float QCamera_FocusDistance(void* c_this);
	[LinkName("QCamera_MinimumZoomFactor")]
	public static extern float QCamera_MinimumZoomFactor(void* c_this);
	[LinkName("QCamera_MaximumZoomFactor")]
	public static extern float QCamera_MaximumZoomFactor(void* c_this);
	[LinkName("QCamera_ZoomFactor")]
	public static extern float QCamera_ZoomFactor(void* c_this);
	[LinkName("QCamera_SetZoomFactor")]
	public static extern void QCamera_SetZoomFactor(void* c_this, float factor);
	[LinkName("QCamera_FlashMode")]
	public static extern int64 QCamera_FlashMode(void* c_this);
	[LinkName("QCamera_IsFlashModeSupported")]
	public static extern bool QCamera_IsFlashModeSupported(void* c_this, int64 mode);
	[LinkName("QCamera_IsFlashReady")]
	public static extern bool QCamera_IsFlashReady(void* c_this);
	[LinkName("QCamera_TorchMode")]
	public static extern int64 QCamera_TorchMode(void* c_this);
	[LinkName("QCamera_IsTorchModeSupported")]
	public static extern bool QCamera_IsTorchModeSupported(void* c_this, int64 mode);
	[LinkName("QCamera_ExposureMode")]
	public static extern int64 QCamera_ExposureMode(void* c_this);
	[LinkName("QCamera_IsExposureModeSupported")]
	public static extern bool QCamera_IsExposureModeSupported(void* c_this, int64 mode);
	[LinkName("QCamera_ExposureCompensation")]
	public static extern float QCamera_ExposureCompensation(void* c_this);
	[LinkName("QCamera_IsoSensitivity")]
	public static extern int32 QCamera_IsoSensitivity(void* c_this);
	[LinkName("QCamera_ManualIsoSensitivity")]
	public static extern int32 QCamera_ManualIsoSensitivity(void* c_this);
	[LinkName("QCamera_ExposureTime")]
	public static extern float QCamera_ExposureTime(void* c_this);
	[LinkName("QCamera_ManualExposureTime")]
	public static extern float QCamera_ManualExposureTime(void* c_this);
	[LinkName("QCamera_MinimumIsoSensitivity")]
	public static extern int32 QCamera_MinimumIsoSensitivity(void* c_this);
	[LinkName("QCamera_MaximumIsoSensitivity")]
	public static extern int32 QCamera_MaximumIsoSensitivity(void* c_this);
	[LinkName("QCamera_MinimumExposureTime")]
	public static extern float QCamera_MinimumExposureTime(void* c_this);
	[LinkName("QCamera_MaximumExposureTime")]
	public static extern float QCamera_MaximumExposureTime(void* c_this);
	[LinkName("QCamera_WhiteBalanceMode")]
	public static extern int64 QCamera_WhiteBalanceMode(void* c_this);
	[LinkName("QCamera_IsWhiteBalanceModeSupported")]
	public static extern bool QCamera_IsWhiteBalanceModeSupported(void* c_this, int64 mode);
	[LinkName("QCamera_ColorTemperature")]
	public static extern int32 QCamera_ColorTemperature(void* c_this);
	[LinkName("QCamera_SetActive")]
	public static extern void QCamera_SetActive(void* c_this, bool active);
	[LinkName("QCamera_Start")]
	public static extern void QCamera_Start(void* c_this);
	[LinkName("QCamera_Stop")]
	public static extern void QCamera_Stop(void* c_this);
	[LinkName("QCamera_ZoomTo")]
	public static extern void QCamera_ZoomTo(void* c_this, float zoom, float rate);
	[LinkName("QCamera_SetFlashMode")]
	public static extern void QCamera_SetFlashMode(void* c_this, int64 mode);
	[LinkName("QCamera_SetTorchMode")]
	public static extern void QCamera_SetTorchMode(void* c_this, int64 mode);
	[LinkName("QCamera_SetExposureMode")]
	public static extern void QCamera_SetExposureMode(void* c_this, int64 mode);
	[LinkName("QCamera_SetExposureCompensation")]
	public static extern void QCamera_SetExposureCompensation(void* c_this, float ev);
	[LinkName("QCamera_SetManualIsoSensitivity")]
	public static extern void QCamera_SetManualIsoSensitivity(void* c_this, int32 iso);
	[LinkName("QCamera_SetAutoIsoSensitivity")]
	public static extern void QCamera_SetAutoIsoSensitivity(void* c_this);
	[LinkName("QCamera_SetManualExposureTime")]
	public static extern void QCamera_SetManualExposureTime(void* c_this, float seconds);
	[LinkName("QCamera_SetAutoExposureTime")]
	public static extern void QCamera_SetAutoExposureTime(void* c_this);
	[LinkName("QCamera_SetWhiteBalanceMode")]
	public static extern void QCamera_SetWhiteBalanceMode(void* c_this, int64 mode);
	[LinkName("QCamera_SetColorTemperature")]
	public static extern void QCamera_SetColorTemperature(void* c_this, int32 colorTemperature);
	[LinkName("QCamera_ActiveChanged")]
	public static extern void QCamera_ActiveChanged(void* c_this, bool param1);
	[LinkName("QCamera_ErrorChanged")]
	public static extern void QCamera_ErrorChanged(void* c_this);
	[LinkName("QCamera_ErrorOccurred")]
	public static extern void QCamera_ErrorOccurred(void* c_this, int64 errorVal, char8[] errorString);
	[LinkName("QCamera_CameraDeviceChanged")]
	public static extern void QCamera_CameraDeviceChanged(void* c_this);
	[LinkName("QCamera_CameraFormatChanged")]
	public static extern void QCamera_CameraFormatChanged(void* c_this);
	[LinkName("QCamera_SupportedFeaturesChanged")]
	public static extern void QCamera_SupportedFeaturesChanged(void* c_this);
	[LinkName("QCamera_FocusModeChanged")]
	public static extern void QCamera_FocusModeChanged(void* c_this);
	[LinkName("QCamera_ZoomFactorChanged")]
	public static extern void QCamera_ZoomFactorChanged(void* c_this, float param1);
	[LinkName("QCamera_MinimumZoomFactorChanged")]
	public static extern void QCamera_MinimumZoomFactorChanged(void* c_this, float param1);
	[LinkName("QCamera_MaximumZoomFactorChanged")]
	public static extern void QCamera_MaximumZoomFactorChanged(void* c_this, float param1);
	[LinkName("QCamera_FocusDistanceChanged")]
	public static extern void QCamera_FocusDistanceChanged(void* c_this, float param1);
	[LinkName("QCamera_FocusPointChanged")]
	public static extern void QCamera_FocusPointChanged(void* c_this);
	[LinkName("QCamera_CustomFocusPointChanged")]
	public static extern void QCamera_CustomFocusPointChanged(void* c_this);
	[LinkName("QCamera_FlashReady")]
	public static extern void QCamera_FlashReady(void* c_this, bool param1);
	[LinkName("QCamera_FlashModeChanged")]
	public static extern void QCamera_FlashModeChanged(void* c_this);
	[LinkName("QCamera_TorchModeChanged")]
	public static extern void QCamera_TorchModeChanged(void* c_this);
	[LinkName("QCamera_ExposureTimeChanged")]
	public static extern void QCamera_ExposureTimeChanged(void* c_this, float speed);
	[LinkName("QCamera_ManualExposureTimeChanged")]
	public static extern void QCamera_ManualExposureTimeChanged(void* c_this, float speed);
	[LinkName("QCamera_IsoSensitivityChanged")]
	public static extern void QCamera_IsoSensitivityChanged(void* c_this, int32 param1);
	[LinkName("QCamera_ManualIsoSensitivityChanged")]
	public static extern void QCamera_ManualIsoSensitivityChanged(void* c_this, int32 param1);
	[LinkName("QCamera_ExposureCompensationChanged")]
	public static extern void QCamera_ExposureCompensationChanged(void* c_this, float param1);
	[LinkName("QCamera_ExposureModeChanged")]
	public static extern void QCamera_ExposureModeChanged(void* c_this);
	[LinkName("QCamera_WhiteBalanceModeChanged")]
	public static extern void QCamera_WhiteBalanceModeChanged(void* c_this);
	[LinkName("QCamera_ColorTemperatureChanged")]
	public static extern void QCamera_ColorTemperatureChanged(void* c_this);
	[LinkName("QCamera_BrightnessChanged")]
	public static extern void QCamera_BrightnessChanged(void* c_this);
	[LinkName("QCamera_ContrastChanged")]
	public static extern void QCamera_ContrastChanged(void* c_this);
	[LinkName("QCamera_SaturationChanged")]
	public static extern void QCamera_SaturationChanged(void* c_this);
	[LinkName("QCamera_HueChanged")]
	public static extern void QCamera_HueChanged(void* c_this);
	[LinkName("QCamera_Tr2")]
	public static extern char8[] QCamera_Tr2(char8[] s, char8[] c);
	[LinkName("QCamera_Tr3")]
	public static extern char8[] QCamera_Tr3(char8[] s, char8[] c, int32 n);
}