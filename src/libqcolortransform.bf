using System;
using System.Interop;
namespace Qt;

public struct QColorTransform
{
	[LinkName("QColorTransform_new")]
	public static extern void* QColorTransform_new();
	[LinkName("QColorTransform_new2")]
	public static extern void* QColorTransform_new2(QColorTransform colorTransform);
	[LinkName("QColorTransform_OperatorAssign")]
	public static extern void QColorTransform_OperatorAssign(void* c_this, QColorTransform other);
	[LinkName("QColorTransform_Swap")]
	public static extern void QColorTransform_Swap(void* c_this, QColorTransform other);
	[LinkName("QColorTransform_IsIdentity")]
	public static extern bool QColorTransform_IsIdentity(void* c_this);
	[LinkName("QColorTransform_Map")]
	public static extern uint32 QColorTransform_Map(void* c_this, uint32 argb);
	[LinkName("QColorTransform_MapWithRgba64")]
	public static extern QRgba64 QColorTransform_MapWithRgba64(void* c_this, QRgba64 rgba64);
	[LinkName("QColorTransform_MapWithColor")]
	public static extern QColor QColorTransform_MapWithColor(void* c_this, QColor color);
}