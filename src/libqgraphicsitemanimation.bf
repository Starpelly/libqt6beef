using System;
using System.Interop;
namespace Qt;

public struct QGraphicsItemAnimation
{
	[LinkName("QGraphicsItemAnimation_new")]
	public static extern void* QGraphicsItemAnimation_new();
	[LinkName("QGraphicsItemAnimation_new2")]
	public static extern void* QGraphicsItemAnimation_new2(QObject parent);
	[LinkName("QGraphicsItemAnimation_MetaObject")]
	public static extern QMetaObject QGraphicsItemAnimation_MetaObject(void* c_this);
	[LinkName("QGraphicsItemAnimation_Metacast")]
	public static extern void QGraphicsItemAnimation_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsItemAnimation_Metacall")]
	public static extern int32 QGraphicsItemAnimation_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsItemAnimation_Tr")]
	public static extern char8[] QGraphicsItemAnimation_Tr(char8[] s);
	[LinkName("QGraphicsItemAnimation_Item")]
	public static extern QGraphicsItem QGraphicsItemAnimation_Item(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetItem")]
	public static extern void QGraphicsItemAnimation_SetItem(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsItemAnimation_TimeLine")]
	public static extern QTimeLine QGraphicsItemAnimation_TimeLine(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetTimeLine")]
	public static extern void QGraphicsItemAnimation_SetTimeLine(void* c_this, QTimeLine timeLine);
	[LinkName("QGraphicsItemAnimation_PosAt")]
	public static extern QPointF QGraphicsItemAnimation_PosAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_PosList")]
	public static extern void*[] QGraphicsItemAnimation_PosList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetPosAt")]
	public static extern void QGraphicsItemAnimation_SetPosAt(void* c_this, double step, QPointF pos);
	[LinkName("QGraphicsItemAnimation_TransformAt")]
	public static extern QTransform QGraphicsItemAnimation_TransformAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_RotationAt")]
	public static extern double QGraphicsItemAnimation_RotationAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_RotationList")]
	public static extern void*[] QGraphicsItemAnimation_RotationList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetRotationAt")]
	public static extern void QGraphicsItemAnimation_SetRotationAt(void* c_this, double step, double angle);
	[LinkName("QGraphicsItemAnimation_XTranslationAt")]
	public static extern double QGraphicsItemAnimation_XTranslationAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_YTranslationAt")]
	public static extern double QGraphicsItemAnimation_YTranslationAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_TranslationList")]
	public static extern void*[] QGraphicsItemAnimation_TranslationList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetTranslationAt")]
	public static extern void QGraphicsItemAnimation_SetTranslationAt(void* c_this, double step, double dx, double dy);
	[LinkName("QGraphicsItemAnimation_VerticalScaleAt")]
	public static extern double QGraphicsItemAnimation_VerticalScaleAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_HorizontalScaleAt")]
	public static extern double QGraphicsItemAnimation_HorizontalScaleAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_ScaleList")]
	public static extern void*[] QGraphicsItemAnimation_ScaleList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetScaleAt")]
	public static extern void QGraphicsItemAnimation_SetScaleAt(void* c_this, double step, double sx, double sy);
	[LinkName("QGraphicsItemAnimation_VerticalShearAt")]
	public static extern double QGraphicsItemAnimation_VerticalShearAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_HorizontalShearAt")]
	public static extern double QGraphicsItemAnimation_HorizontalShearAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_ShearList")]
	public static extern void*[] QGraphicsItemAnimation_ShearList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetShearAt")]
	public static extern void QGraphicsItemAnimation_SetShearAt(void* c_this, double step, double sh, double sv);
	[LinkName("QGraphicsItemAnimation_Clear")]
	public static extern void QGraphicsItemAnimation_Clear(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetStep")]
	public static extern void QGraphicsItemAnimation_SetStep(void* c_this, double x);
	[LinkName("QGraphicsItemAnimation_BeforeAnimationStep")]
	public static extern void QGraphicsItemAnimation_BeforeAnimationStep(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_AfterAnimationStep")]
	public static extern void QGraphicsItemAnimation_AfterAnimationStep(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_Tr2")]
	public static extern char8[] QGraphicsItemAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsItemAnimation_Tr3")]
	public static extern char8[] QGraphicsItemAnimation_Tr3(char8[] s, char8[] c, int32 n);
}