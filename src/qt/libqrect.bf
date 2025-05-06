using System;
using System.Interop;
namespace Qt;

public struct QRect
{
	[LinkName("QRect_new")]
	public static extern QRect* QRect_new(QRect* other);
	[LinkName("QRect_new2")]
	public static extern QRect* QRect_new2(QRect* other);
	[LinkName("QRect_new3")]
	public static extern QRect* QRect_new3();
	[LinkName("QRect_new4")]
	public static extern QRect* QRect_new4(QPoint* topleft, QPoint* bottomright);
	[LinkName("QRect_new5")]
	public static extern QRect* QRect_new5(QPoint* topleft, QSize* size);
	[LinkName("QRect_new6")]
	public static extern QRect* QRect_new6(int32 left, int32 top, int32 width, int32 height);
	[LinkName("QRect_new7")]
	public static extern QRect* QRect_new7(QRect* param1);
	[LinkName("QRect_IsNull")]
	public static extern bool QRect_IsNull(Self* c_this);
	[LinkName("QRect_IsEmpty")]
	public static extern bool QRect_IsEmpty(Self* c_this);
	[LinkName("QRect_IsValid")]
	public static extern bool QRect_IsValid(Self* c_this);
	[LinkName("QRect_Left")]
	public static extern int32 QRect_Left(Self* c_this);
	[LinkName("QRect_Top")]
	public static extern int32 QRect_Top(Self* c_this);
	[LinkName("QRect_Right")]
	public static extern int32 QRect_Right(Self* c_this);
	[LinkName("QRect_Bottom")]
	public static extern int32 QRect_Bottom(Self* c_this);
	[LinkName("QRect_Normalized")]
	public static extern QRect QRect_Normalized(Self* c_this);
	[LinkName("QRect_X")]
	public static extern int32 QRect_X(Self* c_this);
	[LinkName("QRect_Y")]
	public static extern int32 QRect_Y(Self* c_this);
	[LinkName("QRect_SetLeft")]
	public static extern void QRect_SetLeft(Self* c_this, int32 pos);
	[LinkName("QRect_SetTop")]
	public static extern void QRect_SetTop(Self* c_this, int32 pos);
	[LinkName("QRect_SetRight")]
	public static extern void QRect_SetRight(Self* c_this, int32 pos);
	[LinkName("QRect_SetBottom")]
	public static extern void QRect_SetBottom(Self* c_this, int32 pos);
	[LinkName("QRect_SetX")]
	public static extern void QRect_SetX(Self* c_this, int32 x);
	[LinkName("QRect_SetY")]
	public static extern void QRect_SetY(Self* c_this, int32 y);
	[LinkName("QRect_SetTopLeft")]
	public static extern void QRect_SetTopLeft(Self* c_this, QPoint* p);
	[LinkName("QRect_SetBottomRight")]
	public static extern void QRect_SetBottomRight(Self* c_this, QPoint* p);
	[LinkName("QRect_SetTopRight")]
	public static extern void QRect_SetTopRight(Self* c_this, QPoint* p);
	[LinkName("QRect_SetBottomLeft")]
	public static extern void QRect_SetBottomLeft(Self* c_this, QPoint* p);
	[LinkName("QRect_TopLeft")]
	public static extern QPoint QRect_TopLeft(Self* c_this);
	[LinkName("QRect_BottomRight")]
	public static extern QPoint QRect_BottomRight(Self* c_this);
	[LinkName("QRect_TopRight")]
	public static extern QPoint QRect_TopRight(Self* c_this);
	[LinkName("QRect_BottomLeft")]
	public static extern QPoint QRect_BottomLeft(Self* c_this);
	[LinkName("QRect_Center")]
	public static extern QPoint QRect_Center(Self* c_this);
	[LinkName("QRect_MoveLeft")]
	public static extern void QRect_MoveLeft(Self* c_this, int32 pos);
	[LinkName("QRect_MoveTop")]
	public static extern void QRect_MoveTop(Self* c_this, int32 pos);
	[LinkName("QRect_MoveRight")]
	public static extern void QRect_MoveRight(Self* c_this, int32 pos);
	[LinkName("QRect_MoveBottom")]
	public static extern void QRect_MoveBottom(Self* c_this, int32 pos);
	[LinkName("QRect_MoveTopLeft")]
	public static extern void QRect_MoveTopLeft(Self* c_this, QPoint* p);
	[LinkName("QRect_MoveBottomRight")]
	public static extern void QRect_MoveBottomRight(Self* c_this, QPoint* p);
	[LinkName("QRect_MoveTopRight")]
	public static extern void QRect_MoveTopRight(Self* c_this, QPoint* p);
	[LinkName("QRect_MoveBottomLeft")]
	public static extern void QRect_MoveBottomLeft(Self* c_this, QPoint* p);
	[LinkName("QRect_MoveCenter")]
	public static extern void QRect_MoveCenter(Self* c_this, QPoint* p);
	[LinkName("QRect_Translate")]
	public static extern void QRect_Translate(Self* c_this, int32 dx, int32 dy);
	[LinkName("QRect_TranslateWithQPoint")]
	public static extern void QRect_TranslateWithQPoint(Self* c_this, QPoint* p);
	[LinkName("QRect_Translated")]
	public static extern QRect QRect_Translated(Self* c_this, int32 dx, int32 dy);
	[LinkName("QRect_TranslatedWithQPoint")]
	public static extern QRect QRect_TranslatedWithQPoint(Self* c_this, QPoint* p);
	[LinkName("QRect_Transposed")]
	public static extern QRect QRect_Transposed(Self* c_this);
	[LinkName("QRect_MoveTo")]
	public static extern void QRect_MoveTo(Self* c_this, int32 x, int32 t);
	[LinkName("QRect_MoveToWithQPoint")]
	public static extern void QRect_MoveToWithQPoint(Self* c_this, QPoint* p);
	[LinkName("QRect_SetRect")]
	public static extern void QRect_SetRect(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QRect_GetRect")]
	public static extern void QRect_GetRect(Self* c_this, int32* x, int32* y, int32* w, int32* h);
	[LinkName("QRect_SetCoords")]
	public static extern void QRect_SetCoords(Self* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QRect_GetCoords")]
	public static extern void QRect_GetCoords(Self* c_this, int32* x1, int32* y1, int32* x2, int32* y2);
	[LinkName("QRect_Adjust")]
	public static extern void QRect_Adjust(Self* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QRect_Adjusted")]
	public static extern QRect QRect_Adjusted(Self* c_this, int32 x1, int32 y1, int32 x2, int32 y2);
	[LinkName("QRect_Size")]
	public static extern QSize QRect_Size(Self* c_this);
	[LinkName("QRect_Width")]
	public static extern int32 QRect_Width(Self* c_this);
	[LinkName("QRect_Height")]
	public static extern int32 QRect_Height(Self* c_this);
	[LinkName("QRect_SetWidth")]
	public static extern void QRect_SetWidth(Self* c_this, int32 w);
	[LinkName("QRect_SetHeight")]
	public static extern void QRect_SetHeight(Self* c_this, int32 h);
	[LinkName("QRect_SetSize")]
	public static extern void QRect_SetSize(Self* c_this, QSize* s);
	[LinkName("QRect_OperatorBitwiseOr")]
	public static extern QRect QRect_OperatorBitwiseOr(Self* c_this, QRect* r);
	[LinkName("QRect_OperatorBitwiseAnd")]
	public static extern QRect QRect_OperatorBitwiseAnd(Self* c_this, QRect* r);
	[LinkName("QRect_OperatorBitwiseOrAssign")]
	public static extern void QRect_OperatorBitwiseOrAssign(Self* c_this, QRect* r);
	[LinkName("QRect_OperatorBitwiseAndAssign")]
	public static extern void QRect_OperatorBitwiseAndAssign(Self* c_this, QRect* r);
	[LinkName("QRect_Contains")]
	public static extern bool QRect_Contains(Self* c_this, QRect* r);
	[LinkName("QRect_ContainsWithQPoint")]
	public static extern bool QRect_ContainsWithQPoint(Self* c_this, QPoint* p);
	[LinkName("QRect_Contains2")]
	public static extern bool QRect_Contains2(Self* c_this, int32 x, int32 y);
	[LinkName("QRect_Contains3")]
	public static extern bool QRect_Contains3(Self* c_this, int32 x, int32 y, bool proper);
	[LinkName("QRect_United")]
	public static extern QRect QRect_United(Self* c_this, QRect* other);
	[LinkName("QRect_Intersected")]
	public static extern QRect QRect_Intersected(Self* c_this, QRect* other);
	[LinkName("QRect_Intersects")]
	public static extern bool QRect_Intersects(Self* c_this, QRect* r);
	[LinkName("QRect_MarginsAdded")]
	public static extern QRect QRect_MarginsAdded(Self* c_this, QMargins* margins);
	[LinkName("QRect_MarginsRemoved")]
	public static extern QRect QRect_MarginsRemoved(Self* c_this, QMargins* margins);
	[LinkName("QRect_OperatorPlusAssign")]
	public static extern QRect* QRect_OperatorPlusAssign(Self* c_this, QMargins* margins);
	[LinkName("QRect_OperatorMinusAssign")]
	public static extern QRect* QRect_OperatorMinusAssign(Self* c_this, QMargins* margins);
	[LinkName("QRect_Span")]
	public static extern QRect QRect_Span(QPoint* p1, QPoint* p2);
	[LinkName("QRect_ToRectF")]
	public static extern QRectF QRect_ToRectF(Self* c_this);
	[LinkName("QRect_Contains22")]
	public static extern bool QRect_Contains22(Self* c_this, QRect* r, bool proper);
	[LinkName("QRect_Contains23")]
	public static extern bool QRect_Contains23(Self* c_this, QPoint* p, bool proper);
}
public struct QRectF
{
	[LinkName("QRectF_new")]
	public static extern QRectF* QRectF_new(QRectF* other);
	[LinkName("QRectF_new2")]
	public static extern QRectF* QRectF_new2(QRectF* other);
	[LinkName("QRectF_new3")]
	public static extern QRectF* QRectF_new3();
	[LinkName("QRectF_new4")]
	public static extern QRectF* QRectF_new4(QPointF* topleft, QSizeF* size);
	[LinkName("QRectF_new5")]
	public static extern QRectF* QRectF_new5(QPointF* topleft, QPointF* bottomRight);
	[LinkName("QRectF_new6")]
	public static extern QRectF* QRectF_new6(double left, double top, double width, double height);
	[LinkName("QRectF_new7")]
	public static extern QRectF* QRectF_new7(QRect* rect);
	[LinkName("QRectF_new8")]
	public static extern QRectF* QRectF_new8(QRectF* param1);
	[LinkName("QRectF_IsNull")]
	public static extern bool QRectF_IsNull(Self* c_this);
	[LinkName("QRectF_IsEmpty")]
	public static extern bool QRectF_IsEmpty(Self* c_this);
	[LinkName("QRectF_IsValid")]
	public static extern bool QRectF_IsValid(Self* c_this);
	[LinkName("QRectF_Normalized")]
	public static extern QRectF QRectF_Normalized(Self* c_this);
	[LinkName("QRectF_Left")]
	public static extern double QRectF_Left(Self* c_this);
	[LinkName("QRectF_Top")]
	public static extern double QRectF_Top(Self* c_this);
	[LinkName("QRectF_Right")]
	public static extern double QRectF_Right(Self* c_this);
	[LinkName("QRectF_Bottom")]
	public static extern double QRectF_Bottom(Self* c_this);
	[LinkName("QRectF_X")]
	public static extern double QRectF_X(Self* c_this);
	[LinkName("QRectF_Y")]
	public static extern double QRectF_Y(Self* c_this);
	[LinkName("QRectF_SetLeft")]
	public static extern void QRectF_SetLeft(Self* c_this, double pos);
	[LinkName("QRectF_SetTop")]
	public static extern void QRectF_SetTop(Self* c_this, double pos);
	[LinkName("QRectF_SetRight")]
	public static extern void QRectF_SetRight(Self* c_this, double pos);
	[LinkName("QRectF_SetBottom")]
	public static extern void QRectF_SetBottom(Self* c_this, double pos);
	[LinkName("QRectF_SetX")]
	public static extern void QRectF_SetX(Self* c_this, double pos);
	[LinkName("QRectF_SetY")]
	public static extern void QRectF_SetY(Self* c_this, double pos);
	[LinkName("QRectF_TopLeft")]
	public static extern QPointF QRectF_TopLeft(Self* c_this);
	[LinkName("QRectF_BottomRight")]
	public static extern QPointF QRectF_BottomRight(Self* c_this);
	[LinkName("QRectF_TopRight")]
	public static extern QPointF QRectF_TopRight(Self* c_this);
	[LinkName("QRectF_BottomLeft")]
	public static extern QPointF QRectF_BottomLeft(Self* c_this);
	[LinkName("QRectF_Center")]
	public static extern QPointF QRectF_Center(Self* c_this);
	[LinkName("QRectF_SetTopLeft")]
	public static extern void QRectF_SetTopLeft(Self* c_this, QPointF* p);
	[LinkName("QRectF_SetBottomRight")]
	public static extern void QRectF_SetBottomRight(Self* c_this, QPointF* p);
	[LinkName("QRectF_SetTopRight")]
	public static extern void QRectF_SetTopRight(Self* c_this, QPointF* p);
	[LinkName("QRectF_SetBottomLeft")]
	public static extern void QRectF_SetBottomLeft(Self* c_this, QPointF* p);
	[LinkName("QRectF_MoveLeft")]
	public static extern void QRectF_MoveLeft(Self* c_this, double pos);
	[LinkName("QRectF_MoveTop")]
	public static extern void QRectF_MoveTop(Self* c_this, double pos);
	[LinkName("QRectF_MoveRight")]
	public static extern void QRectF_MoveRight(Self* c_this, double pos);
	[LinkName("QRectF_MoveBottom")]
	public static extern void QRectF_MoveBottom(Self* c_this, double pos);
	[LinkName("QRectF_MoveTopLeft")]
	public static extern void QRectF_MoveTopLeft(Self* c_this, QPointF* p);
	[LinkName("QRectF_MoveBottomRight")]
	public static extern void QRectF_MoveBottomRight(Self* c_this, QPointF* p);
	[LinkName("QRectF_MoveTopRight")]
	public static extern void QRectF_MoveTopRight(Self* c_this, QPointF* p);
	[LinkName("QRectF_MoveBottomLeft")]
	public static extern void QRectF_MoveBottomLeft(Self* c_this, QPointF* p);
	[LinkName("QRectF_MoveCenter")]
	public static extern void QRectF_MoveCenter(Self* c_this, QPointF* p);
	[LinkName("QRectF_Translate")]
	public static extern void QRectF_Translate(Self* c_this, double dx, double dy);
	[LinkName("QRectF_TranslateWithQPointF")]
	public static extern void QRectF_TranslateWithQPointF(Self* c_this, QPointF* p);
	[LinkName("QRectF_Translated")]
	public static extern QRectF QRectF_Translated(Self* c_this, double dx, double dy);
	[LinkName("QRectF_TranslatedWithQPointF")]
	public static extern QRectF QRectF_TranslatedWithQPointF(Self* c_this, QPointF* p);
	[LinkName("QRectF_Transposed")]
	public static extern QRectF QRectF_Transposed(Self* c_this);
	[LinkName("QRectF_MoveTo")]
	public static extern void QRectF_MoveTo(Self* c_this, double x, double y);
	[LinkName("QRectF_MoveToWithQPointF")]
	public static extern void QRectF_MoveToWithQPointF(Self* c_this, QPointF* p);
	[LinkName("QRectF_SetRect")]
	public static extern void QRectF_SetRect(Self* c_this, double x, double y, double w, double h);
	[LinkName("QRectF_GetRect")]
	public static extern void QRectF_GetRect(Self* c_this, double* x, double* y, double* w, double* h);
	[LinkName("QRectF_SetCoords")]
	public static extern void QRectF_SetCoords(Self* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QRectF_GetCoords")]
	public static extern void QRectF_GetCoords(Self* c_this, double* x1, double* y1, double* x2, double* y2);
	[LinkName("QRectF_Adjust")]
	public static extern void QRectF_Adjust(Self* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QRectF_Adjusted")]
	public static extern QRectF QRectF_Adjusted(Self* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QRectF_Size")]
	public static extern QSizeF QRectF_Size(Self* c_this);
	[LinkName("QRectF_Width")]
	public static extern double QRectF_Width(Self* c_this);
	[LinkName("QRectF_Height")]
	public static extern double QRectF_Height(Self* c_this);
	[LinkName("QRectF_SetWidth")]
	public static extern void QRectF_SetWidth(Self* c_this, double w);
	[LinkName("QRectF_SetHeight")]
	public static extern void QRectF_SetHeight(Self* c_this, double h);
	[LinkName("QRectF_SetSize")]
	public static extern void QRectF_SetSize(Self* c_this, QSizeF* s);
	[LinkName("QRectF_OperatorBitwiseOr")]
	public static extern QRectF QRectF_OperatorBitwiseOr(Self* c_this, QRectF* r);
	[LinkName("QRectF_OperatorBitwiseAnd")]
	public static extern QRectF QRectF_OperatorBitwiseAnd(Self* c_this, QRectF* r);
	[LinkName("QRectF_OperatorBitwiseOrAssign")]
	public static extern void QRectF_OperatorBitwiseOrAssign(Self* c_this, QRectF* r);
	[LinkName("QRectF_OperatorBitwiseAndAssign")]
	public static extern void QRectF_OperatorBitwiseAndAssign(Self* c_this, QRectF* r);
	[LinkName("QRectF_Contains")]
	public static extern bool QRectF_Contains(Self* c_this, QRectF* r);
	[LinkName("QRectF_ContainsWithQPointF")]
	public static extern bool QRectF_ContainsWithQPointF(Self* c_this, QPointF* p);
	[LinkName("QRectF_Contains2")]
	public static extern bool QRectF_Contains2(Self* c_this, double x, double y);
	[LinkName("QRectF_United")]
	public static extern QRectF QRectF_United(Self* c_this, QRectF* other);
	[LinkName("QRectF_Intersected")]
	public static extern QRectF QRectF_Intersected(Self* c_this, QRectF* other);
	[LinkName("QRectF_Intersects")]
	public static extern bool QRectF_Intersects(Self* c_this, QRectF* r);
	[LinkName("QRectF_MarginsAdded")]
	public static extern QRectF QRectF_MarginsAdded(Self* c_this, QMarginsF* margins);
	[LinkName("QRectF_MarginsRemoved")]
	public static extern QRectF QRectF_MarginsRemoved(Self* c_this, QMarginsF* margins);
	[LinkName("QRectF_OperatorPlusAssign")]
	public static extern QRectF* QRectF_OperatorPlusAssign(Self* c_this, QMarginsF* margins);
	[LinkName("QRectF_OperatorMinusAssign")]
	public static extern QRectF* QRectF_OperatorMinusAssign(Self* c_this, QMarginsF* margins);
	[LinkName("QRectF_ToRect")]
	public static extern QRect QRectF_ToRect(Self* c_this);
	[LinkName("QRectF_ToAlignedRect")]
	public static extern QRect QRectF_ToAlignedRect(Self* c_this);
}