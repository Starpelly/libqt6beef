using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLineF__IntersectionType
{
	NoIntersection = 0,
	BoundedIntersection = 1,
	UnboundedIntersection = 2,
}
public struct QLine
{
	[LinkName("QLine_new")]
	public static extern void* QLine_new(QLine other);
	[LinkName("QLine_new2")]
	public static extern void* QLine_new2(QLine other);
	[LinkName("QLine_new3")]
	public static extern void* QLine_new3();
	[LinkName("QLine_new4")]
	public static extern void* QLine_new4(QPoint pt1, QPoint pt2);
	[LinkName("QLine_new5")]
	public static extern void* QLine_new5(int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QLine_new6")]
	public static extern void* QLine_new6(QLine param1);
	[LinkName("QLine_IsNull")]
	public static extern bool QLine_IsNull(void* c_this);
	[LinkName("QLine_P1")]
	public static extern QPoint QLine_P1(void* c_this);
	[LinkName("QLine_P2")]
	public static extern QPoint QLine_P2(void* c_this);
	[LinkName("QLine_X1")]
	public static extern int32 QLine_X1(void* c_this);
	[LinkName("QLine_Y1")]
	public static extern int32 QLine_Y1(void* c_this);
	[LinkName("QLine_X2")]
	public static extern int32 QLine_X2(void* c_this);
	[LinkName("QLine_Y2")]
	public static extern int32 QLine_Y2(void* c_this);
	[LinkName("QLine_Dx")]
	public static extern int32 QLine_Dx(void* c_this);
	[LinkName("QLine_Dy")]
	public static extern int32 QLine_Dy(void* c_this);
	[LinkName("QLine_Translate")]
	public static extern void QLine_Translate(void* c_this, QPoint p);
	[LinkName("QLine_Translate2")]
	public static extern void QLine_Translate2(void* c_this, int32 dx, int32 dy);
	[LinkName("QLine_Translated")]
	public static extern QLine QLine_Translated(void* c_this, QPoint p);
	[LinkName("QLine_Translated2")]
	public static extern QLine QLine_Translated2(void* c_this, int32 dx, int32 dy);
	[LinkName("QLine_Center")]
	public static extern QPoint QLine_Center(void* c_this);
	[LinkName("QLine_SetP1")]
	public static extern void QLine_SetP1(void* c_this, QPoint p1);
	[LinkName("QLine_SetP2")]
	public static extern void QLine_SetP2(void* c_this, QPoint p2);
	[LinkName("QLine_SetPoints")]
	public static extern void QLine_SetPoints(void* c_this, QPoint p1, QPoint p2);
	[LinkName("QLine_SetLine")]
	public static extern void QLine_SetLine(void* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QLine_OperatorEqual")]
	public static extern bool QLine_OperatorEqual(void* c_this, QLine d);
	[LinkName("QLine_OperatorNotEqual")]
	public static extern bool QLine_OperatorNotEqual(void* c_this, QLine d);
	[LinkName("QLine_ToLineF")]
	public static extern QLineF QLine_ToLineF(void* c_this);
}
public struct QLineF
{
	[LinkName("QLineF_new")]
	public static extern void* QLineF_new(QLineF other);
	[LinkName("QLineF_new2")]
	public static extern void* QLineF_new2(QLineF other);
	[LinkName("QLineF_new3")]
	public static extern void* QLineF_new3();
	[LinkName("QLineF_new4")]
	public static extern void* QLineF_new4(QPointF pt1, QPointF pt2);
	[LinkName("QLineF_new5")]
	public static extern void* QLineF_new5(double x1, double y1, double x2, double y2);
	[LinkName("QLineF_new6")]
	public static extern void* QLineF_new6(QLine line);
	[LinkName("QLineF_new7")]
	public static extern void* QLineF_new7(QLineF param1);
	[LinkName("QLineF_FromPolar")]
	public static extern QLineF QLineF_FromPolar(double length, double angle);
	[LinkName("QLineF_IsNull")]
	public static extern bool QLineF_IsNull(void* c_this);
	[LinkName("QLineF_P1")]
	public static extern QPointF QLineF_P1(void* c_this);
	[LinkName("QLineF_P2")]
	public static extern QPointF QLineF_P2(void* c_this);
	[LinkName("QLineF_X1")]
	public static extern double QLineF_X1(void* c_this);
	[LinkName("QLineF_Y1")]
	public static extern double QLineF_Y1(void* c_this);
	[LinkName("QLineF_X2")]
	public static extern double QLineF_X2(void* c_this);
	[LinkName("QLineF_Y2")]
	public static extern double QLineF_Y2(void* c_this);
	[LinkName("QLineF_Dx")]
	public static extern double QLineF_Dx(void* c_this);
	[LinkName("QLineF_Dy")]
	public static extern double QLineF_Dy(void* c_this);
	[LinkName("QLineF_Length")]
	public static extern double QLineF_Length(void* c_this);
	[LinkName("QLineF_SetLength")]
	public static extern void QLineF_SetLength(void* c_this, double lenVal);
	[LinkName("QLineF_Angle")]
	public static extern double QLineF_Angle(void* c_this);
	[LinkName("QLineF_SetAngle")]
	public static extern void QLineF_SetAngle(void* c_this, double angle);
	[LinkName("QLineF_AngleTo")]
	public static extern double QLineF_AngleTo(void* c_this, QLineF l);
	[LinkName("QLineF_UnitVector")]
	public static extern QLineF QLineF_UnitVector(void* c_this);
	[LinkName("QLineF_NormalVector")]
	public static extern QLineF QLineF_NormalVector(void* c_this);
	[LinkName("QLineF_Intersects")]
	public static extern int64 QLineF_Intersects(void* c_this, QLineF l);
	[LinkName("QLineF_PointAt")]
	public static extern QPointF QLineF_PointAt(void* c_this, double t);
	[LinkName("QLineF_Translate")]
	public static extern void QLineF_Translate(void* c_this, QPointF p);
	[LinkName("QLineF_Translate2")]
	public static extern void QLineF_Translate2(void* c_this, double dx, double dy);
	[LinkName("QLineF_Translated")]
	public static extern QLineF QLineF_Translated(void* c_this, QPointF p);
	[LinkName("QLineF_Translated2")]
	public static extern QLineF QLineF_Translated2(void* c_this, double dx, double dy);
	[LinkName("QLineF_Center")]
	public static extern QPointF QLineF_Center(void* c_this);
	[LinkName("QLineF_SetP1")]
	public static extern void QLineF_SetP1(void* c_this, QPointF p1);
	[LinkName("QLineF_SetP2")]
	public static extern void QLineF_SetP2(void* c_this, QPointF p2);
	[LinkName("QLineF_SetPoints")]
	public static extern void QLineF_SetPoints(void* c_this, QPointF p1, QPointF p2);
	[LinkName("QLineF_SetLine")]
	public static extern void QLineF_SetLine(void* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QLineF_OperatorEqual")]
	public static extern bool QLineF_OperatorEqual(void* c_this, QLineF d);
	[LinkName("QLineF_OperatorNotEqual")]
	public static extern bool QLineF_OperatorNotEqual(void* c_this, QLineF d);
	[LinkName("QLineF_ToLine")]
	public static extern QLine QLineF_ToLine(void* c_this);
	[LinkName("QLineF_Intersects2")]
	public static extern int64 QLineF_Intersects2(void* c_this, QLineF l, QPointF intersectionPoint);
}