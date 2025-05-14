using System;
using System.Interop;
namespace Qt;

public interface IQToolTip
{
	void* NativePtr { get; }
}
public struct QToolTipPtr : IQToolTip, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQToolTip other)
	{
		return .(CQt.QToolTip_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QToolTip_Delete(this.nativePtr);
	}
	
	public static void ShowText(IQPoint pos, String text)
	{
		CQt.QToolTip_ShowText((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, libqt_string(text));
	}
	
	public static void HideText()
	{
		CQt.QToolTip_HideText();
	}
	
	public static bool IsVisible()
	{
		return CQt.QToolTip_IsVisible();
	}
	
	public static libqt_string Text()
	{
		return CQt.QToolTip_Text();
	}
	
	public static void Palette()
	{
		CQt.QToolTip_Palette();
	}
	
	public static void SetPalette(IQPalette palette)
	{
		CQt.QToolTip_SetPalette((palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public static void Font()
	{
		CQt.QToolTip_Font();
	}
	
	public static void SetFont(IQFont font)
	{
		CQt.QToolTip_SetFont((font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public static void ShowText3(IQPoint pos, String text, IQWidget w)
	{
		CQt.QToolTip_ShowText3((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, libqt_string(text), (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public static void ShowText4(IQPoint pos, String text, IQWidget w, IQRect rect)
	{
		CQt.QToolTip_ShowText4((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, libqt_string(text), (w == default || w.NativePtr == default) ? default : w.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public static void ShowText5(IQPoint pos, String text, IQWidget w, IQRect rect, int32 msecShowTime)
	{
		CQt.QToolTip_ShowText5((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, libqt_string(text), (w == default || w.NativePtr == default) ? default : w.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, msecShowTime);
	}
	
}
public class QToolTip
{
	public QToolTipPtr handle;
	
	public static implicit operator QToolTipPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQToolTip other)
	{
		this.handle = QToolTipPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static void ShowText(IQPoint pos, String text)
	{
		QToolTipPtr.ShowText(pos, text);
	}
	
	public static void HideText()
	{
		QToolTipPtr.HideText();
	}
	
	public static bool IsVisible()
	{
		return QToolTipPtr.IsVisible();
	}
	
	public static libqt_string Text()
	{
		return QToolTipPtr.Text();
	}
	
	public static void Palette()
	{
		QToolTipPtr.Palette();
	}
	
	public static void SetPalette(IQPalette palette)
	{
		QToolTipPtr.SetPalette(palette);
	}
	
	public static void Font()
	{
		QToolTipPtr.Font();
	}
	
	public static void SetFont(IQFont font)
	{
		QToolTipPtr.SetFont(font);
	}
	
	public static void ShowText3(IQPoint pos, String text, IQWidget w)
	{
		QToolTipPtr.ShowText3(pos, text, w);
	}
	
	public static void ShowText4(IQPoint pos, String text, IQWidget w, IQRect rect)
	{
		QToolTipPtr.ShowText4(pos, text, w, rect);
	}
	
	public static void ShowText5(IQPoint pos, String text, IQWidget w, IQRect rect, int32 msecShowTime)
	{
		QToolTipPtr.ShowText5(pos, text, w, rect, msecShowTime);
	}
	
}
extension CQt
{
	[LinkName("QToolTip_new")]
	public static extern void* QToolTip_new(void* other);
	[LinkName("QToolTip_new2")]
	public static extern void* QToolTip_new2(void* other);
	[LinkName("QToolTip_ShowText")]
	public static extern void QToolTip_ShowText(void* pos, libqt_string text);
	[LinkName("QToolTip_HideText")]
	public static extern void QToolTip_HideText();
	[LinkName("QToolTip_IsVisible")]
	public static extern bool QToolTip_IsVisible();
	[LinkName("QToolTip_Text")]
	public static extern libqt_string QToolTip_Text();
	[LinkName("QToolTip_Palette")]
	public static extern void QToolTip_Palette();
	[LinkName("QToolTip_SetPalette")]
	public static extern void QToolTip_SetPalette(void* palette);
	[LinkName("QToolTip_Font")]
	public static extern void QToolTip_Font();
	[LinkName("QToolTip_SetFont")]
	public static extern void QToolTip_SetFont(void* font);
	[LinkName("QToolTip_ShowText3")]
	public static extern void QToolTip_ShowText3(void* pos, libqt_string text, void* w);
	[LinkName("QToolTip_ShowText4")]
	public static extern void QToolTip_ShowText4(void* pos, libqt_string text, void* w, void* rect);
	[LinkName("QToolTip_ShowText5")]
	public static extern void QToolTip_ShowText5(void* pos, libqt_string text, void* w, void* rect, int32 msecShowTime);
	/// Delete this object from C++ memory
	[LinkName("QToolTip_Delete")]
	public static extern void QToolTip_Delete(void* self);
}