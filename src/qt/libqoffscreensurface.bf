using System;
using System.Interop;
namespace Qt;

public class QOffscreenSurface
{
	protected void* nativePtr;
	
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
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QOffscreenSurface_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QOffscreenSurface_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public void SetFormat(void* format)
	{
		CQt.QOffscreenSurface_SetFormat(this.nativePtr, format);
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
	
	public void SetScreen(void* screen)
	{
		CQt.QOffscreenSurface_SetScreen(this.nativePtr, screen);
	}
	
	public void* ResolveInterface(char8[] name, int32 revision)
	{
		return CQt.QOffscreenSurface_ResolveInterface(this.nativePtr, name, revision);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QOffscreenSurface_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QOffscreenSurface_Tr3(s, c, n);
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
	public static extern void* QOffscreenSurface_Metacast(void* c_this, char8[] param1);
	[LinkName("QOffscreenSurface_Metacall")]
	public static extern int32 QOffscreenSurface_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QOffscreenSurface_Tr")]
	public static extern libqt_string QOffscreenSurface_Tr(char8[] s);
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
	public static extern void* QOffscreenSurface_ResolveInterface(void* c_this, char8[] name, int32 revision);
	[LinkName("QOffscreenSurface_Connect_ScreenChanged")]
	public static extern void QOffscreenSurface_Connect_ScreenChanged(void* c_this, c_intptr slot);
	[LinkName("QOffscreenSurface_Tr2")]
	public static extern libqt_string QOffscreenSurface_Tr2(char8[] s, char8[] c);
	[LinkName("QOffscreenSurface_Tr3")]
	public static extern libqt_string QOffscreenSurface_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QOffscreenSurface_Delete")]
	public static extern void QOffscreenSurface_Delete(void* self);
}