using System;
using System.Interop;
namespace Qt;

public interface IQToolTip
{
	void* NativePtr { get; }
}
public class QToolTip : IQToolTip
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQToolTip other)
	{
		this.nativePtr = CQt.QToolTip_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QToolTip_Delete(this.nativePtr);
	}
	
	public static void ShowText(IQPoint pos, String text)
	{
		CQt.QToolTip_ShowText((pos == default) ? default : (void*)pos.NativePtr, libqt_string(text));
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
		CQt.QToolTip_SetPalette((palette == default) ? default : (void*)palette.NativePtr);
	}
	
	public static void Font()
	{
		CQt.QToolTip_Font();
	}
	
	public static void SetFont(IQFont font)
	{
		CQt.QToolTip_SetFont((font == default) ? default : (void*)font.NativePtr);
	}
	
	public static void ShowText3(IQPoint pos, String text, IQWidget w)
	{
		CQt.QToolTip_ShowText3((pos == default) ? default : (void*)pos.NativePtr, libqt_string(text), (w == null) ? null : (void*)w.NativePtr);
	}
	
	public static void ShowText4(IQPoint pos, String text, IQWidget w, IQRect rect)
	{
		CQt.QToolTip_ShowText4((pos == default) ? default : (void*)pos.NativePtr, libqt_string(text), (w == null) ? null : (void*)w.NativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public static void ShowText5(IQPoint pos, String text, IQWidget w, IQRect rect, int32 msecShowTime)
	{
		CQt.QToolTip_ShowText5((pos == default) ? default : (void*)pos.NativePtr, libqt_string(text), (w == null) ? null : (void*)w.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, msecShowTime);
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