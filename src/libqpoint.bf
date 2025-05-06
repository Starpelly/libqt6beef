using System;
using System.Interop;
namespace Qt;

public struct QPoint
{
	[LinkName("QPoint_new")]
	public static extern void* QPoint_new(QPoint other);
	[LinkName("QPoint_new2")]
	public static extern void* QPoint_new2(QPoint other);
	[LinkName("QPoint_new3")]
	public static extern void* QPoint_new3();
	[LinkName("QPoint_new4")]
	public static extern void* QPoint_new4(int32 xpos, int32 ypos);
	[LinkName("QPoint_new5")]
	public static extern void* QPoint_new5(QPoint param1);
	[LinkName("QPoint_IsNull")]
	public static extern bool QPoint_IsNull(void* c_this);
	[LinkName("QPoint_X")]
	public static extern int32 QPoint_X(void* c_this);
	[LinkName("QPoint_Y")]
	public static extern int32 QPoint_Y(void* c_this);
	[LinkName("QPoint_SetX")]
	public static extern void QPoint_SetX(void* c_this, int32 x);
	[LinkName("QPoint_SetY")]
	public static extern void QPoint_SetY(void* c_this, int32 y);
	[LinkName("QPoint_ManhattanLength")]
	public static extern int32 QPoint_ManhattanLength(void* c_this);
	[LinkName("QPoint_Transposed")]
	public static extern QPoint QPoint_Transposed(void* c_this);
	[LinkName("QPoint_OperatorPlusAssign")]
	public static extern QPoint QPoint_OperatorPlusAssign(void* c_this, QPoint p);
	[LinkName("QPoint_OperatorMinusAssign")]
	public static extern QPoint QPoint_OperatorMinusAssign(void* c_this, QPoint p);
	[LinkName("QPoint_OperatorMultiplyAssign")]
	public static extern QPoint QPoint_OperatorMultiplyAssign(void* c_this, float factor);
	[LinkName("QPoint_OperatorMultiplyAssignWithFactor")]
	public static extern QPoint QPoint_OperatorMultiplyAssignWithFactor(void* c_this, double factor);
	[LinkName("QPoint_OperatorMultiplyAssign2")]
	public static extern QPoint QPoint_OperatorMultiplyAssign2(void* c_this, int32 factor);
	[LinkName("QPoint_OperatorDivideAssign")]
	public static extern QPoint QPoint_OperatorDivideAssign(void* c_this, double divisor);
	[LinkName("QPoint_DotProduct")]
	public static extern int32 QPoint_DotProduct(QPoint p1, QPoint p2);
	[LinkName("QPoint_ToPointF")]
	public static extern QPointF QPoint_ToPointF(void* c_this);
}
public struct QPointF
{
	[LinkName("QPointF_new")]
	public static extern void* QPointF_new(QPointF other);
	[LinkName("QPointF_new2")]
	public static extern void* QPointF_new2(QPointF other);
	[LinkName("QPointF_new3")]
	public static extern void* QPointF_new3();
	[LinkName("QPointF_new4")]
	public static extern void* QPointF_new4(QPoint p);
	[LinkName("QPointF_new5")]
	public static extern void* QPointF_new5(double xpos, double ypos);
	[LinkName("QPointF_new6")]
	public static extern void* QPointF_new6(QPointF param1);
	[LinkName("QPointF_ManhattanLength")]
	public static extern double QPointF_ManhattanLength(void* c_this);
	[LinkName("QPointF_IsNull")]
	public static extern bool QPointF_IsNull(void* c_this);
	[LinkName("QPointF_X")]
	public static extern double QPointF_X(void* c_this);
	[LinkName("QPointF_Y")]
	public static extern double QPointF_Y(void* c_this);
	[LinkName("QPointF_SetX")]
	public static extern void QPointF_SetX(void* c_this, double x);
	[LinkName("QPointF_SetY")]
	public static extern void QPointF_SetY(void* c_this, double y);
	[LinkName("QPointF_Transposed")]
	public static extern QPointF QPointF_Transposed(void* c_this);
	[LinkName("QPointF_OperatorPlusAssign")]
	public static extern QPointF QPointF_OperatorPlusAssign(void* c_this, QPointF p);
	[LinkName("QPointF_OperatorMinusAssign")]
	public static extern QPointF QPointF_OperatorMinusAssign(void* c_this, QPointF p);
	[LinkName("QPointF_OperatorMultiplyAssign")]
	public static extern QPointF QPointF_OperatorMultiplyAssign(void* c_this, double c);
	[LinkName("QPointF_OperatorDivideAssign")]
	public static extern QPointF QPointF_OperatorDivideAssign(void* c_this, double c);
	[LinkName("QPointF_DotProduct")]
	public static extern double QPointF_DotProduct(QPointF p1, QPointF p2);
	[LinkName("QPointF_ToPoint")]
	public static extern QPoint QPointF_ToPoint(void* c_this);
}