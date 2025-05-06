using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStackedLayout__StackingMode
{
	StackOne = 0,
	StackAll = 1,
}
public struct QStackedLayout
{
	[LinkName("QStackedLayout_new")]
	public static extern void* QStackedLayout_new(QWidget parent);
	[LinkName("QStackedLayout_new2")]
	public static extern void* QStackedLayout_new2();
	[LinkName("QStackedLayout_new3")]
	public static extern void* QStackedLayout_new3(QLayout parentLayout);
	[LinkName("QStackedLayout_MetaObject")]
	public static extern QMetaObject QStackedLayout_MetaObject(void* c_this);
	[LinkName("QStackedLayout_Metacast")]
	public static extern void QStackedLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QStackedLayout_Metacall")]
	public static extern int32 QStackedLayout_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QStackedLayout_Tr")]
	public static extern char8[] QStackedLayout_Tr(char8[] s);
	[LinkName("QStackedLayout_AddWidget")]
	public static extern int32 QStackedLayout_AddWidget(void* c_this, QWidget w);
	[LinkName("QStackedLayout_InsertWidget")]
	public static extern int32 QStackedLayout_InsertWidget(void* c_this, int32 index, QWidget w);
	[LinkName("QStackedLayout_CurrentWidget")]
	public static extern QWidget QStackedLayout_CurrentWidget(void* c_this);
	[LinkName("QStackedLayout_CurrentIndex")]
	public static extern int32 QStackedLayout_CurrentIndex(void* c_this);
	[LinkName("QStackedLayout_Widget")]
	public static extern QWidget QStackedLayout_Widget(void* c_this, int32 param1);
	[LinkName("QStackedLayout_Count")]
	public static extern int32 QStackedLayout_Count(void* c_this);
	[LinkName("QStackedLayout_StackingMode")]
	public static extern int64 QStackedLayout_StackingMode(void* c_this);
	[LinkName("QStackedLayout_SetStackingMode")]
	public static extern void QStackedLayout_SetStackingMode(void* c_this, int64 stackingMode);
	[LinkName("QStackedLayout_AddItem")]
	public static extern void QStackedLayout_AddItem(void* c_this, QLayoutItem item);
	[LinkName("QStackedLayout_SizeHint")]
	public static extern QSize QStackedLayout_SizeHint(void* c_this);
	[LinkName("QStackedLayout_MinimumSize")]
	public static extern QSize QStackedLayout_MinimumSize(void* c_this);
	[LinkName("QStackedLayout_ItemAt")]
	public static extern QLayoutItem QStackedLayout_ItemAt(void* c_this, int32 param1);
	[LinkName("QStackedLayout_TakeAt")]
	public static extern QLayoutItem QStackedLayout_TakeAt(void* c_this, int32 param1);
	[LinkName("QStackedLayout_SetGeometry")]
	public static extern void QStackedLayout_SetGeometry(void* c_this, QRect rect);
	[LinkName("QStackedLayout_HasHeightForWidth")]
	public static extern bool QStackedLayout_HasHeightForWidth(void* c_this);
	[LinkName("QStackedLayout_HeightForWidth")]
	public static extern int32 QStackedLayout_HeightForWidth(void* c_this, int32 width);
	[LinkName("QStackedLayout_WidgetRemoved")]
	public static extern void QStackedLayout_WidgetRemoved(void* c_this, int32 index);
	[LinkName("QStackedLayout_CurrentChanged")]
	public static extern void QStackedLayout_CurrentChanged(void* c_this, int32 index);
	[LinkName("QStackedLayout_SetCurrentIndex")]
	public static extern void QStackedLayout_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QStackedLayout_SetCurrentWidget")]
	public static extern void QStackedLayout_SetCurrentWidget(void* c_this, QWidget w);
	[LinkName("QStackedLayout_Tr2")]
	public static extern char8[] QStackedLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QStackedLayout_Tr3")]
	public static extern char8[] QStackedLayout_Tr3(char8[] s, char8[] c, int32 n);
}