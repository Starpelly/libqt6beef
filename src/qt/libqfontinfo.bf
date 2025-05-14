using System;
using System.Interop;
namespace Qt;

public interface IQFontInfo
{
	void* NativePtr { get; }
}
public struct QFontInfoPtr : IQFontInfo, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQFont param1)
	{
		return .(CQt.QFontInfo_new((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QFontInfo_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQFontInfo param1)
	{
		CQt.QFontInfo_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQFontInfo other)
	{
		CQt.QFontInfo_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
public class QFontInfo
{
	public QFontInfoPtr handle;
	
	public static implicit operator QFontInfoPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQFont param1)
	{
		this.handle = QFontInfoPtr.New(param1);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQFontInfo param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void Swap(IQFontInfo other)
	{
		this.handle.Swap(other);
	}
	
	public libqt_string Family()
	{
		return this.handle.Family();
	}
	
	public libqt_string StyleName()
	{
		return this.handle.StyleName();
	}
	
	public int32 PixelSize()
	{
		return this.handle.PixelSize();
	}
	
	public int32 PointSize()
	{
		return this.handle.PointSize();
	}
	
	public double PointSizeF()
	{
		return this.handle.PointSizeF();
	}
	
	public bool Italic()
	{
		return this.handle.Italic();
	}
	
	public int64 Style()
	{
		return this.handle.Style();
	}
	
	public int32 Weight()
	{
		return this.handle.Weight();
	}
	
	public bool Bold()
	{
		return this.handle.Bold();
	}
	
	public bool Underline()
	{
		return this.handle.Underline();
	}
	
	public bool Overline()
	{
		return this.handle.Overline();
	}
	
	public bool StrikeOut()
	{
		return this.handle.StrikeOut();
	}
	
	public bool FixedPitch()
	{
		return this.handle.FixedPitch();
	}
	
	public int64 StyleHint()
	{
		return this.handle.StyleHint();
	}
	
	public int32 LegacyWeight()
	{
		return this.handle.LegacyWeight();
	}
	
	public bool ExactMatch()
	{
		return this.handle.ExactMatch();
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