using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSizePolicy__PolicyFlag
{
	GrowFlag = 1,
	ExpandFlag = 2,
	ShrinkFlag = 4,
	IgnoreFlag = 8,
}
[AllowDuplicates]
public enum QSizePolicy__Policy
{
	Fixed = 0,
	Minimum = 1,
	Maximum = 4,
	Preferred = 5,
	MinimumExpanding = 3,
	Expanding = 7,
	Ignored = 13,
}
[AllowDuplicates]
public enum QSizePolicy__ControlType
{
	DefaultType = 1,
	ButtonBox = 2,
	CheckBox = 4,
	ComboBox = 8,
	Frame = 16,
	GroupBox = 32,
	Label = 64,
	Line = 128,
	LineEdit = 256,
	PushButton = 512,
	RadioButton = 1024,
	Slider = 2048,
	SpinBox = 4096,
	TabWidget = 8192,
	ToolButton = 16384,
}
public struct QSizePolicy
{
	[LinkName("QSizePolicy_new")]
	public static extern QSizePolicy* QSizePolicy_new(QSizePolicy* other);
	[LinkName("QSizePolicy_new2")]
	public static extern QSizePolicy* QSizePolicy_new2(QSizePolicy* other);
	[LinkName("QSizePolicy_new3")]
	public static extern QSizePolicy* QSizePolicy_new3();
	[LinkName("QSizePolicy_new4")]
	public static extern QSizePolicy* QSizePolicy_new4(int64 horizontal, int64 vertical);
	[LinkName("QSizePolicy_new5")]
	public static extern QSizePolicy* QSizePolicy_new5(QSizePolicy* param1);
	[LinkName("QSizePolicy_new6")]
	public static extern QSizePolicy* QSizePolicy_new6(int64 horizontal, int64 vertical, int64 typeVal);
	[LinkName("QSizePolicy_HorizontalPolicy")]
	public static extern int64 QSizePolicy_HorizontalPolicy(Self* c_this);
	[LinkName("QSizePolicy_VerticalPolicy")]
	public static extern int64 QSizePolicy_VerticalPolicy(Self* c_this);
	[LinkName("QSizePolicy_ControlType")]
	public static extern int64 QSizePolicy_ControlType(Self* c_this);
	[LinkName("QSizePolicy_SetHorizontalPolicy")]
	public static extern void QSizePolicy_SetHorizontalPolicy(Self* c_this, int64 d);
	[LinkName("QSizePolicy_SetVerticalPolicy")]
	public static extern void QSizePolicy_SetVerticalPolicy(Self* c_this, int64 d);
	[LinkName("QSizePolicy_SetControlType")]
	public static extern void QSizePolicy_SetControlType(Self* c_this, int64 typeVal);
	[LinkName("QSizePolicy_ExpandingDirections")]
	public static extern int64 QSizePolicy_ExpandingDirections(Self* c_this);
	[LinkName("QSizePolicy_SetHeightForWidth")]
	public static extern void QSizePolicy_SetHeightForWidth(Self* c_this, bool b);
	[LinkName("QSizePolicy_HasHeightForWidth")]
	public static extern bool QSizePolicy_HasHeightForWidth(Self* c_this);
	[LinkName("QSizePolicy_SetWidthForHeight")]
	public static extern void QSizePolicy_SetWidthForHeight(Self* c_this, bool b);
	[LinkName("QSizePolicy_HasWidthForHeight")]
	public static extern bool QSizePolicy_HasWidthForHeight(Self* c_this);
	[LinkName("QSizePolicy_OperatorEqual")]
	public static extern bool QSizePolicy_OperatorEqual(Self* c_this, QSizePolicy* s);
	[LinkName("QSizePolicy_OperatorNotEqual")]
	public static extern bool QSizePolicy_OperatorNotEqual(Self* c_this, QSizePolicy* s);
	[LinkName("QSizePolicy_ToQVariant")]
	public static extern QVariant QSizePolicy_ToQVariant(Self* c_this);
	[LinkName("QSizePolicy_HorizontalStretch")]
	public static extern int32 QSizePolicy_HorizontalStretch(Self* c_this);
	[LinkName("QSizePolicy_VerticalStretch")]
	public static extern int32 QSizePolicy_VerticalStretch(Self* c_this);
	[LinkName("QSizePolicy_SetHorizontalStretch")]
	public static extern void QSizePolicy_SetHorizontalStretch(Self* c_this, int32 stretchFactor);
	[LinkName("QSizePolicy_SetVerticalStretch")]
	public static extern void QSizePolicy_SetVerticalStretch(Self* c_this, int32 stretchFactor);
	[LinkName("QSizePolicy_RetainSizeWhenHidden")]
	public static extern bool QSizePolicy_RetainSizeWhenHidden(Self* c_this);
	[LinkName("QSizePolicy_SetRetainSizeWhenHidden")]
	public static extern void QSizePolicy_SetRetainSizeWhenHidden(Self* c_this, bool retainSize);
	[LinkName("QSizePolicy_Transpose")]
	public static extern void QSizePolicy_Transpose(Self* c_this);
	[LinkName("QSizePolicy_Transposed")]
	public static extern QSizePolicy QSizePolicy_Transposed(Self* c_this);
}