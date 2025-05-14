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
public interface IQIcon
{
	void* NativePtr { get; }
}
public struct QIconPtr : IQIcon, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QIcon_new());
	}
	
	public void Dispose()
	{
		CQt.QIcon_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQIcon other)
	{
		CQt.QIcon_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQIcon other)
	{
		CQt.QIcon_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QIcon_ToQVariant(this.nativePtr);
	}
	
	public void Pixmap(IQSize size)
	{
		CQt.QIcon_Pixmap(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void Pixmap2(int32 w, int32 h)
	{
		CQt.QIcon_Pixmap2(this.nativePtr, w, h);
	}
	
	public void PixmapWithExtent(int32 extent)
	{
		CQt.QIcon_PixmapWithExtent(this.nativePtr, extent);
	}
	
	public void Pixmap3(IQSize size, double devicePixelRatio)
	{
		CQt.QIcon_Pixmap3(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, devicePixelRatio);
	}
	
	public void Pixmap4(IQWindow window, IQSize size)
	{
		CQt.QIcon_Pixmap4(this.nativePtr, (window == default || window.NativePtr == default) ? default : window.NativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void ActualSize(IQSize size)
	{
		CQt.QIcon_ActualSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void ActualSize2(IQWindow window, IQSize size)
	{
		CQt.QIcon_ActualSize2(this.nativePtr, (window == default || window.NativePtr == default) ? default : window.NativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QIcon_Name(this.nativePtr);
	}
	
	public void Paint(IQPainter painter, IQRect rect)
	{
		CQt.QIcon_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Paint2(IQPainter painter, int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QIcon_Paint2(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, x, y, w, h);
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
	
	public void AddPixmap(IQPixmap pixmap)
	{
		CQt.QIcon_AddPixmap(this.nativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void AddFile(String fileName)
	{
		CQt.QIcon_AddFile(this.nativePtr, libqt_string(fileName));
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
	
	public static void FromTheme(String name)
	{
		CQt.QIcon_FromTheme(libqt_string(name));
	}
	
	public static void FromTheme2(String name, IQIcon fallback)
	{
		CQt.QIcon_FromTheme2(libqt_string(name), (fallback == default || fallback.NativePtr == default) ? default : fallback.NativePtr);
	}
	
	public static bool HasThemeIcon(String name)
	{
		return CQt.QIcon_HasThemeIcon(libqt_string(name));
	}
	
	public static libqt_string[] ThemeSearchPaths()
	{
		return CQt.QIcon_ThemeSearchPaths();
	}
	
	public static void SetThemeSearchPaths(String[] searchpath)
	{
		CQt.QIcon_SetThemeSearchPaths(null);
	}
	
	public static libqt_string[] FallbackSearchPaths()
	{
		return CQt.QIcon_FallbackSearchPaths();
	}
	
	public static void SetFallbackSearchPaths(String[] paths)
	{
		CQt.QIcon_SetFallbackSearchPaths(null);
	}
	
	public static libqt_string ThemeName()
	{
		return CQt.QIcon_ThemeName();
	}
	
	public static void SetThemeName(String path)
	{
		CQt.QIcon_SetThemeName(libqt_string(path));
	}
	
	public static libqt_string FallbackThemeName()
	{
		return CQt.QIcon_FallbackThemeName();
	}
	
	public static void SetFallbackThemeName(String name)
	{
		CQt.QIcon_SetFallbackThemeName(libqt_string(name));
	}
	
	public void Pixmap22(IQSize size, int64 mode)
	{
		CQt.QIcon_Pixmap22(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode);
	}
	
	public void Pixmap32(IQSize size, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap32(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state);
	}
	
	public void Pixmap33(int32 w, int32 h, int64 mode)
	{
		CQt.QIcon_Pixmap33(this.nativePtr, w, h, (int64)mode);
	}
	
	public void Pixmap42(int32 w, int32 h, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap42(this.nativePtr, w, h, (int64)mode, (int64)state);
	}
	
	public void Pixmap23(int32 extent, int64 mode)
	{
		CQt.QIcon_Pixmap23(this.nativePtr, extent, (int64)mode);
	}
	
	public void Pixmap34(int32 extent, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap34(this.nativePtr, extent, (int64)mode, (int64)state);
	}
	
	public void Pixmap35(IQSize size, double devicePixelRatio, int64 mode)
	{
		CQt.QIcon_Pixmap35(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, devicePixelRatio, (int64)mode);
	}
	
	public void Pixmap43(IQSize size, double devicePixelRatio, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap43(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, devicePixelRatio, (int64)mode, (int64)state);
	}
	
	public void Pixmap36(IQWindow window, IQSize size, int64 mode)
	{
		CQt.QIcon_Pixmap36(this.nativePtr, (window == default || window.NativePtr == default) ? default : window.NativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode);
	}
	
	public void Pixmap44(IQWindow window, IQSize size, int64 mode, int64 state)
	{
		CQt.QIcon_Pixmap44(this.nativePtr, (window == default || window.NativePtr == default) ? default : window.NativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state);
	}
	
	public void ActualSize22(IQSize size, int64 mode)
	{
		CQt.QIcon_ActualSize22(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode);
	}
	
	public void ActualSize3(IQSize size, int64 mode, int64 state)
	{
		CQt.QIcon_ActualSize3(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state);
	}
	
	public void ActualSize32(IQWindow window, IQSize size, int64 mode)
	{
		CQt.QIcon_ActualSize32(this.nativePtr, (window == default || window.NativePtr == default) ? default : window.NativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode);
	}
	
	public void ActualSize4(IQWindow window, IQSize size, int64 mode, int64 state)
	{
		CQt.QIcon_ActualSize4(this.nativePtr, (window == default || window.NativePtr == default) ? default : window.NativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state);
	}
	
	public void Paint3(IQPainter painter, IQRect rect, int64 alignment)
	{
		CQt.QIcon_Paint3(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, alignment);
	}
	
	public void Paint4(IQPainter painter, IQRect rect, int64 alignment, int64 mode)
	{
		CQt.QIcon_Paint4(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, alignment, (int64)mode);
	}
	
	public void Paint5(IQPainter painter, IQRect rect, int64 alignment, int64 mode, int64 state)
	{
		CQt.QIcon_Paint5(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, alignment, (int64)mode, (int64)state);
	}
	
	public void Paint6(IQPainter painter, int32 x, int32 y, int32 w, int32 h, int64 alignment)
	{
		CQt.QIcon_Paint6(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, x, y, w, h, alignment);
	}
	
	public void Paint7(IQPainter painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode)
	{
		CQt.QIcon_Paint7(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, x, y, w, h, alignment, (int64)mode);
	}
	
	public void Paint8(IQPainter painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode, int64 state)
	{
		CQt.QIcon_Paint8(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, x, y, w, h, alignment, (int64)mode, (int64)state);
	}
	
	public void AddPixmap2(IQPixmap pixmap, int64 mode)
	{
		CQt.QIcon_AddPixmap2(this.nativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (int64)mode);
	}
	
	public void AddPixmap3(IQPixmap pixmap, int64 mode, int64 state)
	{
		CQt.QIcon_AddPixmap3(this.nativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (int64)mode, (int64)state);
	}
	
	public void AddFile2(String fileName, IQSize size)
	{
		CQt.QIcon_AddFile2(this.nativePtr, libqt_string(fileName), (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void AddFile3(String fileName, IQSize size, int64 mode)
	{
		CQt.QIcon_AddFile3(this.nativePtr, libqt_string(fileName), (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode);
	}
	
	public void AddFile4(String fileName, IQSize size, int64 mode, int64 state)
	{
		CQt.QIcon_AddFile4(this.nativePtr, libqt_string(fileName), (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state);
	}
	
	public void[] AvailableSizes1(int64 mode)
	{
		return CQt.QIcon_AvailableSizes1(this.nativePtr, (int64)mode);
	}
	
	public void[] AvailableSizes2(int64 mode, int64 state)
	{
		return CQt.QIcon_AvailableSizes2(this.nativePtr, (int64)mode, (int64)state);
	}
	
}
public class QIcon
{
	public QIconPtr handle;
	
	public static implicit operator QIconPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QIconPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQIcon other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQIcon other)
	{
		this.handle.Swap(other);
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public void Pixmap(IQSize size)
	{
		this.handle.Pixmap(size);
	}
	
	public void Pixmap2(int32 w, int32 h)
	{
		this.handle.Pixmap2(w, h);
	}
	
	public void PixmapWithExtent(int32 extent)
	{
		this.handle.PixmapWithExtent(extent);
	}
	
	public void Pixmap3(IQSize size, double devicePixelRatio)
	{
		this.handle.Pixmap3(size, devicePixelRatio);
	}
	
	public void Pixmap4(IQWindow window, IQSize size)
	{
		this.handle.Pixmap4(window, size);
	}
	
	public void ActualSize(IQSize size)
	{
		this.handle.ActualSize(size);
	}
	
	public void ActualSize2(IQWindow window, IQSize size)
	{
		this.handle.ActualSize2(window, size);
	}
	
	public libqt_string Name()
	{
		return this.handle.Name();
	}
	
	public void Paint(IQPainter painter, IQRect rect)
	{
		this.handle.Paint(painter, rect);
	}
	
	public void Paint2(IQPainter painter, int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.Paint2(painter, x, y, w, h);
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsDetached()
	{
		return this.handle.IsDetached();
	}
	
	public void Detach()
	{
		this.handle.Detach();
	}
	
	public int64 CacheKey()
	{
		return this.handle.CacheKey();
	}
	
	public void AddPixmap(IQPixmap pixmap)
	{
		this.handle.AddPixmap(pixmap);
	}
	
	public void AddFile(String fileName)
	{
		this.handle.AddFile(fileName);
	}
	
	public void[] AvailableSizes()
	{
		return this.handle.AvailableSizes();
	}
	
	public void SetIsMask(bool isMask)
	{
		this.handle.SetIsMask(isMask);
	}
	
	public bool IsMask()
	{
		return this.handle.IsMask();
	}
	
	public static void FromTheme(String name)
	{
		QIconPtr.FromTheme(name);
	}
	
	public static void FromTheme2(String name, IQIcon fallback)
	{
		QIconPtr.FromTheme2(name, fallback);
	}
	
	public static bool HasThemeIcon(String name)
	{
		return QIconPtr.HasThemeIcon(name);
	}
	
	public static libqt_string[] ThemeSearchPaths()
	{
		return QIconPtr.ThemeSearchPaths();
	}
	
	public static void SetThemeSearchPaths(String[] searchpath)
	{
		QIconPtr.SetThemeSearchPaths(null);
	}
	
	public static libqt_string[] FallbackSearchPaths()
	{
		return QIconPtr.FallbackSearchPaths();
	}
	
	public static void SetFallbackSearchPaths(String[] paths)
	{
		QIconPtr.SetFallbackSearchPaths(null);
	}
	
	public static libqt_string ThemeName()
	{
		return QIconPtr.ThemeName();
	}
	
	public static void SetThemeName(String path)
	{
		QIconPtr.SetThemeName(path);
	}
	
	public static libqt_string FallbackThemeName()
	{
		return QIconPtr.FallbackThemeName();
	}
	
	public static void SetFallbackThemeName(String name)
	{
		QIconPtr.SetFallbackThemeName(name);
	}
	
	public void Pixmap22(IQSize size, int64 mode)
	{
		this.handle.Pixmap22(size, mode);
	}
	
	public void Pixmap32(IQSize size, int64 mode, int64 state)
	{
		this.handle.Pixmap32(size, mode, state);
	}
	
	public void Pixmap33(int32 w, int32 h, int64 mode)
	{
		this.handle.Pixmap33(w, h, mode);
	}
	
	public void Pixmap42(int32 w, int32 h, int64 mode, int64 state)
	{
		this.handle.Pixmap42(w, h, mode, state);
	}
	
	public void Pixmap23(int32 extent, int64 mode)
	{
		this.handle.Pixmap23(extent, mode);
	}
	
	public void Pixmap34(int32 extent, int64 mode, int64 state)
	{
		this.handle.Pixmap34(extent, mode, state);
	}
	
	public void Pixmap35(IQSize size, double devicePixelRatio, int64 mode)
	{
		this.handle.Pixmap35(size, devicePixelRatio, mode);
	}
	
	public void Pixmap43(IQSize size, double devicePixelRatio, int64 mode, int64 state)
	{
		this.handle.Pixmap43(size, devicePixelRatio, mode, state);
	}
	
	public void Pixmap36(IQWindow window, IQSize size, int64 mode)
	{
		this.handle.Pixmap36(window, size, mode);
	}
	
	public void Pixmap44(IQWindow window, IQSize size, int64 mode, int64 state)
	{
		this.handle.Pixmap44(window, size, mode, state);
	}
	
	public void ActualSize22(IQSize size, int64 mode)
	{
		this.handle.ActualSize22(size, mode);
	}
	
	public void ActualSize3(IQSize size, int64 mode, int64 state)
	{
		this.handle.ActualSize3(size, mode, state);
	}
	
	public void ActualSize32(IQWindow window, IQSize size, int64 mode)
	{
		this.handle.ActualSize32(window, size, mode);
	}
	
	public void ActualSize4(IQWindow window, IQSize size, int64 mode, int64 state)
	{
		this.handle.ActualSize4(window, size, mode, state);
	}
	
	public void Paint3(IQPainter painter, IQRect rect, int64 alignment)
	{
		this.handle.Paint3(painter, rect, alignment);
	}
	
	public void Paint4(IQPainter painter, IQRect rect, int64 alignment, int64 mode)
	{
		this.handle.Paint4(painter, rect, alignment, mode);
	}
	
	public void Paint5(IQPainter painter, IQRect rect, int64 alignment, int64 mode, int64 state)
	{
		this.handle.Paint5(painter, rect, alignment, mode, state);
	}
	
	public void Paint6(IQPainter painter, int32 x, int32 y, int32 w, int32 h, int64 alignment)
	{
		this.handle.Paint6(painter, x, y, w, h, alignment);
	}
	
	public void Paint7(IQPainter painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode)
	{
		this.handle.Paint7(painter, x, y, w, h, alignment, mode);
	}
	
	public void Paint8(IQPainter painter, int32 x, int32 y, int32 w, int32 h, int64 alignment, int64 mode, int64 state)
	{
		this.handle.Paint8(painter, x, y, w, h, alignment, mode, state);
	}
	
	public void AddPixmap2(IQPixmap pixmap, int64 mode)
	{
		this.handle.AddPixmap2(pixmap, mode);
	}
	
	public void AddPixmap3(IQPixmap pixmap, int64 mode, int64 state)
	{
		this.handle.AddPixmap3(pixmap, mode, state);
	}
	
	public void AddFile2(String fileName, IQSize size)
	{
		this.handle.AddFile2(fileName, size);
	}
	
	public void AddFile3(String fileName, IQSize size, int64 mode)
	{
		this.handle.AddFile3(fileName, size, mode);
	}
	
	public void AddFile4(String fileName, IQSize size, int64 mode, int64 state)
	{
		this.handle.AddFile4(fileName, size, mode, state);
	}
	
	public void[] AvailableSizes1(int64 mode)
	{
		return this.handle.AvailableSizes1(mode);
	}
	
	public void[] AvailableSizes2(int64 mode, int64 state)
	{
		return this.handle.AvailableSizes2(mode, state);
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