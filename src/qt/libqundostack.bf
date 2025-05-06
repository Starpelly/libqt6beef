using System;
using System.Interop;
namespace Qt;

public struct QUndoCommand
{
	[LinkName("QUndoCommand_new")]
	public static extern QUndoCommand* QUndoCommand_new();
	[LinkName("QUndoCommand_new2")]
	public static extern QUndoCommand* QUndoCommand_new2(libqt_string text);
	[LinkName("QUndoCommand_new3")]
	public static extern QUndoCommand* QUndoCommand_new3(QUndoCommand* parent);
	[LinkName("QUndoCommand_new4")]
	public static extern QUndoCommand* QUndoCommand_new4(libqt_string text, QUndoCommand* parent);
	[LinkName("QUndoCommand_Undo")]
	public static extern void QUndoCommand_Undo(Self* c_this);
	[LinkName("QUndoCommand_Redo")]
	public static extern void QUndoCommand_Redo(Self* c_this);
	[LinkName("QUndoCommand_Text")]
	public static extern libqt_string QUndoCommand_Text(Self* c_this);
	[LinkName("QUndoCommand_ActionText")]
	public static extern libqt_string QUndoCommand_ActionText(Self* c_this);
	[LinkName("QUndoCommand_SetText")]
	public static extern void QUndoCommand_SetText(Self* c_this, libqt_string text);
	[LinkName("QUndoCommand_IsObsolete")]
	public static extern bool QUndoCommand_IsObsolete(Self* c_this);
	[LinkName("QUndoCommand_SetObsolete")]
	public static extern void QUndoCommand_SetObsolete(Self* c_this, bool obsolete);
	[LinkName("QUndoCommand_Id")]
	public static extern int32 QUndoCommand_Id(Self* c_this);
	[LinkName("QUndoCommand_MergeWith")]
	public static extern bool QUndoCommand_MergeWith(Self* c_this, QUndoCommand* other);
	[LinkName("QUndoCommand_ChildCount")]
	public static extern int32 QUndoCommand_ChildCount(Self* c_this);
	[LinkName("QUndoCommand_Child")]
	public static extern QUndoCommand* QUndoCommand_Child(Self* c_this, int32 index);
}
public struct QUndoStack : QObject
{
	[LinkName("QUndoStack_new")]
	public static extern QUndoStack* QUndoStack_new();
	[LinkName("QUndoStack_new2")]
	public static extern QUndoStack* QUndoStack_new2(QObject* parent);
	[LinkName("QUndoStack_MetaObject")]
	public static extern QMetaObject* QUndoStack_MetaObject(Self* c_this);
	[LinkName("QUndoStack_Metacast")]
	public static extern void* QUndoStack_Metacast(Self* c_this, char8[] param1);
	[LinkName("QUndoStack_Metacall")]
	public static extern int32 QUndoStack_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QUndoStack_Tr")]
	public static extern libqt_string QUndoStack_Tr(char8[] s);
	[LinkName("QUndoStack_Clear")]
	public static extern void QUndoStack_Clear(Self* c_this);
	[LinkName("QUndoStack_Push")]
	public static extern void QUndoStack_Push(Self* c_this, QUndoCommand* cmd);
	[LinkName("QUndoStack_CanUndo")]
	public static extern bool QUndoStack_CanUndo(Self* c_this);
	[LinkName("QUndoStack_CanRedo")]
	public static extern bool QUndoStack_CanRedo(Self* c_this);
	[LinkName("QUndoStack_UndoText")]
	public static extern libqt_string QUndoStack_UndoText(Self* c_this);
	[LinkName("QUndoStack_RedoText")]
	public static extern libqt_string QUndoStack_RedoText(Self* c_this);
	[LinkName("QUndoStack_Count")]
	public static extern int32 QUndoStack_Count(Self* c_this);
	[LinkName("QUndoStack_Index")]
	public static extern int32 QUndoStack_Index(Self* c_this);
	[LinkName("QUndoStack_Text")]
	public static extern libqt_string QUndoStack_Text(Self* c_this, int32 idx);
	[LinkName("QUndoStack_CreateUndoAction")]
	public static extern QAction* QUndoStack_CreateUndoAction(Self* c_this, QObject* parent);
	[LinkName("QUndoStack_CreateRedoAction")]
	public static extern QAction* QUndoStack_CreateRedoAction(Self* c_this, QObject* parent);
	[LinkName("QUndoStack_IsActive")]
	public static extern bool QUndoStack_IsActive(Self* c_this);
	[LinkName("QUndoStack_IsClean")]
	public static extern bool QUndoStack_IsClean(Self* c_this);
	[LinkName("QUndoStack_CleanIndex")]
	public static extern int32 QUndoStack_CleanIndex(Self* c_this);
	[LinkName("QUndoStack_BeginMacro")]
	public static extern void QUndoStack_BeginMacro(Self* c_this, libqt_string text);
	[LinkName("QUndoStack_EndMacro")]
	public static extern void QUndoStack_EndMacro(Self* c_this);
	[LinkName("QUndoStack_SetUndoLimit")]
	public static extern void QUndoStack_SetUndoLimit(Self* c_this, int32 limit);
	[LinkName("QUndoStack_UndoLimit")]
	public static extern int32 QUndoStack_UndoLimit(Self* c_this);
	[LinkName("QUndoStack_Command")]
	public static extern QUndoCommand* QUndoStack_Command(Self* c_this, int32 index);
	[LinkName("QUndoStack_SetClean")]
	public static extern void QUndoStack_SetClean(Self* c_this);
	[LinkName("QUndoStack_ResetClean")]
	public static extern void QUndoStack_ResetClean(Self* c_this);
	[LinkName("QUndoStack_SetIndex")]
	public static extern void QUndoStack_SetIndex(Self* c_this, int32 idx);
	[LinkName("QUndoStack_Undo")]
	public static extern void QUndoStack_Undo(Self* c_this);
	[LinkName("QUndoStack_Redo")]
	public static extern void QUndoStack_Redo(Self* c_this);
	[LinkName("QUndoStack_SetActive")]
	public static extern void QUndoStack_SetActive(Self* c_this);
	[LinkName("QUndoStack_Connect_IndexChanged")]
	public static extern void QUndoStack_Connect_IndexChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_CleanChanged")]
	public static extern void QUndoStack_Connect_CleanChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_CanUndoChanged")]
	public static extern void QUndoStack_Connect_CanUndoChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_CanRedoChanged")]
	public static extern void QUndoStack_Connect_CanRedoChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_UndoTextChanged")]
	public static extern void QUndoStack_Connect_UndoTextChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoStack_Connect_RedoTextChanged")]
	public static extern void QUndoStack_Connect_RedoTextChanged(Self* c_this, c_intptr slot);
	[LinkName("QUndoStack_Tr2")]
	public static extern libqt_string QUndoStack_Tr2(char8[] s, char8[] c);
	[LinkName("QUndoStack_Tr3")]
	public static extern libqt_string QUndoStack_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QUndoStack_CreateUndoAction2")]
	public static extern QAction* QUndoStack_CreateUndoAction2(Self* c_this, QObject* parent, libqt_string prefix);
	[LinkName("QUndoStack_CreateRedoAction2")]
	public static extern QAction* QUndoStack_CreateRedoAction2(Self* c_this, QObject* parent, libqt_string prefix);
	[LinkName("QUndoStack_SetActive1")]
	public static extern void QUndoStack_SetActive1(Self* c_this, bool active);
}