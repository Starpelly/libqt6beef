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
public interface IQMovie
{
	void* NativePtr { get; }
}
public struct QMoviePtr : IQMovie, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QMovie_new());
	}
	
	public void Dispose()
	{
		CQt.QMovie_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QMovie_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QMovie_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QMovie_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QMovie_Tr(s);
	}
	
	public static libqt_string[] SupportedFormats()
	{
		return CQt.QMovie_SupportedFormats();
	}
	
	public void SetDevice(IQIODevice device)
	{
		CQt.QMovie_SetDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QMovie_Device(this.nativePtr);
	}
	
	public void SetFileName(String fileName)
	{
		CQt.QMovie_SetFileName(this.nativePtr, libqt_string(fileName));
	}
	
	public libqt_string FileName()
	{
		return CQt.QMovie_FileName(this.nativePtr);
	}
	
	public void SetFormat(String format)
	{
		CQt.QMovie_SetFormat(this.nativePtr, libqt_string(format));
	}
	
	public libqt_string Format()
	{
		return CQt.QMovie_Format(this.nativePtr);
	}
	
	public void SetBackgroundColor(IQColor color)
	{
		CQt.QMovie_SetBackgroundColor(this.nativePtr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
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
	
	public void SetScaledSize(IQSize size)
	{
		CQt.QMovie_SetScaledSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public int64 CacheMode()
	{
		return CQt.QMovie_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QMovie_SetCacheMode(this.nativePtr, (int64)mode);
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
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QMovie_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QMovie_Tr3(s, c, n);
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
public class QMovie
{
	public QMoviePtr handle;
	
	public static implicit operator QMoviePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QMoviePtr.New();
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
		return QMoviePtr.Tr(s);
	}
	
	public static libqt_string[] SupportedFormats()
	{
		return QMoviePtr.SupportedFormats();
	}
	
	public void SetDevice(IQIODevice device)
	{
		this.handle.SetDevice(device);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public void SetFileName(String fileName)
	{
		this.handle.SetFileName(fileName);
	}
	
	public libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public void SetFormat(String format)
	{
		this.handle.SetFormat(format);
	}
	
	public libqt_string Format()
	{
		return this.handle.Format();
	}
	
	public void SetBackgroundColor(IQColor color)
	{
		this.handle.SetBackgroundColor(color);
	}
	
	public void BackgroundColor()
	{
		this.handle.BackgroundColor();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void FrameRect()
	{
		this.handle.FrameRect();
	}
	
	public void CurrentImage()
	{
		this.handle.CurrentImage();
	}
	
	public void CurrentPixmap()
	{
		this.handle.CurrentPixmap();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int64 LastError()
	{
		return this.handle.LastError();
	}
	
	public libqt_string LastErrorString()
	{
		return this.handle.LastErrorString();
	}
	
	public bool JumpToFrame(int32 frameNumber)
	{
		return this.handle.JumpToFrame(frameNumber);
	}
	
	public int32 LoopCount()
	{
		return this.handle.LoopCount();
	}
	
	public int32 FrameCount()
	{
		return this.handle.FrameCount();
	}
	
	public int32 NextFrameDelay()
	{
		return this.handle.NextFrameDelay();
	}
	
	public int32 CurrentFrameNumber()
	{
		return this.handle.CurrentFrameNumber();
	}
	
	public int32 Speed()
	{
		return this.handle.Speed();
	}
	
	public void ScaledSize()
	{
		this.handle.ScaledSize();
	}
	
	public void SetScaledSize(IQSize size)
	{
		this.handle.SetScaledSize(size);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public void Start()
	{
		this.handle.Start();
	}
	
	public bool JumpToNextFrame()
	{
		return this.handle.JumpToNextFrame();
	}
	
	public void SetPaused(bool paused)
	{
		this.handle.SetPaused(paused);
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public void SetSpeed(int32 percentSpeed)
	{
		this.handle.SetSpeed(percentSpeed);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QMoviePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QMoviePtr.Tr3(s, c, n);
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
		QMoviePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QMoviePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QMoviePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QMoviePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
	public static extern void* QMovie_Metacast(void* c_this, char8* param1);
	[LinkName("QMovie_Metacall")]
	public static extern int32 QMovie_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QMovie_Tr")]
	public static extern libqt_string QMovie_Tr(char8* s);
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
	public static extern libqt_string QMovie_Tr2(char8* s, char8* c);
	[LinkName("QMovie_Tr3")]
	public static extern libqt_string QMovie_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QMovie_Delete")]
	public static extern void QMovie_Delete(void* self);
}