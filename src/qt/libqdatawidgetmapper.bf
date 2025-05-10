using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDataWidgetMapper__SubmitPolicy
{
	AutoSubmit = 0,
	ManualSubmit = 1,
}
public class QDataWidgetMapper
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QDataWidgetMapper_new();
	}
	
	public ~this()
	{
		CQt.QDataWidgetMapper_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QDataWidgetMapper_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QDataWidgetMapper_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QDataWidgetMapper_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QDataWidgetMapper_Tr(s);
	}
	
	public void SetModel(void* model)
	{
		CQt.QDataWidgetMapper_SetModel(this.nativePtr, model);
	}
	
	public void* Model()
	{
		return CQt.QDataWidgetMapper_Model(this.nativePtr);
	}
	
	public void SetItemDelegate(void* _delegate)
	{
		CQt.QDataWidgetMapper_SetItemDelegate(this.nativePtr, _delegate);
	}
	
	public void* ItemDelegate()
	{
		return CQt.QDataWidgetMapper_ItemDelegate(this.nativePtr);
	}
	
	public void SetRootIndex(void* index)
	{
		CQt.QDataWidgetMapper_SetRootIndex(this.nativePtr, index);
	}
	
	public void RootIndex()
	{
		CQt.QDataWidgetMapper_RootIndex(this.nativePtr);
	}
	
	public void SetOrientation(int64 aOrientation)
	{
		CQt.QDataWidgetMapper_SetOrientation(this.nativePtr, aOrientation);
	}
	
	public int64 Orientation()
	{
		return CQt.QDataWidgetMapper_Orientation(this.nativePtr);
	}
	
	public void SetSubmitPolicy(int64 policy)
	{
		CQt.QDataWidgetMapper_SetSubmitPolicy(this.nativePtr, policy);
	}
	
	public int64 SubmitPolicy()
	{
		return CQt.QDataWidgetMapper_SubmitPolicy(this.nativePtr);
	}
	
	public void AddMapping(void* widget, int32 section)
	{
		CQt.QDataWidgetMapper_AddMapping(this.nativePtr, widget, section);
	}
	
	public void AddMapping2(void* widget, int32 section, libqt_string propertyName)
	{
		CQt.QDataWidgetMapper_AddMapping2(this.nativePtr, widget, section, propertyName);
	}
	
	public void RemoveMapping(void* widget)
	{
		CQt.QDataWidgetMapper_RemoveMapping(this.nativePtr, widget);
	}
	
	public int32 MappedSection(void* widget)
	{
		return CQt.QDataWidgetMapper_MappedSection(this.nativePtr, widget);
	}
	
	public libqt_string MappedPropertyName(void* widget)
	{
		return CQt.QDataWidgetMapper_MappedPropertyName(this.nativePtr, widget);
	}
	
	public void* MappedWidgetAt(int32 section)
	{
		return CQt.QDataWidgetMapper_MappedWidgetAt(this.nativePtr, section);
	}
	
	public void ClearMapping()
	{
		CQt.QDataWidgetMapper_ClearMapping(this.nativePtr);
	}
	
	public int32 CurrentIndex()
	{
		return CQt.QDataWidgetMapper_CurrentIndex(this.nativePtr);
	}
	
	public void Revert()
	{
		CQt.QDataWidgetMapper_Revert(this.nativePtr);
	}
	
	public bool Submit()
	{
		return CQt.QDataWidgetMapper_Submit(this.nativePtr);
	}
	
	public void ToFirst()
	{
		CQt.QDataWidgetMapper_ToFirst(this.nativePtr);
	}
	
	public void ToLast()
	{
		CQt.QDataWidgetMapper_ToLast(this.nativePtr);
	}
	
	public void ToNext()
	{
		CQt.QDataWidgetMapper_ToNext(this.nativePtr);
	}
	
	public void ToPrevious()
	{
		CQt.QDataWidgetMapper_ToPrevious(this.nativePtr);
	}
	
	public virtual void SetCurrentIndex(int32 index)
	{
		CQt.QDataWidgetMapper_SetCurrentIndex(this.nativePtr, index);
	}
	
	public void SetCurrentModelIndex(void* index)
	{
		CQt.QDataWidgetMapper_SetCurrentModelIndex(this.nativePtr, index);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QDataWidgetMapper_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QDataWidgetMapper_Tr3(s, c, n);
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
	[LinkName("QDataWidgetMapper_new")]
	public static extern void* QDataWidgetMapper_new();
	[LinkName("QDataWidgetMapper_new2")]
	public static extern void* QDataWidgetMapper_new2(void* parent);
	[LinkName("QDataWidgetMapper_MetaObject")]
	public static extern void* QDataWidgetMapper_MetaObject(void* c_this);
	[LinkName("QDataWidgetMapper_Metacast")]
	public static extern void* QDataWidgetMapper_Metacast(void* c_this, char8[] param1);
	[LinkName("QDataWidgetMapper_Metacall")]
	public static extern int32 QDataWidgetMapper_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDataWidgetMapper_Tr")]
	public static extern libqt_string QDataWidgetMapper_Tr(char8[] s);
	[LinkName("QDataWidgetMapper_SetModel")]
	public static extern void QDataWidgetMapper_SetModel(void* c_this, void* model);
	[LinkName("QDataWidgetMapper_Model")]
	public static extern void* QDataWidgetMapper_Model(void* c_this);
	[LinkName("QDataWidgetMapper_SetItemDelegate")]
	public static extern void QDataWidgetMapper_SetItemDelegate(void* c_this, void* _delegate);
	[LinkName("QDataWidgetMapper_ItemDelegate")]
	public static extern void* QDataWidgetMapper_ItemDelegate(void* c_this);
	[LinkName("QDataWidgetMapper_SetRootIndex")]
	public static extern void QDataWidgetMapper_SetRootIndex(void* c_this, void* index);
	[LinkName("QDataWidgetMapper_RootIndex")]
	public static extern void QDataWidgetMapper_RootIndex(void* c_this);
	[LinkName("QDataWidgetMapper_SetOrientation")]
	public static extern void QDataWidgetMapper_SetOrientation(void* c_this, int64 aOrientation);
	[LinkName("QDataWidgetMapper_Orientation")]
	public static extern int64 QDataWidgetMapper_Orientation(void* c_this);
	[LinkName("QDataWidgetMapper_SetSubmitPolicy")]
	public static extern void QDataWidgetMapper_SetSubmitPolicy(void* c_this, int64 policy);
	[LinkName("QDataWidgetMapper_SubmitPolicy")]
	public static extern int64 QDataWidgetMapper_SubmitPolicy(void* c_this);
	[LinkName("QDataWidgetMapper_AddMapping")]
	public static extern void QDataWidgetMapper_AddMapping(void* c_this, void* widget, int32 section);
	[LinkName("QDataWidgetMapper_AddMapping2")]
	public static extern void QDataWidgetMapper_AddMapping2(void* c_this, void* widget, int32 section, libqt_string propertyName);
	[LinkName("QDataWidgetMapper_RemoveMapping")]
	public static extern void QDataWidgetMapper_RemoveMapping(void* c_this, void* widget);
	[LinkName("QDataWidgetMapper_MappedSection")]
	public static extern int32 QDataWidgetMapper_MappedSection(void* c_this, void* widget);
	[LinkName("QDataWidgetMapper_MappedPropertyName")]
	public static extern libqt_string QDataWidgetMapper_MappedPropertyName(void* c_this, void* widget);
	[LinkName("QDataWidgetMapper_MappedWidgetAt")]
	public static extern void* QDataWidgetMapper_MappedWidgetAt(void* c_this, int32 section);
	[LinkName("QDataWidgetMapper_ClearMapping")]
	public static extern void QDataWidgetMapper_ClearMapping(void* c_this);
	[LinkName("QDataWidgetMapper_CurrentIndex")]
	public static extern int32 QDataWidgetMapper_CurrentIndex(void* c_this);
	[LinkName("QDataWidgetMapper_Revert")]
	public static extern void QDataWidgetMapper_Revert(void* c_this);
	[LinkName("QDataWidgetMapper_Submit")]
	public static extern bool QDataWidgetMapper_Submit(void* c_this);
	[LinkName("QDataWidgetMapper_ToFirst")]
	public static extern void QDataWidgetMapper_ToFirst(void* c_this);
	[LinkName("QDataWidgetMapper_ToLast")]
	public static extern void QDataWidgetMapper_ToLast(void* c_this);
	[LinkName("QDataWidgetMapper_ToNext")]
	public static extern void QDataWidgetMapper_ToNext(void* c_this);
	[LinkName("QDataWidgetMapper_ToPrevious")]
	public static extern void QDataWidgetMapper_ToPrevious(void* c_this);
	[LinkName("QDataWidgetMapper_SetCurrentIndex")]
	public static extern void QDataWidgetMapper_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QDataWidgetMapper_SetCurrentModelIndex")]
	public static extern void QDataWidgetMapper_SetCurrentModelIndex(void* c_this, void* index);
	[LinkName("QDataWidgetMapper_Connect_CurrentIndexChanged")]
	public static extern void QDataWidgetMapper_Connect_CurrentIndexChanged(void* c_this, c_intptr slot);
	[LinkName("QDataWidgetMapper_Tr2")]
	public static extern libqt_string QDataWidgetMapper_Tr2(char8[] s, char8[] c);
	[LinkName("QDataWidgetMapper_Tr3")]
	public static extern libqt_string QDataWidgetMapper_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QDataWidgetMapper_Delete")]
	public static extern void QDataWidgetMapper_Delete(void* self);
}