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
public interface IQCamera
{
	void* NativePtr { get; }
}
public struct QCameraPtr : IQCamera, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCamera_new());
	}
	
	public void Dispose()
	{
		CQt.QCamera_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QCamera_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QCamera_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QCamera_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
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
	
	public void SetCameraDevice(IQCameraDevice cameraDevice)
	{
		CQt.QCamera_SetCameraDevice(this.nativePtr, (cameraDevice == default || cameraDevice.NativePtr == default) ? default : cameraDevice.NativePtr);
	}
	
	public void CameraFormat()
	{
		CQt.QCamera_CameraFormat(this.nativePtr);
	}
	
	public void SetCameraFormat(IQCameraFormat format)
	{
		CQt.QCamera_SetCameraFormat(this.nativePtr, (format == default || format.NativePtr == default) ? default : format.NativePtr);
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
		CQt.QCamera_SetFocusMode(this.nativePtr, (int64)mode);
	}
	
	public bool IsFocusModeSupported(int64 mode)
	{
		return CQt.QCamera_IsFocusModeSupported(this.nativePtr, (int64)mode);
	}
	
	public void FocusPoint()
	{
		CQt.QCamera_FocusPoint(this.nativePtr);
	}
	
	public void CustomFocusPoint()
	{
		CQt.QCamera_CustomFocusPoint(this.nativePtr);
	}
	
	public void SetCustomFocusPoint(IQPointF point)
	{
		CQt.QCamera_SetCustomFocusPoint(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
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
		return CQt.QCamera_IsFlashModeSupported(this.nativePtr, (int64)mode);
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
		return CQt.QCamera_IsTorchModeSupported(this.nativePtr, (int64)mode);
	}
	
	public int64 ExposureMode()
	{
		return CQt.QCamera_ExposureMode(this.nativePtr);
	}
	
	public bool IsExposureModeSupported(int64 mode)
	{
		return CQt.QCamera_IsExposureModeSupported(this.nativePtr, (int64)mode);
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
		return CQt.QCamera_IsWhiteBalanceModeSupported(this.nativePtr, (int64)mode);
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
		CQt.QCamera_SetFlashMode(this.nativePtr, (int64)mode);
	}
	
	public void SetTorchMode(int64 mode)
	{
		CQt.QCamera_SetTorchMode(this.nativePtr, (int64)mode);
	}
	
	public void SetExposureMode(int64 mode)
	{
		CQt.QCamera_SetExposureMode(this.nativePtr, (int64)mode);
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
		CQt.QCamera_SetWhiteBalanceMode(this.nativePtr, (int64)mode);
	}
	
	public void SetColorTemperature(int32 colorTemperature)
	{
		CQt.QCamera_SetColorTemperature(this.nativePtr, colorTemperature);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QCamera_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QCamera_Tr3(s, c, n);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Property(char8* name)
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
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QCamera
{
	public QCameraPtr handle;
	
	public static implicit operator QCameraPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCameraPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QCameraPtr.Tr(s);
	}
	
	public bool IsAvailable()
	{
		return this.handle.IsAvailable();
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void* CaptureSession()
	{
		return this.handle.CaptureSession();
	}
	
	public void CameraDevice()
	{
		this.handle.CameraDevice();
	}
	
	public void SetCameraDevice(IQCameraDevice cameraDevice)
	{
		this.handle.SetCameraDevice(cameraDevice);
	}
	
	public void CameraFormat()
	{
		this.handle.CameraFormat();
	}
	
	public void SetCameraFormat(IQCameraFormat format)
	{
		this.handle.SetCameraFormat(format);
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public int64 SupportedFeatures()
	{
		return this.handle.SupportedFeatures();
	}
	
	public int64 FocusMode()
	{
		return this.handle.FocusMode();
	}
	
	public void SetFocusMode(int64 mode)
	{
		this.handle.SetFocusMode(mode);
	}
	
	public bool IsFocusModeSupported(int64 mode)
	{
		return this.handle.IsFocusModeSupported(mode);
	}
	
	public void FocusPoint()
	{
		this.handle.FocusPoint();
	}
	
	public void CustomFocusPoint()
	{
		this.handle.CustomFocusPoint();
	}
	
	public void SetCustomFocusPoint(IQPointF point)
	{
		this.handle.SetCustomFocusPoint(point);
	}
	
	public void SetFocusDistance(float d)
	{
		this.handle.SetFocusDistance(d);
	}
	
	public float FocusDistance()
	{
		return this.handle.FocusDistance();
	}
	
	public float MinimumZoomFactor()
	{
		return this.handle.MinimumZoomFactor();
	}
	
	public float MaximumZoomFactor()
	{
		return this.handle.MaximumZoomFactor();
	}
	
	public float ZoomFactor()
	{
		return this.handle.ZoomFactor();
	}
	
	public void SetZoomFactor(float factor)
	{
		this.handle.SetZoomFactor(factor);
	}
	
	public int64 FlashMode()
	{
		return this.handle.FlashMode();
	}
	
	public bool IsFlashModeSupported(int64 mode)
	{
		return this.handle.IsFlashModeSupported(mode);
	}
	
	public bool IsFlashReady()
	{
		return this.handle.IsFlashReady();
	}
	
	public int64 TorchMode()
	{
		return this.handle.TorchMode();
	}
	
	public bool IsTorchModeSupported(int64 mode)
	{
		return this.handle.IsTorchModeSupported(mode);
	}
	
	public int64 ExposureMode()
	{
		return this.handle.ExposureMode();
	}
	
	public bool IsExposureModeSupported(int64 mode)
	{
		return this.handle.IsExposureModeSupported(mode);
	}
	
	public float ExposureCompensation()
	{
		return this.handle.ExposureCompensation();
	}
	
	public int32 IsoSensitivity()
	{
		return this.handle.IsoSensitivity();
	}
	
	public int32 ManualIsoSensitivity()
	{
		return this.handle.ManualIsoSensitivity();
	}
	
	public float ExposureTime()
	{
		return this.handle.ExposureTime();
	}
	
	public float ManualExposureTime()
	{
		return this.handle.ManualExposureTime();
	}
	
	public int32 MinimumIsoSensitivity()
	{
		return this.handle.MinimumIsoSensitivity();
	}
	
	public int32 MaximumIsoSensitivity()
	{
		return this.handle.MaximumIsoSensitivity();
	}
	
	public float MinimumExposureTime()
	{
		return this.handle.MinimumExposureTime();
	}
	
	public float MaximumExposureTime()
	{
		return this.handle.MaximumExposureTime();
	}
	
	public int64 WhiteBalanceMode()
	{
		return this.handle.WhiteBalanceMode();
	}
	
	public bool IsWhiteBalanceModeSupported(int64 mode)
	{
		return this.handle.IsWhiteBalanceModeSupported(mode);
	}
	
	public int32 ColorTemperature()
	{
		return this.handle.ColorTemperature();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public void Start()
	{
		this.handle.Start();
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public void ZoomTo(float zoom, float rate)
	{
		this.handle.ZoomTo(zoom, rate);
	}
	
	public void SetFlashMode(int64 mode)
	{
		this.handle.SetFlashMode(mode);
	}
	
	public void SetTorchMode(int64 mode)
	{
		this.handle.SetTorchMode(mode);
	}
	
	public void SetExposureMode(int64 mode)
	{
		this.handle.SetExposureMode(mode);
	}
	
	public void SetExposureCompensation(float ev)
	{
		this.handle.SetExposureCompensation(ev);
	}
	
	public void SetManualIsoSensitivity(int32 iso)
	{
		this.handle.SetManualIsoSensitivity(iso);
	}
	
	public void SetAutoIsoSensitivity()
	{
		this.handle.SetAutoIsoSensitivity();
	}
	
	public void SetManualExposureTime(float seconds)
	{
		this.handle.SetManualExposureTime(seconds);
	}
	
	public void SetAutoExposureTime()
	{
		this.handle.SetAutoExposureTime();
	}
	
	public void SetWhiteBalanceMode(int64 mode)
	{
		this.handle.SetWhiteBalanceMode(mode);
	}
	
	public void SetColorTemperature(int32 colorTemperature)
	{
		this.handle.SetColorTemperature(colorTemperature);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QCameraPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QCameraPtr.Tr3(s, c, n);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QCameraPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QCameraPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QCameraPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QCameraPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
	public static extern void* QCamera_Metacast(void* c_this, char8* param1);
	[LinkName("QCamera_Metacall")]
	public static extern int32 QCamera_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QCamera_Tr")]
	public static extern libqt_string QCamera_Tr(char8* s);
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
	public static extern libqt_string QCamera_Tr2(char8* s, char8* c);
	[LinkName("QCamera_Tr3")]
	public static extern libqt_string QCamera_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QCamera_Delete")]
	public static extern void QCamera_Delete(void* self);
}