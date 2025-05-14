using System;
using System.Interop;
namespace Qt;

public interface IQUndoGroup
{
	void* NativePtr { get; }
}
public struct QUndoGroupPtr : IQUndoGroup, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QUndoGroup_new());
	}
	
	public void Dispose()
	{
		CQt.QUndoGroup_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QUndoGroup_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QUndoGroup_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QUndoGroup_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QUndoGroup_Tr(s);
	}
	
	public void AddStack(IQUndoStack stack)
	{
		CQt.QUndoGroup_AddStack(this.nativePtr, (stack == default || stack.NativePtr == default) ? default : stack.NativePtr);
	}
	
	public void RemoveStack(IQUndoStack stack)
	{
		CQt.QUndoGroup_RemoveStack(this.nativePtr, (stack == default || stack.NativePtr == default) ? default : stack.NativePtr);
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
		return CQt.QUndoGroup_CreateUndoAction(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void* CreateRedoAction(IQObject parent)
	{
		return CQt.QUndoGroup_CreateRedoAction(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
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
		CQt.QUndoGroup_SetActiveStack(this.nativePtr, (stack == default || stack.NativePtr == default) ? default : stack.NativePtr);
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
		return CQt.QUndoGroup_CreateUndoAction2(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(prefix));
	}
	
	public void* CreateRedoAction2(IQObject parent, String prefix)
	{
		return CQt.QUndoGroup_CreateRedoAction2(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(prefix));
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
public class QUndoGroup
{
	public QUndoGroupPtr handle;
	
	public static implicit operator QUndoGroupPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QUndoGroupPtr.New();
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
		return QUndoGroupPtr.Tr(s);
	}
	
	public void AddStack(IQUndoStack stack)
	{
		this.handle.AddStack(stack);
	}
	
	public void RemoveStack(IQUndoStack stack)
	{
		this.handle.RemoveStack(stack);
	}
	
	public void*[] Stacks()
	{
		return this.handle.Stacks();
	}
	
	public void* ActiveStack()
	{
		return this.handle.ActiveStack();
	}
	
	public void* CreateUndoAction(IQObject parent)
	{
		return this.handle.CreateUndoAction(parent);
	}
	
	public void* CreateRedoAction(IQObject parent)
	{
		return this.handle.CreateRedoAction(parent);
	}
	
	public bool CanUndo()
	{
		return this.handle.CanUndo();
	}
	
	public bool CanRedo()
	{
		return this.handle.CanRedo();
	}
	
	public libqt_string UndoText()
	{
		return this.handle.UndoText();
	}
	
	public libqt_string RedoText()
	{
		return this.handle.RedoText();
	}
	
	public bool IsClean()
	{
		return this.handle.IsClean();
	}
	
	public void Undo()
	{
		this.handle.Undo();
	}
	
	public void Redo()
	{
		this.handle.Redo();
	}
	
	public void SetActiveStack(IQUndoStack stack)
	{
		this.handle.SetActiveStack(stack);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QUndoGroupPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QUndoGroupPtr.Tr3(s, c, n);
	}
	
	public void* CreateUndoAction2(IQObject parent, String prefix)
	{
		return this.handle.CreateUndoAction2(parent, prefix);
	}
	
	public void* CreateRedoAction2(IQObject parent, String prefix)
	{
		return this.handle.CreateRedoAction2(parent, prefix);
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
		QUndoGroupPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QUndoGroupPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QUndoGroupPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QUndoGroupPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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