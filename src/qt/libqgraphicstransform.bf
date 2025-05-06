using System;
using System.Interop;
namespace Qt;

public struct QGraphicsTransform : QObject
{
	[LinkName("QGraphicsTransform_new")]
	public static extern QGraphicsTransform* QGraphicsTransform_new();
	[LinkName("QGraphicsTransform_new2")]
	public static extern QGraphicsTransform* QGraphicsTransform_new2(QObject* parent);
	[LinkName("QGraphicsTransform_MetaObject")]
	public static extern QMetaObject* QGraphicsTransform_MetaObject(Self* c_this);
	[LinkName("QGraphicsTransform_Metacast")]
	public static extern void* QGraphicsTransform_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsTransform_Metacall")]
	public static extern int32 QGraphicsTransform_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsTransform_Tr")]
	public static extern libqt_string QGraphicsTransform_Tr(char8[] s);
	[LinkName("QGraphicsTransform_ApplyTo")]
	public static extern void QGraphicsTransform_ApplyTo(Self* c_this, QMatrix4x4* matrix);
	[LinkName("QGraphicsTransform_Update")]
	public static extern void QGraphicsTransform_Update(Self* c_this);
	[LinkName("QGraphicsTransform_Tr2")]
	public static extern libqt_string QGraphicsTransform_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsTransform_Tr3")]
	public static extern libqt_string QGraphicsTransform_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsScale : QGraphicsTransform
{
	[LinkName("QGraphicsScale_new")]
	public static extern QGraphicsScale* QGraphicsScale_new();
	[LinkName("QGraphicsScale_new2")]
	public static extern QGraphicsScale* QGraphicsScale_new2(QObject* parent);
	[LinkName("QGraphicsScale_MetaObject")]
	public static extern QMetaObject* QGraphicsScale_MetaObject(Self* c_this);
	[LinkName("QGraphicsScale_Metacast")]
	public static extern void* QGraphicsScale_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsScale_Metacall")]
	public static extern int32 QGraphicsScale_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsScale_Tr")]
	public static extern libqt_string QGraphicsScale_Tr(char8[] s);
	[LinkName("QGraphicsScale_Origin")]
	public static extern QVector3D QGraphicsScale_Origin(Self* c_this);
	[LinkName("QGraphicsScale_SetOrigin")]
	public static extern void QGraphicsScale_SetOrigin(Self* c_this, QVector3D* point);
	[LinkName("QGraphicsScale_XScale")]
	public static extern double QGraphicsScale_XScale(Self* c_this);
	[LinkName("QGraphicsScale_SetXScale")]
	public static extern void QGraphicsScale_SetXScale(Self* c_this, double xScale);
	[LinkName("QGraphicsScale_YScale")]
	public static extern double QGraphicsScale_YScale(Self* c_this);
	[LinkName("QGraphicsScale_SetYScale")]
	public static extern void QGraphicsScale_SetYScale(Self* c_this, double yScale);
	[LinkName("QGraphicsScale_ZScale")]
	public static extern double QGraphicsScale_ZScale(Self* c_this);
	[LinkName("QGraphicsScale_SetZScale")]
	public static extern void QGraphicsScale_SetZScale(Self* c_this, double zScale);
	[LinkName("QGraphicsScale_ApplyTo")]
	public static extern void QGraphicsScale_ApplyTo(Self* c_this, QMatrix4x4* matrix);
	[LinkName("QGraphicsScale_OriginChanged")]
	public static extern void QGraphicsScale_OriginChanged(Self* c_this);
	[LinkName("QGraphicsScale_XScaleChanged")]
	public static extern void QGraphicsScale_XScaleChanged(Self* c_this);
	[LinkName("QGraphicsScale_YScaleChanged")]
	public static extern void QGraphicsScale_YScaleChanged(Self* c_this);
	[LinkName("QGraphicsScale_ZScaleChanged")]
	public static extern void QGraphicsScale_ZScaleChanged(Self* c_this);
	[LinkName("QGraphicsScale_ScaleChanged")]
	public static extern void QGraphicsScale_ScaleChanged(Self* c_this);
	[LinkName("QGraphicsScale_Tr2")]
	public static extern libqt_string QGraphicsScale_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsScale_Tr3")]
	public static extern libqt_string QGraphicsScale_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsRotation : QGraphicsTransform
{
	[LinkName("QGraphicsRotation_new")]
	public static extern QGraphicsRotation* QGraphicsRotation_new();
	[LinkName("QGraphicsRotation_new2")]
	public static extern QGraphicsRotation* QGraphicsRotation_new2(QObject* parent);
	[LinkName("QGraphicsRotation_MetaObject")]
	public static extern QMetaObject* QGraphicsRotation_MetaObject(Self* c_this);
	[LinkName("QGraphicsRotation_Metacast")]
	public static extern void* QGraphicsRotation_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsRotation_Metacall")]
	public static extern int32 QGraphicsRotation_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsRotation_Tr")]
	public static extern libqt_string QGraphicsRotation_Tr(char8[] s);
	[LinkName("QGraphicsRotation_Origin")]
	public static extern QVector3D QGraphicsRotation_Origin(Self* c_this);
	[LinkName("QGraphicsRotation_SetOrigin")]
	public static extern void QGraphicsRotation_SetOrigin(Self* c_this, QVector3D* point);
	[LinkName("QGraphicsRotation_Angle")]
	public static extern double QGraphicsRotation_Angle(Self* c_this);
	[LinkName("QGraphicsRotation_SetAngle")]
	public static extern void QGraphicsRotation_SetAngle(Self* c_this, double angle);
	[LinkName("QGraphicsRotation_Axis")]
	public static extern QVector3D QGraphicsRotation_Axis(Self* c_this);
	[LinkName("QGraphicsRotation_SetAxis")]
	public static extern void QGraphicsRotation_SetAxis(Self* c_this, QVector3D* axis);
	[LinkName("QGraphicsRotation_SetAxisWithAxis")]
	public static extern void QGraphicsRotation_SetAxisWithAxis(Self* c_this, int64 axis);
	[LinkName("QGraphicsRotation_ApplyTo")]
	public static extern void QGraphicsRotation_ApplyTo(Self* c_this, QMatrix4x4* matrix);
	[LinkName("QGraphicsRotation_OriginChanged")]
	public static extern void QGraphicsRotation_OriginChanged(Self* c_this);
	[LinkName("QGraphicsRotation_AngleChanged")]
	public static extern void QGraphicsRotation_AngleChanged(Self* c_this);
	[LinkName("QGraphicsRotation_AxisChanged")]
	public static extern void QGraphicsRotation_AxisChanged(Self* c_this);
	[LinkName("QGraphicsRotation_Tr2")]
	public static extern libqt_string QGraphicsRotation_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsRotation_Tr3")]
	public static extern libqt_string QGraphicsRotation_Tr3(char8[] s, char8[] c, int32 n);
}