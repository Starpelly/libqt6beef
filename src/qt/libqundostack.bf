using System;
using System.Interop;
namespace Qt;

public class QUndoCommand
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QUndoCommand_new();
	}
	
	public ~this()
	{
		CQt.QUndoCommand_Delete(this.nativePtr);
	}
	
	public virtual void Undo()
	{
		CQt.QUndoCommand_Undo(this.nativePtr);
	}
	
	public virtual void Redo()
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
	
	public void SetText(libqt_string text)
	{
		CQt.QUndoCommand_SetText(this.nativePtr, text);
	}
	
	public bool IsObsolete()
	{
		return CQt.QUndoCommand_IsObsolete(this.nativePtr);
	}
	
	public void SetObsolete(bool obsolete)
	{
		CQt.QUndoCommand_SetObsolete(this.nativePtr, obsolete);
	}
	
	public virtual int32 Id()
	{
		return CQt.QUndoCommand_Id(this.nativePtr);
	}
	
	public virtual bool MergeWith(void* other)
	{
		return CQt.QUndoCommand_MergeWith(this.nativePtr, other);
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
public class QUndoStack
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QUndoStack_new();
	}
	
	public ~this()
	{
		CQt.QUndoStack_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QUndoStack_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QUndoStack_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QUndoStack_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QUndoStack_Tr(s);
	}
	
	public void Clear()
	{
		CQt.QUndoStack_Clear(this.nativePtr);
	}
	
	public void Push(void* cmd)
	{
		CQt.QUndoStack_Push(this.nativePtr, cmd);
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
	
	public void* CreateUndoAction(void* parent)
	{
		return CQt.QUndoStack_CreateUndoAction(this.nativePtr, parent);
	}
	
	public void* CreateRedoAction(void* parent)
	{
		return CQt.QUndoStack_CreateRedoAction(this.nativePtr, parent);
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
	
	public void BeginMacro(libqt_string text)
	{
		CQt.QUndoStack_BeginMacro(this.nativePtr, text);
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
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QUndoStack_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QUndoStack_Tr3(s, c, n);
	}
	
	public void* CreateUndoAction2(void* parent, libqt_string prefix)
	{
		return CQt.QUndoStack_CreateUndoAction2(this.nativePtr, parent, prefix);
	}
	
	public void* CreateRedoAction2(void* parent, libqt_string prefix)
	{
		return CQt.QUndoStack_CreateRedoAction2(this.nativePtr, parent, prefix);
	}
	
	public void SetActive1(bool active)
	{
		CQt.QUndoStack_SetActive1(this.nativePtr, active);
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
	[LinkName("QUndoStack_new")]
	public static extern void* QUndoStack_new();
	[LinkName("QUndoStack_new2")]
	public static extern void* QUndoStack_new2(void* parent);
	[LinkName("QUndoStack_MetaObject")]
	public static extern void* QUndoStack_MetaObject(void* c_this);
	[LinkName("QUndoStack_Metacast")]
	public static extern void* QUndoStack_Metacast(void* c_this, char8[] param1);
	[LinkName("QUndoStack_Metacall")]
	public static extern int32 QUndoStack_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QUndoStack_Tr")]
	public static extern libqt_string QUndoStack_Tr(char8[] s);
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
	public static extern libqt_string QUndoStack_Tr2(char8[] s, char8[] c);
	[LinkName("QUndoStack_Tr3")]
	public static extern libqt_string QUndoStack_Tr3(char8[] s, char8[] c, int32 n);
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