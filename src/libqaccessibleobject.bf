using System;
using System.Interop;
namespace Qt;

public struct QAccessibleObject
{
	[LinkName("QAccessibleObject_IsValid")]
	public static extern bool QAccessibleObject_IsValid(void* c_this);
	[LinkName("QAccessibleObject_Object")]
	public static extern QObject QAccessibleObject_Object(void* c_this);
	[LinkName("QAccessibleObject_Rect")]
	public static extern QRect QAccessibleObject_Rect(void* c_this);
	[LinkName("QAccessibleObject_SetText")]
	public static extern void QAccessibleObject_SetText(void* c_this, int64 t, char8[] text);
	[LinkName("QAccessibleObject_ChildAt")]
	public static extern QAccessibleInterface QAccessibleObject_ChildAt(void* c_this, int32 x, int32 y);
}
public struct QAccessibleApplication
{
	[LinkName("QAccessibleApplication_new")]
	public static extern void* QAccessibleApplication_new();
	[LinkName("QAccessibleApplication_Window")]
	public static extern QWindow QAccessibleApplication_Window(void* c_this);
	[LinkName("QAccessibleApplication_ChildCount")]
	public static extern int32 QAccessibleApplication_ChildCount(void* c_this);
	[LinkName("QAccessibleApplication_IndexOfChild")]
	public static extern int32 QAccessibleApplication_IndexOfChild(void* c_this, QAccessibleInterface param1);
	[LinkName("QAccessibleApplication_FocusChild")]
	public static extern QAccessibleInterface QAccessibleApplication_FocusChild(void* c_this);
	[LinkName("QAccessibleApplication_Parent")]
	public static extern QAccessibleInterface QAccessibleApplication_Parent(void* c_this);
	[LinkName("QAccessibleApplication_Child")]
	public static extern QAccessibleInterface QAccessibleApplication_Child(void* c_this, int32 index);
	[LinkName("QAccessibleApplication_Text")]
	public static extern char8[] QAccessibleApplication_Text(void* c_this, int64 t);
	[LinkName("QAccessibleApplication_Role")]
	public static extern int64 QAccessibleApplication_Role(void* c_this);
	[LinkName("QAccessibleApplication_State")]
	public static extern QAccessible__State QAccessibleApplication_State(void* c_this);
}