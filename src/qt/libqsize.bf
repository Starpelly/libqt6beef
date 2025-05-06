using System;
using System.Interop;
namespace Qt;

public struct QSize
{
	[LinkName("QSize_new")]
	public static extern QSize* QSize_new(QSize* other);
	[LinkName("QSize_new2")]
	public static extern QSize* QSize_new2(QSize* other);
	[LinkName("QSize_new3")]
	public static extern QSize* QSize_new3();
	[LinkName("QSize_new4")]
	public static extern QSize* QSize_new4(int32 w, int32 h);
	[LinkName("QSize_new5")]
	public static extern QSize* QSize_new5(QSize* param1);
	[LinkName("QSize_IsNull")]
	public static extern bool QSize_IsNull(Self* c_this);
	[LinkName("QSize_IsEmpty")]
	public static extern bool QSize_IsEmpty(Self* c_this);
	[LinkName("QSize_IsValid")]
	public static extern bool QSize_IsValid(Self* c_this);
	[LinkName("QSize_Width")]
	public static extern int32 QSize_Width(Self* c_this);
	[LinkName("QSize_Height")]
	public static extern int32 QSize_Height(Self* c_this);
	[LinkName("QSize_SetWidth")]
	public static extern void QSize_SetWidth(Self* c_this, int32 w);
	[LinkName("QSize_SetHeight")]
	public static extern void QSize_SetHeight(Self* c_this, int32 h);
	[LinkName("QSize_Transpose")]
	public static extern void QSize_Transpose(Self* c_this);
	[LinkName("QSize_Transposed")]
	public static extern QSize QSize_Transposed(Self* c_this);
	[LinkName("QSize_Scale")]
	public static extern void QSize_Scale(Self* c_this, int32 w, int32 h, int64 mode);
	[LinkName("QSize_Scale2")]
	public static extern void QSize_Scale2(Self* c_this, QSize* s, int64 mode);
	[LinkName("QSize_Scaled")]
	public static extern QSize QSize_Scaled(Self* c_this, int32 w, int32 h, int64 mode);
	[LinkName("QSize_Scaled2")]
	public static extern QSize QSize_Scaled2(Self* c_this, QSize* s, int64 mode);
	[LinkName("QSize_ExpandedTo")]
	public static extern QSize QSize_ExpandedTo(Self* c_this, QSize* param1);
	[LinkName("QSize_BoundedTo")]
	public static extern QSize QSize_BoundedTo(Self* c_this, QSize* param1);
	[LinkName("QSize_GrownBy")]
	public static extern QSize QSize_GrownBy(Self* c_this, QMargins m);
	[LinkName("QSize_ShrunkBy")]
	public static extern QSize QSize_ShrunkBy(Self* c_this, QMargins m);
	[LinkName("QSize_OperatorPlusAssign")]
	public static extern QSize* QSize_OperatorPlusAssign(Self* c_this, QSize* param1);
	[LinkName("QSize_OperatorMinusAssign")]
	public static extern QSize* QSize_OperatorMinusAssign(Self* c_this, QSize* param1);
	[LinkName("QSize_OperatorMultiplyAssign")]
	public static extern QSize* QSize_OperatorMultiplyAssign(Self* c_this, double c);
	[LinkName("QSize_OperatorDivideAssign")]
	public static extern QSize* QSize_OperatorDivideAssign(Self* c_this, double c);
	[LinkName("QSize_ToSizeF")]
	public static extern QSizeF QSize_ToSizeF(Self* c_this);
}
public struct QSizeF
{
	[LinkName("QSizeF_new")]
	public static extern QSizeF* QSizeF_new(QSizeF* other);
	[LinkName("QSizeF_new2")]
	public static extern QSizeF* QSizeF_new2(QSizeF* other);
	[LinkName("QSizeF_new3")]
	public static extern QSizeF* QSizeF_new3();
	[LinkName("QSizeF_new4")]
	public static extern QSizeF* QSizeF_new4(QSize* sz);
	[LinkName("QSizeF_new5")]
	public static extern QSizeF* QSizeF_new5(double w, double h);
	[LinkName("QSizeF_new6")]
	public static extern QSizeF* QSizeF_new6(QSizeF* param1);
	[LinkName("QSizeF_IsNull")]
	public static extern bool QSizeF_IsNull(Self* c_this);
	[LinkName("QSizeF_IsEmpty")]
	public static extern bool QSizeF_IsEmpty(Self* c_this);
	[LinkName("QSizeF_IsValid")]
	public static extern bool QSizeF_IsValid(Self* c_this);
	[LinkName("QSizeF_Width")]
	public static extern double QSizeF_Width(Self* c_this);
	[LinkName("QSizeF_Height")]
	public static extern double QSizeF_Height(Self* c_this);
	[LinkName("QSizeF_SetWidth")]
	public static extern void QSizeF_SetWidth(Self* c_this, double w);
	[LinkName("QSizeF_SetHeight")]
	public static extern void QSizeF_SetHeight(Self* c_this, double h);
	[LinkName("QSizeF_Transpose")]
	public static extern void QSizeF_Transpose(Self* c_this);
	[LinkName("QSizeF_Transposed")]
	public static extern QSizeF QSizeF_Transposed(Self* c_this);
	[LinkName("QSizeF_Scale")]
	public static extern void QSizeF_Scale(Self* c_this, double w, double h, int64 mode);
	[LinkName("QSizeF_Scale2")]
	public static extern void QSizeF_Scale2(Self* c_this, QSizeF* s, int64 mode);
	[LinkName("QSizeF_Scaled")]
	public static extern QSizeF QSizeF_Scaled(Self* c_this, double w, double h, int64 mode);
	[LinkName("QSizeF_Scaled2")]
	public static extern QSizeF QSizeF_Scaled2(Self* c_this, QSizeF* s, int64 mode);
	[LinkName("QSizeF_ExpandedTo")]
	public static extern QSizeF QSizeF_ExpandedTo(Self* c_this, QSizeF* param1);
	[LinkName("QSizeF_BoundedTo")]
	public static extern QSizeF QSizeF_BoundedTo(Self* c_this, QSizeF* param1);
	[LinkName("QSizeF_GrownBy")]
	public static extern QSizeF QSizeF_GrownBy(Self* c_this, QMarginsF m);
	[LinkName("QSizeF_ShrunkBy")]
	public static extern QSizeF QSizeF_ShrunkBy(Self* c_this, QMarginsF m);
	[LinkName("QSizeF_OperatorPlusAssign")]
	public static extern QSizeF* QSizeF_OperatorPlusAssign(Self* c_this, QSizeF* param1);
	[LinkName("QSizeF_OperatorMinusAssign")]
	public static extern QSizeF* QSizeF_OperatorMinusAssign(Self* c_this, QSizeF* param1);
	[LinkName("QSizeF_OperatorMultiplyAssign")]
	public static extern QSizeF* QSizeF_OperatorMultiplyAssign(Self* c_this, double c);
	[LinkName("QSizeF_OperatorDivideAssign")]
	public static extern QSizeF* QSizeF_OperatorDivideAssign(Self* c_this, double c);
	[LinkName("QSizeF_ToSize")]
	public static extern QSize QSizeF_ToSize(Self* c_this);
}