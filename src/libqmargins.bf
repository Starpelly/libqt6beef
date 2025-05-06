using System;
using System.Interop;
namespace Qt;

public struct QMargins
{
	[LinkName("QMargins_new")]
	public static extern void* QMargins_new(QMargins other);
	[LinkName("QMargins_new2")]
	public static extern void* QMargins_new2(QMargins other);
	[LinkName("QMargins_new3")]
	public static extern void* QMargins_new3();
	[LinkName("QMargins_new4")]
	public static extern void* QMargins_new4(int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QMargins_new5")]
	public static extern void* QMargins_new5(QMargins param1);
	[LinkName("QMargins_IsNull")]
	public static extern bool QMargins_IsNull(void* c_this);
	[LinkName("QMargins_Left")]
	public static extern int32 QMargins_Left(void* c_this);
	[LinkName("QMargins_Top")]
	public static extern int32 QMargins_Top(void* c_this);
	[LinkName("QMargins_Right")]
	public static extern int32 QMargins_Right(void* c_this);
	[LinkName("QMargins_Bottom")]
	public static extern int32 QMargins_Bottom(void* c_this);
	[LinkName("QMargins_SetLeft")]
	public static extern void QMargins_SetLeft(void* c_this, int32 left);
	[LinkName("QMargins_SetTop")]
	public static extern void QMargins_SetTop(void* c_this, int32 top);
	[LinkName("QMargins_SetRight")]
	public static extern void QMargins_SetRight(void* c_this, int32 right);
	[LinkName("QMargins_SetBottom")]
	public static extern void QMargins_SetBottom(void* c_this, int32 bottom);
	[LinkName("QMargins_OperatorPlusAssign")]
	public static extern QMargins QMargins_OperatorPlusAssign(void* c_this, QMargins margins);
	[LinkName("QMargins_OperatorMinusAssign")]
	public static extern QMargins QMargins_OperatorMinusAssign(void* c_this, QMargins margins);
	[LinkName("QMargins_OperatorPlusAssignWithInt")]
	public static extern QMargins QMargins_OperatorPlusAssignWithInt(void* c_this, int32 param1);
	[LinkName("QMargins_OperatorMinusAssignWithInt")]
	public static extern QMargins QMargins_OperatorMinusAssignWithInt(void* c_this, int32 param1);
	[LinkName("QMargins_OperatorMultiplyAssign")]
	public static extern QMargins QMargins_OperatorMultiplyAssign(void* c_this, int32 param1);
	[LinkName("QMargins_OperatorDivideAssign")]
	public static extern QMargins QMargins_OperatorDivideAssign(void* c_this, int32 param1);
	[LinkName("QMargins_OperatorMultiplyAssignWithDouble")]
	public static extern QMargins QMargins_OperatorMultiplyAssignWithDouble(void* c_this, double param1);
	[LinkName("QMargins_OperatorDivideAssignWithDouble")]
	public static extern QMargins QMargins_OperatorDivideAssignWithDouble(void* c_this, double param1);
	[LinkName("QMargins_ToMarginsF")]
	public static extern QMarginsF QMargins_ToMarginsF(void* c_this);
}
public struct QMarginsF
{
	[LinkName("QMarginsF_new")]
	public static extern void* QMarginsF_new(QMarginsF other);
	[LinkName("QMarginsF_new2")]
	public static extern void* QMarginsF_new2(QMarginsF other);
	[LinkName("QMarginsF_new3")]
	public static extern void* QMarginsF_new3();
	[LinkName("QMarginsF_new4")]
	public static extern void* QMarginsF_new4(double left, double top, double right, double bottom);
	[LinkName("QMarginsF_new5")]
	public static extern void* QMarginsF_new5(QMargins margins);
	[LinkName("QMarginsF_new6")]
	public static extern void* QMarginsF_new6(QMarginsF param1);
	[LinkName("QMarginsF_IsNull")]
	public static extern bool QMarginsF_IsNull(void* c_this);
	[LinkName("QMarginsF_Left")]
	public static extern double QMarginsF_Left(void* c_this);
	[LinkName("QMarginsF_Top")]
	public static extern double QMarginsF_Top(void* c_this);
	[LinkName("QMarginsF_Right")]
	public static extern double QMarginsF_Right(void* c_this);
	[LinkName("QMarginsF_Bottom")]
	public static extern double QMarginsF_Bottom(void* c_this);
	[LinkName("QMarginsF_SetLeft")]
	public static extern void QMarginsF_SetLeft(void* c_this, double aleft);
	[LinkName("QMarginsF_SetTop")]
	public static extern void QMarginsF_SetTop(void* c_this, double atop);
	[LinkName("QMarginsF_SetRight")]
	public static extern void QMarginsF_SetRight(void* c_this, double aright);
	[LinkName("QMarginsF_SetBottom")]
	public static extern void QMarginsF_SetBottom(void* c_this, double abottom);
	[LinkName("QMarginsF_OperatorPlusAssign")]
	public static extern QMarginsF QMarginsF_OperatorPlusAssign(void* c_this, QMarginsF margins);
	[LinkName("QMarginsF_OperatorMinusAssign")]
	public static extern QMarginsF QMarginsF_OperatorMinusAssign(void* c_this, QMarginsF margins);
	[LinkName("QMarginsF_OperatorPlusAssignWithAddend")]
	public static extern QMarginsF QMarginsF_OperatorPlusAssignWithAddend(void* c_this, double addend);
	[LinkName("QMarginsF_OperatorMinusAssignWithSubtrahend")]
	public static extern QMarginsF QMarginsF_OperatorMinusAssignWithSubtrahend(void* c_this, double subtrahend);
	[LinkName("QMarginsF_OperatorMultiplyAssign")]
	public static extern QMarginsF QMarginsF_OperatorMultiplyAssign(void* c_this, double factor);
	[LinkName("QMarginsF_OperatorDivideAssign")]
	public static extern QMarginsF QMarginsF_OperatorDivideAssign(void* c_this, double divisor);
	[LinkName("QMarginsF_ToMargins")]
	public static extern QMargins QMarginsF_ToMargins(void* c_this);
}