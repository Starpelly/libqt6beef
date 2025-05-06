using System;
using System.Interop;
namespace Qt;

public struct QAccessibleWidget : QAccessibleActionInterface
{
	[LinkName("QAccessibleWidget_new")]
	public static extern QAccessibleWidget* QAccessibleWidget_new(QWidget* o);
	[LinkName("QAccessibleWidget_new2")]
	public static extern QAccessibleWidget* QAccessibleWidget_new2(QWidget* o, int64 r);
	[LinkName("QAccessibleWidget_new3")]
	public static extern QAccessibleWidget* QAccessibleWidget_new3(QWidget* o, int64 r, libqt_string name);
	[LinkName("QAccessibleWidget_IsValid")]
	public static extern bool QAccessibleWidget_IsValid(Self* c_this);
	[LinkName("QAccessibleWidget_Window")]
	public static extern QWindow* QAccessibleWidget_Window(Self* c_this);
	[LinkName("QAccessibleWidget_ChildCount")]
	public static extern int32 QAccessibleWidget_ChildCount(Self* c_this);
	[LinkName("QAccessibleWidget_IndexOfChild")]
	public static extern int32 QAccessibleWidget_IndexOfChild(Self* c_this, QAccessibleInterface* child);
	[LinkName("QAccessibleWidget_Relations")]
	public static extern void*[] QAccessibleWidget_Relations(Self* c_this, int64 match);
	[LinkName("QAccessibleWidget_FocusChild")]
	public static extern QAccessibleInterface* QAccessibleWidget_FocusChild(Self* c_this);
	[LinkName("QAccessibleWidget_Rect")]
	public static extern QRect QAccessibleWidget_Rect(Self* c_this);
	[LinkName("QAccessibleWidget_Parent")]
	public static extern QAccessibleInterface* QAccessibleWidget_Parent(Self* c_this);
	[LinkName("QAccessibleWidget_Child")]
	public static extern QAccessibleInterface* QAccessibleWidget_Child(Self* c_this, int32 index);
	[LinkName("QAccessibleWidget_Text")]
	public static extern libqt_string QAccessibleWidget_Text(Self* c_this, int64 t);
	[LinkName("QAccessibleWidget_Role")]
	public static extern int64 QAccessibleWidget_Role(Self* c_this);
	[LinkName("QAccessibleWidget_State")]
	public static extern QAccessible__State QAccessibleWidget_State(Self* c_this);
	[LinkName("QAccessibleWidget_ForegroundColor")]
	public static extern QColor QAccessibleWidget_ForegroundColor(Self* c_this);
	[LinkName("QAccessibleWidget_BackgroundColor")]
	public static extern QColor QAccessibleWidget_BackgroundColor(Self* c_this);
	[LinkName("QAccessibleWidget_InterfaceCast")]
	public static extern void* QAccessibleWidget_InterfaceCast(Self* c_this, int64 t);
	[LinkName("QAccessibleWidget_ActionNames")]
	public static extern libqt_string[] QAccessibleWidget_ActionNames(Self* c_this);
	[LinkName("QAccessibleWidget_DoAction")]
	public static extern void QAccessibleWidget_DoAction(Self* c_this, libqt_string actionName);
	[LinkName("QAccessibleWidget_KeyBindingsForAction")]
	public static extern libqt_string[] QAccessibleWidget_KeyBindingsForAction(Self* c_this, libqt_string actionName);
	[LinkName("QAccessibleWidget_Widget")]
	public static extern QWidget* QAccessibleWidget_Widget(Self* c_this);
	[LinkName("QAccessibleWidget_ParentObject")]
	public static extern QObject* QAccessibleWidget_ParentObject(Self* c_this);
	[LinkName("QAccessibleWidget_AddControllingSignal")]
	public static extern void QAccessibleWidget_AddControllingSignal(Self* c_this, libqt_string signal);
}