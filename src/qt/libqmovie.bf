using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMovie__MovieState
{
	NotRunning = 0,
	Paused = 1,
	Running = 2,
}
[AllowDuplicates]
public enum QMovie__CacheMode
{
	CacheNone = 0,
	CacheAll = 1,
}
public class QMovie
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMovie_new();
	}
	
	public ~this()
	{
		CQt.QMovie_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QMovie_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QMovie_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMovie_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QMovie_Tr(s);
	}
	
	public static libqt_string[] SupportedFormats()
	{
		return CQt.QMovie_SupportedFormats();
	}
	
	public void SetDevice(void* device)
	{
		CQt.QMovie_SetDevice(this.nativePtr, device);
	}
	
	public void* Device()
	{
		return CQt.QMovie_Device(this.nativePtr);
	}
	
	public void SetFileName(libqt_string fileName)
	{
		CQt.QMovie_SetFileName(this.nativePtr, fileName);
	}
	
	public libqt_string FileName()
	{
		return CQt.QMovie_FileName(this.nativePtr);
	}
	
	public void SetFormat(libqt_string format)
	{
		CQt.QMovie_SetFormat(this.nativePtr, format);
	}
	
	public libqt_string Format()
	{
		return CQt.QMovie_Format(this.nativePtr);
	}
	
	public void SetBackgroundColor(void* color)
	{
		CQt.QMovie_SetBackgroundColor(this.nativePtr, color);
	}
	
	public void BackgroundColor()
	{
		CQt.QMovie_BackgroundColor(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QMovie_State(this.nativePtr);
	}
	
	public void FrameRect()
	{
		CQt.QMovie_FrameRect(this.nativePtr);
	}
	
	public void CurrentImage()
	{
		CQt.QMovie_CurrentImage(this.nativePtr);
	}
	
	public void CurrentPixmap()
	{
		CQt.QMovie_CurrentPixmap(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QMovie_IsValid(this.nativePtr);
	}
	
	public int64 LastError()
	{
		return CQt.QMovie_LastError(this.nativePtr);
	}
	
	public libqt_string LastErrorString()
	{
		return CQt.QMovie_LastErrorString(this.nativePtr);
	}
	
	public bool JumpToFrame(int32 frameNumber)
	{
		return CQt.QMovie_JumpToFrame(this.nativePtr, frameNumber);
	}
	
	public int32 LoopCount()
	{
		return CQt.QMovie_LoopCount(this.nativePtr);
	}
	
	public int32 FrameCount()
	{
		return CQt.QMovie_FrameCount(this.nativePtr);
	}
	
	public int32 NextFrameDelay()
	{
		return CQt.QMovie_NextFrameDelay(this.nativePtr);
	}
	
	public int32 CurrentFrameNumber()
	{
		return CQt.QMovie_CurrentFrameNumber(this.nativePtr);
	}
	
	public int32 Speed()
	{
		return CQt.QMovie_Speed(this.nativePtr);
	}
	
	public void ScaledSize()
	{
		CQt.QMovie_ScaledSize(this.nativePtr);
	}
	
	public void SetScaledSize(void* size)
	{
		CQt.QMovie_SetScaledSize(this.nativePtr, size);
	}
	
	public int64 CacheMode()
	{
		return CQt.QMovie_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QMovie_SetCacheMode(this.nativePtr, mode);
	}
	
	public void Start()
	{
		CQt.QMovie_Start(this.nativePtr);
	}
	
	public bool JumpToNextFrame()
	{
		return CQt.QMovie_JumpToNextFrame(this.nativePtr);
	}
	
	public void SetPaused(bool paused)
	{
		CQt.QMovie_SetPaused(this.nativePtr, paused);
	}
	
	public void Stop()
	{
		CQt.QMovie_Stop(this.nativePtr);
	}
	
	public void SetSpeed(int32 percentSpeed)
	{
		CQt.QMovie_SetSpeed(this.nativePtr, percentSpeed);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QMovie_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QMovie_Tr3(s, c, n);
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
	[LinkName("QMovie_new")]
	public static extern void* QMovie_new();
	[LinkName("QMovie_new2")]
	public static extern void* QMovie_new2(void* device);
	[LinkName("QMovie_new3")]
	public static extern void* QMovie_new3(libqt_string fileName);
	[LinkName("QMovie_new4")]
	public static extern void* QMovie_new4(void* parent);
	[LinkName("QMovie_new5")]
	public static extern void* QMovie_new5(void* device, libqt_string format);
	[LinkName("QMovie_new6")]
	public static extern void* QMovie_new6(void* device, libqt_string format, void* parent);
	[LinkName("QMovie_new7")]
	public static extern void* QMovie_new7(libqt_string fileName, libqt_string format);
	[LinkName("QMovie_new8")]
	public static extern void* QMovie_new8(libqt_string fileName, libqt_string format, void* parent);
	[LinkName("QMovie_MetaObject")]
	public static extern void* QMovie_MetaObject(void* c_this);
	[LinkName("QMovie_Metacast")]
	public static extern void* QMovie_Metacast(void* c_this, char8[] param1);
	[LinkName("QMovie_Metacall")]
	public static extern int32 QMovie_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMovie_Tr")]
	public static extern libqt_string QMovie_Tr(char8[] s);
	[LinkName("QMovie_SupportedFormats")]
	public static extern libqt_string[] QMovie_SupportedFormats();
	[LinkName("QMovie_SetDevice")]
	public static extern void QMovie_SetDevice(void* c_this, void* device);
	[LinkName("QMovie_Device")]
	public static extern void* QMovie_Device(void* c_this);
	[LinkName("QMovie_SetFileName")]
	public static extern void QMovie_SetFileName(void* c_this, libqt_string fileName);
	[LinkName("QMovie_FileName")]
	public static extern libqt_string QMovie_FileName(void* c_this);
	[LinkName("QMovie_SetFormat")]
	public static extern void QMovie_SetFormat(void* c_this, libqt_string format);
	[LinkName("QMovie_Format")]
	public static extern libqt_string QMovie_Format(void* c_this);
	[LinkName("QMovie_SetBackgroundColor")]
	public static extern void QMovie_SetBackgroundColor(void* c_this, void* color);
	[LinkName("QMovie_BackgroundColor")]
	public static extern void QMovie_BackgroundColor(void* c_this);
	[LinkName("QMovie_State")]
	public static extern int64 QMovie_State(void* c_this);
	[LinkName("QMovie_FrameRect")]
	public static extern void QMovie_FrameRect(void* c_this);
	[LinkName("QMovie_CurrentImage")]
	public static extern void QMovie_CurrentImage(void* c_this);
	[LinkName("QMovie_CurrentPixmap")]
	public static extern void QMovie_CurrentPixmap(void* c_this);
	[LinkName("QMovie_IsValid")]
	public static extern bool QMovie_IsValid(void* c_this);
	[LinkName("QMovie_LastError")]
	public static extern int64 QMovie_LastError(void* c_this);
	[LinkName("QMovie_LastErrorString")]
	public static extern libqt_string QMovie_LastErrorString(void* c_this);
	[LinkName("QMovie_JumpToFrame")]
	public static extern bool QMovie_JumpToFrame(void* c_this, int32 frameNumber);
	[LinkName("QMovie_LoopCount")]
	public static extern int32 QMovie_LoopCount(void* c_this);
	[LinkName("QMovie_FrameCount")]
	public static extern int32 QMovie_FrameCount(void* c_this);
	[LinkName("QMovie_NextFrameDelay")]
	public static extern int32 QMovie_NextFrameDelay(void* c_this);
	[LinkName("QMovie_CurrentFrameNumber")]
	public static extern int32 QMovie_CurrentFrameNumber(void* c_this);
	[LinkName("QMovie_Speed")]
	public static extern int32 QMovie_Speed(void* c_this);
	[LinkName("QMovie_ScaledSize")]
	public static extern void QMovie_ScaledSize(void* c_this);
	[LinkName("QMovie_SetScaledSize")]
	public static extern void QMovie_SetScaledSize(void* c_this, void* size);
	[LinkName("QMovie_CacheMode")]
	public static extern int64 QMovie_CacheMode(void* c_this);
	[LinkName("QMovie_SetCacheMode")]
	public static extern void QMovie_SetCacheMode(void* c_this, int64 mode);
	[LinkName("QMovie_Connect_Started")]
	public static extern void QMovie_Connect_Started(void* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_Resized")]
	public static extern void QMovie_Connect_Resized(void* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_Updated")]
	public static extern void QMovie_Connect_Updated(void* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_StateChanged")]
	public static extern void QMovie_Connect_StateChanged(void* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_Error")]
	public static extern void QMovie_Connect_Error(void* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_Finished")]
	public static extern void QMovie_Connect_Finished(void* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_FrameChanged")]
	public static extern void QMovie_Connect_FrameChanged(void* c_this, c_intptr slot);
	[LinkName("QMovie_Start")]
	public static extern void QMovie_Start(void* c_this);
	[LinkName("QMovie_JumpToNextFrame")]
	public static extern bool QMovie_JumpToNextFrame(void* c_this);
	[LinkName("QMovie_SetPaused")]
	public static extern void QMovie_SetPaused(void* c_this, bool paused);
	[LinkName("QMovie_Stop")]
	public static extern void QMovie_Stop(void* c_this);
	[LinkName("QMovie_SetSpeed")]
	public static extern void QMovie_SetSpeed(void* c_this, int32 percentSpeed);
	[LinkName("QMovie_Tr2")]
	public static extern libqt_string QMovie_Tr2(char8[] s, char8[] c);
	[LinkName("QMovie_Tr3")]
	public static extern libqt_string QMovie_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QMovie_Delete")]
	public static extern void QMovie_Delete(void* self);
}