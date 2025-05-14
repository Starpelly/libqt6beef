using System;
using System.Interop;
namespace Qt;

public interface IQButtonGroup
{
	void* NativePtr { get; }
}
public struct QButtonGroupPtr : IQButtonGroup, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QButtonGroup_new());
	}
	
	public void Dispose()
	{
		CQt.QButtonGroup_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QButtonGroup_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QButtonGroup_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QButtonGroup_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QButtonGroup_Tr(s);
	}
	
	public void SetExclusive(bool exclusive)
	{
		CQt.QButtonGroup_SetExclusive(this.nativePtr, exclusive);
	}
	
	public bool Exclusive()
	{
		return CQt.QButtonGroup_Exclusive(this.nativePtr);
	}
	
	public void AddButton(IQAbstractButton param1)
	{
		CQt.QButtonGroup_AddButton(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void RemoveButton(IQAbstractButton param1)
	{
		CQt.QButtonGroup_RemoveButton(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void*[] Buttons()
	{
		return CQt.QButtonGroup_Buttons(this.nativePtr);
	}
	
	public void* CheckedButton()
	{
		return CQt.QButtonGroup_CheckedButton(this.nativePtr);
	}
	
	public void* Button(int32 id)
	{
		return CQt.QButtonGroup_Button(this.nativePtr, id);
	}
	
	public void SetId(IQAbstractButton button, int32 id)
	{
		CQt.QButtonGroup_SetId(this.nativePtr, (button == default || button.NativePtr == default) ? default : button.NativePtr, id);
	}
	
	public int32 Id(IQAbstractButton button)
	{
		return CQt.QButtonGroup_Id(this.nativePtr, (button == default || button.NativePtr == default) ? default : button.NativePtr);
	}
	
	public int32 CheckedId()
	{
		return CQt.QButtonGroup_CheckedId(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QButtonGroup_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QButtonGroup_Tr3(s, c, n);
	}
	
	public void AddButton2(IQAbstractButton param1, int32 id)
	{
		CQt.QButtonGroup_AddButton2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, id);
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
public class QButtonGroup
{
	public QButtonGroupPtr handle;
	
	public static implicit operator QButtonGroupPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QButtonGroupPtr.New();
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
		return QButtonGroupPtr.Tr(s);
	}
	
	public void SetExclusive(bool exclusive)
	{
		this.handle.SetExclusive(exclusive);
	}
	
	public bool Exclusive()
	{
		return this.handle.Exclusive();
	}
	
	public void AddButton(IQAbstractButton param1)
	{
		this.handle.AddButton(param1);
	}
	
	public void RemoveButton(IQAbstractButton param1)
	{
		this.handle.RemoveButton(param1);
	}
	
	public void*[] Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void* CheckedButton()
	{
		return this.handle.CheckedButton();
	}
	
	public void* Button(int32 id)
	{
		return this.handle.Button(id);
	}
	
	public void SetId(IQAbstractButton button, int32 id)
	{
		this.handle.SetId(button, id);
	}
	
	public int32 Id(IQAbstractButton button)
	{
		return this.handle.Id(button);
	}
	
	public int32 CheckedId()
	{
		return this.handle.CheckedId();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QButtonGroupPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QButtonGroupPtr.Tr3(s, c, n);
	}
	
	public void AddButton2(IQAbstractButton param1, int32 id)
	{
		this.handle.AddButton2(param1, id);
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
		QButtonGroupPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QButtonGroupPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QButtonGroupPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QButtonGroupPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QButtonGroup_new")]
	public static extern void* QButtonGroup_new();
	[LinkName("QButtonGroup_new2")]
	public static extern void* QButtonGroup_new2(void* parent);
	[LinkName("QButtonGroup_MetaObject")]
	public static extern void* QButtonGroup_MetaObject(void* c_this);
	[LinkName("QButtonGroup_Metacast")]
	public static extern void* QButtonGroup_Metacast(void* c_this, char8* param1);
	[LinkName("QButtonGroup_Metacall")]
	public static extern int32 QButtonGroup_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QButtonGroup_Tr")]
	public static extern libqt_string QButtonGroup_Tr(char8* s);
	[LinkName("QButtonGroup_SetExclusive")]
	public static extern void QButtonGroup_SetExclusive(void* c_this, bool exclusive);
	[LinkName("QButtonGroup_Exclusive")]
	public static extern bool QButtonGroup_Exclusive(void* c_this);
	[LinkName("QButtonGroup_AddButton")]
	public static extern void QButtonGroup_AddButton(void* c_this, void* param1);
	[LinkName("QButtonGroup_RemoveButton")]
	public static extern void QButtonGroup_RemoveButton(void* c_this, void* param1);
	[LinkName("QButtonGroup_Buttons")]
	public static extern void*[] QButtonGroup_Buttons(void* c_this);
	[LinkName("QButtonGroup_CheckedButton")]
	public static extern void* QButtonGroup_CheckedButton(void* c_this);
	[LinkName("QButtonGroup_Button")]
	public static extern void* QButtonGroup_Button(void* c_this, int32 id);
	[LinkName("QButtonGroup_SetId")]
	public static extern void QButtonGroup_SetId(void* c_this, void* button, int32 id);
	[LinkName("QButtonGroup_Id")]
	public static extern int32 QButtonGroup_Id(void* c_this, void* button);
	[LinkName("QButtonGroup_CheckedId")]
	public static extern int32 QButtonGroup_CheckedId(void* c_this);
	[LinkName("QButtonGroup_Connect_ButtonClicked")]
	public static extern void QButtonGroup_Connect_ButtonClicked(void* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_ButtonPressed")]
	public static extern void QButtonGroup_Connect_ButtonPressed(void* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_ButtonReleased")]
	public static extern void QButtonGroup_Connect_ButtonReleased(void* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_ButtonToggled")]
	public static extern void QButtonGroup_Connect_ButtonToggled(void* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_IdClicked")]
	public static extern void QButtonGroup_Connect_IdClicked(void* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_IdPressed")]
	public static extern void QButtonGroup_Connect_IdPressed(void* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_IdReleased")]
	public static extern void QButtonGroup_Connect_IdReleased(void* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_IdToggled")]
	public static extern void QButtonGroup_Connect_IdToggled(void* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Tr2")]
	public static extern libqt_string QButtonGroup_Tr2(char8* s, char8* c);
	[LinkName("QButtonGroup_Tr3")]
	public static extern libqt_string QButtonGroup_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QButtonGroup_AddButton2")]
	public static extern void QButtonGroup_AddButton2(void* c_this, void* param1, int32 id);
	/// Delete this object from C++ memory
	[LinkName("QButtonGroup_Delete")]
	public static extern void QButtonGroup_Delete(void* self);
}