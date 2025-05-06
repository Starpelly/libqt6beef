using System;
using System.Interop;
namespace Qt;

public struct QUndoGroup
{
	[LinkName("QUndoGroup_new")]
	public static extern void* QUndoGroup_new();
	[LinkName("QUndoGroup_new2")]
	public static extern void* QUndoGroup_new2(QObject parent);
	[LinkName("QUndoGroup_MetaObject")]
	public static extern QMetaObject QUndoGroup_MetaObject(void* c_this);
	[LinkName("QUndoGroup_Metacast")]
	public static extern void QUndoGroup_Metacast(void* c_this, char8[] param1);
	[LinkName("QUndoGroup_Metacall")]
	public static extern int32 QUndoGroup_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QUndoGroup_Tr")]
	public static extern char8[] QUndoGroup_Tr(char8[] s);
	[LinkName("QUndoGroup_AddStack")]
	public static extern void QUndoGroup_AddStack(void* c_this, QUndoStack stack);
	[LinkName("QUndoGroup_RemoveStack")]
	public static extern void QUndoGroup_RemoveStack(void* c_this, QUndoStack stack);
	[LinkName("QUndoGroup_Stacks")]
	public static extern QUndoStack[] QUndoGroup_Stacks(void* c_this);
	[LinkName("QUndoGroup_ActiveStack")]
	public static extern QUndoStack QUndoGroup_ActiveStack(void* c_this);
	[LinkName("QUndoGroup_CreateUndoAction")]
	public static extern QAction QUndoGroup_CreateUndoAction(void* c_this, QObject parent);
	[LinkName("QUndoGroup_CreateRedoAction")]
	public static extern QAction QUndoGroup_CreateRedoAction(void* c_this, QObject parent);
	[LinkName("QUndoGroup_CanUndo")]
	public static extern bool QUndoGroup_CanUndo(void* c_this);
	[LinkName("QUndoGroup_CanRedo")]
	public static extern bool QUndoGroup_CanRedo(void* c_this);
	[LinkName("QUndoGroup_UndoText")]
	public static extern char8[] QUndoGroup_UndoText(void* c_this);
	[LinkName("QUndoGroup_RedoText")]
	public static extern char8[] QUndoGroup_RedoText(void* c_this);
	[LinkName("QUndoGroup_IsClean")]
	public static extern bool QUndoGroup_IsClean(void* c_this);
	[LinkName("QUndoGroup_Undo")]
	public static extern void QUndoGroup_Undo(void* c_this);
	[LinkName("QUndoGroup_Redo")]
	public static extern void QUndoGroup_Redo(void* c_this);
	[LinkName("QUndoGroup_SetActiveStack")]
	public static extern void QUndoGroup_SetActiveStack(void* c_this, QUndoStack stack);
	[LinkName("QUndoGroup_ActiveStackChanged")]
	public static extern void QUndoGroup_ActiveStackChanged(void* c_this, QUndoStack stack);
	[LinkName("QUndoGroup_IndexChanged")]
	public static extern void QUndoGroup_IndexChanged(void* c_this, int32 idx);
	[LinkName("QUndoGroup_CleanChanged")]
	public static extern void QUndoGroup_CleanChanged(void* c_this, bool clean);
	[LinkName("QUndoGroup_CanUndoChanged")]
	public static extern void QUndoGroup_CanUndoChanged(void* c_this, bool canUndo);
	[LinkName("QUndoGroup_CanRedoChanged")]
	public static extern void QUndoGroup_CanRedoChanged(void* c_this, bool canRedo);
	[LinkName("QUndoGroup_UndoTextChanged")]
	public static extern void QUndoGroup_UndoTextChanged(void* c_this, char8[] undoText);
	[LinkName("QUndoGroup_RedoTextChanged")]
	public static extern void QUndoGroup_RedoTextChanged(void* c_this, char8[] redoText);
	[LinkName("QUndoGroup_Tr2")]
	public static extern char8[] QUndoGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QUndoGroup_Tr3")]
	public static extern char8[] QUndoGroup_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QUndoGroup_CreateUndoAction2")]
	public static extern QAction QUndoGroup_CreateUndoAction2(void* c_this, QObject parent, char8[] prefix);
	[LinkName("QUndoGroup_CreateRedoAction2")]
	public static extern QAction QUndoGroup_CreateRedoAction2(void* c_this, QObject parent, char8[] prefix);
}