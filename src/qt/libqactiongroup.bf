using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QActionGroup__ExclusionPolicy
{
	None = 0,
	Exclusive = 1,
	ExclusiveOptional = 2,
}
public struct QActionGroup : QObject
{
	[LinkName("QActionGroup_new")]
	public static extern QActionGroup* QActionGroup_new(QObject* parent);
	[LinkName("QActionGroup_MetaObject")]
	public static extern QMetaObject* QActionGroup_MetaObject(Self* c_this);
	[LinkName("QActionGroup_Metacast")]
	public static extern void* QActionGroup_Metacast(Self* c_this, char8[] param1);
	[LinkName("QActionGroup_Metacall")]
	public static extern int32 QActionGroup_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QActionGroup_Tr")]
	public static extern libqt_string QActionGroup_Tr(char8[] s);
	[LinkName("QActionGroup_AddAction")]
	public static extern QAction* QActionGroup_AddAction(Self* c_this, QAction* a);
	[LinkName("QActionGroup_AddActionWithText")]
	public static extern QAction* QActionGroup_AddActionWithText(Self* c_this, libqt_string text);
	[LinkName("QActionGroup_AddAction2")]
	public static extern QAction* QActionGroup_AddAction2(Self* c_this, QIcon* icon, libqt_string text);
	[LinkName("QActionGroup_RemoveAction")]
	public static extern void QActionGroup_RemoveAction(Self* c_this, QAction* a);
	[LinkName("QActionGroup_Actions")]
	public static extern QAction*[] QActionGroup_Actions(Self* c_this);
	[LinkName("QActionGroup_CheckedAction")]
	public static extern QAction* QActionGroup_CheckedAction(Self* c_this);
	[LinkName("QActionGroup_IsExclusive")]
	public static extern bool QActionGroup_IsExclusive(Self* c_this);
	[LinkName("QActionGroup_IsEnabled")]
	public static extern bool QActionGroup_IsEnabled(Self* c_this);
	[LinkName("QActionGroup_IsVisible")]
	public static extern bool QActionGroup_IsVisible(Self* c_this);
	[LinkName("QActionGroup_ExclusionPolicy")]
	public static extern int64 QActionGroup_ExclusionPolicy(Self* c_this);
	[LinkName("QActionGroup_SetEnabled")]
	public static extern void QActionGroup_SetEnabled(Self* c_this, bool enabled);
	[LinkName("QActionGroup_SetDisabled")]
	public static extern void QActionGroup_SetDisabled(Self* c_this, bool b);
	[LinkName("QActionGroup_SetVisible")]
	public static extern void QActionGroup_SetVisible(Self* c_this, bool visible);
	[LinkName("QActionGroup_SetExclusive")]
	public static extern void QActionGroup_SetExclusive(Self* c_this, bool exclusive);
	[LinkName("QActionGroup_SetExclusionPolicy")]
	public static extern void QActionGroup_SetExclusionPolicy(Self* c_this, int64 policy);
	[LinkName("QActionGroup_Triggered")]
	public static extern void QActionGroup_Triggered(Self* c_this, QAction* param1);
	[LinkName("QActionGroup_Hovered")]
	public static extern void QActionGroup_Hovered(Self* c_this, QAction* param1);
	[LinkName("QActionGroup_Tr2")]
	public static extern libqt_string QActionGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QActionGroup_Tr3")]
	public static extern libqt_string QActionGroup_Tr3(char8[] s, char8[] c, int32 n);
}