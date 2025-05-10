using System;
using System.Interop;
namespace Qt;

public class QButtonGroup
{
	protected void* nativePtr;
	
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
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QButtonGroup_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QButtonGroup_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public void AddButton(void* param1)
	{
		CQt.QButtonGroup_AddButton(this.nativePtr, param1);
	}
	
	public void RemoveButton(void* param1)
	{
		CQt.QButtonGroup_RemoveButton(this.nativePtr, param1);
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
	
	public void SetId(void* button, int32 id)
	{
		CQt.QButtonGroup_SetId(this.nativePtr, button, id);
	}
	
	public int32 Id(void* button)
	{
		return CQt.QButtonGroup_Id(this.nativePtr, button);
	}
	
	public int32 CheckedId()
	{
		return CQt.QButtonGroup_CheckedId(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QButtonGroup_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QButtonGroup_Tr3(s, c, n);
	}
	
	public void AddButton2(void* param1, int32 id)
	{
		CQt.QButtonGroup_AddButton2(this.nativePtr, param1, id);
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
	[LinkName("QButtonGroup_new")]
	public static extern void* QButtonGroup_new();
	[LinkName("QButtonGroup_new2")]
	public static extern void* QButtonGroup_new2(void* parent);
	[LinkName("QButtonGroup_MetaObject")]
	public static extern void* QButtonGroup_MetaObject(void* c_this);
	[LinkName("QButtonGroup_Metacast")]
	public static extern void* QButtonGroup_Metacast(void* c_this, char8[] param1);
	[LinkName("QButtonGroup_Metacall")]
	public static extern int32 QButtonGroup_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QButtonGroup_Tr")]
	public static extern libqt_string QButtonGroup_Tr(char8[] s);
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
	public static extern libqt_string QButtonGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QButtonGroup_Tr3")]
	public static extern libqt_string QButtonGroup_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QButtonGroup_AddButton2")]
	public static extern void QButtonGroup_AddButton2(void* c_this, void* param1, int32 id);
	/// Delete this object from C++ memory
	[LinkName("QButtonGroup_Delete")]
	public static extern void QButtonGroup_Delete(void* self);
}