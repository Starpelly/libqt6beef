using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QRegion__RegionType
{
	Rectangle = 0,
	Ellipse = 1,
}
public struct QRegion
{
	[LinkName("QRegion_new")]
	public static extern void* QRegion_new();
	[LinkName("QRegion_new2")]
	public static extern void* QRegion_new2(int32 x, int32 y, int32 w, int32 h);
	[LinkName("QRegion_new3")]
	public static extern void* QRegion_new3(QRect r);
	[LinkName("QRegion_new4")]
	public static extern void* QRegion_new4(QRegion region);
	[LinkName("QRegion_new5")]
	public static extern void* QRegion_new5(QBitmap bitmap);
	[LinkName("QRegion_new6")]
	public static extern void* QRegion_new6(int32 x, int32 y, int32 w, int32 h, int64 t);
	[LinkName("QRegion_new7")]
	public static extern void* QRegion_new7(QRect r, int64 t);
	[LinkName("QRegion_OperatorAssign")]
	public static extern void QRegion_OperatorAssign(void* c_this, QRegion param1);
	[LinkName("QRegion_Swap")]
	public static extern void QRegion_Swap(void* c_this, QRegion other);
	[LinkName("QRegion_IsEmpty")]
	public static extern bool QRegion_IsEmpty(void* c_this);
	[LinkName("QRegion_IsNull")]
	public static extern bool QRegion_IsNull(void* c_this);
	[LinkName("QRegion_Begin")]
	public static extern QRect QRegion_Begin(void* c_this);
	[LinkName("QRegion_Cbegin")]
	public static extern QRect QRegion_Cbegin(void* c_this);
	[LinkName("QRegion_End")]
	public static extern QRect QRegion_End(void* c_this);
	[LinkName("QRegion_Cend")]
	public static extern QRect QRegion_Cend(void* c_this);
	[LinkName("QRegion_Contains")]
	public static extern bool QRegion_Contains(void* c_this, QPoint p);
	[LinkName("QRegion_ContainsWithQRect")]
	public static extern bool QRegion_ContainsWithQRect(void* c_this, QRect r);
	[LinkName("QRegion_Translate")]
	public static extern void QRegion_Translate(void* c_this, int32 dx, int32 dy);
	[LinkName("QRegion_TranslateWithQPoint")]
	public static extern void QRegion_TranslateWithQPoint(void* c_this, QPoint p);
	[LinkName("QRegion_Translated")]
	public static extern QRegion QRegion_Translated(void* c_this, int32 dx, int32 dy);
	[LinkName("QRegion_TranslatedWithQPoint")]
	public static extern QRegion QRegion_TranslatedWithQPoint(void* c_this, QPoint p);
	[LinkName("QRegion_United")]
	public static extern QRegion QRegion_United(void* c_this, QRegion r);
	[LinkName("QRegion_UnitedWithQRect")]
	public static extern QRegion QRegion_UnitedWithQRect(void* c_this, QRect r);
	[LinkName("QRegion_Intersected")]
	public static extern QRegion QRegion_Intersected(void* c_this, QRegion r);
	[LinkName("QRegion_IntersectedWithQRect")]
	public static extern QRegion QRegion_IntersectedWithQRect(void* c_this, QRect r);
	[LinkName("QRegion_Subtracted")]
	public static extern QRegion QRegion_Subtracted(void* c_this, QRegion r);
	[LinkName("QRegion_Xored")]
	public static extern QRegion QRegion_Xored(void* c_this, QRegion r);
	[LinkName("QRegion_Intersects")]
	public static extern bool QRegion_Intersects(void* c_this, QRegion r);
	[LinkName("QRegion_IntersectsWithQRect")]
	public static extern bool QRegion_IntersectsWithQRect(void* c_this, QRect r);
	[LinkName("QRegion_BoundingRect")]
	public static extern QRect QRegion_BoundingRect(void* c_this);
	[LinkName("QRegion_SetRects")]
	public static extern void QRegion_SetRects(void* c_this, QRect rect, int32 num);
	[LinkName("QRegion_RectCount")]
	public static extern int32 QRegion_RectCount(void* c_this);
	[LinkName("QRegion_OperatorBitwiseOr")]
	public static extern QRegion QRegion_OperatorBitwiseOr(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorPlus")]
	public static extern QRegion QRegion_OperatorPlus(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorPlusWithQRect")]
	public static extern QRegion QRegion_OperatorPlusWithQRect(void* c_this, QRect r);
	[LinkName("QRegion_OperatorBitwiseAnd")]
	public static extern QRegion QRegion_OperatorBitwiseAnd(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorBitwiseAndWithQRect")]
	public static extern QRegion QRegion_OperatorBitwiseAndWithQRect(void* c_this, QRect r);
	[LinkName("QRegion_OperatorMinus")]
	public static extern QRegion QRegion_OperatorMinus(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorBitwiseNot")]
	public static extern QRegion QRegion_OperatorBitwiseNot(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorBitwiseOrAssign")]
	public static extern void QRegion_OperatorBitwiseOrAssign(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorPlusAssign")]
	public static extern QRegion QRegion_OperatorPlusAssign(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorPlusAssignWithQRect")]
	public static extern QRegion QRegion_OperatorPlusAssignWithQRect(void* c_this, QRect r);
	[LinkName("QRegion_OperatorBitwiseAndAssign")]
	public static extern void QRegion_OperatorBitwiseAndAssign(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorBitwiseAndAssignWithQRect")]
	public static extern void QRegion_OperatorBitwiseAndAssignWithQRect(void* c_this, QRect r);
	[LinkName("QRegion_OperatorMinusAssign")]
	public static extern QRegion QRegion_OperatorMinusAssign(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorBitwiseNotAssign")]
	public static extern void QRegion_OperatorBitwiseNotAssign(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorEqual")]
	public static extern bool QRegion_OperatorEqual(void* c_this, QRegion r);
	[LinkName("QRegion_OperatorNotEqual")]
	public static extern bool QRegion_OperatorNotEqual(void* c_this, QRegion r);
	[LinkName("QRegion_ToQVariant")]
	public static extern QVariant QRegion_ToQVariant(void* c_this);
}