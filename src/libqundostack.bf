using System;
using System.Interop;
namespace Qt;

public struct QUndoCommand
{
	[LinkName("QUndoCommand_new")]
	public static extern void* QUndoCommand_new();
	[LinkName("QUndoCommand_new2")]
	public static extern void* QUndoCommand_new2(char8[] text);
	[LinkName("QUndoCommand_new3")]
	public static extern void* QUndoCommand_new3(QUndoCommand parent);
	[LinkName("QUndoCommand_new4")]
	public static extern void* QUndoCommand_new4(char8[] text, QUndoCommand parent);
	[LinkName("QUndoCommand_Undo")]
	public static extern void QUndoCommand_Undo(void* c_this);
	[LinkName("QUndoCommand_Redo")]
	public static extern void QUndoCommand_Redo(void* c_this);
	[LinkName("QUndoCommand_Text")]
	public static extern char8[] QUndoCommand_Text(void* c_this);
	[LinkName("QUndoCommand_ActionText")]
	public static extern char8[] QUndoCommand_ActionText(void* c_this);
	[LinkName("QUndoCommand_SetText")]
	public static extern void QUndoCommand_SetText(void* c_this, char8[] text);
	[LinkName("QUndoCommand_IsObsolete")]
	public static extern bool QUndoCommand_IsObsolete(void* c_this);
	[LinkName("QUndoCommand_SetObsolete")]
	public static extern void QUndoCommand_SetObsolete(void* c_this, bool obsolete);
	[LinkName("QUndoCommand_Id")]
	public static extern int32 QUndoCommand_Id(void* c_this);
	[LinkName("QUndoCommand_MergeWith")]
	public static extern bool QUndoCommand_MergeWith(void* c_this, QUndoCommand other);
	[LinkName("QUndoCommand_ChildCount")]
	public static extern int32 QUndoCommand_ChildCount(void* c_this);
	[LinkName("QUndoCommand_Child")]
	public static extern QUndoCommand QUndoCommand_Child(void* c_this, int32 index);
}
public struct QUndoStack
{
	[LinkName("QUndoStack_new")]
	public static extern void* QUndoStack_new();
	[LinkName("QUndoStack_new2")]
	public static extern void* QUndoStack_new2(QObject parent);
	[LinkName("QUndoStack_MetaObject")]
	public static extern QMetaObject QUndoStack_MetaObject(void* c_this);
	[LinkName("QUndoStack_Metacast")]
	public static extern void QUndoStack_Metacast(void* c_this, char8[] param1);
	[LinkName("QUndoStack_Metacall")]
	public static extern int32 QUndoStack_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QUndoStack_Tr")]
	public static extern char8[] QUndoStack_Tr(char8[] s);
	[LinkName("QUndoStack_Clear")]
	public static extern void QUndoStack_Clear(void* c_this);
	[LinkName("QUndoStack_Push")]
	public static extern void QUndoStack_Push(void* c_this, QUndoCommand cmd);
	[LinkName("QUndoStack_CanUndo")]
	public static extern bool QUndoStack_CanUndo(void* c_this);
	[LinkName("QUndoStack_CanRedo")]
	public static extern bool QUndoStack_CanRedo(void* c_this);
	[LinkName("QUndoStack_UndoText")]
	public static extern char8[] QUndoStack_UndoText(void* c_this);
	[LinkName("QUndoStack_RedoText")]
	public static extern char8[] QUndoStack_RedoText(void* c_this);
	[LinkName("QUndoStack_Count")]
	public static extern int32 QUndoStack_Count(void* c_this);
	[LinkName("QUndoStack_Index")]
	public static extern int32 QUndoStack_Index(void* c_this);
	[LinkName("QUndoStack_Text")]
	public static extern char8[] QUndoStack_Text(void* c_this, int32 idx);
	[LinkName("QUndoStack_CreateUndoAction")]
	public static extern QAction QUndoStack_CreateUndoAction(void* c_this, QObject parent);
	[LinkName("QUndoStack_CreateRedoAction")]
	public static extern QAction QUndoStack_CreateRedoAction(void* c_this, QObject parent);
	[LinkName("QUndoStack_IsActive")]
	public static extern bool QUndoStack_IsActive(void* c_this);
	[LinkName("QUndoStack_IsClean")]
	public static extern bool QUndoStack_IsClean(void* c_this);
	[LinkName("QUndoStack_CleanIndex")]
	public static extern int32 QUndoStack_CleanIndex(void* c_this);
	[LinkName("QUndoStack_BeginMacro")]
	public static extern void QUndoStack_BeginMacro(void* c_this, char8[] text);
	[LinkName("QUndoStack_EndMacro")]
	public static extern void QUndoStack_EndMacro(void* c_this);
	[LinkName("QUndoStack_SetUndoLimit")]
	public static extern void QUndoStack_SetUndoLimit(void* c_this, int32 limit);
	[LinkName("QUndoStack_UndoLimit")]
	public static extern int32 QUndoStack_UndoLimit(void* c_this);
	[LinkName("QUndoStack_Command")]
	public static extern QUndoCommand QUndoStack_Command(void* c_this, int32 index);
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
	[LinkName("QUndoStack_IndexChanged")]
	public static extern void QUndoStack_IndexChanged(void* c_this, int32 idx);
	[LinkName("QUndoStack_CleanChanged")]
	public static extern void QUndoStack_CleanChanged(void* c_this, bool clean);
	[LinkName("QUndoStack_CanUndoChanged")]
	public static extern void QUndoStack_CanUndoChanged(void* c_this, bool canUndo);
	[LinkName("QUndoStack_CanRedoChanged")]
	public static extern void QUndoStack_CanRedoChanged(void* c_this, bool canRedo);
	[LinkName("QUndoStack_UndoTextChanged")]
	public static extern void QUndoStack_UndoTextChanged(void* c_this, char8[] undoText);
	[LinkName("QUndoStack_RedoTextChanged")]
	public static extern void QUndoStack_RedoTextChanged(void* c_this, char8[] redoText);
	[LinkName("QUndoStack_Tr2")]
	public static extern char8[] QUndoStack_Tr2(char8[] s, char8[] c);
	[LinkName("QUndoStack_Tr3")]
	public static extern char8[] QUndoStack_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QUndoStack_CreateUndoAction2")]
	public static extern QAction QUndoStack_CreateUndoAction2(void* c_this, QObject parent, char8[] prefix);
	[LinkName("QUndoStack_CreateRedoAction2")]
	public static extern QAction QUndoStack_CreateRedoAction2(void* c_this, QObject parent, char8[] prefix);
	[LinkName("QUndoStack_SetActive1")]
	public static extern void QUndoStack_SetActive1(void* c_this, bool active);
}