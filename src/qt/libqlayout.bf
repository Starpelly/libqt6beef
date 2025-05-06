using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLayout__SizeConstraint
{
	SetDefaultConstraint = 0,
	SetNoConstraint = 1,
	SetMinimumSize = 2,
	SetFixedSize = 3,
	SetMaximumSize = 4,
	SetMinAndMaxSize = 5,
}
public struct QLayout : QLayoutItem
{
	[LinkName("QLayout_new")]
	public static extern QLayout* QLayout_new(QWidget* parent);
	[LinkName("QLayout_new2")]
	public static extern QLayout* QLayout_new2();
	[LinkName("QLayout_MetaObject")]
	public static extern QMetaObject* QLayout_MetaObject(Self* c_this);
	[LinkName("QLayout_Metacast")]
	public static extern void* QLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QLayout_Metacall")]
	public static extern int32 QLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QLayout_Tr")]
	public static extern libqt_string QLayout_Tr(char8[] s);
	[LinkName("QLayout_Spacing")]
	public static extern int32 QLayout_Spacing(Self* c_this);
	[LinkName("QLayout_SetSpacing")]
	public static extern void QLayout_SetSpacing(Self* c_this, int32 spacing);
	[LinkName("QLayout_SetContentsMargins")]
	public static extern void QLayout_SetContentsMargins(Self* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QLayout_SetContentsMarginsWithMargins")]
	public static extern void QLayout_SetContentsMarginsWithMargins(Self* c_this, QMargins* margins);
	[LinkName("QLayout_UnsetContentsMargins")]
	public static extern void QLayout_UnsetContentsMargins(Self* c_this);
	[LinkName("QLayout_GetContentsMargins")]
	public static extern void QLayout_GetContentsMargins(Self* c_this, int32* left, int32* top, int32* right, int32* bottom);
	[LinkName("QLayout_ContentsMargins")]
	public static extern QMargins QLayout_ContentsMargins(Self* c_this);
	[LinkName("QLayout_ContentsRect")]
	public static extern QRect QLayout_ContentsRect(Self* c_this);
	[LinkName("QLayout_SetAlignment")]
	public static extern bool QLayout_SetAlignment(Self* c_this, QWidget* w, int64 alignment);
	[LinkName("QLayout_SetAlignment2")]
	public static extern bool QLayout_SetAlignment2(Self* c_this, QLayout* l, int64 alignment);
	[LinkName("QLayout_SetSizeConstraint")]
	public static extern void QLayout_SetSizeConstraint(Self* c_this, int64 sizeConstraint);
	[LinkName("QLayout_SizeConstraint")]
	public static extern int64 QLayout_SizeConstraint(Self* c_this);
	[LinkName("QLayout_SetMenuBar")]
	public static extern void QLayout_SetMenuBar(Self* c_this, QWidget* w);
	[LinkName("QLayout_MenuBar")]
	public static extern QWidget* QLayout_MenuBar(Self* c_this);
	[LinkName("QLayout_ParentWidget")]
	public static extern QWidget* QLayout_ParentWidget(Self* c_this);
	[LinkName("QLayout_Invalidate")]
	public static extern void QLayout_Invalidate(Self* c_this);
	[LinkName("QLayout_Geometry")]
	public static extern QRect QLayout_Geometry(Self* c_this);
	[LinkName("QLayout_Activate")]
	public static extern bool QLayout_Activate(Self* c_this);
	[LinkName("QLayout_Update")]
	public static extern void QLayout_Update(Self* c_this);
	[LinkName("QLayout_AddWidget")]
	public static extern void QLayout_AddWidget(Self* c_this, QWidget* w);
	[LinkName("QLayout_AddItem")]
	public static extern void QLayout_AddItem(Self* c_this, QLayoutItem* param1);
	[LinkName("QLayout_RemoveWidget")]
	public static extern void QLayout_RemoveWidget(Self* c_this, QWidget* w);
	[LinkName("QLayout_RemoveItem")]
	public static extern void QLayout_RemoveItem(Self* c_this, QLayoutItem* param1);
	[LinkName("QLayout_ExpandingDirections")]
	public static extern int64 QLayout_ExpandingDirections(Self* c_this);
	[LinkName("QLayout_MinimumSize")]
	public static extern QSize QLayout_MinimumSize(Self* c_this);
	[LinkName("QLayout_MaximumSize")]
	public static extern QSize QLayout_MaximumSize(Self* c_this);
	[LinkName("QLayout_SetGeometry")]
	public static extern void QLayout_SetGeometry(Self* c_this, QRect* geometry);
	[LinkName("QLayout_ItemAt")]
	public static extern QLayoutItem* QLayout_ItemAt(Self* c_this, int32 index);
	[LinkName("QLayout_TakeAt")]
	public static extern QLayoutItem* QLayout_TakeAt(Self* c_this, int32 index);
	[LinkName("QLayout_IndexOf")]
	public static extern int32 QLayout_IndexOf(Self* c_this, QWidget* param1);
	[LinkName("QLayout_IndexOfWithQLayoutItem")]
	public static extern int32 QLayout_IndexOfWithQLayoutItem(Self* c_this, QLayoutItem* param1);
	[LinkName("QLayout_Count")]
	public static extern int32 QLayout_Count(Self* c_this);
	[LinkName("QLayout_IsEmpty")]
	public static extern bool QLayout_IsEmpty(Self* c_this);
	[LinkName("QLayout_ControlTypes")]
	public static extern int64 QLayout_ControlTypes(Self* c_this);
	[LinkName("QLayout_ReplaceWidget")]
	public static extern QLayoutItem* QLayout_ReplaceWidget(Self* c_this, QWidget* from, QWidget* to, int64 options);
	[LinkName("QLayout_TotalMinimumHeightForWidth")]
	public static extern int32 QLayout_TotalMinimumHeightForWidth(Self* c_this, int32 w);
	[LinkName("QLayout_TotalHeightForWidth")]
	public static extern int32 QLayout_TotalHeightForWidth(Self* c_this, int32 w);
	[LinkName("QLayout_TotalMinimumSize")]
	public static extern QSize QLayout_TotalMinimumSize(Self* c_this);
	[LinkName("QLayout_TotalMaximumSize")]
	public static extern QSize QLayout_TotalMaximumSize(Self* c_this);
	[LinkName("QLayout_TotalSizeHint")]
	public static extern QSize QLayout_TotalSizeHint(Self* c_this);
	[LinkName("QLayout_Layout")]
	public static extern QLayout* QLayout_Layout(Self* c_this);
	[LinkName("QLayout_SetEnabled")]
	public static extern void QLayout_SetEnabled(Self* c_this, bool enabled);
	[LinkName("QLayout_IsEnabled")]
	public static extern bool QLayout_IsEnabled(Self* c_this);
	[LinkName("QLayout_ClosestAcceptableSize")]
	public static extern QSize QLayout_ClosestAcceptableSize(QWidget* w, QSize* s);
	[LinkName("QLayout_WidgetEvent")]
	public static extern void QLayout_WidgetEvent(Self* c_this, QEvent* param1);
	[LinkName("QLayout_ChildEvent")]
	public static extern void QLayout_ChildEvent(Self* c_this, QChildEvent* e);
	[LinkName("QLayout_AddChildLayout")]
	public static extern void QLayout_AddChildLayout(Self* c_this, QLayout* l);
	[LinkName("QLayout_AddChildWidget")]
	public static extern void QLayout_AddChildWidget(Self* c_this, QWidget* w);
	[LinkName("QLayout_AdoptLayout")]
	public static extern bool QLayout_AdoptLayout(Self* c_this, QLayout* layout);
	[LinkName("QLayout_AlignmentRect")]
	public static extern QRect QLayout_AlignmentRect(Self* c_this, QRect* param1);
	[LinkName("QLayout_Tr2")]
	public static extern libqt_string QLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QLayout_Tr3")]
	public static extern libqt_string QLayout_Tr3(char8[] s, char8[] c, int32 n);
}