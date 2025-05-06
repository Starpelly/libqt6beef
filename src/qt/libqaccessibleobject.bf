using System;
using System.Interop;
namespace Qt;

public struct QAccessibleObject : QAccessibleInterface
{
	[LinkName("QAccessibleObject_IsValid")]
	public static extern bool QAccessibleObject_IsValid(Self* c_this);
	[LinkName("QAccessibleObject_Object")]
	public static extern QObject* QAccessibleObject_Object(Self* c_this);
	[LinkName("QAccessibleObject_Rect")]
	public static extern QRect QAccessibleObject_Rect(Self* c_this);
	[LinkName("QAccessibleObject_SetText")]
	public static extern void QAccessibleObject_SetText(Self* c_this, int64 t, libqt_string text);
	[LinkName("QAccessibleObject_ChildAt")]
	public static extern QAccessibleInterface* QAccessibleObject_ChildAt(Self* c_this, int32 x, int32 y);
}
public struct QAccessibleApplication : QAccessibleObject
{
	[LinkName("QAccessibleApplication_new")]
	public static extern QAccessibleApplication* QAccessibleApplication_new();
	[LinkName("QAccessibleApplication_Window")]
	public static extern QWindow* QAccessibleApplication_Window(Self* c_this);
	[LinkName("QAccessibleApplication_ChildCount")]
	public static extern int32 QAccessibleApplication_ChildCount(Self* c_this);
	[LinkName("QAccessibleApplication_IndexOfChild")]
	public static extern int32 QAccessibleApplication_IndexOfChild(Self* c_this, QAccessibleInterface* param1);
	[LinkName("QAccessibleApplication_FocusChild")]
	public static extern QAccessibleInterface* QAccessibleApplication_FocusChild(Self* c_this);
	[LinkName("QAccessibleApplication_Parent")]
	public static extern QAccessibleInterface* QAccessibleApplication_Parent(Self* c_this);
	[LinkName("QAccessibleApplication_Child")]
	public static extern QAccessibleInterface* QAccessibleApplication_Child(Self* c_this, int32 index);
	[LinkName("QAccessibleApplication_Text")]
	public static extern libqt_string QAccessibleApplication_Text(Self* c_this, int64 t);
	[LinkName("QAccessibleApplication_Role")]
	public static extern int64 QAccessibleApplication_Role(Self* c_this);
	[LinkName("QAccessibleApplication_State")]
	public static extern QAccessible__State QAccessibleApplication_State(Self* c_this);
}