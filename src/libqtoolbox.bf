using System;
using System.Interop;
namespace Qt;

public struct QToolBox
{
	[LinkName("QToolBox_new")]
	public static extern void* QToolBox_new(QWidget parent);
	[LinkName("QToolBox_new2")]
	public static extern void* QToolBox_new2();
	[LinkName("QToolBox_new3")]
	public static extern void* QToolBox_new3(QWidget parent, int64 f);
	[LinkName("QToolBox_MetaObject")]
	public static extern QMetaObject QToolBox_MetaObject(void* c_this);
	[LinkName("QToolBox_Metacast")]
	public static extern void QToolBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QToolBox_Metacall")]
	public static extern int32 QToolBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QToolBox_Tr")]
	public static extern char8[] QToolBox_Tr(char8[] s);
	[LinkName("QToolBox_AddItem")]
	public static extern int32 QToolBox_AddItem(void* c_this, QWidget widget, char8[] text);
	[LinkName("QToolBox_AddItem2")]
	public static extern int32 QToolBox_AddItem2(void* c_this, QWidget widget, QIcon icon, char8[] text);
	[LinkName("QToolBox_InsertItem")]
	public static extern int32 QToolBox_InsertItem(void* c_this, int32 index, QWidget widget, char8[] text);
	[LinkName("QToolBox_InsertItem2")]
	public static extern int32 QToolBox_InsertItem2(void* c_this, int32 index, QWidget widget, QIcon icon, char8[] text);
	[LinkName("QToolBox_RemoveItem")]
	public static extern void QToolBox_RemoveItem(void* c_this, int32 index);
	[LinkName("QToolBox_SetItemEnabled")]
	public static extern void QToolBox_SetItemEnabled(void* c_this, int32 index, bool enabled);
	[LinkName("QToolBox_IsItemEnabled")]
	public static extern bool QToolBox_IsItemEnabled(void* c_this, int32 index);
	[LinkName("QToolBox_SetItemText")]
	public static extern void QToolBox_SetItemText(void* c_this, int32 index, char8[] text);
	[LinkName("QToolBox_ItemText")]
	public static extern char8[] QToolBox_ItemText(void* c_this, int32 index);
	[LinkName("QToolBox_SetItemIcon")]
	public static extern void QToolBox_SetItemIcon(void* c_this, int32 index, QIcon icon);
	[LinkName("QToolBox_ItemIcon")]
	public static extern QIcon QToolBox_ItemIcon(void* c_this, int32 index);
	[LinkName("QToolBox_SetItemToolTip")]
	public static extern void QToolBox_SetItemToolTip(void* c_this, int32 index, char8[] toolTip);
	[LinkName("QToolBox_ItemToolTip")]
	public static extern char8[] QToolBox_ItemToolTip(void* c_this, int32 index);
	[LinkName("QToolBox_CurrentIndex")]
	public static extern int32 QToolBox_CurrentIndex(void* c_this);
	[LinkName("QToolBox_CurrentWidget")]
	public static extern QWidget QToolBox_CurrentWidget(void* c_this);
	[LinkName("QToolBox_Widget")]
	public static extern QWidget QToolBox_Widget(void* c_this, int32 index);
	[LinkName("QToolBox_IndexOf")]
	public static extern int32 QToolBox_IndexOf(void* c_this, QWidget widget);
	[LinkName("QToolBox_Count")]
	public static extern int32 QToolBox_Count(void* c_this);
	[LinkName("QToolBox_SetCurrentIndex")]
	public static extern void QToolBox_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QToolBox_SetCurrentWidget")]
	public static extern void QToolBox_SetCurrentWidget(void* c_this, QWidget widget);
	[LinkName("QToolBox_CurrentChanged")]
	public static extern void QToolBox_CurrentChanged(void* c_this, int32 index);
	[LinkName("QToolBox_Event")]
	public static extern bool QToolBox_Event(void* c_this, QEvent e);
	[LinkName("QToolBox_ItemInserted")]
	public static extern void QToolBox_ItemInserted(void* c_this, int32 index);
	[LinkName("QToolBox_ItemRemoved")]
	public static extern void QToolBox_ItemRemoved(void* c_this, int32 index);
	[LinkName("QToolBox_ShowEvent")]
	public static extern void QToolBox_ShowEvent(void* c_this, QShowEvent e);
	[LinkName("QToolBox_ChangeEvent")]
	public static extern void QToolBox_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QToolBox_Tr2")]
	public static extern char8[] QToolBox_Tr2(char8[] s, char8[] c);
	[LinkName("QToolBox_Tr3")]
	public static extern char8[] QToolBox_Tr3(char8[] s, char8[] c, int32 n);
}