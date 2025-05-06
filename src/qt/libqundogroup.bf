using System;
using System.Interop;
namespace Qt;

public struct QUndoGroup : QObject
{
	[LinkName("QUndoGroup_new")]
	public static extern QUndoGroup* QUndoGroup_new();
	[LinkName("QUndoGroup_new2")]
	public static extern QUndoGroup* QUndoGroup_new2(QObject* parent);
	[LinkName("QUndoGroup_MetaObject")]
	public static extern QMetaObject* QUndoGroup_MetaObject(Self* c_this);
	[LinkName("QUndoGroup_Metacast")]
	public static extern void* QUndoGroup_Metacast(Self* c_this, char8[] param1);
	[LinkName("QUndoGroup_Metacall")]
	public static extern int32 QUndoGroup_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QUndoGroup_Tr")]
	public static extern libqt_string QUndoGroup_Tr(char8[] s);
	[LinkName("QUndoGroup_AddStack")]
	public static extern void QUndoGroup_AddStack(Self* c_this, QUndoStack* stack);
	[LinkName("QUndoGroup_RemoveStack")]
	public static extern void QUndoGroup_RemoveStack(Self* c_this, QUndoStack* stack);
	[LinkName("QUndoGroup_Stacks")]
	public static extern QUndoStack*[] QUndoGroup_Stacks(Self* c_this);
	[LinkName("QUndoGroup_ActiveStack")]
	public static extern QUndoStack* QUndoGroup_ActiveStack(Self* c_this);
	[LinkName("QUndoGroup_CreateUndoAction")]
	public static extern QAction* QUndoGroup_CreateUndoAction(Self* c_this, QObject* parent);
	[LinkName("QUndoGroup_CreateRedoAction")]
	public static extern QAction* QUndoGroup_CreateRedoAction(Self* c_this, QObject* parent);
	[LinkName("QUndoGroup_CanUndo")]
	public static extern bool QUndoGroup_CanUndo(Self* c_this);
	[LinkName("QUndoGroup_CanRedo")]
	public static extern bool QUndoGroup_CanRedo(Self* c_this);
	[LinkName("QUndoGroup_UndoText")]
	public static extern libqt_string QUndoGroup_UndoText(Self* c_this);
	[LinkName("QUndoGroup_RedoText")]
	public static extern libqt_string QUndoGroup_RedoText(Self* c_this);
	[LinkName("QUndoGroup_IsClean")]
	public static extern bool QUndoGroup_IsClean(Self* c_this);
	[LinkName("QUndoGroup_Undo")]
	public static extern void QUndoGroup_Undo(Self* c_this);
	[LinkName("QUndoGroup_Redo")]
	public static extern void QUndoGroup_Redo(Self* c_this);
	[LinkName("QUndoGroup_SetActiveStack")]
	public static extern void QUndoGroup_SetActiveStack(Self* c_this, QUndoStack* stack);
	[LinkName("QUndoGroup_Connect_ActiveStackChanged")]
	public static extern void QUndoGroup_Connect_ActiveStackChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_IndexChanged")]
	public static extern void QUndoGroup_Connect_IndexChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_CleanChanged")]
	public static extern void QUndoGroup_Connect_CleanChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_CanUndoChanged")]
	public static extern void QUndoGroup_Connect_CanUndoChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_CanRedoChanged")]
	public static extern void QUndoGroup_Connect_CanRedoChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_UndoTextChanged")]
	public static extern void QUndoGroup_Connect_UndoTextChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Connect_RedoTextChanged")]
	public static extern void QUndoGroup_Connect_RedoTextChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoGroup_Tr2")]
	public static extern libqt_string QUndoGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QUndoGroup_Tr3")]
	public static extern libqt_string QUndoGroup_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QUndoGroup_CreateUndoAction2")]
	public static extern QAction* QUndoGroup_CreateUndoAction2(Self* c_this, QObject* parent, libqt_string prefix);
	[LinkName("QUndoGroup_CreateRedoAction2")]
	public static extern QAction* QUndoGroup_CreateRedoAction2(Self* c_this, QObject* parent, libqt_string prefix);
}