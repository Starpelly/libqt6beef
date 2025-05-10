using System;
using System.Interop;
namespace Qt;

public interface IQOffscreenSurface
{
	void* NativePtr { get; }
}
public class QOffscreenSurface : IQOffscreenSurface, IQObject, IQSurface
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QOffscreenSurface_new();
	}
	
	public ~this()
	{
		CQt.QOffscreenSurface_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QOffscreenSurface_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QOffscreenSurface_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QOffscreenSurface_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QOffscreenSurface_Tr(s);
	}
	
	public virtual int64 SurfaceType()
	{
		return CQt.QOffscreenSurface_SurfaceType(this.nativePtr);
	}
	
	public void Create()
	{
		CQt.QOffscreenSurface_Create(this.nativePtr);
	}
	
	public void Destroy()
	{
		CQt.QOffscreenSurface_Destroy(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QOffscreenSurface_IsValid(this.nativePtr);
	}
	
	public void SetFormat(IQSurfaceFormat format)
	{
		CQt.QOffscreenSurface_SetFormat(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public virtual void Format()
	{
		CQt.QOffscreenSurface_Format(this.nativePtr);
	}
	
	public void RequestedFormat()
	{
		CQt.QOffscreenSurface_RequestedFormat(this.nativePtr);
	}
	
	public virtual void Size()
	{
		CQt.QOffscreenSurface_Size(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QOffscreenSurface_Screen(this.nativePtr);
	}
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QOffscreenSurface_SetScreen(this.nativePtr, (screen == null) ? null : (void*)screen.NativePtr);
	}
	
	public void* ResolveInterface(char8* name, int32 revision)
	{
		return CQt.QOffscreenSurface_ResolveInterface(this.nativePtr, name, revision);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QOffscreenSurface_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QOffscreenSurface_Tr3(s, c, n);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
	public int64 SurfaceClass()
	{
		return CQt.QSurface_SurfaceClass(this.nativePtr);
	}
	
	public bool SupportsOpenGL()
	{
		return CQt.QSurface_SupportsOpenGL(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QOffscreenSurface_new")]
	public static extern void* QOffscreenSurface_new();
	[LinkName("QOffscreenSurface_new2")]
	public static extern void* QOffscreenSurface_new2(void* screen);
	[LinkName("QOffscreenSurface_new3")]
	public static extern void* QOffscreenSurface_new3(void* screen, void* parent);
	[LinkName("QOffscreenSurface_MetaObject")]
	public static extern void* QOffscreenSurface_MetaObject(void* c_this);
	[LinkName("QOffscreenSurface_Metacast")]
	public static extern void* QOffscreenSurface_Metacast(void* c_this, char8* param1);
	[LinkName("QOffscreenSurface_Metacall")]
	public static extern int32 QOffscreenSurface_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QOffscreenSurface_Tr")]
	public static extern libqt_string QOffscreenSurface_Tr(char8* s);
	[LinkName("QOffscreenSurface_SurfaceType")]
	public static extern int64 QOffscreenSurface_SurfaceType(void* c_this);
	[LinkName("QOffscreenSurface_Create")]
	public static extern void QOffscreenSurface_Create(void* c_this);
	[LinkName("QOffscreenSurface_Destroy")]
	public static extern void QOffscreenSurface_Destroy(void* c_this);
	[LinkName("QOffscreenSurface_IsValid")]
	public static extern bool QOffscreenSurface_IsValid(void* c_this);
	[LinkName("QOffscreenSurface_SetFormat")]
	public static extern void QOffscreenSurface_SetFormat(void* c_this, void* format);
	[LinkName("QOffscreenSurface_Format")]
	public static extern void QOffscreenSurface_Format(void* c_this);
	[LinkName("QOffscreenSurface_RequestedFormat")]
	public static extern void QOffscreenSurface_RequestedFormat(void* c_this);
	[LinkName("QOffscreenSurface_Size")]
	public static extern void QOffscreenSurface_Size(void* c_this);
	[LinkName("QOffscreenSurface_Screen")]
	public static extern void* QOffscreenSurface_Screen(void* c_this);
	[LinkName("QOffscreenSurface_SetScreen")]
	public static extern void QOffscreenSurface_SetScreen(void* c_this, void* screen);
	[LinkName("QOffscreenSurface_ResolveInterface")]
	public static extern void* QOffscreenSurface_ResolveInterface(void* c_this, char8* name, int32 revision);
	[LinkName("QOffscreenSurface_Connect_ScreenChanged")]
	public static extern void QOffscreenSurface_Connect_ScreenChanged(void* c_this, c_intptr slot);
	[LinkName("QOffscreenSurface_Tr2")]
	public static extern libqt_string QOffscreenSurface_Tr2(char8* s, char8* c);
	[LinkName("QOffscreenSurface_Tr3")]
	public static extern libqt_string QOffscreenSurface_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QOffscreenSurface_Delete")]
	public static extern void QOffscreenSurface_Delete(void* self);
}