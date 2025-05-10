using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSystemTrayIcon__ActivationReason
{
	Unknown = 0,
	Context = 1,
	DoubleClick = 2,
	Trigger = 3,
	MiddleClick = 4,
}
[AllowDuplicates]
public enum QSystemTrayIcon__MessageIcon
{
	NoIcon = 0,
	Information = 1,
	Warning = 2,
	Critical = 3,
}
public class QSystemTrayIcon
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSystemTrayIcon_new();
	}
	
	public ~this()
	{
		CQt.QSystemTrayIcon_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSystemTrayIcon_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QSystemTrayIcon_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSystemTrayIcon_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QSystemTrayIcon_Tr(s);
	}
	
	public void SetContextMenu(void* menu)
	{
		CQt.QSystemTrayIcon_SetContextMenu(this.nativePtr, menu);
	}
	
	public void* ContextMenu()
	{
		return CQt.QSystemTrayIcon_ContextMenu(this.nativePtr);
	}
	
	public void Icon()
	{
		CQt.QSystemTrayIcon_Icon(this.nativePtr);
	}
	
	public void SetIcon(void* icon)
	{
		CQt.QSystemTrayIcon_SetIcon(this.nativePtr, icon);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QSystemTrayIcon_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string tip)
	{
		CQt.QSystemTrayIcon_SetToolTip(this.nativePtr, tip);
	}
	
	public static bool IsSystemTrayAvailable()
	{
		return CQt.QSystemTrayIcon_IsSystemTrayAvailable();
	}
	
	public static bool SupportsMessages()
	{
		return CQt.QSystemTrayIcon_SupportsMessages();
	}
	
	public void Geometry()
	{
		CQt.QSystemTrayIcon_Geometry(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QSystemTrayIcon_IsVisible(this.nativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QSystemTrayIcon_SetVisible(this.nativePtr, visible);
	}
	
	public void Show()
	{
		CQt.QSystemTrayIcon_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QSystemTrayIcon_Hide(this.nativePtr);
	}
	
	public void ShowMessage(libqt_string title, libqt_string msg, void* icon)
	{
		CQt.QSystemTrayIcon_ShowMessage(this.nativePtr, title, msg, icon);
	}
	
	public void ShowMessage2(libqt_string title, libqt_string msg)
	{
		CQt.QSystemTrayIcon_ShowMessage2(this.nativePtr, title, msg);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QSystemTrayIcon_Event(this.nativePtr, event);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QSystemTrayIcon_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QSystemTrayIcon_Tr3(s, c, n);
	}
	
	public void ShowMessage4(libqt_string title, libqt_string msg, void* icon, int32 msecs)
	{
		CQt.QSystemTrayIcon_ShowMessage4(this.nativePtr, title, msg, icon, msecs);
	}
	
	public void ShowMessage3(libqt_string title, libqt_string msg, int64 icon)
	{
		CQt.QSystemTrayIcon_ShowMessage3(this.nativePtr, title, msg, icon);
	}
	
	public void ShowMessage42(libqt_string title, libqt_string msg, int64 icon, int32 msecs)
	{
		CQt.QSystemTrayIcon_ShowMessage42(this.nativePtr, title, msg, icon, msecs);
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
	[LinkName("QSystemTrayIcon_new")]
	public static extern void* QSystemTrayIcon_new();
	[LinkName("QSystemTrayIcon_new2")]
	public static extern void* QSystemTrayIcon_new2(void* icon);
	[LinkName("QSystemTrayIcon_new3")]
	public static extern void* QSystemTrayIcon_new3(void* parent);
	[LinkName("QSystemTrayIcon_new4")]
	public static extern void* QSystemTrayIcon_new4(void* icon, void* parent);
	[LinkName("QSystemTrayIcon_MetaObject")]
	public static extern void* QSystemTrayIcon_MetaObject(void* c_this);
	[LinkName("QSystemTrayIcon_Metacast")]
	public static extern void* QSystemTrayIcon_Metacast(void* c_this, char8[] param1);
	[LinkName("QSystemTrayIcon_Metacall")]
	public static extern int32 QSystemTrayIcon_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSystemTrayIcon_Tr")]
	public static extern libqt_string QSystemTrayIcon_Tr(char8[] s);
	[LinkName("QSystemTrayIcon_SetContextMenu")]
	public static extern void QSystemTrayIcon_SetContextMenu(void* c_this, void* menu);
	[LinkName("QSystemTrayIcon_ContextMenu")]
	public static extern void* QSystemTrayIcon_ContextMenu(void* c_this);
	[LinkName("QSystemTrayIcon_Icon")]
	public static extern void QSystemTrayIcon_Icon(void* c_this);
	[LinkName("QSystemTrayIcon_SetIcon")]
	public static extern void QSystemTrayIcon_SetIcon(void* c_this, void* icon);
	[LinkName("QSystemTrayIcon_ToolTip")]
	public static extern libqt_string QSystemTrayIcon_ToolTip(void* c_this);
	[LinkName("QSystemTrayIcon_SetToolTip")]
	public static extern void QSystemTrayIcon_SetToolTip(void* c_this, libqt_string tip);
	[LinkName("QSystemTrayIcon_IsSystemTrayAvailable")]
	public static extern bool QSystemTrayIcon_IsSystemTrayAvailable();
	[LinkName("QSystemTrayIcon_SupportsMessages")]
	public static extern bool QSystemTrayIcon_SupportsMessages();
	[LinkName("QSystemTrayIcon_Geometry")]
	public static extern void QSystemTrayIcon_Geometry(void* c_this);
	[LinkName("QSystemTrayIcon_IsVisible")]
	public static extern bool QSystemTrayIcon_IsVisible(void* c_this);
	[LinkName("QSystemTrayIcon_SetVisible")]
	public static extern void QSystemTrayIcon_SetVisible(void* c_this, bool visible);
	[LinkName("QSystemTrayIcon_Show")]
	public static extern void QSystemTrayIcon_Show(void* c_this);
	[LinkName("QSystemTrayIcon_Hide")]
	public static extern void QSystemTrayIcon_Hide(void* c_this);
	[LinkName("QSystemTrayIcon_ShowMessage")]
	public static extern void QSystemTrayIcon_ShowMessage(void* c_this, libqt_string title, libqt_string msg, void* icon);
	[LinkName("QSystemTrayIcon_ShowMessage2")]
	public static extern void QSystemTrayIcon_ShowMessage2(void* c_this, libqt_string title, libqt_string msg);
	[LinkName("QSystemTrayIcon_Connect_Activated")]
	public static extern void QSystemTrayIcon_Connect_Activated(void* c_this, c_intptr slot);
	[LinkName("QSystemTrayIcon_Connect_MessageClicked")]
	public static extern void QSystemTrayIcon_Connect_MessageClicked(void* c_this, c_intptr slot);
	[LinkName("QSystemTrayIcon_Event")]
	public static extern bool QSystemTrayIcon_Event(void* c_this, void* event);
	[LinkName("QSystemTrayIcon_Tr2")]
	public static extern libqt_string QSystemTrayIcon_Tr2(char8[] s, char8[] c);
	[LinkName("QSystemTrayIcon_Tr3")]
	public static extern libqt_string QSystemTrayIcon_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSystemTrayIcon_ShowMessage4")]
	public static extern void QSystemTrayIcon_ShowMessage4(void* c_this, libqt_string title, libqt_string msg, void* icon, int32 msecs);
	[LinkName("QSystemTrayIcon_ShowMessage3")]
	public static extern void QSystemTrayIcon_ShowMessage3(void* c_this, libqt_string title, libqt_string msg, int64 icon);
	[LinkName("QSystemTrayIcon_ShowMessage42")]
	public static extern void QSystemTrayIcon_ShowMessage42(void* c_this, libqt_string title, libqt_string msg, int64 icon, int32 msecs);
	/// Delete this object from C++ memory
	[LinkName("QSystemTrayIcon_Delete")]
	public static extern void QSystemTrayIcon_Delete(void* self);
}