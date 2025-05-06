using System;
using System.Interop;
namespace Qt;

public struct QSvgRenderer
{
	[LinkName("QSvgRenderer_new")]
	public static extern void* QSvgRenderer_new();
	[LinkName("QSvgRenderer_new2")]
	public static extern void* QSvgRenderer_new2(char8[] filename);
	[LinkName("QSvgRenderer_new3")]
	public static extern void* QSvgRenderer_new3(uint8[] contents);
	[LinkName("QSvgRenderer_new4")]
	public static extern void* QSvgRenderer_new4(QXmlStreamReader contents);
	[LinkName("QSvgRenderer_new5")]
	public static extern void* QSvgRenderer_new5(QObject parent);
	[LinkName("QSvgRenderer_new6")]
	public static extern void* QSvgRenderer_new6(char8[] filename, QObject parent);
	[LinkName("QSvgRenderer_new7")]
	public static extern void* QSvgRenderer_new7(uint8[] contents, QObject parent);
	[LinkName("QSvgRenderer_new8")]
	public static extern void* QSvgRenderer_new8(QXmlStreamReader contents, QObject parent);
	[LinkName("QSvgRenderer_MetaObject")]
	public static extern QMetaObject QSvgRenderer_MetaObject(void* c_this);
	[LinkName("QSvgRenderer_Metacast")]
	public static extern void QSvgRenderer_Metacast(void* c_this, char8[] param1);
	[LinkName("QSvgRenderer_Metacall")]
	public static extern int32 QSvgRenderer_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSvgRenderer_Tr")]
	public static extern char8[] QSvgRenderer_Tr(char8[] s);
	[LinkName("QSvgRenderer_IsValid")]
	public static extern bool QSvgRenderer_IsValid(void* c_this);
	[LinkName("QSvgRenderer_DefaultSize")]
	public static extern QSize QSvgRenderer_DefaultSize(void* c_this);
	[LinkName("QSvgRenderer_ViewBox")]
	public static extern QRect QSvgRenderer_ViewBox(void* c_this);
	[LinkName("QSvgRenderer_ViewBoxF")]
	public static extern QRectF QSvgRenderer_ViewBoxF(void* c_this);
	[LinkName("QSvgRenderer_SetViewBox")]
	public static extern void QSvgRenderer_SetViewBox(void* c_this, QRect viewbox);
	[LinkName("QSvgRenderer_SetViewBoxWithViewbox")]
	public static extern void QSvgRenderer_SetViewBoxWithViewbox(void* c_this, QRectF viewbox);
	[LinkName("QSvgRenderer_AspectRatioMode")]
	public static extern int64 QSvgRenderer_AspectRatioMode(void* c_this);
	[LinkName("QSvgRenderer_SetAspectRatioMode")]
	public static extern void QSvgRenderer_SetAspectRatioMode(void* c_this, int64 mode);
	[LinkName("QSvgRenderer_Animated")]
	public static extern bool QSvgRenderer_Animated(void* c_this);
	[LinkName("QSvgRenderer_FramesPerSecond")]
	public static extern int32 QSvgRenderer_FramesPerSecond(void* c_this);
	[LinkName("QSvgRenderer_SetFramesPerSecond")]
	public static extern void QSvgRenderer_SetFramesPerSecond(void* c_this, int32 num);
	[LinkName("QSvgRenderer_CurrentFrame")]
	public static extern int32 QSvgRenderer_CurrentFrame(void* c_this);
	[LinkName("QSvgRenderer_SetCurrentFrame")]
	public static extern void QSvgRenderer_SetCurrentFrame(void* c_this, int32 currentFrame);
	[LinkName("QSvgRenderer_AnimationDuration")]
	public static extern int32 QSvgRenderer_AnimationDuration(void* c_this);
	[LinkName("QSvgRenderer_BoundsOnElement")]
	public static extern QRectF QSvgRenderer_BoundsOnElement(void* c_this, char8[] id);
	[LinkName("QSvgRenderer_ElementExists")]
	public static extern bool QSvgRenderer_ElementExists(void* c_this, char8[] id);
	[LinkName("QSvgRenderer_TransformForElement")]
	public static extern QTransform QSvgRenderer_TransformForElement(void* c_this, char8[] id);
	[LinkName("QSvgRenderer_Load")]
	public static extern bool QSvgRenderer_Load(void* c_this, char8[] filename);
	[LinkName("QSvgRenderer_LoadWithContents")]
	public static extern bool QSvgRenderer_LoadWithContents(void* c_this, uint8[] contents);
	[LinkName("QSvgRenderer_Load2")]
	public static extern bool QSvgRenderer_Load2(void* c_this, QXmlStreamReader contents);
	[LinkName("QSvgRenderer_Render")]
	public static extern void QSvgRenderer_Render(void* c_this, QPainter p);
	[LinkName("QSvgRenderer_Render2")]
	public static extern void QSvgRenderer_Render2(void* c_this, QPainter p, QRectF bounds);
	[LinkName("QSvgRenderer_Render3")]
	public static extern void QSvgRenderer_Render3(void* c_this, QPainter p, char8[] elementId);
	[LinkName("QSvgRenderer_RepaintNeeded")]
	public static extern void QSvgRenderer_RepaintNeeded(void* c_this);
	[LinkName("QSvgRenderer_Tr2")]
	public static extern char8[] QSvgRenderer_Tr2(char8[] s, char8[] c);
	[LinkName("QSvgRenderer_Tr3")]
	public static extern char8[] QSvgRenderer_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSvgRenderer_Render32")]
	public static extern void QSvgRenderer_Render32(void* c_this, QPainter p, char8[] elementId, QRectF bounds);
}