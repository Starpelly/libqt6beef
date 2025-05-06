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
public struct QBoxLayout : QLayout
{
	[LinkName("QBoxLayout_new")]
	public static extern QBoxLayout* QBoxLayout_new(int64 param1);
	[LinkName("QBoxLayout_new2")]
	public static extern QBoxLayout* QBoxLayout_new2(int64 param1, QWidget* parent);
	[LinkName("QBoxLayout_MetaObject")]
	public static extern QMetaObject* QBoxLayout_MetaObject(Self* c_this);
	[LinkName("QBoxLayout_Metacast")]
	public static extern void* QBoxLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QBoxLayout_Metacall")]
	public static extern int32 QBoxLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QBoxLayout_Tr")]
	public static extern libqt_string QBoxLayout_Tr(char8[] s);
	[LinkName("QBoxLayout_Direction")]
	public static extern int64 QBoxLayout_Direction(Self* c_this);
	[LinkName("QBoxLayout_SetDirection")]
	public static extern void QBoxLayout_SetDirection(Self* c_this, int64 direction);
	[LinkName("QBoxLayout_AddSpacing")]
	public static extern void QBoxLayout_AddSpacing(Self* c_this, int32 size);
	[LinkName("QBoxLayout_AddStretch")]
	public static extern void QBoxLayout_AddStretch(Self* c_this);
	[LinkName("QBoxLayout_AddSpacerItem")]
	public static extern void QBoxLayout_AddSpacerItem(Self* c_this, QSpacerItem* spacerItem);
	[LinkName("QBoxLayout_AddWidget")]
	public static extern void QBoxLayout_AddWidget(Self* c_this, QWidget* param1);
	[LinkName("QBoxLayout_AddLayout")]
	public static extern void QBoxLayout_AddLayout(Self* c_this, QLayout* layout);
	[LinkName("QBoxLayout_AddStrut")]
	public static extern void QBoxLayout_AddStrut(Self* c_this, int32 param1);
	[LinkName("QBoxLayout_AddItem")]
	public static extern void QBoxLayout_AddItem(Self* c_this, QLayoutItem* param1);
	[LinkName("QBoxLayout_InsertSpacing")]
	public static extern void QBoxLayout_InsertSpacing(Self* c_this, int32 index, int32 size);
	[LinkName("QBoxLayout_InsertStretch")]
	public static extern void QBoxLayout_InsertStretch(Self* c_this, int32 index);
	[LinkName("QBoxLayout_InsertSpacerItem")]
	public static extern void QBoxLayout_InsertSpacerItem(Self* c_this, int32 index, QSpacerItem* spacerItem);
	[LinkName("QBoxLayout_InsertWidget")]
	public static extern void QBoxLayout_InsertWidget(Self* c_this, int32 index, QWidget* widget);
	[LinkName("QBoxLayout_InsertLayout")]
	public static extern void QBoxLayout_InsertLayout(Self* c_this, int32 index, QLayout* layout);
	[LinkName("QBoxLayout_InsertItem")]
	public static extern void QBoxLayout_InsertItem(Self* c_this, int32 index, QLayoutItem* param2);
	[LinkName("QBoxLayout_Spacing")]
	public static extern int32 QBoxLayout_Spacing(Self* c_this);
	[LinkName("QBoxLayout_SetSpacing")]
	public static extern void QBoxLayout_SetSpacing(Self* c_this, int32 spacing);
	[LinkName("QBoxLayout_SetStretchFactor")]
	public static extern bool QBoxLayout_SetStretchFactor(Self* c_this, QWidget* w, int32 stretch);
	[LinkName("QBoxLayout_SetStretchFactor2")]
	public static extern bool QBoxLayout_SetStretchFactor2(Self* c_this, QLayout* l, int32 stretch);
	[LinkName("QBoxLayout_SetStretch")]
	public static extern void QBoxLayout_SetStretch(Self* c_this, int32 index, int32 stretch);
	[LinkName("QBoxLayout_Stretch")]
	public static extern int32 QBoxLayout_Stretch(Self* c_this, int32 index);
	[LinkName("QBoxLayout_SizeHint")]
	public static extern QSize QBoxLayout_SizeHint(Self* c_this);
	[LinkName("QBoxLayout_MinimumSize")]
	public static extern QSize QBoxLayout_MinimumSize(Self* c_this);
	[LinkName("QBoxLayout_MaximumSize")]
	public static extern QSize QBoxLayout_MaximumSize(Self* c_this);
	[LinkName("QBoxLayout_HasHeightForWidth")]
	public static extern bool QBoxLayout_HasHeightForWidth(Self* c_this);
	[LinkName("QBoxLayout_HeightForWidth")]
	public static extern int32 QBoxLayout_HeightForWidth(Self* c_this, int32 param1);
	[LinkName("QBoxLayout_MinimumHeightForWidth")]
	public static extern int32 QBoxLayout_MinimumHeightForWidth(Self* c_this, int32 param1);
	[LinkName("QBoxLayout_ExpandingDirections")]
	public static extern int64 QBoxLayout_ExpandingDirections(Self* c_this);
	[LinkName("QBoxLayout_Invalidate")]
	public static extern void QBoxLayout_Invalidate(Self* c_this);
	[LinkName("QBoxLayout_ItemAt")]
	public static extern QLayoutItem* QBoxLayout_ItemAt(Self* c_this, int32 param1);
	[LinkName("QBoxLayout_TakeAt")]
	public static extern QLayoutItem* QBoxLayout_TakeAt(Self* c_this, int32 param1);
	[LinkName("QBoxLayout_Count")]
	public static extern int32 QBoxLayout_Count(Self* c_this);
	[LinkName("QBoxLayout_SetGeometry")]
	public static extern void QBoxLayout_SetGeometry(Self* c_this, QRect* geometry);
	[LinkName("QBoxLayout_Tr2")]
	public static extern libqt_string QBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QBoxLayout_Tr3")]
	public static extern libqt_string QBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QBoxLayout_AddStretch1")]
	public static extern void QBoxLayout_AddStretch1(Self* c_this, int32 stretch);
	[LinkName("QBoxLayout_AddWidget2")]
	public static extern void QBoxLayout_AddWidget2(Self* c_this, QWidget* param1, int32 stretch);
	[LinkName("QBoxLayout_AddWidget3")]
	public static extern void QBoxLayout_AddWidget3(Self* c_this, QWidget* param1, int32 stretch, int64 alignment);
	[LinkName("QBoxLayout_AddLayout2")]
	public static extern void QBoxLayout_AddLayout2(Self* c_this, QLayout* layout, int32 stretch);
	[LinkName("QBoxLayout_InsertStretch2")]
	public static extern void QBoxLayout_InsertStretch2(Self* c_this, int32 index, int32 stretch);
	[LinkName("QBoxLayout_InsertWidget3")]
	public static extern void QBoxLayout_InsertWidget3(Self* c_this, int32 index, QWidget* widget, int32 stretch);
	[LinkName("QBoxLayout_InsertWidget4")]
	public static extern void QBoxLayout_InsertWidget4(Self* c_this, int32 index, QWidget* widget, int32 stretch, int64 alignment);
	[LinkName("QBoxLayout_InsertLayout3")]
	public static extern void QBoxLayout_InsertLayout3(Self* c_this, int32 index, QLayout* layout, int32 stretch);
}
public struct QHBoxLayout : QBoxLayout
{
	[LinkName("QHBoxLayout_new")]
	public static extern QHBoxLayout* QHBoxLayout_new(QWidget* parent);
	[LinkName("QHBoxLayout_new2")]
	public static extern QHBoxLayout* QHBoxLayout_new2();
	[LinkName("QHBoxLayout_MetaObject")]
	public static extern QMetaObject* QHBoxLayout_MetaObject(Self* c_this);
	[LinkName("QHBoxLayout_Metacast")]
	public static extern void* QHBoxLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QHBoxLayout_Metacall")]
	public static extern int32 QHBoxLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QHBoxLayout_Tr")]
	public static extern libqt_string QHBoxLayout_Tr(char8[] s);
	[LinkName("QHBoxLayout_Tr2")]
	public static extern libqt_string QHBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QHBoxLayout_Tr3")]
	public static extern libqt_string QHBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QVBoxLayout : QBoxLayout
{
	[LinkName("QVBoxLayout_new")]
	public static extern QVBoxLayout* QVBoxLayout_new(QWidget* parent);
	[LinkName("QVBoxLayout_new2")]
	public static extern QVBoxLayout* QVBoxLayout_new2();
	[LinkName("QVBoxLayout_MetaObject")]
	public static extern QMetaObject* QVBoxLayout_MetaObject(Self* c_this);
	[LinkName("QVBoxLayout_Metacast")]
	public static extern void* QVBoxLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QVBoxLayout_Metacall")]
	public static extern int32 QVBoxLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QVBoxLayout_Tr")]
	public static extern libqt_string QVBoxLayout_Tr(char8[] s);
	[LinkName("QVBoxLayout_Tr2")]
	public static extern libqt_string QVBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QVBoxLayout_Tr3")]
	public static extern libqt_string QVBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
}