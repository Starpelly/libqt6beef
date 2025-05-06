using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QBoxLayout__Direction
{
	LeftToRight = 0,
	RightToLeft = 1,
	TopToBottom = 2,
	BottomToTop = 3,
	Down = 2,
	Up = 3,
}
public struct QBoxLayout
{
	[LinkName("QBoxLayout_new")]
	public static extern void* QBoxLayout_new(int64 param1);
	[LinkName("QBoxLayout_new2")]
	public static extern void* QBoxLayout_new2(int64 param1, QWidget parent);
	[LinkName("QBoxLayout_MetaObject")]
	public static extern QMetaObject QBoxLayout_MetaObject(void* c_this);
	[LinkName("QBoxLayout_Metacast")]
	public static extern void QBoxLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QBoxLayout_Metacall")]
	public static extern int32 QBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QBoxLayout_Tr")]
	public static extern char8[] QBoxLayout_Tr(char8[] s);
	[LinkName("QBoxLayout_Direction")]
	public static extern int64 QBoxLayout_Direction(void* c_this);
	[LinkName("QBoxLayout_SetDirection")]
	public static extern void QBoxLayout_SetDirection(void* c_this, int64 direction);
	[LinkName("QBoxLayout_AddSpacing")]
	public static extern void QBoxLayout_AddSpacing(void* c_this, int32 size);
	[LinkName("QBoxLayout_AddStretch")]
	public static extern void QBoxLayout_AddStretch(void* c_this);
	[LinkName("QBoxLayout_AddSpacerItem")]
	public static extern void QBoxLayout_AddSpacerItem(void* c_this, QSpacerItem spacerItem);
	[LinkName("QBoxLayout_AddWidget")]
	public static extern void QBoxLayout_AddWidget(void* c_this, QWidget param1);
	[LinkName("QBoxLayout_AddLayout")]
	public static extern void QBoxLayout_AddLayout(void* c_this, QLayout layout);
	[LinkName("QBoxLayout_AddStrut")]
	public static extern void QBoxLayout_AddStrut(void* c_this, int32 param1);
	[LinkName("QBoxLayout_AddItem")]
	public static extern void QBoxLayout_AddItem(void* c_this, QLayoutItem param1);
	[LinkName("QBoxLayout_InsertSpacing")]
	public static extern void QBoxLayout_InsertSpacing(void* c_this, int32 index, int32 size);
	[LinkName("QBoxLayout_InsertStretch")]
	public static extern void QBoxLayout_InsertStretch(void* c_this, int32 index);
	[LinkName("QBoxLayout_InsertSpacerItem")]
	public static extern void QBoxLayout_InsertSpacerItem(void* c_this, int32 index, QSpacerItem spacerItem);
	[LinkName("QBoxLayout_InsertWidget")]
	public static extern void QBoxLayout_InsertWidget(void* c_this, int32 index, QWidget widget);
	[LinkName("QBoxLayout_InsertLayout")]
	public static extern void QBoxLayout_InsertLayout(void* c_this, int32 index, QLayout layout);
	[LinkName("QBoxLayout_InsertItem")]
	public static extern void QBoxLayout_InsertItem(void* c_this, int32 index, QLayoutItem param2);
	[LinkName("QBoxLayout_Spacing")]
	public static extern int32 QBoxLayout_Spacing(void* c_this);
	[LinkName("QBoxLayout_SetSpacing")]
	public static extern void QBoxLayout_SetSpacing(void* c_this, int32 spacing);
	[LinkName("QBoxLayout_SetStretchFactor")]
	public static extern bool QBoxLayout_SetStretchFactor(void* c_this, QWidget w, int32 stretch);
	[LinkName("QBoxLayout_SetStretchFactor2")]
	public static extern bool QBoxLayout_SetStretchFactor2(void* c_this, QLayout l, int32 stretch);
	[LinkName("QBoxLayout_SetStretch")]
	public static extern void QBoxLayout_SetStretch(void* c_this, int32 index, int32 stretch);
	[LinkName("QBoxLayout_Stretch")]
	public static extern int32 QBoxLayout_Stretch(void* c_this, int32 index);
	[LinkName("QBoxLayout_SizeHint")]
	public static extern QSize QBoxLayout_SizeHint(void* c_this);
	[LinkName("QBoxLayout_MinimumSize")]
	public static extern QSize QBoxLayout_MinimumSize(void* c_this);
	[LinkName("QBoxLayout_MaximumSize")]
	public static extern QSize QBoxLayout_MaximumSize(void* c_this);
	[LinkName("QBoxLayout_HasHeightForWidth")]
	public static extern bool QBoxLayout_HasHeightForWidth(void* c_this);
	[LinkName("QBoxLayout_HeightForWidth")]
	public static extern int32 QBoxLayout_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QBoxLayout_MinimumHeightForWidth")]
	public static extern int32 QBoxLayout_MinimumHeightForWidth(void* c_this, int32 param1);
	[LinkName("QBoxLayout_ExpandingDirections")]
	public static extern int64 QBoxLayout_ExpandingDirections(void* c_this);
	[LinkName("QBoxLayout_Invalidate")]
	public static extern void QBoxLayout_Invalidate(void* c_this);
	[LinkName("QBoxLayout_ItemAt")]
	public static extern QLayoutItem QBoxLayout_ItemAt(void* c_this, int32 param1);
	[LinkName("QBoxLayout_TakeAt")]
	public static extern QLayoutItem QBoxLayout_TakeAt(void* c_this, int32 param1);
	[LinkName("QBoxLayout_Count")]
	public static extern int32 QBoxLayout_Count(void* c_this);
	[LinkName("QBoxLayout_SetGeometry")]
	public static extern void QBoxLayout_SetGeometry(void* c_this, QRect geometry);
	[LinkName("QBoxLayout_Tr2")]
	public static extern char8[] QBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QBoxLayout_Tr3")]
	public static extern char8[] QBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QBoxLayout_AddStretch1")]
	public static extern void QBoxLayout_AddStretch1(void* c_this, int32 stretch);
	[LinkName("QBoxLayout_AddWidget2")]
	public static extern void QBoxLayout_AddWidget2(void* c_this, QWidget param1, int32 stretch);
	[LinkName("QBoxLayout_AddWidget3")]
	public static extern void QBoxLayout_AddWidget3(void* c_this, QWidget param1, int32 stretch, int64 alignment);
	[LinkName("QBoxLayout_AddLayout2")]
	public static extern void QBoxLayout_AddLayout2(void* c_this, QLayout layout, int32 stretch);
	[LinkName("QBoxLayout_InsertStretch2")]
	public static extern void QBoxLayout_InsertStretch2(void* c_this, int32 index, int32 stretch);
	[LinkName("QBoxLayout_InsertWidget3")]
	public static extern void QBoxLayout_InsertWidget3(void* c_this, int32 index, QWidget widget, int32 stretch);
	[LinkName("QBoxLayout_InsertWidget4")]
	public static extern void QBoxLayout_InsertWidget4(void* c_this, int32 index, QWidget widget, int32 stretch, int64 alignment);
	[LinkName("QBoxLayout_InsertLayout3")]
	public static extern void QBoxLayout_InsertLayout3(void* c_this, int32 index, QLayout layout, int32 stretch);
}
public struct QHBoxLayout
{
	[LinkName("QHBoxLayout_new")]
	public static extern void* QHBoxLayout_new(QWidget parent);
	[LinkName("QHBoxLayout_new2")]
	public static extern void* QHBoxLayout_new2();
	[LinkName("QHBoxLayout_MetaObject")]
	public static extern QMetaObject QHBoxLayout_MetaObject(void* c_this);
	[LinkName("QHBoxLayout_Metacast")]
	public static extern void QHBoxLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QHBoxLayout_Metacall")]
	public static extern int32 QHBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QHBoxLayout_Tr")]
	public static extern char8[] QHBoxLayout_Tr(char8[] s);
	[LinkName("QHBoxLayout_Tr2")]
	public static extern char8[] QHBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QHBoxLayout_Tr3")]
	public static extern char8[] QHBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QVBoxLayout
{
	[LinkName("QVBoxLayout_new")]
	public static extern void* QVBoxLayout_new(QWidget parent);
	[LinkName("QVBoxLayout_new2")]
	public static extern void* QVBoxLayout_new2();
	[LinkName("QVBoxLayout_MetaObject")]
	public static extern QMetaObject QVBoxLayout_MetaObject(void* c_this);
	[LinkName("QVBoxLayout_Metacast")]
	public static extern void QVBoxLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QVBoxLayout_Metacall")]
	public static extern int32 QVBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QVBoxLayout_Tr")]
	public static extern char8[] QVBoxLayout_Tr(char8[] s);
	[LinkName("QVBoxLayout_Tr2")]
	public static extern char8[] QVBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QVBoxLayout_Tr3")]
	public static extern char8[] QVBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
}