using System;
using System.Interop;
namespace Qt;

public struct QColorTransform
{
	[LinkName("QColorTransform_new")]
	public static extern QColorTransform* QColorTransform_new();
	[LinkName("QColorTransform_new2")]
	public static extern QColorTransform* QColorTransform_new2(QColorTransform* colorTransform);
	[LinkName("QColorTransform_OperatorAssign")]
	public static extern void QColorTransform_OperatorAssign(Self* c_this, QColorTransform* other);
	[LinkName("QColorTransform_Swap")]
	public static extern void QColorTransform_Swap(Self* c_this, QColorTransform* other);
	[LinkName("QColorTransform_IsIdentity")]
	public static extern bool QColorTransform_IsIdentity(Self* c_this);
	[LinkName("QColorTransform_Map")]
	public static extern uint32 QColorTransform_Map(Self* c_this, uint32 argb);
	[LinkName("QColorTransform_MapWithRgba64")]
	public static extern QRgba64 QColorTransform_MapWithRgba64(Self* c_this, QRgba64 rgba64);
	[LinkName("QColorTransform_MapWithColor")]
	public static extern QColor QColorTransform_MapWithColor(Self* c_this, QColor* color);
}