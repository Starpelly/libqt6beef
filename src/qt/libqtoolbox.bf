using System;
using System.Interop;
namespace Qt;

public struct QToolBox : QFrame
{
	[LinkName("QToolBox_new")]
	public static extern QToolBox* QToolBox_new(QWidget* parent);
	[LinkName("QToolBox_new2")]
	public static extern QToolBox* QToolBox_new2();
	[LinkName("QToolBox_new3")]
	public static extern QToolBox* QToolBox_new3(QWidget* parent, int64 f);
	[LinkName("QToolBox_MetaObject")]
	public static extern QMetaObject* QToolBox_MetaObject(Self* c_this);
	[LinkName("QToolBox_Metacast")]
	public static extern void* QToolBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QToolBox_Metacall")]
	public static extern int32 QToolBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QToolBox_Tr")]
	public static extern libqt_string QToolBox_Tr(char8[] s);
	[LinkName("QToolBox_AddItem")]
	public static extern int32 QToolBox_AddItem(Self* c_this, QWidget* widget, libqt_string text);
	[LinkName("QToolBox_AddItem2")]
	public static extern int32 QToolBox_AddItem2(Self* c_this, QWidget* widget, QIcon* icon, libqt_string text);
	[LinkName("QToolBox_InsertItem")]
	public static extern int32 QToolBox_InsertItem(Self* c_this, int32 index, QWidget* widget, libqt_string text);
	[LinkName("QToolBox_InsertItem2")]
	public static extern int32 QToolBox_InsertItem2(Self* c_this, int32 index, QWidget* widget, QIcon* icon, libqt_string text);
	[LinkName("QToolBox_RemoveItem")]
	public static extern void QToolBox_RemoveItem(Self* c_this, int32 index);
	[LinkName("QToolBox_SetItemEnabled")]
	public static extern void QToolBox_SetItemEnabled(Self* c_this, int32 index, bool enabled);
	[LinkName("QToolBox_IsItemEnabled")]
	public static extern bool QToolBox_IsItemEnabled(Self* c_this, int32 index);
	[LinkName("QToolBox_SetItemText")]
	public static extern void QToolBox_SetItemText(Self* c_this, int32 index, libqt_string text);
	[LinkName("QToolBox_ItemText")]
	public static extern libqt_string QToolBox_ItemText(Self* c_this, int32 index);
	[LinkName("QToolBox_SetItemIcon")]
	public static extern void QToolBox_SetItemIcon(Self* c_this, int32 index, QIcon* icon);
	[LinkName("QToolBox_ItemIcon")]
	public static extern QIcon QToolBox_ItemIcon(Self* c_this, int32 index);
	[LinkName("QToolBox_SetItemToolTip")]
	public static extern void QToolBox_SetItemToolTip(Self* c_this, int32 index, libqt_string toolTip);
	[LinkName("QToolBox_ItemToolTip")]
	public static extern libqt_string QToolBox_ItemToolTip(Self* c_this, int32 index);
	[LinkName("QToolBox_CurrentIndex")]
	public static extern int32 QToolBox_CurrentIndex(Self* c_this);
	[LinkName("QToolBox_CurrentWidget")]
	public static extern QWidget* QToolBox_CurrentWidget(Self* c_this);
	[LinkName("QToolBox_Widget")]
	public static extern QWidget* QToolBox_Widget(Self* c_this, int32 index);
	[LinkName("QToolBox_IndexOf")]
	public static extern int32 QToolBox_IndexOf(Self* c_this, QWidget* widget);
	[LinkName("QToolBox_Count")]
	public static extern int32 QToolBox_Count(Self* c_this);
	[LinkName("QToolBox_SetCurrentIndex")]
	public static extern void QToolBox_SetCurrentIndex(Self* c_this, int32 index);
	[LinkName("QToolBox_SetCurrentWidget")]
	public static extern void QToolBox_SetCurrentWidget(Self* c_this, QWidget* widget);
	[LinkName("QToolBox_CurrentChanged")]
	public static extern void QToolBox_CurrentChanged(Self* c_this, int32 index);
	[LinkName("QToolBox_Event")]
	public static extern bool QToolBox_Event(Self* c_this, QEvent* e);
	[LinkName("QToolBox_ItemInserted")]
	public static extern void QToolBox_ItemInserted(Self* c_this, int32 index);
	[LinkName("QToolBox_ItemRemoved")]
	public static extern void QToolBox_ItemRemoved(Self* c_this, int32 index);
	[LinkName("QToolBox_ShowEvent")]
	public static extern void QToolBox_ShowEvent(Self* c_this, QShowEvent* e);
	[LinkName("QToolBox_ChangeEvent")]
	public static extern void QToolBox_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QToolBox_Tr2")]
	public static extern libqt_string QToolBox_Tr2(char8[] s, char8[] c);
	[LinkName("QToolBox_Tr3")]
	public static extern libqt_string QToolBox_Tr3(char8[] s, char8[] c, int32 n);
}