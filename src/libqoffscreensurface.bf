using System;
using System.Interop;
namespace Qt;

public struct QOffscreenSurface
{
	[LinkName("QOffscreenSurface_new")]
	public static extern void* QOffscreenSurface_new();
	[LinkName("QOffscreenSurface_new2")]
	public static extern void* QOffscreenSurface_new2(QScreen screen);
	[LinkName("QOffscreenSurface_new3")]
	public static extern void* QOffscreenSurface_new3(QScreen screen, QObject parent);
	[LinkName("QOffscreenSurface_MetaObject")]
	public static extern QMetaObject QOffscreenSurface_MetaObject(void* c_this);
	[LinkName("QOffscreenSurface_Metacast")]
	public static extern void QOffscreenSurface_Metacast(void* c_this, char8[] param1);
	[LinkName("QOffscreenSurface_Metacall")]
	public static extern int32 QOffscreenSurface_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QOffscreenSurface_Tr")]
	public static extern char8[] QOffscreenSurface_Tr(char8[] s);
	[LinkName("QOffscreenSurface_SurfaceType")]
	public static extern int64 QOffscreenSurface_SurfaceType(void* c_this);
	[LinkName("QOffscreenSurface_Create")]
	public static extern void QOffscreenSurface_Create(void* c_this);
	[LinkName("QOffscreenSurface_Destroy")]
	public static extern void QOffscreenSurface_Destroy(void* c_this);
	[LinkName("QOffscreenSurface_IsValid")]
	public static extern bool QOffscreenSurface_IsValid(void* c_this);
	[LinkName("QOffscreenSurface_SetFormat")]
	public static extern void QOffscreenSurface_SetFormat(void* c_this, QSurfaceFormat format);
	[LinkName("QOffscreenSurface_Format")]
	public static extern QSurfaceFormat QOffscreenSurface_Format(void* c_this);
	[LinkName("QOffscreenSurface_RequestedFormat")]
	public static extern QSurfaceFormat QOffscreenSurface_RequestedFormat(void* c_this);
	[LinkName("QOffscreenSurface_Size")]
	public static extern QSize QOffscreenSurface_Size(void* c_this);
	[LinkName("QOffscreenSurface_Screen")]
	public static extern QScreen QOffscreenSurface_Screen(void* c_this);
	[LinkName("QOffscreenSurface_SetScreen")]
	public static extern void QOffscreenSurface_SetScreen(void* c_this, QScreen screen);
	[LinkName("QOffscreenSurface_ResolveInterface")]
	public static extern void QOffscreenSurface_ResolveInterface(void* c_this, char8[] name, int32 revision);
	[LinkName("QOffscreenSurface_ScreenChanged")]
	public static extern void QOffscreenSurface_ScreenChanged(void* c_this, QScreen screen);
	[LinkName("QOffscreenSurface_Tr2")]
	public static extern char8[] QOffscreenSurface_Tr2(char8[] s, char8[] c);
	[LinkName("QOffscreenSurface_Tr3")]
	public static extern char8[] QOffscreenSurface_Tr3(char8[] s, char8[] c, int32 n);
}