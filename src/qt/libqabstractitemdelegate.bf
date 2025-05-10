using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractItemDelegate__EndEditHint
{
	NoHint = 0,
	EditNextItem = 1,
	EditPreviousItem = 2,
	SubmitModelCache = 3,
	RevertModelCache = 4,
}
public class QAbstractItemDelegate
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAbstractItemDelegate_new();
	}
	
	public ~this()
	{
		CQt.QAbstractItemDelegate_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractItemDelegate_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAbstractItemDelegate_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractItemDelegate_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAbstractItemDelegate_Tr(s);
	}
	
	public virtual void Paint(void* painter, void* option, void* index)
	{
		CQt.QAbstractItemDelegate_Paint(this.nativePtr, painter, option, index);
	}
	
	public virtual void SizeHint(void* option, void* index)
	{
		CQt.QAbstractItemDelegate_SizeHint(this.nativePtr, option, index);
	}
	
	public virtual void* CreateEditor(void* parent, void* option, void* index)
	{
		return CQt.QAbstractItemDelegate_CreateEditor(this.nativePtr, parent, option, index);
	}
	
	public virtual void DestroyEditor(void* editor, void* index)
	{
		CQt.QAbstractItemDelegate_DestroyEditor(this.nativePtr, editor, index);
	}
	
	public virtual void SetEditorData(void* editor, void* index)
	{
		CQt.QAbstractItemDelegate_SetEditorData(this.nativePtr, editor, index);
	}
	
	public virtual void SetModelData(void* editor, void* model, void* index)
	{
		CQt.QAbstractItemDelegate_SetModelData(this.nativePtr, editor, model, index);
	}
	
	public virtual void UpdateEditorGeometry(void* editor, void* option, void* index)
	{
		CQt.QAbstractItemDelegate_UpdateEditorGeometry(this.nativePtr, editor, option, index);
	}
	
	public virtual bool EditorEvent(void* event, void* model, void* option, void* index)
	{
		return CQt.QAbstractItemDelegate_EditorEvent(this.nativePtr, event, model, option, index);
	}
	
	public virtual bool HelpEvent(void* event, void* view, void* option, void* index)
	{
		return CQt.QAbstractItemDelegate_HelpEvent(this.nativePtr, event, view, option, index);
	}
	
	public virtual int32[] PaintingRoles()
	{
		return CQt.QAbstractItemDelegate_PaintingRoles(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAbstractItemDelegate_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAbstractItemDelegate_Tr3(s, c, n);
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
	[LinkName("QAbstractItemDelegate_new")]
	public static extern void* QAbstractItemDelegate_new();
	[LinkName("QAbstractItemDelegate_new2")]
	public static extern void* QAbstractItemDelegate_new2(void* parent);
	[LinkName("QAbstractItemDelegate_MetaObject")]
	public static extern void* QAbstractItemDelegate_MetaObject(void* c_this);
	[LinkName("QAbstractItemDelegate_Metacast")]
	public static extern void* QAbstractItemDelegate_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractItemDelegate_Metacall")]
	public static extern int32 QAbstractItemDelegate_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractItemDelegate_Tr")]
	public static extern libqt_string QAbstractItemDelegate_Tr(char8[] s);
	[LinkName("QAbstractItemDelegate_Paint")]
	public static extern void QAbstractItemDelegate_Paint(void* c_this, void* painter, void* option, void* index);
	[LinkName("QAbstractItemDelegate_SizeHint")]
	public static extern void QAbstractItemDelegate_SizeHint(void* c_this, void* option, void* index);
	[LinkName("QAbstractItemDelegate_CreateEditor")]
	public static extern void* QAbstractItemDelegate_CreateEditor(void* c_this, void* parent, void* option, void* index);
	[LinkName("QAbstractItemDelegate_DestroyEditor")]
	public static extern void QAbstractItemDelegate_DestroyEditor(void* c_this, void* editor, void* index);
	[LinkName("QAbstractItemDelegate_SetEditorData")]
	public static extern void QAbstractItemDelegate_SetEditorData(void* c_this, void* editor, void* index);
	[LinkName("QAbstractItemDelegate_SetModelData")]
	public static extern void QAbstractItemDelegate_SetModelData(void* c_this, void* editor, void* model, void* index);
	[LinkName("QAbstractItemDelegate_UpdateEditorGeometry")]
	public static extern void QAbstractItemDelegate_UpdateEditorGeometry(void* c_this, void* editor, void* option, void* index);
	[LinkName("QAbstractItemDelegate_EditorEvent")]
	public static extern bool QAbstractItemDelegate_EditorEvent(void* c_this, void* event, void* model, void* option, void* index);
	[LinkName("QAbstractItemDelegate_HelpEvent")]
	public static extern bool QAbstractItemDelegate_HelpEvent(void* c_this, void* event, void* view, void* option, void* index);
	[LinkName("QAbstractItemDelegate_PaintingRoles")]
	public static extern int32[] QAbstractItemDelegate_PaintingRoles(void* c_this);
	[LinkName("QAbstractItemDelegate_Connect_CommitData")]
	public static extern void QAbstractItemDelegate_Connect_CommitData(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemDelegate_Connect_CloseEditor")]
	public static extern void QAbstractItemDelegate_Connect_CloseEditor(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemDelegate_Connect_SizeHintChanged")]
	public static extern void QAbstractItemDelegate_Connect_SizeHintChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemDelegate_Tr2")]
	public static extern libqt_string QAbstractItemDelegate_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractItemDelegate_Tr3")]
	public static extern libqt_string QAbstractItemDelegate_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractItemDelegate_Connect_CloseEditor2")]
	public static extern void QAbstractItemDelegate_Connect_CloseEditor2(void* c_this, c_intptr slot);
	/// Delete this object from C++ memory
	[LinkName("QAbstractItemDelegate_Delete")]
	public static extern void QAbstractItemDelegate_Delete(void* self);
}