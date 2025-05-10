using System;
using System.Interop;
namespace Qt;

public class QToolTip
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QToolTip_new(other);
	}
	
	public ~this()
	{
		CQt.QToolTip_Delete(this.nativePtr);
	}
	
	public static void ShowText(void* pos, libqt_string text)
	{
		CQt.QToolTip_ShowText(pos, text);
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
	
	public static void SetPalette(void* palette)
	{
		CQt.QToolTip_SetPalette(palette);
	}
	
	public static void Font()
	{
		CQt.QToolTip_Font();
	}
	
	public static void SetFont(void* font)
	{
		CQt.QToolTip_SetFont(font);
	}
	
	public static void ShowText3(void* pos, libqt_string text, void* w)
	{
		CQt.QToolTip_ShowText3(pos, text, w);
	}
	
	public static void ShowText4(void* pos, libqt_string text, void* w, void* rect)
	{
		CQt.QToolTip_ShowText4(pos, text, w, rect);
	}
	
	public static void ShowText5(void* pos, libqt_string text, void* w, void* rect, int32 msecShowTime)
	{
		CQt.QToolTip_ShowText5(pos, text, w, rect, msecShowTime);
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