using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QIcon__Mode
{
	Normal = 0,
	Disabled = 1,
	Active = 2,
	Selected = 3,
}
[AllowDuplicates]
public enum QIcon__State
{
	On = 0,
	Off = 1,
}
public struct QIcon
{
	[LinkName("QIcon_new")]
	public static extern QIcon* QIcon_new();
	[LinkName("QIcon_new2")]
	public static extern QIcon* QIcon_new2(QPixmap* pixmap);
	[LinkName("QIcon_new3")]
	public static extern QIcon* QIcon_new3(QIcon* other);
	[LinkName("QIcon_new4")]
	public static extern QIcon* QIcon_new4(libqt_string fileName);
	[LinkName("QIcon_new5")]
	public static extern QIcon* QIcon_new5(QIconEngine* engine);
	[LinkName("QIcon_OperatorAssign")]
	public static extern void QIcon_OperatorAssign(Self* c_this, QIcon* other);
	[LinkName("QIcon_Swap")]
	public static extern void QIcon_Swap(Self* c_this, QIcon* other);
	[LinkName("QIcon_ToQVariant")]
	public static extern QVariant QIcon_ToQVariant(Self* c_this);
	[LinkName("QIcon_Pixmap")]
	public static extern QPixmap QIcon_Pixmap(Self* c_this, QSize* size);
	[LinkName("QIcon_Pixmap2")]
	public static extern QPixmap QIcon_Pixmap2(Self* c_this, int32 w, int32 h);
	[LinkName("QIcon_PixmapWithExtent")]
	public static extern QPixmap QIcon_PixmapWithExtent(Self* c_this, int32 extent);
	[LinkName("QIcon_Pixmap3")]
	public static extern QPixmap QIcon_Pixmap3(Self* c_this, QSize* size, double devicePixelRatio);
	[LinkName("QIcon_Pixmap4")]
	public static extern QPixmap QIcon_Pixmap4(Self* c_this, QWindow* window, QSize* size);
	[LinkName("QIcon_ActualSize")]
	public static extern QSize QIcon_ActualSize(Self* c_this, QSize* size);
	[LinkName("QIcon_ActualSize2")]
	public static extern QSize QIcon_ActualSize2(Self* c_this, QWindow* window, QSize* size);
	[LinkName("QIcon_Name")]
	public static extern libqt_string QIcon_Name(Self* c_this);
	[LinkName("QIcon_Paint")]
	public static extern void QIcon_Paint(Self* c_this, QPainter* painter, QRect* rect);
	[LinkName("QIcon_Paint2")]
	public static extern void QIcon_Paint2(Self* c_this, QPainter* painter, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QIcon_IsNull")]
	public static extern bool QIcon_IsNull(Self* c_this);
	[LinkName("QIcon_IsDetached")]
	public static extern bool QIcon_IsDetached(Self* c_this);
	[LinkName("QIcon_Detach")]
	public static extern void QIcon_Detach(Self* c_this);
	[LinkName("QIcon_CacheKey")]
	public static extern int64 QIcon_CacheKey(Self* c_this);
	[LinkName("QIcon_AddPixmap")]
	public static extern void QIcon_AddPixmap(Self* c_this, QPixmap* pixmap);
	[LinkName("QIcon_AddFile")]
	public static extern void QIcon_AddFile(Self* c_this, libqt_string fileName);
	[LinkName("QIcon_AvailableSizes")]
	public static extern QSize[] QIcon_AvailableSizes(Self* c_this);
	[LinkName("QIcon_SetIsMask")]
	public static extern void QIcon_SetIsMask(Self* c_this, bool isMask);
	[LinkName("QIcon_IsMask")]
	public static extern bool QIcon_IsMask(Self* c_this);
	[LinkName("QIcon_FromTheme")]
	public static extern QIcon QIcon_FromTheme(libqt_string name);
	[LinkName("QIcon_FromTheme2")]
	public static extern QIcon QIcon_FromTheme2(libqt_string name, QIcon* fallback);
	[LinkName("QIcon_HasThemeIcon")]
	public static extern bool QIcon_HasThemeIcon(libqt_string name);
	[LinkName("QIcon_ThemeSearchPaths")]
	public static extern libqt_string[] QIcon_ThemeSearchPaths();
	[LinkName("QIcon_SetThemeSearchPaths")]
	public static extern void QIcon_SetThemeSearchPaths(libqt_string[] searchpath);
	[LinkName("QIcon_FallbackSearchPaths")]
	public static extern libqt_string[] QIcon_FallbackSearchPaths();
	[LinkName("QIcon_SetFallbackSearchPaths")]
	public static extern void QIcon_SetFallbackSearchPaths(libqt_string[] paths);
	[LinkName("QIcon_ThemeName")]
	public static extern libqt_string QIcon_ThemeName();
	[LinkName("QIcon_SetThemeName")]
	public static extern void QIcon_SetThemeName(libqt_string path);
	[LinkName("QIcon_FallbackThemeName")]
	public static extern libqt_string QIcon_FallbackThemeName();
	[LinkName("QIcon_SetFallbackThemeName")]
	public static extern void QIcon_SetFallbackThemeName(libqt_string name);
	[LinkName("QIcon_Pixmap22")]
	public static extern QPixmap QIcon_Pixmap22(Self* c_this, QSize* size, int64 mode);
	[LinkName("QIcon_Pixmap32")]
	public static extern QPixmap QIcon_Pixmap32(Self* c_this, QSize* size, int64 mode, int64 state);
	[LinkName("QIcon_Pixmap33")]
	public static extern QPixmap QIcon_Pixmap33(Self* c_this, int32 w, int32 h, int64 mode);
	[LinkName("QIcon_Pixmap42")]
	public static extern QPixmap QIcon_Pixmap42(Self* c_this, int32 w, int32 h, int64 mode, int64 state);
	[LinkName("QIcon_Pixmap23")]
	public static extern QPixmap QIcon_Pixmap23(Self* c_this, int32 extent, int64 mode);
	[LinkName("QIcon_Pixmap34")]
	public static extern QPixmap QIcon_Pixmap34(Self* c_this, int32 extent, int64 mode, int64 state);
	[LinkName("QIcon_Pixmap35")]
	public static extern QPixmap QIcon_Pixmap35(Self* c_this, QSize* size, double devicePixelRatio, int64 mode);
	[LinkName("QIcon_Pixmap43")]
	public static extern QPixmap QIcon_Pixmap43(Self* c_this, QSize* size, double devicePixelRatio, int64 mode, int64 state);
	[LinkName("QIcon_Pixmap36")]
	public static extern QPixmap QIcon_Pixmap36(Self* c_this, QWindow* window, QSize* size, int64 mode);
	[LinkName("QIcon_Pixmap44")]
	public static extern QPixmap QIcon_Pixmap44(Self* c_this, QWindow* window, QSize* size, int64 mode, int64 state);
	[LinkName("QIcon_ActualSize22")]
	public static extern QSize QIcon_ActualSize22(Self* c_this, QSize* size, int64 mode);
	[LinkName("QIcon_ActualSize3")]
	public static extern QSize QIcon_ActualSize3(Self* c_this, QSize* size, int64 mode, int64 state);
	[LinkName("QIcon_ActualSize32")]
	public static extern QSize QIcon_ActualSize32(Self* c_this, QWindow* window, QSize* size, int64 mode);
	[LinkName("QIcon_ActualSize4")]
	public static extern QSize QIcon_ActualSize4(Self* c_this, QWindow* window, QSize* size, int64 mode, int64 state);
	[LinkName("QIcon_Paint3")]
	public static extern void QIcon_Paint3(Self* c_this, QPainter* painter, QRect* rect, int64 alignment);
	[LinkName("QIcon_Paint4")]
	public static extern void QIcon_Paint4(Self* c_this, QPainter* painter, QRect* rect, int64 alignment, int64 mode);
	[LinkName("QIcon_Paint5")]
	public static extern void QIcon_Paint5(Self* c_this, QPainter* painter, QRect* rect, int64 alignment, int64 mode, int64 state);
	[LinkName("QIcon_Paint6")]
	public static extern void QIcon_Paint6(Self* c_this, QPainter* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment);
	[LinkName("QIcon_Paint7")]
	public static extern void QIcon_Paint7(Self* c_this, QPainter* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode);
	[LinkName("QIcon_Paint8")]
	public static extern void QIcon_Paint8(Self* c_this, QPainter* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode, int64 state);
	[LinkName("QIcon_AddPixmap2")]
	public static extern void QIcon_AddPixmap2(Self* c_this, QPixmap* pixmap, int64 mode);
	[LinkName("QIcon_AddPixmap3")]
	public static extern void QIcon_AddPixmap3(Self* c_this, QPixmap* pixmap, int64 mode, int64 state);
	[LinkName("QIcon_AddFile2")]
	public static extern void QIcon_AddFile2(Self* c_this, libqt_string fileName, QSize* size);
	[LinkName("QIcon_AddFile3")]
	public static extern void QIcon_AddFile3(Self* c_this, libqt_string fileName, QSize* size, int64 mode);
	[LinkName("QIcon_AddFile4")]
	public static extern void QIcon_AddFile4(Self* c_this, libqt_string fileName, QSize* size, int64 mode, int64 state);
	[LinkName("QIcon_AvailableSizes1")]
	public static extern QSize[] QIcon_AvailableSizes1(Self* c_this, int64 mode);
	[LinkName("QIcon_AvailableSizes2")]
	public static extern QSize[] QIcon_AvailableSizes2(Self* c_this, int64 mode, int64 state);
}