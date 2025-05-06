using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsEffect__ChangeFlag
{
	SourceAttached = 1,
	SourceDetached = 2,
	SourceBoundingRectChanged = 4,
	SourceInvalidated = 8,
}
[AllowDuplicates]
public enum QGraphicsEffect__PixmapPadMode
{
	NoPad = 0,
	PadToTransparentBorder = 1,
	PadToEffectiveBoundingRect = 2,
}
[AllowDuplicates]
public enum QGraphicsBlurEffect__BlurHint
{
	PerformanceHint = 0,
	QualityHint = 1,
	AnimationHint = 2,
}
public struct QGraphicsEffect : QObject
{
	[LinkName("QGraphicsEffect_new")]
	public static extern QGraphicsEffect* QGraphicsEffect_new();
	[LinkName("QGraphicsEffect_new2")]
	public static extern QGraphicsEffect* QGraphicsEffect_new2(QObject* parent);
	[LinkName("QGraphicsEffect_MetaObject")]
	public static extern QMetaObject* QGraphicsEffect_MetaObject(Self* c_this);
	[LinkName("QGraphicsEffect_Metacast")]
	public static extern void* QGraphicsEffect_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsEffect_Metacall")]
	public static extern int32 QGraphicsEffect_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsEffect_Tr")]
	public static extern libqt_string QGraphicsEffect_Tr(char8[] s);
	[LinkName("QGraphicsEffect_BoundingRectFor")]
	public static extern QRectF QGraphicsEffect_BoundingRectFor(Self* c_this, QRectF* sourceRect);
	[LinkName("QGraphicsEffect_BoundingRect")]
	public static extern QRectF QGraphicsEffect_BoundingRect(Self* c_this);
	[LinkName("QGraphicsEffect_IsEnabled")]
	public static extern bool QGraphicsEffect_IsEnabled(Self* c_this);
	[LinkName("QGraphicsEffect_SetEnabled")]
	public static extern void QGraphicsEffect_SetEnabled(Self* c_this, bool enable);
	[LinkName("QGraphicsEffect_Update")]
	public static extern void QGraphicsEffect_Update(Self* c_this);
	[LinkName("QGraphicsEffect_EnabledChanged")]
	public static extern void QGraphicsEffect_EnabledChanged(Self* c_this, bool enabled);
	[LinkName("QGraphicsEffect_Draw")]
	public static extern void QGraphicsEffect_Draw(Self* c_this, QPainter* painter);
	[LinkName("QGraphicsEffect_SourceChanged")]
	public static extern void QGraphicsEffect_SourceChanged(Self* c_this, int64 flags);
	[LinkName("QGraphicsEffect_UpdateBoundingRect")]
	public static extern void QGraphicsEffect_UpdateBoundingRect(Self* c_this);
	[LinkName("QGraphicsEffect_SourceIsPixmap")]
	public static extern bool QGraphicsEffect_SourceIsPixmap(Self* c_this);
	[LinkName("QGraphicsEffect_SourceBoundingRect")]
	public static extern QRectF QGraphicsEffect_SourceBoundingRect(Self* c_this);
	[LinkName("QGraphicsEffect_DrawSource")]
	public static extern void QGraphicsEffect_DrawSource(Self* c_this, QPainter* painter);
	[LinkName("QGraphicsEffect_SourcePixmap")]
	public static extern QPixmap QGraphicsEffect_SourcePixmap(Self* c_this);
	[LinkName("QGraphicsEffect_Tr2")]
	public static extern libqt_string QGraphicsEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsEffect_Tr3")]
	public static extern libqt_string QGraphicsEffect_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGraphicsEffect_SourceBoundingRect1")]
	public static extern QRectF QGraphicsEffect_SourceBoundingRect1(Self* c_this, int64 system);
	[LinkName("QGraphicsEffect_SourcePixmap1")]
	public static extern QPixmap QGraphicsEffect_SourcePixmap1(Self* c_this, int64 system);
	[LinkName("QGraphicsEffect_SourcePixmap2")]
	public static extern QPixmap QGraphicsEffect_SourcePixmap2(Self* c_this, int64 system, QPoint* offset);
	[LinkName("QGraphicsEffect_SourcePixmap3")]
	public static extern QPixmap QGraphicsEffect_SourcePixmap3(Self* c_this, int64 system, QPoint* offset, int64 mode);
}
public struct QGraphicsColorizeEffect : QGraphicsEffect
{
	[LinkName("QGraphicsColorizeEffect_new")]
	public static extern QGraphicsColorizeEffect* QGraphicsColorizeEffect_new();
	[LinkName("QGraphicsColorizeEffect_new2")]
	public static extern QGraphicsColorizeEffect* QGraphicsColorizeEffect_new2(QObject* parent);
	[LinkName("QGraphicsColorizeEffect_MetaObject")]
	public static extern QMetaObject* QGraphicsColorizeEffect_MetaObject(Self* c_this);
	[LinkName("QGraphicsColorizeEffect_Metacast")]
	public static extern void* QGraphicsColorizeEffect_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsColorizeEffect_Metacall")]
	public static extern int32 QGraphicsColorizeEffect_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsColorizeEffect_Tr")]
	public static extern libqt_string QGraphicsColorizeEffect_Tr(char8[] s);
	[LinkName("QGraphicsColorizeEffect_Color")]
	public static extern QColor QGraphicsColorizeEffect_Color(Self* c_this);
	[LinkName("QGraphicsColorizeEffect_Strength")]
	public static extern double QGraphicsColorizeEffect_Strength(Self* c_this);
	[LinkName("QGraphicsColorizeEffect_SetColor")]
	public static extern void QGraphicsColorizeEffect_SetColor(Self* c_this, QColor* c);
	[LinkName("QGraphicsColorizeEffect_SetStrength")]
	public static extern void QGraphicsColorizeEffect_SetStrength(Self* c_this, double strength);
	[LinkName("QGraphicsColorizeEffect_ColorChanged")]
	public static extern void QGraphicsColorizeEffect_ColorChanged(Self* c_this, QColor* color);
	[LinkName("QGraphicsColorizeEffect_StrengthChanged")]
	public static extern void QGraphicsColorizeEffect_StrengthChanged(Self* c_this, double strength);
	[LinkName("QGraphicsColorizeEffect_Draw")]
	public static extern void QGraphicsColorizeEffect_Draw(Self* c_this, QPainter* painter);
	[LinkName("QGraphicsColorizeEffect_Tr2")]
	public static extern libqt_string QGraphicsColorizeEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsColorizeEffect_Tr3")]
	public static extern libqt_string QGraphicsColorizeEffect_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsBlurEffect : QGraphicsEffect
{
	[LinkName("QGraphicsBlurEffect_new")]
	public static extern QGraphicsBlurEffect* QGraphicsBlurEffect_new();
	[LinkName("QGraphicsBlurEffect_new2")]
	public static extern QGraphicsBlurEffect* QGraphicsBlurEffect_new2(QObject* parent);
	[LinkName("QGraphicsBlurEffect_MetaObject")]
	public static extern QMetaObject* QGraphicsBlurEffect_MetaObject(Self* c_this);
	[LinkName("QGraphicsBlurEffect_Metacast")]
	public static extern void* QGraphicsBlurEffect_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsBlurEffect_Metacall")]
	public static extern int32 QGraphicsBlurEffect_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsBlurEffect_Tr")]
	public static extern libqt_string QGraphicsBlurEffect_Tr(char8[] s);
	[LinkName("QGraphicsBlurEffect_BoundingRectFor")]
	public static extern QRectF QGraphicsBlurEffect_BoundingRectFor(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsBlurEffect_BlurRadius")]
	public static extern double QGraphicsBlurEffect_BlurRadius(Self* c_this);
	[LinkName("QGraphicsBlurEffect_BlurHints")]
	public static extern int64 QGraphicsBlurEffect_BlurHints(Self* c_this);
	[LinkName("QGraphicsBlurEffect_SetBlurRadius")]
	public static extern void QGraphicsBlurEffect_SetBlurRadius(Self* c_this, double blurRadius);
	[LinkName("QGraphicsBlurEffect_SetBlurHints")]
	public static extern void QGraphicsBlurEffect_SetBlurHints(Self* c_this, int64 hints);
	[LinkName("QGraphicsBlurEffect_BlurRadiusChanged")]
	public static extern void QGraphicsBlurEffect_BlurRadiusChanged(Self* c_this, double blurRadius);
	[LinkName("QGraphicsBlurEffect_BlurHintsChanged")]
	public static extern void QGraphicsBlurEffect_BlurHintsChanged(Self* c_this, int64 hints);
	[LinkName("QGraphicsBlurEffect_Draw")]
	public static extern void QGraphicsBlurEffect_Draw(Self* c_this, QPainter* painter);
	[LinkName("QGraphicsBlurEffect_Tr2")]
	public static extern libqt_string QGraphicsBlurEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsBlurEffect_Tr3")]
	public static extern libqt_string QGraphicsBlurEffect_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsDropShadowEffect : QGraphicsEffect
{
	[LinkName("QGraphicsDropShadowEffect_new")]
	public static extern QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new();
	[LinkName("QGraphicsDropShadowEffect_new2")]
	public static extern QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new2(QObject* parent);
	[LinkName("QGraphicsDropShadowEffect_MetaObject")]
	public static extern QMetaObject* QGraphicsDropShadowEffect_MetaObject(Self* c_this);
	[LinkName("QGraphicsDropShadowEffect_Metacast")]
	public static extern void* QGraphicsDropShadowEffect_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsDropShadowEffect_Metacall")]
	public static extern int32 QGraphicsDropShadowEffect_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsDropShadowEffect_Tr")]
	public static extern libqt_string QGraphicsDropShadowEffect_Tr(char8[] s);
	[LinkName("QGraphicsDropShadowEffect_BoundingRectFor")]
	public static extern QRectF QGraphicsDropShadowEffect_BoundingRectFor(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsDropShadowEffect_Offset")]
	public static extern QPointF QGraphicsDropShadowEffect_Offset(Self* c_this);
	[LinkName("QGraphicsDropShadowEffect_XOffset")]
	public static extern double QGraphicsDropShadowEffect_XOffset(Self* c_this);
	[LinkName("QGraphicsDropShadowEffect_YOffset")]
	public static extern double QGraphicsDropShadowEffect_YOffset(Self* c_this);
	[LinkName("QGraphicsDropShadowEffect_BlurRadius")]
	public static extern double QGraphicsDropShadowEffect_BlurRadius(Self* c_this);
	[LinkName("QGraphicsDropShadowEffect_Color")]
	public static extern QColor QGraphicsDropShadowEffect_Color(Self* c_this);
	[LinkName("QGraphicsDropShadowEffect_SetOffset")]
	public static extern void QGraphicsDropShadowEffect_SetOffset(Self* c_this, QPointF* ofs);
	[LinkName("QGraphicsDropShadowEffect_SetOffset2")]
	public static extern void QGraphicsDropShadowEffect_SetOffset2(Self* c_this, double dx, double dy);
	[LinkName("QGraphicsDropShadowEffect_SetOffsetWithQreal")]
	public static extern void QGraphicsDropShadowEffect_SetOffsetWithQreal(Self* c_this, double d);
	[LinkName("QGraphicsDropShadowEffect_SetXOffset")]
	public static extern void QGraphicsDropShadowEffect_SetXOffset(Self* c_this, double dx);
	[LinkName("QGraphicsDropShadowEffect_SetYOffset")]
	public static extern void QGraphicsDropShadowEffect_SetYOffset(Self* c_this, double dy);
	[LinkName("QGraphicsDropShadowEffect_SetBlurRadius")]
	public static extern void QGraphicsDropShadowEffect_SetBlurRadius(Self* c_this, double blurRadius);
	[LinkName("QGraphicsDropShadowEffect_SetColor")]
	public static extern void QGraphicsDropShadowEffect_SetColor(Self* c_this, QColor* color);
	[LinkName("QGraphicsDropShadowEffect_OffsetChanged")]
	public static extern void QGraphicsDropShadowEffect_OffsetChanged(Self* c_this, QPointF* offset);
	[LinkName("QGraphicsDropShadowEffect_BlurRadiusChanged")]
	public static extern void QGraphicsDropShadowEffect_BlurRadiusChanged(Self* c_this, double blurRadius);
	[LinkName("QGraphicsDropShadowEffect_ColorChanged")]
	public static extern void QGraphicsDropShadowEffect_ColorChanged(Self* c_this, QColor* color);
	[LinkName("QGraphicsDropShadowEffect_Draw")]
	public static extern void QGraphicsDropShadowEffect_Draw(Self* c_this, QPainter* painter);
	[LinkName("QGraphicsDropShadowEffect_Tr2")]
	public static extern libqt_string QGraphicsDropShadowEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsDropShadowEffect_Tr3")]
	public static extern libqt_string QGraphicsDropShadowEffect_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsOpacityEffect : QGraphicsEffect
{
	[LinkName("QGraphicsOpacityEffect_new")]
	public static extern QGraphicsOpacityEffect* QGraphicsOpacityEffect_new();
	[LinkName("QGraphicsOpacityEffect_new2")]
	public static extern QGraphicsOpacityEffect* QGraphicsOpacityEffect_new2(QObject* parent);
	[LinkName("QGraphicsOpacityEffect_MetaObject")]
	public static extern QMetaObject* QGraphicsOpacityEffect_MetaObject(Self* c_this);
	[LinkName("QGraphicsOpacityEffect_Metacast")]
	public static extern void* QGraphicsOpacityEffect_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsOpacityEffect_Metacall")]
	public static extern int32 QGraphicsOpacityEffect_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsOpacityEffect_Tr")]
	public static extern libqt_string QGraphicsOpacityEffect_Tr(char8[] s);
	[LinkName("QGraphicsOpacityEffect_Opacity")]
	public static extern double QGraphicsOpacityEffect_Opacity(Self* c_this);
	[LinkName("QGraphicsOpacityEffect_OpacityMask")]
	public static extern QBrush QGraphicsOpacityEffect_OpacityMask(Self* c_this);
	[LinkName("QGraphicsOpacityEffect_SetOpacity")]
	public static extern void QGraphicsOpacityEffect_SetOpacity(Self* c_this, double opacity);
	[LinkName("QGraphicsOpacityEffect_SetOpacityMask")]
	public static extern void QGraphicsOpacityEffect_SetOpacityMask(Self* c_this, QBrush* mask);
	[LinkName("QGraphicsOpacityEffect_OpacityChanged")]
	public static extern void QGraphicsOpacityEffect_OpacityChanged(Self* c_this, double opacity);
	[LinkName("QGraphicsOpacityEffect_OpacityMaskChanged")]
	public static extern void QGraphicsOpacityEffect_OpacityMaskChanged(Self* c_this, QBrush* mask);
	[LinkName("QGraphicsOpacityEffect_Draw")]
	public static extern void QGraphicsOpacityEffect_Draw(Self* c_this, QPainter* painter);
	[LinkName("QGraphicsOpacityEffect_Tr2")]
	public static extern libqt_string QGraphicsOpacityEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsOpacityEffect_Tr3")]
	public static extern libqt_string QGraphicsOpacityEffect_Tr3(char8[] s, char8[] c, int32 n);
}