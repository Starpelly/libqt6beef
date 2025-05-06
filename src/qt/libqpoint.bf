using System;
using System.Interop;
namespace Qt;

public struct QPoint
{
	[LinkName("QPoint_new")]
	public static extern QPoint* QPoint_new(QPoint* other);
	[LinkName("QPoint_new2")]
	public static extern QPoint* QPoint_new2(QPoint* other);
	[LinkName("QPoint_new3")]
	public static extern QPoint* QPoint_new3();
	[LinkName("QPoint_new4")]
	public static extern QPoint* QPoint_new4(int32 xpos, int32 ypos);
	[LinkName("QPoint_new5")]
	public static extern QPoint* QPoint_new5(QPoint* param1);
	[LinkName("QPoint_IsNull")]
	public static extern bool QPoint_IsNull(Self* c_this);
	[LinkName("QPoint_X")]
	public static extern int32 QPoint_X(Self* c_this);
	[LinkName("QPoint_Y")]
	public static extern int32 QPoint_Y(Self* c_this);
	[LinkName("QPoint_SetX")]
	public static extern void QPoint_SetX(Self* c_this, int32 x);
	[LinkName("QPoint_SetY")]
	public static extern void QPoint_SetY(Self* c_this, int32 y);
	[LinkName("QPoint_ManhattanLength")]
	public static extern int32 QPoint_ManhattanLength(Self* c_this);
	[LinkName("QPoint_Transposed")]
	public static extern QPoint QPoint_Transposed(Self* c_this);
	[LinkName("QPoint_OperatorPlusAssign")]
	public static extern QPoint* QPoint_OperatorPlusAssign(Self* c_this, QPoint* p);
	[LinkName("QPoint_OperatorMinusAssign")]
	public static extern QPoint* QPoint_OperatorMinusAssign(Self* c_this, QPoint* p);
	[LinkName("QPoint_OperatorMultiplyAssign")]
	public static extern QPoint* QPoint_OperatorMultiplyAssign(Self* c_this, float factor);
	[LinkName("QPoint_OperatorMultiplyAssignWithFactor")]
	public static extern QPoint* QPoint_OperatorMultiplyAssignWithFactor(Self* c_this, double factor);
	[LinkName("QPoint_OperatorMultiplyAssign2")]
	public static extern QPoint* QPoint_OperatorMultiplyAssign2(Self* c_this, int32 factor);
	[LinkName("QPoint_OperatorDivideAssign")]
	public static extern QPoint* QPoint_OperatorDivideAssign(Self* c_this, double divisor);
	[LinkName("QPoint_DotProduct")]
	public static extern int32 QPoint_DotProduct(QPoint* p1, QPoint* p2);
	[LinkName("QPoint_ToPointF")]
	public static extern QPointF QPoint_ToPointF(Self* c_this);
}
public struct QPointF
{
	[LinkName("QPointF_new")]
	public static extern QPointF* QPointF_new(QPointF* other);
	[LinkName("QPointF_new2")]
	public static extern QPointF* QPointF_new2(QPointF* other);
	[LinkName("QPointF_new3")]
	public static extern QPointF* QPointF_new3();
	[LinkName("QPointF_new4")]
	public static extern QPointF* QPointF_new4(QPoint* p);
	[LinkName("QPointF_new5")]
	public static extern QPointF* QPointF_new5(double xpos, double ypos);
	[LinkName("QPointF_new6")]
	public static extern QPointF* QPointF_new6(QPointF* param1);
	[LinkName("QPointF_ManhattanLength")]
	public static extern double QPointF_ManhattanLength(Self* c_this);
	[LinkName("QPointF_IsNull")]
	public static extern bool QPointF_IsNull(Self* c_this);
	[LinkName("QPointF_X")]
	public static extern double QPointF_X(Self* c_this);
	[LinkName("QPointF_Y")]
	public static extern double QPointF_Y(Self* c_this);
	[LinkName("QPointF_SetX")]
	public static extern void QPointF_SetX(Self* c_this, double x);
	[LinkName("QPointF_SetY")]
	public static extern void QPointF_SetY(Self* c_this, double y);
	[LinkName("QPointF_Transposed")]
	public static extern QPointF QPointF_Transposed(Self* c_this);
	[LinkName("QPointF_OperatorPlusAssign")]
	public static extern QPointF* QPointF_OperatorPlusAssign(Self* c_this, QPointF* p);
	[LinkName("QPointF_OperatorMinusAssign")]
	public static extern QPointF* QPointF_OperatorMinusAssign(Self* c_this, QPointF* p);
	[LinkName("QPointF_OperatorMultiplyAssign")]
	public static extern QPointF* QPointF_OperatorMultiplyAssign(Self* c_this, double c);
	[LinkName("QPointF_OperatorDivideAssign")]
	public static extern QPointF* QPointF_OperatorDivideAssign(Self* c_this, double c);
	[LinkName("QPointF_DotProduct")]
	public static extern double QPointF_DotProduct(QPointF* p1, QPointF* p2);
	[LinkName("QPointF_ToPoint")]
	public static extern QPoint QPointF_ToPoint(Self* c_this);
}