using System;
using System.Interop;
namespace Qt;

public struct QGraphicsTransform
{
	[LinkName("QGraphicsTransform_new")]
	public static extern void* QGraphicsTransform_new();
	[LinkName("QGraphicsTransform_new2")]
	public static extern void* QGraphicsTransform_new2(QObject parent);
	[LinkName("QGraphicsTransform_MetaObject")]
	public static extern QMetaObject QGraphicsTransform_MetaObject(void* c_this);
	[LinkName("QGraphicsTransform_Metacast")]
	public static extern void QGraphicsTransform_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsTransform_Metacall")]
	public static extern int32 QGraphicsTransform_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsTransform_Tr")]
	public static extern char8[] QGraphicsTransform_Tr(char8[] s);
	[LinkName("QGraphicsTransform_ApplyTo")]
	public static extern void QGraphicsTransform_ApplyTo(void* c_this, QMatrix4x4 matrix);
	[LinkName("QGraphicsTransform_Update")]
	public static extern void QGraphicsTransform_Update(void* c_this);
	[LinkName("QGraphicsTransform_Tr2")]
	public static extern char8[] QGraphicsTransform_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsTransform_Tr3")]
	public static extern char8[] QGraphicsTransform_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsScale
{
	[LinkName("QGraphicsScale_new")]
	public static extern void* QGraphicsScale_new();
	[LinkName("QGraphicsScale_new2")]
	public static extern void* QGraphicsScale_new2(QObject parent);
	[LinkName("QGraphicsScale_MetaObject")]
	public static extern QMetaObject QGraphicsScale_MetaObject(void* c_this);
	[LinkName("QGraphicsScale_Metacast")]
	public static extern void QGraphicsScale_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsScale_Metacall")]
	public static extern int32 QGraphicsScale_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsScale_Tr")]
	public static extern char8[] QGraphicsScale_Tr(char8[] s);
	[LinkName("QGraphicsScale_Origin")]
	public static extern QVector3D QGraphicsScale_Origin(void* c_this);
	[LinkName("QGraphicsScale_SetOrigin")]
	public static extern void QGraphicsScale_SetOrigin(void* c_this, QVector3D point);
	[LinkName("QGraphicsScale_XScale")]
	public static extern double QGraphicsScale_XScale(void* c_this);
	[LinkName("QGraphicsScale_SetXScale")]
	public static extern void QGraphicsScale_SetXScale(void* c_this, double xScale);
	[LinkName("QGraphicsScale_YScale")]
	public static extern double QGraphicsScale_YScale(void* c_this);
	[LinkName("QGraphicsScale_SetYScale")]
	public static extern void QGraphicsScale_SetYScale(void* c_this, double yScale);
	[LinkName("QGraphicsScale_ZScale")]
	public static extern double QGraphicsScale_ZScale(void* c_this);
	[LinkName("QGraphicsScale_SetZScale")]
	public static extern void QGraphicsScale_SetZScale(void* c_this, double zScale);
	[LinkName("QGraphicsScale_ApplyTo")]
	public static extern void QGraphicsScale_ApplyTo(void* c_this, QMatrix4x4 matrix);
	[LinkName("QGraphicsScale_OriginChanged")]
	public static extern void QGraphicsScale_OriginChanged(void* c_this);
	[LinkName("QGraphicsScale_XScaleChanged")]
	public static extern void QGraphicsScale_XScaleChanged(void* c_this);
	[LinkName("QGraphicsScale_YScaleChanged")]
	public static extern void QGraphicsScale_YScaleChanged(void* c_this);
	[LinkName("QGraphicsScale_ZScaleChanged")]
	public static extern void QGraphicsScale_ZScaleChanged(void* c_this);
	[LinkName("QGraphicsScale_ScaleChanged")]
	public static extern void QGraphicsScale_ScaleChanged(void* c_this);
	[LinkName("QGraphicsScale_Tr2")]
	public static extern char8[] QGraphicsScale_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsScale_Tr3")]
	public static extern char8[] QGraphicsScale_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsRotation
{
	[LinkName("QGraphicsRotation_new")]
	public static extern void* QGraphicsRotation_new();
	[LinkName("QGraphicsRotation_new2")]
	public static extern void* QGraphicsRotation_new2(QObject parent);
	[LinkName("QGraphicsRotation_MetaObject")]
	public static extern QMetaObject QGraphicsRotation_MetaObject(void* c_this);
	[LinkName("QGraphicsRotation_Metacast")]
	public static extern void QGraphicsRotation_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsRotation_Metacall")]
	public static extern int32 QGraphicsRotation_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsRotation_Tr")]
	public static extern char8[] QGraphicsRotation_Tr(char8[] s);
	[LinkName("QGraphicsRotation_Origin")]
	public static extern QVector3D QGraphicsRotation_Origin(void* c_this);
	[LinkName("QGraphicsRotation_SetOrigin")]
	public static extern void QGraphicsRotation_SetOrigin(void* c_this, QVector3D point);
	[LinkName("QGraphicsRotation_Angle")]
	public static extern double QGraphicsRotation_Angle(void* c_this);
	[LinkName("QGraphicsRotation_SetAngle")]
	public static extern void QGraphicsRotation_SetAngle(void* c_this, double angle);
	[LinkName("QGraphicsRotation_Axis")]
	public static extern QVector3D QGraphicsRotation_Axis(void* c_this);
	[LinkName("QGraphicsRotation_SetAxis")]
	public static extern void QGraphicsRotation_SetAxis(void* c_this, QVector3D axis);
	[LinkName("QGraphicsRotation_SetAxisWithAxis")]
	public static extern void QGraphicsRotation_SetAxisWithAxis(void* c_this, int64 axis);
	[LinkName("QGraphicsRotation_ApplyTo")]
	public static extern void QGraphicsRotation_ApplyTo(void* c_this, QMatrix4x4 matrix);
	[LinkName("QGraphicsRotation_OriginChanged")]
	public static extern void QGraphicsRotation_OriginChanged(void* c_this);
	[LinkName("QGraphicsRotation_AngleChanged")]
	public static extern void QGraphicsRotation_AngleChanged(void* c_this);
	[LinkName("QGraphicsRotation_AxisChanged")]
	public static extern void QGraphicsRotation_AxisChanged(void* c_this);
	[LinkName("QGraphicsRotation_Tr2")]
	public static extern char8[] QGraphicsRotation_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsRotation_Tr3")]
	public static extern char8[] QGraphicsRotation_Tr3(char8[] s, char8[] c, int32 n);
}