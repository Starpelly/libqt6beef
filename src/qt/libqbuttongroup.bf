using System;
using System.Interop;
namespace Qt;

public interface IQButtonGroup
{
	void* NativePtr { get; }
}
public class QButtonGroup : IQButtonGroup, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QButtonGroup_new();
	}
	
	public ~this()
	{
		CQt.QButtonGroup_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QButtonGroup_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QButtonGroup_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QButtonGroup_Metacall(this.nativePtr, param1, param2, param3);
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
		CQt.QButtonGroup_AddButton(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void RemoveButton(IQAbstractButton param1)
	{
		CQt.QButtonGroup_RemoveButton(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
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
		CQt.QButtonGroup_SetId(this.nativePtr, (button == null) ? null : (void*)button.NativePtr, id);
	}
	
	public int32 Id(IQAbstractButton button)
	{
		return CQt.QButtonGroup_Id(this.nativePtr, (button == null) ? null : (void*)button.NativePtr);
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
		CQt.QButtonGroup_AddButton2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, id);
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