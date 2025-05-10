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
public class QCamera
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCamera_new();
	}
	
	public ~this()
	{
		CQt.QCamera_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QCamera_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QCamera_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QCamera_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QCamera_Tr(s);
	}
	
	public bool IsAvailable()
	{
		return CQt.QCamera_IsAvailable(this.nativePtr);
	}
	
	public bool IsActive()
	{
		return CQt.QCamera_IsActive(this.nativePtr);
	}
	
	public void* CaptureSession()
	{
		return CQt.QCamera_CaptureSession(this.nativePtr);
	}
	
	public void CameraDevice()
	{
		CQt.QCamera_CameraDevice(this.nativePtr);
	}
	
	public void SetCameraDevice(void* cameraDevice)
	{
		CQt.QCamera_SetCameraDevice(this.nativePtr, cameraDevice);
	}
	
	public void CameraFormat()
	{
		CQt.QCamera_CameraFormat(this.nativePtr);
	}
	
	public void SetCameraFormat(void* format)
	{
		CQt.QCamera_SetCameraFormat(this.nativePtr, format);
	}
	
	public int64 Error()
	{
		return CQt.QCamera_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QCamera_ErrorString(this.nativePtr);
	}
	
	public int64 SupportedFeatures()
	{
		return CQt.QCamera_SupportedFeatures(this.nativePtr);
	}
	
	public int64 FocusMode()
	{
		return CQt.QCamera_FocusMode(this.nativePtr);
	}
	
	public void SetFocusMode(int64 mode)
	{
		CQt.QCamera_SetFocusMode(this.nativePtr, mode);
	}
	
	public bool IsFocusModeSupported(int64 mode)
	{
		return CQt.QCamera_IsFocusModeSupported(this.nativePtr, mode);
	}
	
	public void FocusPoint()
	{
		CQt.QCamera_FocusPoint(this.nativePtr);
	}
	
	public void CustomFocusPoint()
	{
		CQt.QCamera_CustomFocusPoint(this.nativePtr);
	}
	
	public void SetCustomFocusPoint(void* point)
	{
		CQt.QCamera_SetCustomFocusPoint(this.nativePtr, point);
	}
	
	public void SetFocusDistance(float d)
	{
		CQt.QCamera_SetFocusDistance(this.nativePtr, d);
	}
	
	public float FocusDistance()
	{
		return CQt.QCamera_FocusDistance(this.nativePtr);
	}
	
	public float MinimumZoomFactor()
	{
		return CQt.QCamera_MinimumZoomFactor(this.nativePtr);
	}
	
	public float MaximumZoomFactor()
	{
		return CQt.QCamera_MaximumZoomFactor(this.nativePtr);
	}
	
	public float ZoomFactor()
	{
		return CQt.QCamera_ZoomFactor(this.nativePtr);
	}
	
	public void SetZoomFactor(float factor)
	{
		CQt.QCamera_SetZoomFactor(this.nativePtr, factor);
	}
	
	public int64 FlashMode()
	{
		return CQt.QCamera_FlashMode(this.nativePtr);
	}
	
	public bool IsFlashModeSupported(int64 mode)
	{
		return CQt.QCamera_IsFlashModeSupported(this.nativePtr, mode);
	}
	
	public bool IsFlashReady()
	{
		return CQt.QCamera_IsFlashReady(this.nativePtr);
	}
	
	public int64 TorchMode()
	{
		return CQt.QCamera_TorchMode(this.nativePtr);
	}
	
	public bool IsTorchModeSupported(int64 mode)
	{
		return CQt.QCamera_IsTorchModeSupported(this.nativePtr, mode);
	}
	
	public int64 ExposureMode()
	{
		return CQt.QCamera_ExposureMode(this.nativePtr);
	}
	
	public bool IsExposureModeSupported(int64 mode)
	{
		return CQt.QCamera_IsExposureModeSupported(this.nativePtr, mode);
	}
	
	public float ExposureCompensation()
	{
		return CQt.QCamera_ExposureCompensation(this.nativePtr);
	}
	
	public int32 IsoSensitivity()
	{
		return CQt.QCamera_IsoSensitivity(this.nativePtr);
	}
	
	public int32 ManualIsoSensitivity()
	{
		return CQt.QCamera_ManualIsoSensitivity(this.nativePtr);
	}
	
	public float ExposureTime()
	{
		return CQt.QCamera_ExposureTime(this.nativePtr);
	}
	
	public float ManualExposureTime()
	{
		return CQt.QCamera_ManualExposureTime(this.nativePtr);
	}
	
	public int32 MinimumIsoSensitivity()
	{
		return CQt.QCamera_MinimumIsoSensitivity(this.nativePtr);
	}
	
	public int32 MaximumIsoSensitivity()
	{
		return CQt.QCamera_MaximumIsoSensitivity(this.nativePtr);
	}
	
	public float MinimumExposureTime()
	{
		return CQt.QCamera_MinimumExposureTime(this.nativePtr);
	}
	
	public float MaximumExposureTime()
	{
		return CQt.QCamera_MaximumExposureTime(this.nativePtr);
	}
	
	public int64 WhiteBalanceMode()
	{
		return CQt.QCamera_WhiteBalanceMode(this.nativePtr);
	}
	
	public bool IsWhiteBalanceModeSupported(int64 mode)
	{
		return CQt.QCamera_IsWhiteBalanceModeSupported(this.nativePtr, mode);
	}
	
	public int32 ColorTemperature()
	{
		return CQt.QCamera_ColorTemperature(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QCamera_SetActive(this.nativePtr, active);
	}
	
	public void Start()
	{
		CQt.QCamera_Start(this.nativePtr);
	}
	
	public void Stop()
	{
		CQt.QCamera_Stop(this.nativePtr);
	}
	
	public void ZoomTo(float zoom, float rate)
	{
		CQt.QCamera_ZoomTo(this.nativePtr, zoom, rate);
	}
	
	public void SetFlashMode(int64 mode)
	{
		CQt.QCamera_SetFlashMode(this.nativePtr, mode);
	}
	
	public void SetTorchMode(int64 mode)
	{
		CQt.QCamera_SetTorchMode(this.nativePtr, mode);
	}
	
	public void SetExposureMode(int64 mode)
	{
		CQt.QCamera_SetExposureMode(this.nativePtr, mode);
	}
	
	public void SetExposureCompensation(float ev)
	{
		CQt.QCamera_SetExposureCompensation(this.nativePtr, ev);
	}
	
	public void SetManualIsoSensitivity(int32 iso)
	{
		CQt.QCamera_SetManualIsoSensitivity(this.nativePtr, iso);
	}
	
	public void SetAutoIsoSensitivity()
	{
		CQt.QCamera_SetAutoIsoSensitivity(this.nativePtr);
	}
	
	public void SetManualExposureTime(float seconds)
	{
		CQt.QCamera_SetManualExposureTime(this.nativePtr, seconds);
	}
	
	public void SetAutoExposureTime()
	{
		CQt.QCamera_SetAutoExposureTime(this.nativePtr);
	}
	
	public void SetWhiteBalanceMode(int64 mode)
	{
		CQt.QCamera_SetWhiteBalanceMode(this.nativePtr, mode);
	}
	
	public void SetColorTemperature(int32 colorTemperature)
	{
		CQt.QCamera_SetColorTemperature(this.nativePtr, colorTemperature);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QCamera_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QCamera_Tr3(s, c, n);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QCamera_new")]
	public static extern void* QCamera_new();
	[LinkName("QCamera_new2")]
	public static extern void* QCamera_new2(void* cameraDevice);
	[LinkName("QCamera_new3")]
	public static extern void* QCamera_new3(int64 position);
	[LinkName("QCamera_new4")]
	public static extern void* QCamera_new4(void* parent);
	[LinkName("QCamera_new5")]
	public static extern void* QCamera_new5(void* cameraDevice, void* parent);
	[LinkName("QCamera_new6")]
	public static extern void* QCamera_new6(int64 position, void* parent);
	[LinkName("QCamera_MetaObject")]
	public static extern void* QCamera_MetaObject(void* c_this);
	[LinkName("QCamera_Metacast")]
	public static extern void* QCamera_Metacast(void* c_this, char8[] param1);
	[LinkName("QCamera_Metacall")]
	public static extern int32 QCamera_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QCamera_Tr")]
	public static extern libqt_string QCamera_Tr(char8[] s);
	[LinkName("QCamera_IsAvailable")]
	public static extern bool QCamera_IsAvailable(void* c_this);
	[LinkName("QCamera_IsActive")]
	public static extern bool QCamera_IsActive(void* c_this);
	[LinkName("QCamera_CaptureSession")]
	public static extern void* QCamera_CaptureSession(void* c_this);
	[LinkName("QCamera_CameraDevice")]
	public static extern void QCamera_CameraDevice(void* c_this);
	[LinkName("QCamera_SetCameraDevice")]
	public static extern void QCamera_SetCameraDevice(void* c_this, void* cameraDevice);
	[LinkName("QCamera_CameraFormat")]
	public static extern void QCamera_CameraFormat(void* c_this);
	[LinkName("QCamera_SetCameraFormat")]
	public static extern void QCamera_SetCameraFormat(void* c_this, void* format);
	[LinkName("QCamera_Error")]
	public static extern int64 QCamera_Error(void* c_this);
	[LinkName("QCamera_ErrorString")]
	public static extern libqt_string QCamera_ErrorString(void* c_this);
	[LinkName("QCamera_SupportedFeatures")]
	public static extern int64 QCamera_SupportedFeatures(void* c_this);
	[LinkName("QCamera_FocusMode")]
	public static extern int64 QCamera_FocusMode(void* c_this);
	[LinkName("QCamera_SetFocusMode")]
	public static extern void QCamera_SetFocusMode(void* c_this, int64 mode);
	[LinkName("QCamera_IsFocusModeSupported")]
	public static extern bool QCamera_IsFocusModeSupported(void* c_this, int64 mode);
	[LinkName("QCamera_FocusPoint")]
	public static extern void QCamera_FocusPoint(void* c_this);
	[LinkName("QCamera_CustomFocusPoint")]
	public static extern void QCamera_CustomFocusPoint(void* c_this);
	[LinkName("QCamera_SetCustomFocusPoint")]
	public static extern void QCamera_SetCustomFocusPoint(void* c_this, void* point);
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
	[LinkName("QCamera_Connect_ActiveChanged")]
	public static extern void QCamera_Connect_ActiveChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ErrorChanged")]
	public static extern void QCamera_Connect_ErrorChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ErrorOccurred")]
	public static extern void QCamera_Connect_ErrorOccurred(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_CameraDeviceChanged")]
	public static extern void QCamera_Connect_CameraDeviceChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_CameraFormatChanged")]
	public static extern void QCamera_Connect_CameraFormatChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_SupportedFeaturesChanged")]
	public static extern void QCamera_Connect_SupportedFeaturesChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FocusModeChanged")]
	public static extern void QCamera_Connect_FocusModeChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ZoomFactorChanged")]
	public static extern void QCamera_Connect_ZoomFactorChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_MinimumZoomFactorChanged")]
	public static extern void QCamera_Connect_MinimumZoomFactorChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_MaximumZoomFactorChanged")]
	public static extern void QCamera_Connect_MaximumZoomFactorChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FocusDistanceChanged")]
	public static extern void QCamera_Connect_FocusDistanceChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FocusPointChanged")]
	public static extern void QCamera_Connect_FocusPointChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_CustomFocusPointChanged")]
	public static extern void QCamera_Connect_CustomFocusPointChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FlashReady")]
	public static extern void QCamera_Connect_FlashReady(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_FlashModeChanged")]
	public static extern void QCamera_Connect_FlashModeChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_TorchModeChanged")]
	public static extern void QCamera_Connect_TorchModeChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ExposureTimeChanged")]
	public static extern void QCamera_Connect_ExposureTimeChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ManualExposureTimeChanged")]
	public static extern void QCamera_Connect_ManualExposureTimeChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_IsoSensitivityChanged")]
	public static extern void QCamera_Connect_IsoSensitivityChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ManualIsoSensitivityChanged")]
	public static extern void QCamera_Connect_ManualIsoSensitivityChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ExposureCompensationChanged")]
	public static extern void QCamera_Connect_ExposureCompensationChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ExposureModeChanged")]
	public static extern void QCamera_Connect_ExposureModeChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_WhiteBalanceModeChanged")]
	public static extern void QCamera_Connect_WhiteBalanceModeChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ColorTemperatureChanged")]
	public static extern void QCamera_Connect_ColorTemperatureChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_BrightnessChanged")]
	public static extern void QCamera_Connect_BrightnessChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_ContrastChanged")]
	public static extern void QCamera_Connect_ContrastChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_SaturationChanged")]
	public static extern void QCamera_Connect_SaturationChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Connect_HueChanged")]
	public static extern void QCamera_Connect_HueChanged(void* c_this, c_intptr slot);
	[LinkName("QCamera_Tr2")]
	public static extern libqt_string QCamera_Tr2(char8[] s, char8[] c);
	[LinkName("QCamera_Tr3")]
	public static extern libqt_string QCamera_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QCamera_Delete")]
	public static extern void QCamera_Delete(void* self);
}