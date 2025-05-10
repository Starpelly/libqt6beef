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
public class QIcon
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QIcon_new();
	}
	
	public ~this()
	{
		CQt.QIcon_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QIcon_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QIcon_Swap(this.nativePtr, other);
	}
	
	public void ToQVariant()
	{
		CQt.QIcon_ToQVariant(this.nativePtr);
	}
	
	public void Pixmap(void* size)
	{
		CQt.QIcon_Pixmap(this.nativePtr, size);
	}
	
	public void Pixmap2(int32 w, int32 h)
	{
		CQt.QIcon_Pixmap2(this.nativePtr, w, h);
	}
	
	public void PixmapWithExtent(int32 extent)
	{
		CQt.QIcon_PixmapWithExtent(this.nativePtr, extent);
	}
	
	public void Pixmap3(void* size, double devicePixelRatio)
	{
		CQt.QIcon_Pixmap3(this.nativePtr, size, devicePixelRatio);
	}
	
	public void Pixmap4(void* window, void* size)
	{
		CQt.QIcon_Pixmap4(this.nativePtr, window, size);
	}
	
	public void ActualSize(void* size)
	{
		CQt.QIcon_ActualSize(this.nativePtr, size);
	}
	
	public void ActualSize2(void* window, void* size)
	{
		CQt.QIcon_ActualSize2(this.nativePtr, window, size);
	}
	
	public libqt_string Name()
	{
		return CQt.QIcon_Name(this.nativePtr);
	}
	
	public void Paint(void* painter, void* rect)
	{
		CQt.QIcon_Paint(this.nativePtr, painter, rect);
	}
	
	public void Paint2(void* painter, int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QIcon_Paint2(this.nativePtr, painter, x, y, w, h);
	}
	
	public bool IsNull()
	{
		return CQt.QIcon_IsNull(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QIcon_IsDetached(this.nativePtr);
	}
	
	public void Detach()
	{
		CQt.QIcon_Detach(this.nativePtr);
	}
	
	public int64 CacheKey()
	{
		return CQt.QIcon_CacheKey(this.nativePtr);
	}
	
	public void AddPixmap(void* pixmap)
	{
		CQt.QIcon_AddPixmap(this.nativePtr, pixmap);
	}
	
	public void AddFile(libqt_string fileName)
	{
		CQt.QIcon_AddFile(this.nativePtr, fileName);
	}
	
	public void[] AvailableSizes()
	{
		return CQt.QIcon_AvailableSizes(this.nativePtr);
	}
	
	public void SetIsMask(bool isMask)
	{
		CQt.QIcon_SetIsMask(this.nativePtr, isMask);
	}
	
	public bool IsMask()
	{
		return CQt.QIcon_IsMask(this.nativePtr);
	}
	
	public static void FromTheme(libqt_string name)
	{
		CQt.QIcon_FromTheme(name);
	}
	
	public static void FromTheme2(libqt_string name, void* fallback)
	{
		CQt.QIcon_FromTheme2(name, fallback);
	}
	
	public static bool HasThemeIcon(libqt_string name)
	{
		return CQt.QIcon_HasThemeIcon(name);
	}
	
	public static libqt_string[] ThemeSearchPaths()
	{
		return CQt.QIcon_ThemeSearchPaths();
	}
	
	public static void SetThemeSearchPaths(libqt_string[] searchpath)
	{
		CQt.QIcon_SetThemeSearchPaths(searchpath);
	}
	
	public static libqt_string[] FallbackSearchPaths()
	{
		return CQt.QIcon_FallbackSearchPaths();
	}
	
	public static void SetFallbackSearchPaths(libqt_string[] paths)
	{
		CQt.QIcon_SetFallbackSearchPaths(paths);
	}
	
	public static libqt_string ThemeName()
	{
		return CQt.QIcon_ThemeName();
	}
	
	public static void SetThemeName(libqt_string path)
	{
		CQt.QIcon_SetThemeName(path);
	}
	
	public static libqt_string FallbackThemeName()
	{
		return CQt.QIcon_FallbackThemeName();
	}
	
	public static void SetFallbackThemeName(libqt_string name)
	{
		CQt.QIcon_SetFallbackThemeName(name);
	}
	
	public void Pixmap22(void* size, int64 mode)
	{
		CQt.QIcon_Pixmap22(this.nativePtr, size, mode);
	}
	
	public void Pixmap32(void* size, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap32(this.nativePtr, size, mode, state);
	}
	
	public void Pixmap33(int32 w, int32 h, int64 mode)
	{
		CQt.QIcon_Pixmap33(this.nativePtr, w, h, mode);
	}
	
	public void Pixmap42(int32 w, int32 h, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap42(this.nativePtr, w, h, mode, state);
	}
	
	public void Pixmap23(int32 extent, int64 mode)
	{
		CQt.QIcon_Pixmap23(this.nativePtr, extent, mode);
	}
	
	public void Pixmap34(int32 extent, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap34(this.nativePtr, extent, mode, state);
	}
	
	public void Pixmap35(void* size, double devicePixelRatio, int64 mode)
	{
		CQt.QIcon_Pixmap35(this.nativePtr, size, devicePixelRatio, mode);
	}
	
	public void Pixmap43(void* size, double devicePixelRatio, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap43(this.nativePtr, size, devicePixelRatio, mode, state);
	}
	
	public void Pixmap36(void* window, void* size, int64 mode)
	{
		CQt.QIcon_Pixmap36(this.nativePtr, window, size, mode);
	}
	
	public void Pixmap44(void* window, void* size, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap44(this.nativePtr, window, size, mode, state);
	}
	
	public void ActualSize22(void* size, int64 mode)
	{
		CQt.QIcon_ActualSize22(this.nativePtr, size, mode);
	}
	
	public void ActualSize3(void* size, int64 mode, int64 state)
	{
		CQt.QIcon_ActualSize3(this.nativePtr, size, mode, state);
	}
	
	public void ActualSize32(void* window, void* size, int64 mode)
	{
		CQt.QIcon_ActualSize32(this.nativePtr, window, size, mode);
	}
	
	public void ActualSize4(void* window, void* size, int64 mode, int64 state)
	{
		CQt.QIcon_ActualSize4(this.nativePtr, window, size, mode, state);
	}
	
	public void Paint3(void* painter, void* rect, int64 alignment)
	{
		CQt.QIcon_Paint3(this.nativePtr, painter, rect, alignment);
	}
	
	public void Paint4(void* painter, void* rect, int64 alignment, int64 mode)
	{
		CQt.QIcon_Paint4(this.nativePtr, painter, rect, alignment, mode);
	}
	
	public void Paint5(void* painter, void* rect, int64 alignment, int64 mode, int64 state)
	{
		CQt.QIcon_Paint5(this.nativePtr, painter, rect, alignment, mode, state);
	}
	
	public void Paint6(void* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment)
	{
		CQt.QIcon_Paint6(this.nativePtr, painter, x, y, w, h, alignment);
	}
	
	public void Paint7(void* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode)
	{
		CQt.QIcon_Paint7(this.nativePtr, painter, x, y, w, h, alignment, mode);
	}
	
	public void Paint8(void* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode, int64 state)
	{
		CQt.QIcon_Paint8(this.nativePtr, painter, x, y, w, h, alignment, mode, state);
	}
	
	public void AddPixmap2(void* pixmap, int64 mode)
	{
		CQt.QIcon_AddPixmap2(this.nativePtr, pixmap, mode);
	}
	
	public void AddPixmap3(void* pixmap, int64 mode, int64 state)
	{
		CQt.QIcon_AddPixmap3(this.nativePtr, pixmap, mode, state);
	}
	
	public void AddFile2(libqt_string fileName, void* size)
	{
		CQt.QIcon_AddFile2(this.nativePtr, fileName, size);
	}
	
	public void AddFile3(libqt_string fileName, void* size, int64 mode)
	{
		CQt.QIcon_AddFile3(this.nativePtr, fileName, size, mode);
	}
	
	public void AddFile4(libqt_string fileName, void* size, int64 mode, int64 state)
	{
		CQt.QIcon_AddFile4(this.nativePtr, fileName, size, mode, state);
	}
	
	public void[] AvailableSizes1(int64 mode)
	{
		return CQt.QIcon_AvailableSizes1(this.nativePtr, mode);
	}
	
	public void[] AvailableSizes2(int64 mode, int64 state)
	{
		return CQt.QIcon_AvailableSizes2(this.nativePtr, mode, state);
	}
	
}
extension CQt
{
	[LinkName("QIcon_new")]
	public static extern void* QIcon_new();
	[LinkName("QIcon_new2")]
	public static extern void* QIcon_new2(void* pixmap);
	[LinkName("QIcon_new3")]
	public static extern void* QIcon_new3(void* other);
	[LinkName("QIcon_new4")]
	public static extern void* QIcon_new4(libqt_string fileName);
	[LinkName("QIcon_new5")]
	public static extern void* QIcon_new5(void* engine);
	[LinkName("QIcon_OperatorAssign")]
	public static extern void QIcon_OperatorAssign(void* c_this, void* other);
	[LinkName("QIcon_Swap")]
	public static extern void QIcon_Swap(void* c_this, void* other);
	[LinkName("QIcon_ToQVariant")]
	public static extern void QIcon_ToQVariant(void* c_this);
	[LinkName("QIcon_Pixmap")]
	public static extern void QIcon_Pixmap(void* c_this, void* size);
	[LinkName("QIcon_Pixmap2")]
	public static extern void QIcon_Pixmap2(void* c_this, int32 w, int32 h);
	[LinkName("QIcon_PixmapWithExtent")]
	public static extern void QIcon_PixmapWithExtent(void* c_this, int32 extent);
	[LinkName("QIcon_Pixmap3")]
	public static extern void QIcon_Pixmap3(void* c_this, void* size, double devicePixelRatio);
	[LinkName("QIcon_Pixmap4")]
	public static extern void QIcon_Pixmap4(void* c_this, void* window, void* size);
	[LinkName("QIcon_ActualSize")]
	public static extern void QIcon_ActualSize(void* c_this, void* size);
	[LinkName("QIcon_ActualSize2")]
	public static extern void QIcon_ActualSize2(void* c_this, void* window, void* size);
	[LinkName("QIcon_Name")]
	public static extern libqt_string QIcon_Name(void* c_this);
	[LinkName("QIcon_Paint")]
	public static extern void QIcon_Paint(void* c_this, void* painter, void* rect);
	[LinkName("QIcon_Paint2")]
	public static extern void QIcon_Paint2(void* c_this, void* painter, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QIcon_IsNull")]
	public static extern bool QIcon_IsNull(void* c_this);
	[LinkName("QIcon_IsDetached")]
	public static extern bool QIcon_IsDetached(void* c_this);
	[LinkName("QIcon_Detach")]
	public static extern void QIcon_Detach(void* c_this);
	[LinkName("QIcon_CacheKey")]
	public static extern int64 QIcon_CacheKey(void* c_this);
	[LinkName("QIcon_AddPixmap")]
	public static extern void QIcon_AddPixmap(void* c_this, void* pixmap);
	[LinkName("QIcon_AddFile")]
	public static extern void QIcon_AddFile(void* c_this, libqt_string fileName);
	[LinkName("QIcon_AvailableSizes")]
	public static extern void[] QIcon_AvailableSizes(void* c_this);
	[LinkName("QIcon_SetIsMask")]
	public static extern void QIcon_SetIsMask(void* c_this, bool isMask);
	[LinkName("QIcon_IsMask")]
	public static extern bool QIcon_IsMask(void* c_this);
	[LinkName("QIcon_FromTheme")]
	public static extern void QIcon_FromTheme(libqt_string name);
	[LinkName("QIcon_FromTheme2")]
	public static extern void QIcon_FromTheme2(libqt_string name, void* fallback);
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
	public static extern void QIcon_Pixmap22(void* c_this, void* size, int64 mode);
	[LinkName("QIcon_Pixmap32")]
	public static extern void QIcon_Pixmap32(void* c_this, void* size, int64 mode, int64 state);
	[LinkName("QIcon_Pixmap33")]
	public static extern void QIcon_Pixmap33(void* c_this, int32 w, int32 h, int64 mode);
	[LinkName("QIcon_Pixmap42")]
	public static extern void QIcon_Pixmap42(void* c_this, int32 w, int32 h, int64 mode, int64 state);
	[LinkName("QIcon_Pixmap23")]
	public static extern void QIcon_Pixmap23(void* c_this, int32 extent, int64 mode);
	[LinkName("QIcon_Pixmap34")]
	public static extern void QIcon_Pixmap34(void* c_this, int32 extent, int64 mode, int64 state);
	[LinkName("QIcon_Pixmap35")]
	public static extern void QIcon_Pixmap35(void* c_this, void* size, double devicePixelRatio, int64 mode);
	[LinkName("QIcon_Pixmap43")]
	public static extern void QIcon_Pixmap43(void* c_this, void* size, double devicePixelRatio, int64 mode, int64 state);
	[LinkName("QIcon_Pixmap36")]
	public static extern void QIcon_Pixmap36(void* c_this, void* window, void* size, int64 mode);
	[LinkName("QIcon_Pixmap44")]
	public static extern void QIcon_Pixmap44(void* c_this, void* window, void* size, int64 mode, int64 state);
	[LinkName("QIcon_ActualSize22")]
	public static extern void QIcon_ActualSize22(void* c_this, void* size, int64 mode);
	[LinkName("QIcon_ActualSize3")]
	public static extern void QIcon_ActualSize3(void* c_this, void* size, int64 mode, int64 state);
	[LinkName("QIcon_ActualSize32")]
	public static extern void QIcon_ActualSize32(void* c_this, void* window, void* size, int64 mode);
	[LinkName("QIcon_ActualSize4")]
	public static extern void QIcon_ActualSize4(void* c_this, void* window, void* size, int64 mode, int64 state);
	[LinkName("QIcon_Paint3")]
	public static extern void QIcon_Paint3(void* c_this, void* painter, void* rect, int64 alignment);
	[LinkName("QIcon_Paint4")]
	public static extern void QIcon_Paint4(void* c_this, void* painter, void* rect, int64 alignment, int64 mode);
	[LinkName("QIcon_Paint5")]
	public static extern void QIcon_Paint5(void* c_this, void* painter, void* rect, int64 alignment, int64 mode, int64 state);
	[LinkName("QIcon_Paint6")]
	public static extern void QIcon_Paint6(void* c_this, void* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment);
	[LinkName("QIcon_Paint7")]
	public static extern void QIcon_Paint7(void* c_this, void* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode);
	[LinkName("QIcon_Paint8")]
	public static extern void QIcon_Paint8(void* c_this, void* painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode, int64 state);
	[LinkName("QIcon_AddPixmap2")]
	public static extern void QIcon_AddPixmap2(void* c_this, void* pixmap, int64 mode);
	[LinkName("QIcon_AddPixmap3")]
	public static extern void QIcon_AddPixmap3(void* c_this, void* pixmap, int64 mode, int64 state);
	[LinkName("QIcon_AddFile2")]
	public static extern void QIcon_AddFile2(void* c_this, libqt_string fileName, void* size);
	[LinkName("QIcon_AddFile3")]
	public static extern void QIcon_AddFile3(void* c_this, libqt_string fileName, void* size, int64 mode);
	[LinkName("QIcon_AddFile4")]
	public static extern void QIcon_AddFile4(void* c_this, libqt_string fileName, void* size, int64 mode, int64 state);
	[LinkName("QIcon_AvailableSizes1")]
	public static extern void[] QIcon_AvailableSizes1(void* c_this, int64 mode);
	[LinkName("QIcon_AvailableSizes2")]
	public static extern void[] QIcon_AvailableSizes2(void* c_this, int64 mode, int64 state);
	/// Delete this object from C++ memory
	[LinkName("QIcon_Delete")]
	public static extern void QIcon_Delete(void* self);
}