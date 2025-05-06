using System;
using System.Interop;
namespace Qt;

public struct QSvgRenderer : QObject
{
	[LinkName("QSvgRenderer_new")]
	public static extern QSvgRenderer* QSvgRenderer_new();
	[LinkName("QSvgRenderer_new2")]
	public static extern QSvgRenderer* QSvgRenderer_new2(libqt_string filename);
	[LinkName("QSvgRenderer_new3")]
	public static extern QSvgRenderer* QSvgRenderer_new3(libqt_string contents);
	[LinkName("QSvgRenderer_new4")]
	public static extern QSvgRenderer* QSvgRenderer_new4(QXmlStreamReader* contents);
	[LinkName("QSvgRenderer_new5")]
	public static extern QSvgRenderer* QSvgRenderer_new5(QObject* parent);
	[LinkName("QSvgRenderer_new6")]
	public static extern QSvgRenderer* QSvgRenderer_new6(libqt_string filename, QObject* parent);
	[LinkName("QSvgRenderer_new7")]
	public static extern QSvgRenderer* QSvgRenderer_new7(libqt_string contents, QObject* parent);
	[LinkName("QSvgRenderer_new8")]
	public static extern QSvgRenderer* QSvgRenderer_new8(QXmlStreamReader* contents, QObject* parent);
	[LinkName("QSvgRenderer_MetaObject")]
	public static extern QMetaObject* QSvgRenderer_MetaObject(Self* c_this);
	[LinkName("QSvgRenderer_Metacast")]
	public static extern void* QSvgRenderer_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSvgRenderer_Metacall")]
	public static extern int32 QSvgRenderer_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSvgRenderer_Tr")]
	public static extern libqt_string QSvgRenderer_Tr(char8[] s);
	[LinkName("QSvgRenderer_IsValid")]
	public static extern bool QSvgRenderer_IsValid(Self* c_this);
	[LinkName("QSvgRenderer_DefaultSize")]
	public static extern QSize QSvgRenderer_DefaultSize(Self* c_this);
	[LinkName("QSvgRenderer_ViewBox")]
	public static extern QRect QSvgRenderer_ViewBox(Self* c_this);
	[LinkName("QSvgRenderer_ViewBoxF")]
	public static extern QRectF QSvgRenderer_ViewBoxF(Self* c_this);
	[LinkName("QSvgRenderer_SetViewBox")]
	public static extern void QSvgRenderer_SetViewBox(Self* c_this, QRect* viewbox);
	[LinkName("QSvgRenderer_SetViewBoxWithViewbox")]
	public static extern void QSvgRenderer_SetViewBoxWithViewbox(Self* c_this, QRectF* viewbox);
	[LinkName("QSvgRenderer_AspectRatioMode")]
	public static extern int64 QSvgRenderer_AspectRatioMode(Self* c_this);
	[LinkName("QSvgRenderer_SetAspectRatioMode")]
	public static extern void QSvgRenderer_SetAspectRatioMode(Self* c_this, int64 mode);
	[LinkName("QSvgRenderer_Animated")]
	public static extern bool QSvgRenderer_Animated(Self* c_this);
	[LinkName("QSvgRenderer_FramesPerSecond")]
	public static extern int32 QSvgRenderer_FramesPerSecond(Self* c_this);
	[LinkName("QSvgRenderer_SetFramesPerSecond")]
	public static extern void QSvgRenderer_SetFramesPerSecond(Self* c_this, int32 num);
	[LinkName("QSvgRenderer_CurrentFrame")]
	public static extern int32 QSvgRenderer_CurrentFrame(Self* c_this);
	[LinkName("QSvgRenderer_SetCurrentFrame")]
	public static extern void QSvgRenderer_SetCurrentFrame(Self* c_this, int32 currentFrame);
	[LinkName("QSvgRenderer_AnimationDuration")]
	public static extern int32 QSvgRenderer_AnimationDuration(Self* c_this);
	[LinkName("QSvgRenderer_BoundsOnElement")]
	public static extern QRectF QSvgRenderer_BoundsOnElement(Self* c_this, libqt_string id);
	[LinkName("QSvgRenderer_ElementExists")]
	public static extern bool QSvgRenderer_ElementExists(Self* c_this, libqt_string id);
	[LinkName("QSvgRenderer_TransformForElement")]
	public static extern QTransform QSvgRenderer_TransformForElement(Self* c_this, libqt_string id);
	[LinkName("QSvgRenderer_Load")]
	public static extern bool QSvgRenderer_Load(Self* c_this, libqt_string filename);
	[LinkName("QSvgRenderer_LoadWithContents")]
	public static extern bool QSvgRenderer_LoadWithContents(Self* c_this, libqt_string contents);
	[LinkName("QSvgRenderer_Load2")]
	public static extern bool QSvgRenderer_Load2(Self* c_this, QXmlStreamReader* contents);
	[LinkName("QSvgRenderer_Render")]
	public static extern void QSvgRenderer_Render(Self* c_this, QPainter* p);
	[LinkName("QSvgRenderer_Render2")]
	public static extern void QSvgRenderer_Render2(Self* c_this, QPainter* p, QRectF* bounds);
	[LinkName("QSvgRenderer_Render3")]
	public static extern void QSvgRenderer_Render3(Self* c_this, QPainter* p, libqt_string elementId);
	[LinkName("QSvgRenderer_RepaintNeeded")]
	public static extern void QSvgRenderer_RepaintNeeded(Self* c_this);
	[LinkName("QSvgRenderer_Tr2")]
	public static extern libqt_string QSvgRenderer_Tr2(char8[] s, char8[] c);
	[LinkName("QSvgRenderer_Tr3")]
	public static extern libqt_string QSvgRenderer_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSvgRenderer_Render32")]
	public static extern void QSvgRenderer_Render32(Self* c_this, QPainter* p, libqt_string elementId, QRectF* bounds);
}