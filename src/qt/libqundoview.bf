using System;
using System.Interop;
namespace Qt;

public struct QUndoView : QListView
{
	[LinkName("QUndoView_new")]
	public static extern QUndoView* QUndoView_new(QWidget* parent);
	[LinkName("QUndoView_new2")]
	public static extern QUndoView* QUndoView_new2();
	[LinkName("QUndoView_new3")]
	public static extern QUndoView* QUndoView_new3(QUndoStack* stack);
	[LinkName("QUndoView_new4")]
	public static extern QUndoView* QUndoView_new4(QUndoGroup* group);
	[LinkName("QUndoView_new5")]
	public static extern QUndoView* QUndoView_new5(QUndoStack* stack, QWidget* parent);
	[LinkName("QUndoView_new6")]
	public static extern QUndoView* QUndoView_new6(QUndoGroup* group, QWidget* parent);
	[LinkName("QUndoView_MetaObject")]
	public static extern QMetaObject* QUndoView_MetaObject(Self* c_this);
	[LinkName("QUndoView_Metacast")]
	public static extern void* QUndoView_Metacast(Self* c_this, char8[] param1);
	[LinkName("QUndoView_Metacall")]
	public static extern int32 QUndoView_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QUndoView_Tr")]
	public static extern libqt_string QUndoView_Tr(char8[] s);
	[LinkName("QUndoView_Stack")]
	public static extern QUndoStack* QUndoView_Stack(Self* c_this);
	[LinkName("QUndoView_Group")]
	public static extern QUndoGroup* QUndoView_Group(Self* c_this);
	[LinkName("QUndoView_SetEmptyLabel")]
	public static extern void QUndoView_SetEmptyLabel(Self* c_this, libqt_string label);
	[LinkName("QUndoView_EmptyLabel")]
	public static extern libqt_string QUndoView_EmptyLabel(Self* c_this);
	[LinkName("QUndoView_SetCleanIcon")]
	public static extern void QUndoView_SetCleanIcon(Self* c_this, QIcon* icon);
	[LinkName("QUndoView_CleanIcon")]
	public static extern QIcon QUndoView_CleanIcon(Self* c_this);
	[LinkName("QUndoView_SetStack")]
	public static extern void QUndoView_SetStack(Self* c_this, QUndoStack* stack);
	[LinkName("QUndoView_SetGroup")]
	public static extern void QUndoView_SetGroup(Self* c_this, QUndoGroup* group);
	[LinkName("QUndoView_Tr2")]
	public static extern libqt_string QUndoView_Tr2(char8[] s, char8[] c);
	[LinkName("QUndoView_Tr3")]
	public static extern libqt_string QUndoView_Tr3(char8[] s, char8[] c, int32 n);
}