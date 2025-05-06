using System;
using System.Interop;
namespace Qt;

public struct QGraphicsItemAnimation : QObject
{
	[LinkName("QGraphicsItemAnimation_new")]
	public static extern QGraphicsItemAnimation* QGraphicsItemAnimation_new();
	[LinkName("QGraphicsItemAnimation_new2")]
	public static extern QGraphicsItemAnimation* QGraphicsItemAnimation_new2(QObject* parent);
	[LinkName("QGraphicsItemAnimation_MetaObject")]
	public static extern QMetaObject* QGraphicsItemAnimation_MetaObject(Self* c_this);
	[LinkName("QGraphicsItemAnimation_Metacast")]
	public static extern void* QGraphicsItemAnimation_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsItemAnimation_Metacall")]
	public static extern int32 QGraphicsItemAnimation_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsItemAnimation_Tr")]
	public static extern libqt_string QGraphicsItemAnimation_Tr(char8[] s);
	[LinkName("QGraphicsItemAnimation_Item")]
	public static extern QGraphicsItem* QGraphicsItemAnimation_Item(Self* c_this);
	[LinkName("QGraphicsItemAnimation_SetItem")]
	public static extern void QGraphicsItemAnimation_SetItem(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsItemAnimation_TimeLine")]
	public static extern QTimeLine* QGraphicsItemAnimation_TimeLine(Self* c_this);
	[LinkName("QGraphicsItemAnimation_SetTimeLine")]
	public static extern void QGraphicsItemAnimation_SetTimeLine(Self* c_this, QTimeLine* timeLine);
	[LinkName("QGraphicsItemAnimation_PosAt")]
	public static extern QPointF QGraphicsItemAnimation_PosAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_PosList")]
	public static extern void*[] QGraphicsItemAnimation_PosList(Self* c_this);
	[LinkName("QGraphicsItemAnimation_SetPosAt")]
	public static extern void QGraphicsItemAnimation_SetPosAt(Self* c_this, double step, QPointF* pos);
	[LinkName("QGraphicsItemAnimation_TransformAt")]
	public static extern QTransform QGraphicsItemAnimation_TransformAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_RotationAt")]
	public static extern double QGraphicsItemAnimation_RotationAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_RotationList")]
	public static extern void*[] QGraphicsItemAnimation_RotationList(Self* c_this);
	[LinkName("QGraphicsItemAnimation_SetRotationAt")]
	public static extern void QGraphicsItemAnimation_SetRotationAt(Self* c_this, double step, double angle);
	[LinkName("QGraphicsItemAnimation_XTranslationAt")]
	public static extern double QGraphicsItemAnimation_XTranslationAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_YTranslationAt")]
	public static extern double QGraphicsItemAnimation_YTranslationAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_TranslationList")]
	public static extern void*[] QGraphicsItemAnimation_TranslationList(Self* c_this);
	[LinkName("QGraphicsItemAnimation_SetTranslationAt")]
	public static extern void QGraphicsItemAnimation_SetTranslationAt(Self* c_this, double step, double dx, double dy);
	[LinkName("QGraphicsItemAnimation_VerticalScaleAt")]
	public static extern double QGraphicsItemAnimation_VerticalScaleAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_HorizontalScaleAt")]
	public static extern double QGraphicsItemAnimation_HorizontalScaleAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_ScaleList")]
	public static extern void*[] QGraphicsItemAnimation_ScaleList(Self* c_this);
	[LinkName("QGraphicsItemAnimation_SetScaleAt")]
	public static extern void QGraphicsItemAnimation_SetScaleAt(Self* c_this, double step, double sx, double sy);
	[LinkName("QGraphicsItemAnimation_VerticalShearAt")]
	public static extern double QGraphicsItemAnimation_VerticalShearAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_HorizontalShearAt")]
	public static extern double QGraphicsItemAnimation_HorizontalShearAt(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_ShearList")]
	public static extern void*[] QGraphicsItemAnimation_ShearList(Self* c_this);
	[LinkName("QGraphicsItemAnimation_SetShearAt")]
	public static extern void QGraphicsItemAnimation_SetShearAt(Self* c_this, double step, double sh, double sv);
	[LinkName("QGraphicsItemAnimation_Clear")]
	public static extern void QGraphicsItemAnimation_Clear(Self* c_this);
	[LinkName("QGraphicsItemAnimation_SetStep")]
	public static extern void QGraphicsItemAnimation_SetStep(Self* c_this, double x);
	[LinkName("QGraphicsItemAnimation_BeforeAnimationStep")]
	public static extern void QGraphicsItemAnimation_BeforeAnimationStep(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_AfterAnimationStep")]
	public static extern void QGraphicsItemAnimation_AfterAnimationStep(Self* c_this, double step);
	[LinkName("QGraphicsItemAnimation_Tr2")]
	public static extern libqt_string QGraphicsItemAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsItemAnimation_Tr3")]
	public static extern libqt_string QGraphicsItemAnimation_Tr3(char8[] s, char8[] c, int32 n);
}