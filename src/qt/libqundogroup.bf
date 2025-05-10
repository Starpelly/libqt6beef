using System;
using System.Interop;
namespace Qt;

public interface IQUndoGroup
{
	void* NativePtr { get; }
}
public class QUndoGroup : IQUndoGroup, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QUndoGroup_new();
	}
	
	public ~this()
	{
		CQt.QUndoGroup_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QUndoGroup_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QUndoGroup_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QUndoGroup_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QUndoGroup_Tr(s);
	}
	
	public void AddStack(IQUndoStack stack)
	{
		CQt.QUndoGroup_AddStack(this.nativePtr, (stack == null) ? null : (void*)stack.NativePtr);
	}
	
	public void RemoveStack(IQUndoStack stack)
	{
		CQt.QUndoGroup_RemoveStack(this.nativePtr, (stack == null) ? null : (void*)stack.NativePtr);
	}
	
	public void*[] Stacks()
	{
		return CQt.QUndoGroup_Stacks(this.nativePtr);
	}
	
	public void* ActiveStack()
	{
		return CQt.QUndoGroup_ActiveStack(this.nativePtr);
	}
	
	public void* CreateUndoAction(IQObject parent)
	{
		return CQt.QUndoGroup_CreateUndoAction(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void* CreateRedoAction(IQObject parent)
	{
		return CQt.QUndoGroup_CreateRedoAction(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public bool CanUndo()
	{
		return CQt.QUndoGroup_CanUndo(this.nativePtr);
	}
	
	public bool CanRedo()
	{
		return CQt.QUndoGroup_CanRedo(this.nativePtr);
	}
	
	public libqt_string UndoText()
	{
		return CQt.QUndoGroup_UndoText(this.nativePtr);
	}
	
	public libqt_string RedoText()
	{
		return CQt.QUndoGroup_RedoText(this.nativePtr);
	}
	
	public bool IsClean()
	{
		return CQt.QUndoGroup_IsClean(this.nativePtr);
	}
	
	public void Undo()
	{
		CQt.QUndoGroup_Undo(this.nativePtr);
	}
	
	public void Redo()
	{
		CQt.QUndoGroup_Redo(this.nativePtr);
	}
	
	public void SetActiveStack(IQUndoStack stack)
	{
		CQt.QUndoGroup_SetActiveStack(this.nativePtr, (stack == null) ? null : (void*)stack.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QUndoGroup_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QUndoGroup_Tr3(s, c, n);
	}
	
	public void* CreateUndoAction2(IQObject parent, String prefix)
	{
		return CQt.QUndoGroup_CreateUndoAction2(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, libqt_string(prefix));
	}
	
	public void* CreateRedoAction2(IQObject parent, String prefix)
	{
		return CQt.QUndoGroup_CreateRedoAction2(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, libqt_string(prefix));
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
	[LinkName("QUndoGroup_new")]
	public static extern void* QUndoGroup_new();
	[LinkName("QUndoGroup_new2")]
	public static extern void* QUndoGroup_new2(void* parent);
	[LinkName("QUndoGroup_MetaObject")]
	public static extern void* QUndoGroup_MetaObject(void* c_this);
	[LinkName("QUndoGroup_Metacast")]
	public static extern void* QUndoGroup_Metacast(void* c_this, char8* param1);
	[LinkName("QUndoGroup_Metacall")]
	public static extern int32 QUndoGroup_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QUndoGroup_Tr")]
	public static extern libqt_string QUndoGroup_Tr(char8* s);
	[LinkName("QUndoGroup_AddStack")]
	public static extern void QUndoGroup_AddStack(void* c_this, void* stack);
	[LinkName("QUndoGroup_RemoveStack")]
	public static extern void QUndoGroup_RemoveStack(void* c_this, void* stack);
	[LinkName("QUndoGroup_Stacks")]
	public static extern void*[] QUndoGroup_Stacks(void* c_this);
	[LinkName("QUndoGroup_ActiveStack")]
	public static extern void* QUndoGroup_ActiveStack(void* c_this);
	[LinkName("QUndoGroup_CreateUndoAction")]
	public static extern void* QUndoGroup_CreateUndoAction(void* c_this, void* parent);
	[LinkName("QUndoGroup_CreateRedoAction")]
	public static extern void* QUndoGroup_CreateRedoAction(void* c_this, void* parent);
	[LinkName("QUndoGroup_CanUndo")]
	public static extern bool QUndoGroup_CanUndo(void* c_this);
	[LinkName("QUndoGroup_CanRedo")]
	public static extern bool QUndoGroup_CanRedo(void* c_this);
	[LinkName("QUndoGroup_UndoText")]
	public static extern libqt_string QUndoGroup_UndoText(void* c_this);
	[LinkName("QUndoGroup_RedoText")]
	public static extern libqt_string QUndoGroup_RedoText(void* c_this);
	[LinkName("QUndoGroup_IsClean")]
	public static extern bool QUndoGroup_IsClean(void* c_this);
	[LinkName("QUndoGroup_Undo")]
	public static extern void QUndoGroup_Undo(void* c_this);
	[LinkName("QUndoGroup_Redo")]
	public static extern void QUndoGroup_Redo(void* c_this);
	[LinkName("QUndoGroup_SetActiveStack")]
	public static extern void QUndoGroup_SetActiveStack(void* c_this, void* stack);
	[LinkName("QUndoGroup_Connect_ActiveStackChanged")]
	public static extern void QUndoGroup_Connect_ActiveStackChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_IndexChanged")]
	public static extern void QUndoGroup_Connect_IndexChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_CleanChanged")]
	public static extern void QUndoGroup_Connect_CleanChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_CanUndoChanged")]
	public static extern void QUndoGroup_Connect_CanUndoChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_CanRedoChanged")]
	public static extern void QUndoGroup_Connect_CanRedoChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_UndoTextChanged")]
	public static extern void QUndoGroup_Connect_UndoTextChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_RedoTextChanged")]
	public static extern void QUndoGroup_Connect_RedoTextChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Tr2")]
	public static extern libqt_string QUndoGroup_Tr2(char8* s, char8* c);
	[LinkName("QUndoGroup_Tr3")]
	public static extern libqt_string QUndoGroup_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QUndoGroup_CreateUndoAction2")]
	public static extern void* QUndoGroup_CreateUndoAction2(void* c_this, void* parent, libqt_string prefix);
	[LinkName("QUndoGroup_CreateRedoAction2")]
	public static extern void* QUndoGroup_CreateRedoAction2(void* c_this, void* parent, libqt_string prefix);
	/// Delete this object from C++ memory
	[LinkName("QUndoGroup_Delete")]
	public static extern void QUndoGroup_Delete(void* self);
}