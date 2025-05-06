using System;
using System.Interop;
namespace Qt;

public struct QAccessibleWidget
{
	[LinkName("QAccessibleWidget_new")]
	public static extern void* QAccessibleWidget_new(QWidget o);
	[LinkName("QAccessibleWidget_new2")]
	public static extern void* QAccessibleWidget_new2(QWidget o, int64 r);
	[LinkName("QAccessibleWidget_new3")]
	public static extern void* QAccessibleWidget_new3(QWidget o, int64 r, char8[] name);
	[LinkName("QAccessibleWidget_IsValid")]
	public static extern bool QAccessibleWidget_IsValid(void* c_this);
	[LinkName("QAccessibleWidget_Window")]
	public static extern QWindow QAccessibleWidget_Window(void* c_this);
	[LinkName("QAccessibleWidget_ChildCount")]
	public static extern int32 QAccessibleWidget_ChildCount(void* c_this);
	[LinkName("QAccessibleWidget_IndexOfChild")]
	public static extern int32 QAccessibleWidget_IndexOfChild(void* c_this, QAccessibleInterface child);
	[LinkName("QAccessibleWidget_Relations")]
	public static extern void*[] QAccessibleWidget_Relations(void* c_this, int64 match);
	[LinkName("QAccessibleWidget_FocusChild")]
	public static extern QAccessibleInterface QAccessibleWidget_FocusChild(void* c_this);
	[LinkName("QAccessibleWidget_Rect")]
	public static extern QRect QAccessibleWidget_Rect(void* c_this);
	[LinkName("QAccessibleWidget_Parent")]
	public static extern QAccessibleInterface QAccessibleWidget_Parent(void* c_this);
	[LinkName("QAccessibleWidget_Child")]
	public static extern QAccessibleInterface QAccessibleWidget_Child(void* c_this, int32 index);
	[LinkName("QAccessibleWidget_Text")]
	public static extern char8[] QAccessibleWidget_Text(void* c_this, int64 t);
	[LinkName("QAccessibleWidget_Role")]
	public static extern int64 QAccessibleWidget_Role(void* c_this);
	[LinkName("QAccessibleWidget_State")]
	public static extern QAccessible__State QAccessibleWidget_State(void* c_this);
	[LinkName("QAccessibleWidget_ForegroundColor")]
	public static extern QColor QAccessibleWidget_ForegroundColor(void* c_this);
	[LinkName("QAccessibleWidget_BackgroundColor")]
	public static extern QColor QAccessibleWidget_BackgroundColor(void* c_this);
	[LinkName("QAccessibleWidget_InterfaceCast")]
	public static extern void QAccessibleWidget_InterfaceCast(void* c_this, int64 t);
	[LinkName("QAccessibleWidget_ActionNames")]
	public static extern char8[][] QAccessibleWidget_ActionNames(void* c_this);
	[LinkName("QAccessibleWidget_DoAction")]
	public static extern void QAccessibleWidget_DoAction(void* c_this, char8[] actionName);
	[LinkName("QAccessibleWidget_KeyBindingsForAction")]
	public static extern char8[][] QAccessibleWidget_KeyBindingsForAction(void* c_this, char8[] actionName);
	[LinkName("QAccessibleWidget_Widget")]
	public static extern QWidget QAccessibleWidget_Widget(void* c_this);
	[LinkName("QAccessibleWidget_ParentObject")]
	public static extern QObject QAccessibleWidget_ParentObject(void* c_this);
	[LinkName("QAccessibleWidget_AddControllingSignal")]
	public static extern void QAccessibleWidget_AddControllingSignal(void* c_this, char8[] signal);
}