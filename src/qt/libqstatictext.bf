using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStaticText__PerformanceHint
{
	ModerateCaching = 0,
	AggressiveCaching = 1,
}
public class QStaticText
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStaticText_new();
	}
	
	public ~this()
	{
		CQt.QStaticText_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QStaticText_OperatorAssign(this.nativePtr, param1);
	}
	
	public void Swap(void* other)
	{
		CQt.QStaticText_Swap(this.nativePtr, other);
	}
	
	public void SetText(libqt_string text)
	{
		CQt.QStaticText_SetText(this.nativePtr, text);
	}
	
	public libqt_string Text()
	{
		return CQt.QStaticText_Text(this.nativePtr);
	}
	
	public void SetTextFormat(int64 textFormat)
	{
		CQt.QStaticText_SetTextFormat(this.nativePtr, textFormat);
	}
	
	public int64 TextFormat()
	{
		return CQt.QStaticText_TextFormat(this.nativePtr);
	}
	
	public void SetTextWidth(double textWidth)
	{
		CQt.QStaticText_SetTextWidth(this.nativePtr, textWidth);
	}
	
	public double TextWidth()
	{
		return CQt.QStaticText_TextWidth(this.nativePtr);
	}
	
	public void SetTextOption(void* textOption)
	{
		CQt.QStaticText_SetTextOption(this.nativePtr, textOption);
	}
	
	public void TextOption()
	{
		CQt.QStaticText_TextOption(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QStaticText_Size(this.nativePtr);
	}
	
	public void Prepare()
	{
		CQt.QStaticText_Prepare(this.nativePtr);
	}
	
	public void SetPerformanceHint(int64 performanceHint)
	{
		CQt.QStaticText_SetPerformanceHint(this.nativePtr, performanceHint);
	}
	
	public int64 PerformanceHint()
	{
		return CQt.QStaticText_PerformanceHint(this.nativePtr);
	}
	
	public bool OperatorEqual(void* param1)
	{
		return CQt.QStaticText_OperatorEqual(this.nativePtr, param1);
	}
	
	public bool OperatorNotEqual(void* param1)
	{
		return CQt.QStaticText_OperatorNotEqual(this.nativePtr, param1);
	}
	
	public void Prepare1(void* matrix)
	{
		CQt.QStaticText_Prepare1(this.nativePtr, matrix);
	}
	
	public void Prepare2(void* matrix, void* font)
	{
		CQt.QStaticText_Prepare2(this.nativePtr, matrix, font);
	}
	
}
extension CQt
{
	[LinkName("QStaticText_new")]
	public static extern void* QStaticText_new();
	[LinkName("QStaticText_new2")]
	public static extern void* QStaticText_new2(libqt_string text);
	[LinkName("QStaticText_new3")]
	public static extern void* QStaticText_new3(void* other);
	[LinkName("QStaticText_OperatorAssign")]
	public static extern void QStaticText_OperatorAssign(void* c_this, void* param1);
	[LinkName("QStaticText_Swap")]
	public static extern void QStaticText_Swap(void* c_this, void* other);
	[LinkName("QStaticText_SetText")]
	public static extern void QStaticText_SetText(void* c_this, libqt_string text);
	[LinkName("QStaticText_Text")]
	public static extern libqt_string QStaticText_Text(void* c_this);
	[LinkName("QStaticText_SetTextFormat")]
	public static extern void QStaticText_SetTextFormat(void* c_this, int64 textFormat);
	[LinkName("QStaticText_TextFormat")]
	public static extern int64 QStaticText_TextFormat(void* c_this);
	[LinkName("QStaticText_SetTextWidth")]
	public static extern void QStaticText_SetTextWidth(void* c_this, double textWidth);
	[LinkName("QStaticText_TextWidth")]
	public static extern double QStaticText_TextWidth(void* c_this);
	[LinkName("QStaticText_SetTextOption")]
	public static extern void QStaticText_SetTextOption(void* c_this, void* textOption);
	[LinkName("QStaticText_TextOption")]
	public static extern void QStaticText_TextOption(void* c_this);
	[LinkName("QStaticText_Size")]
	public static extern void QStaticText_Size(void* c_this);
	[LinkName("QStaticText_Prepare")]
	public static extern void QStaticText_Prepare(void* c_this);
	[LinkName("QStaticText_SetPerformanceHint")]
	public static extern void QStaticText_SetPerformanceHint(void* c_this, int64 performanceHint);
	[LinkName("QStaticText_PerformanceHint")]
	public static extern int64 QStaticText_PerformanceHint(void* c_this);
	[LinkName("QStaticText_OperatorEqual")]
	public static extern bool QStaticText_OperatorEqual(void* c_this, void* param1);
	[LinkName("QStaticText_OperatorNotEqual")]
	public static extern bool QStaticText_OperatorNotEqual(void* c_this, void* param1);
	[LinkName("QStaticText_Prepare1")]
	public static extern void QStaticText_Prepare1(void* c_this, void* matrix);
	[LinkName("QStaticText_Prepare2")]
	public static extern void QStaticText_Prepare2(void* c_this, void* matrix, void* font);
	/// Delete this object from C++ memory
	[LinkName("QStaticText_Delete")]
	public static extern void QStaticText_Delete(void* self);
}