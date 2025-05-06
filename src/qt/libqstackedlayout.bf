using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStackedLayout__StackingMode
{
	StackOne = 0,
	StackAll = 1,
}
public struct QStackedLayout : QLayout
{
	[LinkName("QStackedLayout_new")]
	public static extern QStackedLayout* QStackedLayout_new(QWidget* parent);
	[LinkName("QStackedLayout_new2")]
	public static extern QStackedLayout* QStackedLayout_new2();
	[LinkName("QStackedLayout_new3")]
	public static extern QStackedLayout* QStackedLayout_new3(QLayout* parentLayout);
	[LinkName("QStackedLayout_MetaObject")]
	public static extern QMetaObject* QStackedLayout_MetaObject(Self* c_this);
	[LinkName("QStackedLayout_Metacast")]
	public static extern void* QStackedLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QStackedLayout_Metacall")]
	public static extern int32 QStackedLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStackedLayout_Tr")]
	public static extern libqt_string QStackedLayout_Tr(char8[] s);
	[LinkName("QStackedLayout_AddWidget")]
	public static extern int32 QStackedLayout_AddWidget(Self* c_this, QWidget* w);
	[LinkName("QStackedLayout_InsertWidget")]
	public static extern int32 QStackedLayout_InsertWidget(Self* c_this, int32 index, QWidget* w);
	[LinkName("QStackedLayout_CurrentWidget")]
	public static extern QWidget* QStackedLayout_CurrentWidget(Self* c_this);
	[LinkName("QStackedLayout_CurrentIndex")]
	public static extern int32 QStackedLayout_CurrentIndex(Self* c_this);
	[LinkName("QStackedLayout_Widget")]
	public static extern QWidget* QStackedLayout_Widget(Self* c_this, int32 param1);
	[LinkName("QStackedLayout_Count")]
	public static extern int32 QStackedLayout_Count(Self* c_this);
	[LinkName("QStackedLayout_StackingMode")]
	public static extern int64 QStackedLayout_StackingMode(Self* c_this);
	[LinkName("QStackedLayout_SetStackingMode")]
	public static extern void QStackedLayout_SetStackingMode(Self* c_this, int64 stackingMode);
	[LinkName("QStackedLayout_AddItem")]
	public static extern void QStackedLayout_AddItem(Self* c_this, QLayoutItem* item);
	[LinkName("QStackedLayout_SizeHint")]
	public static extern QSize QStackedLayout_SizeHint(Self* c_this);
	[LinkName("QStackedLayout_MinimumSize")]
	public static extern QSize QStackedLayout_MinimumSize(Self* c_this);
	[LinkName("QStackedLayout_ItemAt")]
	public static extern QLayoutItem* QStackedLayout_ItemAt(Self* c_this, int32 param1);
	[LinkName("QStackedLayout_TakeAt")]
	public static extern QLayoutItem* QStackedLayout_TakeAt(Self* c_this, int32 param1);
	[LinkName("QStackedLayout_SetGeometry")]
	public static extern void QStackedLayout_SetGeometry(Self* c_this, QRect* rect);
	[LinkName("QStackedLayout_HasHeightForWidth")]
	public static extern bool QStackedLayout_HasHeightForWidth(Self* c_this);
	[LinkName("QStackedLayout_HeightForWidth")]
	public static extern int32 QStackedLayout_HeightForWidth(Self* c_this, int32 width);
	[LinkName("QStackedLayout_WidgetRemoved")]
	public static extern void QStackedLayout_WidgetRemoved(Self* c_this, int32 index);
	[LinkName("QStackedLayout_CurrentChanged")]
	public static extern void QStackedLayout_CurrentChanged(Self* c_this, int32 index);
	[LinkName("QStackedLayout_SetCurrentIndex")]
	public static extern void QStackedLayout_SetCurrentIndex(Self* c_this, int32 index);
	[LinkName("QStackedLayout_SetCurrentWidget")]
	public static extern void QStackedLayout_SetCurrentWidget(Self* c_this, QWidget* w);
	[LinkName("QStackedLayout_Tr2")]
	public static extern libqt_string QStackedLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QStackedLayout_Tr3")]
	public static extern libqt_string QStackedLayout_Tr3(char8[] s, char8[] c, int32 n);
}