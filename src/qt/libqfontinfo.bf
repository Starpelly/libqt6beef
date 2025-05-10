using System;
using System.Interop;
namespace Qt;

public class QFontInfo
{
	protected void* nativePtr;
	
	public this(void* param1)
	{
		this.nativePtr = CQt.QFontInfo_new(param1);
	}
	
	public ~this()
	{
		CQt.QFontInfo_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QFontInfo_OperatorAssign(this.nativePtr, param1);
	}
	
	public void Swap(void* other)
	{
		CQt.QFontInfo_Swap(this.nativePtr, other);
	}
	
	public libqt_string Family()
	{
		return CQt.QFontInfo_Family(this.nativePtr);
	}
	
	public libqt_string StyleName()
	{
		return CQt.QFontInfo_StyleName(this.nativePtr);
	}
	
	public int32 PixelSize()
	{
		return CQt.QFontInfo_PixelSize(this.nativePtr);
	}
	
	public int32 PointSize()
	{
		return CQt.QFontInfo_PointSize(this.nativePtr);
	}
	
	public double PointSizeF()
	{
		return CQt.QFontInfo_PointSizeF(this.nativePtr);
	}
	
	public bool Italic()
	{
		return CQt.QFontInfo_Italic(this.nativePtr);
	}
	
	public int64 Style()
	{
		return CQt.QFontInfo_Style(this.nativePtr);
	}
	
	public int32 Weight()
	{
		return CQt.QFontInfo_Weight(this.nativePtr);
	}
	
	public bool Bold()
	{
		return CQt.QFontInfo_Bold(this.nativePtr);
	}
	
	public bool Underline()
	{
		return CQt.QFontInfo_Underline(this.nativePtr);
	}
	
	public bool Overline()
	{
		return CQt.QFontInfo_Overline(this.nativePtr);
	}
	
	public bool StrikeOut()
	{
		return CQt.QFontInfo_StrikeOut(this.nativePtr);
	}
	
	public bool FixedPitch()
	{
		return CQt.QFontInfo_FixedPitch(this.nativePtr);
	}
	
	public int64 StyleHint()
	{
		return CQt.QFontInfo_StyleHint(this.nativePtr);
	}
	
	public int32 LegacyWeight()
	{
		return CQt.QFontInfo_LegacyWeight(this.nativePtr);
	}
	
	public bool ExactMatch()
	{
		return CQt.QFontInfo_ExactMatch(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QFontInfo_new")]
	public static extern void* QFontInfo_new(void* param1);
	[LinkName("QFontInfo_new2")]
	public static extern void* QFontInfo_new2(void* param1);
	[LinkName("QFontInfo_OperatorAssign")]
	public static extern void QFontInfo_OperatorAssign(void* c_this, void* param1);
	[LinkName("QFontInfo_Swap")]
	public static extern void QFontInfo_Swap(void* c_this, void* other);
	[LinkName("QFontInfo_Family")]
	public static extern libqt_string QFontInfo_Family(void* c_this);
	[LinkName("QFontInfo_StyleName")]
	public static extern libqt_string QFontInfo_StyleName(void* c_this);
	[LinkName("QFontInfo_PixelSize")]
	public static extern int32 QFontInfo_PixelSize(void* c_this);
	[LinkName("QFontInfo_PointSize")]
	public static extern int32 QFontInfo_PointSize(void* c_this);
	[LinkName("QFontInfo_PointSizeF")]
	public static extern double QFontInfo_PointSizeF(void* c_this);
	[LinkName("QFontInfo_Italic")]
	public static extern bool QFontInfo_Italic(void* c_this);
	[LinkName("QFontInfo_Style")]
	public static extern int64 QFontInfo_Style(void* c_this);
	[LinkName("QFontInfo_Weight")]
	public static extern int32 QFontInfo_Weight(void* c_this);
	[LinkName("QFontInfo_Bold")]
	public static extern bool QFontInfo_Bold(void* c_this);
	[LinkName("QFontInfo_Underline")]
	public static extern bool QFontInfo_Underline(void* c_this);
	[LinkName("QFontInfo_Overline")]
	public static extern bool QFontInfo_Overline(void* c_this);
	[LinkName("QFontInfo_StrikeOut")]
	public static extern bool QFontInfo_StrikeOut(void* c_this);
	[LinkName("QFontInfo_FixedPitch")]
	public static extern bool QFontInfo_FixedPitch(void* c_this);
	[LinkName("QFontInfo_StyleHint")]
	public static extern int64 QFontInfo_StyleHint(void* c_this);
	[LinkName("QFontInfo_LegacyWeight")]
	public static extern int32 QFontInfo_LegacyWeight(void* c_this);
	[LinkName("QFontInfo_ExactMatch")]
	public static extern bool QFontInfo_ExactMatch(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QFontInfo_Delete")]
	public static extern void QFontInfo_Delete(void* self);
}