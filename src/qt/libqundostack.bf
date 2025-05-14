using System;
using System.Interop;
namespace Qt;

public interface IQUndoCommand
{
	void* NativePtr { get; }
}
public struct QUndoCommandPtr : IQUndoCommand, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QUndoCommand_new());
	}
	
	public void Dispose()
	{
		CQt.QUndoCommand_Delete(this.nativePtr);
	}
	
	public void Undo()
	{
		CQt.QUndoCommand_Undo(this.nativePtr);
	}
	
	public void Redo()
	{
		CQt.QUndoCommand_Redo(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QUndoCommand_Text(this.nativePtr);
	}
	
	public libqt_string ActionText()
	{
		return CQt.QUndoCommand_ActionText(this.nativePtr);
	}
	
	public void SetText(String text)
	{
		CQt.QUndoCommand_SetText(this.nativePtr, libqt_string(text));
	}
	
	public bool IsObsolete()
	{
		return CQt.QUndoCommand_IsObsolete(this.nativePtr);
	}
	
	public void SetObsolete(bool obsolete)
	{
		CQt.QUndoCommand_SetObsolete(this.nativePtr, obsolete);
	}
	
	public int32 Id()
	{
		return CQt.QUndoCommand_Id(this.nativePtr);
	}
	
	public bool MergeWith(IQUndoCommand other)
	{
		return CQt.QUndoCommand_MergeWith(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int32 ChildCount()
	{
		return CQt.QUndoCommand_ChildCount(this.nativePtr);
	}
	
	public void* Child(int32 index)
	{
		return CQt.QUndoCommand_Child(this.nativePtr, index);
	}
	
}
public class QUndoCommand
{
	public QUndoCommandPtr handle;
	
	public static implicit operator QUndoCommandPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QUndoCommandPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void Undo()
	{
		this.handle.Undo();
	}
	
	public virtual void Redo()
	{
		this.handle.Redo();
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public libqt_string ActionText()
	{
		return this.handle.ActionText();
	}
	
	public void SetText(String text)
	{
		this.handle.SetText(text);
	}
	
	public bool IsObsolete()
	{
		return this.handle.IsObsolete();
	}
	
	public void SetObsolete(bool obsolete)
	{
		this.handle.SetObsolete(obsolete);
	}
	
	public virtual int32 Id()
	{
		return this.handle.Id();
	}
	
	public virtual bool MergeWith(IQUndoCommand other)
	{
		return this.handle.MergeWith(other);
	}
	
	public int32 ChildCount()
	{
		return this.handle.ChildCount();
	}
	
	public void* Child(int32 index)
	{
		return this.handle.Child(index);
	}
	
}
extension CQt
{
	[LinkName("QUndoCommand_new")]
	public static extern void* QUndoCommand_new();
	[LinkName("QUndoCommand_new2")]
	public static extern void* QUndoCommand_new2(libqt_string text);
	[LinkName("QUndoCommand_new3")]
	public static extern void* QUndoCommand_new3(void* parent);
	[LinkName("QUndoCommand_new4")]
	public static extern void* QUndoCommand_new4(libqt_string text, void* parent);
	[LinkName("QUndoCommand_Undo")]
	public static extern void QUndoCommand_Undo(void* c_this);
	[LinkName("QUndoCommand_Redo")]
	public static extern void QUndoCommand_Redo(void* c_this);
	[LinkName("QUndoCommand_Text")]
	public static extern libqt_string QUndoCommand_Text(void* c_this);
	[LinkName("QUndoCommand_ActionText")]
	public static extern libqt_string QUndoCommand_ActionText(void* c_this);
	[LinkName("QUndoCommand_SetText")]
	public static extern void QUndoCommand_SetText(void* c_this, libqt_string text);
	[LinkName("QUndoCommand_IsObsolete")]
	public static extern bool QUndoCommand_IsObsolete(void* c_this);
	[LinkName("QUndoCommand_SetObsolete")]
	public static extern void QUndoCommand_SetObsolete(void* c_this, bool obsolete);
	[LinkName("QUndoCommand_Id")]
	public static extern int32 QUndoCommand_Id(void* c_this);
	[LinkName("QUndoCommand_MergeWith")]
	public static extern bool QUndoCommand_MergeWith(void* c_this, void* other);
	[LinkName("QUndoCommand_ChildCount")]
	public static extern int32 QUndoCommand_ChildCount(void* c_this);
	[LinkName("QUndoCommand_Child")]
	public static extern void* QUndoCommand_Child(void* c_this, int32 index);
	/// Delete this object from C++ memory
	[LinkName("QUndoCommand_Delete")]
	public static extern void QUndoCommand_Delete(void* self);
}
public interface IQUndoStack
{
	void* NativePtr { get; }
}
public struct QUndoStackPtr : IQUndoStack, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QUndoStack_new());
	}
	
	public void Dispose()
	{
		CQt.QUndoStack_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QUndoStack_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QUndoStack_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QUndoStack_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QUndoStack_Tr(s);
	}
	
	public void Clear()
	{
		CQt.QUndoStack_Clear(this.nativePtr);
	}
	
	public void Push(IQUndoCommand cmd)
	{
		CQt.QUndoStack_Push(this.nativePtr, (cmd == default || cmd.NativePtr == default) ? default : cmd.NativePtr);
	}
	
	public bool CanUndo()
	{
		return CQt.QUndoStack_CanUndo(this.nativePtr);
	}
	
	public bool CanRedo()
	{
		return CQt.QUndoStack_CanRedo(this.nativePtr);
	}
	
	public libqt_string UndoText()
	{
		return CQt.QUndoStack_UndoText(this.nativePtr);
	}
	
	public libqt_string RedoText()
	{
		return CQt.QUndoStack_RedoText(this.nativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QUndoStack_Count(this.nativePtr);
	}
	
	public int32 Index()
	{
		return CQt.QUndoStack_Index(this.nativePtr);
	}
	
	public libqt_string Text(int32 idx)
	{
		return CQt.QUndoStack_Text(this.nativePtr, idx);
	}
	
	public void* CreateUndoAction(IQObject parent)
	{
		return CQt.QUndoStack_CreateUndoAction(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void* CreateRedoAction(IQObject parent)
	{
		return CQt.QUndoStack_CreateRedoAction(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool IsActive()
	{
		return CQt.QUndoStack_IsActive(this.nativePtr);
	}
	
	public bool IsClean()
	{
		return CQt.QUndoStack_IsClean(this.nativePtr);
	}
	
	public int32 CleanIndex()
	{
		return CQt.QUndoStack_CleanIndex(this.nativePtr);
	}
	
	public void BeginMacro(String text)
	{
		CQt.QUndoStack_BeginMacro(this.nativePtr, libqt_string(text));
	}
	
	public void EndMacro()
	{
		CQt.QUndoStack_EndMacro(this.nativePtr);
	}
	
	public void SetUndoLimit(int32 limit)
	{
		CQt.QUndoStack_SetUndoLimit(this.nativePtr, limit);
	}
	
	public int32 UndoLimit()
	{
		return CQt.QUndoStack_UndoLimit(this.nativePtr);
	}
	
	public void* Command(int32 index)
	{
		return CQt.QUndoStack_Command(this.nativePtr, index);
	}
	
	public void SetClean()
	{
		CQt.QUndoStack_SetClean(this.nativePtr);
	}
	
	public void ResetClean()
	{
		CQt.QUndoStack_ResetClean(this.nativePtr);
	}
	
	public void SetIndex(int32 idx)
	{
		CQt.QUndoStack_SetIndex(this.nativePtr, idx);
	}
	
	public void Undo()
	{
		CQt.QUndoStack_Undo(this.nativePtr);
	}
	
	public void Redo()
	{
		CQt.QUndoStack_Redo(this.nativePtr);
	}
	
	public void SetActive()
	{
		CQt.QUndoStack_SetActive(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QUndoStack_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QUndoStack_Tr3(s, c, n);
	}
	
	public void* CreateUndoAction2(IQObject parent, String prefix)
	{
		return CQt.QUndoStack_CreateUndoAction2(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(prefix));
	}
	
	public void* CreateRedoAction2(IQObject parent, String prefix)
	{
		return CQt.QUndoStack_CreateRedoAction2(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(prefix));
	}
	
	public void SetActive1(bool active)
	{
		CQt.QUndoStack_SetActive1(this.nativePtr, active);
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
public class QUndoStack
{
	public QUndoStackPtr handle;
	
	public static implicit operator QUndoStackPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QUndoStackPtr.New();
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
		return QUndoStackPtr.Tr(s);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public void Push(IQUndoCommand cmd)
	{
		this.handle.Push(cmd);
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
	
	public int32 Count()
	{
		return this.handle.Count();
	}
	
	public int32 Index()
	{
		return this.handle.Index();
	}
	
	public libqt_string Text(int32 idx)
	{
		return this.handle.Text(idx);
	}
	
	public void* CreateUndoAction(IQObject parent)
	{
		return this.handle.CreateUndoAction(parent);
	}
	
	public void* CreateRedoAction(IQObject parent)
	{
		return this.handle.CreateRedoAction(parent);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public bool IsClean()
	{
		return this.handle.IsClean();
	}
	
	public int32 CleanIndex()
	{
		return this.handle.CleanIndex();
	}
	
	public void BeginMacro(String text)
	{
		this.handle.BeginMacro(text);
	}
	
	public void EndMacro()
	{
		this.handle.EndMacro();
	}
	
	public void SetUndoLimit(int32 limit)
	{
		this.handle.SetUndoLimit(limit);
	}
	
	public int32 UndoLimit()
	{
		return this.handle.UndoLimit();
	}
	
	public void* Command(int32 index)
	{
		return this.handle.Command(index);
	}
	
	public void SetClean()
	{
		this.handle.SetClean();
	}
	
	public void ResetClean()
	{
		this.handle.ResetClean();
	}
	
	public void SetIndex(int32 idx)
	{
		this.handle.SetIndex(idx);
	}
	
	public void Undo()
	{
		this.handle.Undo();
	}
	
	public void Redo()
	{
		this.handle.Redo();
	}
	
	public void SetActive()
	{
		this.handle.SetActive();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QUndoStackPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QUndoStackPtr.Tr3(s, c, n);
	}
	
	public void* CreateUndoAction2(IQObject parent, String prefix)
	{
		return this.handle.CreateUndoAction2(parent, prefix);
	}
	
	public void* CreateRedoAction2(IQObject parent, String prefix)
	{
		return this.handle.CreateRedoAction2(parent, prefix);
	}
	
	public void SetActive1(bool active)
	{
		this.handle.SetActive1(active);
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
		QUndoStackPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QUndoStackPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QUndoStackPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QUndoStackPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QUndoStack_new")]
	public static extern void* QUndoStack_new();
	[LinkName("QUndoStack_new2")]
	public static extern void* QUndoStack_new2(void* parent);
	[LinkName("QUndoStack_MetaObject")]
	public static extern void* QUndoStack_MetaObject(void* c_this);
	[LinkName("QUndoStack_Metacast")]
	public static extern void* QUndoStack_Metacast(void* c_this, char8* param1);
	[LinkName("QUndoStack_Metacall")]
	public static extern int32 QUndoStack_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QUndoStack_Tr")]
	public static extern libqt_string QUndoStack_Tr(char8* s);
	[LinkName("QUndoStack_Clear")]
	public static extern void QUndoStack_Clear(void* c_this);
	[LinkName("QUndoStack_Push")]
	public static extern void QUndoStack_Push(void* c_this, void* cmd);
	[LinkName("QUndoStack_CanUndo")]
	public static extern bool QUndoStack_CanUndo(void* c_this);
	[LinkName("QUndoStack_CanRedo")]
	public static extern bool QUndoStack_CanRedo(void* c_this);
	[LinkName("QUndoStack_UndoText")]
	public static extern libqt_string QUndoStack_UndoText(void* c_this);
	[LinkName("QUndoStack_RedoText")]
	public static extern libqt_string QUndoStack_RedoText(void* c_this);
	[LinkName("QUndoStack_Count")]
	public static extern int32 QUndoStack_Count(void* c_this);
	[LinkName("QUndoStack_Index")]
	public static extern int32 QUndoStack_Index(void* c_this);
	[LinkName("QUndoStack_Text")]
	public static extern libqt_string QUndoStack_Text(void* c_this, int32 idx);
	[LinkName("QUndoStack_CreateUndoAction")]
	public static extern void* QUndoStack_CreateUndoAction(void* c_this, void* parent);
	[LinkName("QUndoStack_CreateRedoAction")]
	public static extern void* QUndoStack_CreateRedoAction(void* c_this, void* parent);
	[LinkName("QUndoStack_IsActive")]
	public static extern bool QUndoStack_IsActive(void* c_this);
	[LinkName("QUndoStack_IsClean")]
	public static extern bool QUndoStack_IsClean(void* c_this);
	[LinkName("QUndoStack_CleanIndex")]
	public static extern int32 QUndoStack_CleanIndex(void* c_this);
	[LinkName("QUndoStack_BeginMacro")]
	public static extern void QUndoStack_BeginMacro(void* c_this, libqt_string text);
	[LinkName("QUndoStack_EndMacro")]
	public static extern void QUndoStack_EndMacro(void* c_this);
	[LinkName("QUndoStack_SetUndoLimit")]
	public static extern void QUndoStack_SetUndoLimit(void* c_this, int32 limit);
	[LinkName("QUndoStack_UndoLimit")]
	public static extern int32 QUndoStack_UndoLimit(void* c_this);
	[LinkName("QUndoStack_Command")]
	public static extern void* QUndoStack_Command(void* c_this, int32 index);
	[LinkName("QUndoStack_SetClean")]
	public static extern void QUndoStack_SetClean(void* c_this);
	[LinkName("QUndoStack_ResetClean")]
	public static extern void QUndoStack_ResetClean(void* c_this);
	[LinkName("QUndoStack_SetIndex")]
	public static extern void QUndoStack_SetIndex(void* c_this, int32 idx);
	[LinkName("QUndoStack_Undo")]
	public static extern void QUndoStack_Undo(void* c_this);
	[LinkName("QUndoStack_Redo")]
	public static extern void QUndoStack_Redo(void* c_this);
	[LinkName("QUndoStack_SetActive")]
	public static extern void QUndoStack_SetActive(void* c_this);
	[LinkName("QUndoStack_Connect_IndexChanged")]
	public static extern void QUndoStack_Connect_IndexChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_CleanChanged")]
	public static extern void QUndoStack_Connect_CleanChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_CanUndoChanged")]
	public static extern void QUndoStack_Connect_CanUndoChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_CanRedoChanged")]
	public static extern void QUndoStack_Connect_CanRedoChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_UndoTextChanged")]
	public static extern void QUndoStack_Connect_UndoTextChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_RedoTextChanged")]
	public static extern void QUndoStack_Connect_RedoTextChanged(void* c_this, c_intptr slot);
	[LinkName("QUndoStack_Tr2")]
	public static extern libqt_string QUndoStack_Tr2(char8* s, char8* c);
	[LinkName("QUndoStack_Tr3")]
	public static extern libqt_string QUndoStack_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QUndoStack_CreateUndoAction2")]
	public static extern void* QUndoStack_CreateUndoAction2(void* c_this, void* parent, libqt_string prefix);
	[LinkName("QUndoStack_CreateRedoAction2")]
	public static extern void* QUndoStack_CreateRedoAction2(void* c_this, void* parent, libqt_string prefix);
	[LinkName("QUndoStack_SetActive1")]
	public static extern void QUndoStack_SetActive1(void* c_this, bool active);
	/// Delete this object from C++ memory
	[LinkName("QUndoStack_Delete")]
	public static extern void QUndoStack_Delete(void* self);
}