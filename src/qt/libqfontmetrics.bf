using System;
using System.Interop;
namespace Qt;

public interface IQFontMetrics
{
	void* NativePtr { get; }
}
public struct QFontMetricsPtr : IQFontMetrics, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQFont param1)
	{
		return .(CQt.QFontMetrics_new((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QFontMetrics_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQFontMetrics param1)
	{
		CQt.QFontMetrics_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQFontMetrics other)
	{
		CQt.QFontMetrics_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int32 Ascent()
	{
		return CQt.QFontMetrics_Ascent(this.nativePtr);
	}
	
	public int32 CapHeight()
	{
		return CQt.QFontMetrics_CapHeight(this.nativePtr);
	}
	
	public int32 Descent()
	{
		return CQt.QFontMetrics_Descent(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QFontMetrics_Height(this.nativePtr);
	}
	
	public int32 Leading()
	{
		return CQt.QFontMetrics_Leading(this.nativePtr);
	}
	
	public int32 LineSpacing()
	{
		return CQt.QFontMetrics_LineSpacing(this.nativePtr);
	}
	
	public int32 MinLeftBearing()
	{
		return CQt.QFontMetrics_MinLeftBearing(this.nativePtr);
	}
	
	public int32 MinRightBearing()
	{
		return CQt.QFontMetrics_MinRightBearing(this.nativePtr);
	}
	
	public int32 MaxWidth()
	{
		return CQt.QFontMetrics_MaxWidth(this.nativePtr);
	}
	
	public int32 XHeight()
	{
		return CQt.QFontMetrics_XHeight(this.nativePtr);
	}
	
	public int32 AverageCharWidth()
	{
		return CQt.QFontMetrics_AverageCharWidth(this.nativePtr);
	}
	
	public bool InFont(IQChar param1)
	{
		return CQt.QFontMetrics_InFont(this.nativePtr, default);
	}
	
	public bool InFontUcs4(uint32 ucs4)
	{
		return CQt.QFontMetrics_InFontUcs4(this.nativePtr, ucs4);
	}
	
	public int32 LeftBearing(IQChar param1)
	{
		return CQt.QFontMetrics_LeftBearing(this.nativePtr, default);
	}
	
	public int32 RightBearing(IQChar param1)
	{
		return CQt.QFontMetrics_RightBearing(this.nativePtr, default);
	}
	
	public int32 HorizontalAdvance(String param1)
	{
		return CQt.QFontMetrics_HorizontalAdvance(this.nativePtr, libqt_string(param1));
	}
	
	public int32 HorizontalAdvance2(String param1, IQTextOption textOption)
	{
		return CQt.QFontMetrics_HorizontalAdvance2(this.nativePtr, libqt_string(param1), (textOption == default || textOption.NativePtr == default) ? default : textOption.NativePtr);
	}
	
	public int32 HorizontalAdvanceWithQChar(IQChar param1)
	{
		return CQt.QFontMetrics_HorizontalAdvanceWithQChar(this.nativePtr, default);
	}
	
	public void BoundingRect(IQChar param1)
	{
		CQt.QFontMetrics_BoundingRect(this.nativePtr, default);
	}
	
	public void BoundingRectWithText(String text)
	{
		CQt.QFontMetrics_BoundingRectWithText(this.nativePtr, libqt_string(text));
	}
	
	public void BoundingRect2(String text, IQTextOption textOption)
	{
		CQt.QFontMetrics_BoundingRect2(this.nativePtr, libqt_string(text), (textOption == default || textOption.NativePtr == default) ? default : textOption.NativePtr);
	}
	
	public void BoundingRect3(IQRect r, int32 flags, String text)
	{
		CQt.QFontMetrics_BoundingRect3(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(text));
	}
	
	public void BoundingRect4(int32 x, int32 y, int32 w, int32 h, int32 flags, String text)
	{
		CQt.QFontMetrics_BoundingRect4(this.nativePtr, x, y, w, h, flags, libqt_string(text));
	}
	
	public void Size(int32 flags, String str)
	{
		CQt.QFontMetrics_Size(this.nativePtr, flags, libqt_string(str));
	}
	
	public void TightBoundingRect(String text)
	{
		CQt.QFontMetrics_TightBoundingRect(this.nativePtr, libqt_string(text));
	}
	
	public void TightBoundingRect2(String text, IQTextOption textOption)
	{
		CQt.QFontMetrics_TightBoundingRect2(this.nativePtr, libqt_string(text), (textOption == default || textOption.NativePtr == default) ? default : textOption.NativePtr);
	}
	
	public libqt_string ElidedText(String text, int64 mode, int32 width)
	{
		return CQt.QFontMetrics_ElidedText(this.nativePtr, libqt_string(text), (int64)mode, width);
	}
	
	public int32 UnderlinePos()
	{
		return CQt.QFontMetrics_UnderlinePos(this.nativePtr);
	}
	
	public int32 OverlinePos()
	{
		return CQt.QFontMetrics_OverlinePos(this.nativePtr);
	}
	
	public int32 StrikeOutPos()
	{
		return CQt.QFontMetrics_StrikeOutPos(this.nativePtr);
	}
	
	public int32 LineWidth()
	{
		return CQt.QFontMetrics_LineWidth(this.nativePtr);
	}
	
	public double FontDpi()
	{
		return CQt.QFontMetrics_FontDpi(this.nativePtr);
	}
	
	public bool OperatorEqual(IQFontMetrics other)
	{
		return CQt.QFontMetrics_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQFontMetrics other)
	{
		return CQt.QFontMetrics_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int32 HorizontalAdvance22(String param1, int32 lenVal)
	{
		return CQt.QFontMetrics_HorizontalAdvance22(this.nativePtr, libqt_string(param1), lenVal);
	}
	
	public void BoundingRect42(IQRect r, int32 flags, String text, int32 tabstops)
	{
		CQt.QFontMetrics_BoundingRect42(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(text), tabstops);
	}
	
	public void BoundingRect5(IQRect r, int32 flags, String text, int32 tabstops, int32* tabarray)
	{
		CQt.QFontMetrics_BoundingRect5(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(text), tabstops, tabarray);
	}
	
	public void BoundingRect7(int32 x, int32 y, int32 w, int32 h, int32 flags, String text, int32 tabstops)
	{
		CQt.QFontMetrics_BoundingRect7(this.nativePtr, x, y, w, h, flags, libqt_string(text), tabstops);
	}
	
	public void BoundingRect8(int32 x, int32 y, int32 w, int32 h, int32 flags, String text, int32 tabstops, int32* tabarray)
	{
		CQt.QFontMetrics_BoundingRect8(this.nativePtr, x, y, w, h, flags, libqt_string(text), tabstops, tabarray);
	}
	
	public void Size3(int32 flags, String str, int32 tabstops)
	{
		CQt.QFontMetrics_Size3(this.nativePtr, flags, libqt_string(str), tabstops);
	}
	
	public void Size4(int32 flags, String str, int32 tabstops, int32* tabarray)
	{
		CQt.QFontMetrics_Size4(this.nativePtr, flags, libqt_string(str), tabstops, tabarray);
	}
	
	public libqt_string ElidedText4(String text, int64 mode, int32 width, int32 flags)
	{
		return CQt.QFontMetrics_ElidedText4(this.nativePtr, libqt_string(text), (int64)mode, width, flags);
	}
	
}
public class QFontMetrics
{
	public QFontMetricsPtr handle;
	
	public static implicit operator QFontMetricsPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQFont param1)
	{
		this.handle = QFontMetricsPtr.New(param1);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQFontMetrics param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void Swap(IQFontMetrics other)
	{
		this.handle.Swap(other);
	}
	
	public int32 Ascent()
	{
		return this.handle.Ascent();
	}
	
	public int32 CapHeight()
	{
		return this.handle.CapHeight();
	}
	
	public int32 Descent()
	{
		return this.handle.Descent();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
	}
	
	public int32 Leading()
	{
		return this.handle.Leading();
	}
	
	public int32 LineSpacing()
	{
		return this.handle.LineSpacing();
	}
	
	public int32 MinLeftBearing()
	{
		return this.handle.MinLeftBearing();
	}
	
	public int32 MinRightBearing()
	{
		return this.handle.MinRightBearing();
	}
	
	public int32 MaxWidth()
	{
		return this.handle.MaxWidth();
	}
	
	public int32 XHeight()
	{
		return this.handle.XHeight();
	}
	
	public int32 AverageCharWidth()
	{
		return this.handle.AverageCharWidth();
	}
	
	public bool InFont(IQChar param1)
	{
		return this.handle.InFont(default);
	}
	
	public bool InFontUcs4(uint32 ucs4)
	{
		return this.handle.InFontUcs4(ucs4);
	}
	
	public int32 LeftBearing(IQChar param1)
	{
		return this.handle.LeftBearing(default);
	}
	
	public int32 RightBearing(IQChar param1)
	{
		return this.handle.RightBearing(default);
	}
	
	public int32 HorizontalAdvance(String param1)
	{
		return this.handle.HorizontalAdvance(param1);
	}
	
	public int32 HorizontalAdvance2(String param1, IQTextOption textOption)
	{
		return this.handle.HorizontalAdvance2(param1, textOption);
	}
	
	public int32 HorizontalAdvanceWithQChar(IQChar param1)
	{
		return this.handle.HorizontalAdvanceWithQChar(default);
	}
	
	public void BoundingRect(IQChar param1)
	{
		this.handle.BoundingRect(default);
	}
	
	public void BoundingRectWithText(String text)
	{
		this.handle.BoundingRectWithText(text);
	}
	
	public void BoundingRect2(String text, IQTextOption textOption)
	{
		this.handle.BoundingRect2(text, textOption);
	}
	
	public void BoundingRect3(IQRect r, int32 flags, String text)
	{
		this.handle.BoundingRect3(r, flags, text);
	}
	
	public void BoundingRect4(int32 x, int32 y, int32 w, int32 h, int32 flags, String text)
	{
		this.handle.BoundingRect4(x, y, w, h, flags, text);
	}
	
	public void Size(int32 flags, String str)
	{
		this.handle.Size(flags, str);
	}
	
	public void TightBoundingRect(String text)
	{
		this.handle.TightBoundingRect(text);
	}
	
	public void TightBoundingRect2(String text, IQTextOption textOption)
	{
		this.handle.TightBoundingRect2(text, textOption);
	}
	
	public libqt_string ElidedText(String text, int64 mode, int32 width)
	{
		return this.handle.ElidedText(text, mode, width);
	}
	
	public int32 UnderlinePos()
	{
		return this.handle.UnderlinePos();
	}
	
	public int32 OverlinePos()
	{
		return this.handle.OverlinePos();
	}
	
	public int32 StrikeOutPos()
	{
		return this.handle.StrikeOutPos();
	}
	
	public int32 LineWidth()
	{
		return this.handle.LineWidth();
	}
	
	public double FontDpi()
	{
		return this.handle.FontDpi();
	}
	
	public bool OperatorEqual(IQFontMetrics other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQFontMetrics other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public int32 HorizontalAdvance22(String param1, int32 lenVal)
	{
		return this.handle.HorizontalAdvance22(param1, lenVal);
	}
	
	public void BoundingRect42(IQRect r, int32 flags, String text, int32 tabstops)
	{
		this.handle.BoundingRect42(r, flags, text, tabstops);
	}
	
	public void BoundingRect5(IQRect r, int32 flags, String text, int32 tabstops, int32* tabarray)
	{
		this.handle.BoundingRect5(r, flags, text, tabstops, tabarray);
	}
	
	public void BoundingRect7(int32 x, int32 y, int32 w, int32 h, int32 flags, String text, int32 tabstops)
	{
		this.handle.BoundingRect7(x, y, w, h, flags, text, tabstops);
	}
	
	public void BoundingRect8(int32 x, int32 y, int32 w, int32 h, int32 flags, String text, int32 tabstops, int32* tabarray)
	{
		this.handle.BoundingRect8(x, y, w, h, flags, text, tabstops, tabarray);
	}
	
	public void Size3(int32 flags, String str, int32 tabstops)
	{
		this.handle.Size3(flags, str, tabstops);
	}
	
	public void Size4(int32 flags, String str, int32 tabstops, int32* tabarray)
	{
		this.handle.Size4(flags, str, tabstops, tabarray);
	}
	
	public libqt_string ElidedText4(String text, int64 mode, int32 width, int32 flags)
	{
		return this.handle.ElidedText4(text, mode, width, flags);
	}
	
}
extension CQt
{
	[LinkName("QFontMetrics_new")]
	public static extern void* QFontMetrics_new(void* param1);
	[LinkName("QFontMetrics_new2")]
	public static extern void* QFontMetrics_new2(void* font, void* pd);
	[LinkName("QFontMetrics_new3")]
	public static extern void* QFontMetrics_new3(void* param1);
	[LinkName("QFontMetrics_OperatorAssign")]
	public static extern void QFontMetrics_OperatorAssign(void* c_this, void* param1);
	[LinkName("QFontMetrics_Swap")]
	public static extern void QFontMetrics_Swap(void* c_this, void* other);
	[LinkName("QFontMetrics_Ascent")]
	public static extern int32 QFontMetrics_Ascent(void* c_this);
	[LinkName("QFontMetrics_CapHeight")]
	public static extern int32 QFontMetrics_CapHeight(void* c_this);
	[LinkName("QFontMetrics_Descent")]
	public static extern int32 QFontMetrics_Descent(void* c_this);
	[LinkName("QFontMetrics_Height")]
	public static extern int32 QFontMetrics_Height(void* c_this);
	[LinkName("QFontMetrics_Leading")]
	public static extern int32 QFontMetrics_Leading(void* c_this);
	[LinkName("QFontMetrics_LineSpacing")]
	public static extern int32 QFontMetrics_LineSpacing(void* c_this);
	[LinkName("QFontMetrics_MinLeftBearing")]
	public static extern int32 QFontMetrics_MinLeftBearing(void* c_this);
	[LinkName("QFontMetrics_MinRightBearing")]
	public static extern int32 QFontMetrics_MinRightBearing(void* c_this);
	[LinkName("QFontMetrics_MaxWidth")]
	public static extern int32 QFontMetrics_MaxWidth(void* c_this);
	[LinkName("QFontMetrics_XHeight")]
	public static extern int32 QFontMetrics_XHeight(void* c_this);
	[LinkName("QFontMetrics_AverageCharWidth")]
	public static extern int32 QFontMetrics_AverageCharWidth(void* c_this);
	[LinkName("QFontMetrics_InFont")]
	public static extern bool QFontMetrics_InFont(void* c_this, void param1);
	[LinkName("QFontMetrics_InFontUcs4")]
	public static extern bool QFontMetrics_InFontUcs4(void* c_this, uint32 ucs4);
	[LinkName("QFontMetrics_LeftBearing")]
	public static extern int32 QFontMetrics_LeftBearing(void* c_this, void param1);
	[LinkName("QFontMetrics_RightBearing")]
	public static extern int32 QFontMetrics_RightBearing(void* c_this, void param1);
	[LinkName("QFontMetrics_HorizontalAdvance")]
	public static extern int32 QFontMetrics_HorizontalAdvance(void* c_this, libqt_string param1);
	[LinkName("QFontMetrics_HorizontalAdvance2")]
	public static extern int32 QFontMetrics_HorizontalAdvance2(void* c_this, libqt_string param1, void* textOption);
	[LinkName("QFontMetrics_HorizontalAdvanceWithQChar")]
	public static extern int32 QFontMetrics_HorizontalAdvanceWithQChar(void* c_this, void param1);
	[LinkName("QFontMetrics_BoundingRect")]
	public static extern void QFontMetrics_BoundingRect(void* c_this, void param1);
	[LinkName("QFontMetrics_BoundingRectWithText")]
	public static extern void QFontMetrics_BoundingRectWithText(void* c_this, libqt_string text);
	[LinkName("QFontMetrics_BoundingRect2")]
	public static extern void QFontMetrics_BoundingRect2(void* c_this, libqt_string text, void* textOption);
	[LinkName("QFontMetrics_BoundingRect3")]
	public static extern void QFontMetrics_BoundingRect3(void* c_this, void* r, int32 flags, libqt_string text);
	[LinkName("QFontMetrics_BoundingRect4")]
	public static extern void QFontMetrics_BoundingRect4(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text);
	[LinkName("QFontMetrics_Size")]
	public static extern void QFontMetrics_Size(void* c_this, int32 flags, libqt_string str);
	[LinkName("QFontMetrics_TightBoundingRect")]
	public static extern void QFontMetrics_TightBoundingRect(void* c_this, libqt_string text);
	[LinkName("QFontMetrics_TightBoundingRect2")]
	public static extern void QFontMetrics_TightBoundingRect2(void* c_this, libqt_string text, void* textOption);
	[LinkName("QFontMetrics_ElidedText")]
	public static extern libqt_string QFontMetrics_ElidedText(void* c_this, libqt_string text, int64 mode, int32 width);
	[LinkName("QFontMetrics_UnderlinePos")]
	public static extern int32 QFontMetrics_UnderlinePos(void* c_this);
	[LinkName("QFontMetrics_OverlinePos")]
	public static extern int32 QFontMetrics_OverlinePos(void* c_this);
	[LinkName("QFontMetrics_StrikeOutPos")]
	public static extern int32 QFontMetrics_StrikeOutPos(void* c_this);
	[LinkName("QFontMetrics_LineWidth")]
	public static extern int32 QFontMetrics_LineWidth(void* c_this);
	[LinkName("QFontMetrics_FontDpi")]
	public static extern double QFontMetrics_FontDpi(void* c_this);
	[LinkName("QFontMetrics_OperatorEqual")]
	public static extern bool QFontMetrics_OperatorEqual(void* c_this, void* other);
	[LinkName("QFontMetrics_OperatorNotEqual")]
	public static extern bool QFontMetrics_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QFontMetrics_HorizontalAdvance22")]
	public static extern int32 QFontMetrics_HorizontalAdvance22(void* c_this, libqt_string param1, int32 lenVal);
	[LinkName("QFontMetrics_BoundingRect42")]
	public static extern void QFontMetrics_BoundingRect42(void* c_this, void* r, int32 flags, libqt_string text, int32 tabstops);
	[LinkName("QFontMetrics_BoundingRect5")]
	public static extern void QFontMetrics_BoundingRect5(void* c_this, void* r, int32 flags, libqt_string text, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetrics_BoundingRect7")]
	public static extern void QFontMetrics_BoundingRect7(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text, int32 tabstops);
	[LinkName("QFontMetrics_BoundingRect8")]
	public static extern void QFontMetrics_BoundingRect8(void* c_this, int32 x, int32 y, int32 w, int32 h, int32 flags, libqt_string text, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetrics_Size3")]
	public static extern void QFontMetrics_Size3(void* c_this, int32 flags, libqt_string str, int32 tabstops);
	[LinkName("QFontMetrics_Size4")]
	public static extern void QFontMetrics_Size4(void* c_this, int32 flags, libqt_string str, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetrics_ElidedText4")]
	public static extern libqt_string QFontMetrics_ElidedText4(void* c_this, libqt_string text, int64 mode, int32 width, int32 flags);
	/// Delete this object from C++ memory
	[LinkName("QFontMetrics_Delete")]
	public static extern void QFontMetrics_Delete(void* self);
}
public interface IQFontMetricsF
{
	void* NativePtr { get; }
}
public struct QFontMetricsFPtr : IQFontMetricsF, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQFont font)
	{
		return .(CQt.QFontMetricsF_new((font == default || font.NativePtr == default) ? default : font.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QFontMetricsF_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQFontMetricsF param1)
	{
		CQt.QFontMetricsF_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void OperatorAssignWithQFontMetrics(IQFontMetrics param1)
	{
		CQt.QFontMetricsF_OperatorAssignWithQFontMetrics(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQFontMetricsF other)
	{
		CQt.QFontMetricsF_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public double Ascent()
	{
		return CQt.QFontMetricsF_Ascent(this.nativePtr);
	}
	
	public double CapHeight()
	{
		return CQt.QFontMetricsF_CapHeight(this.nativePtr);
	}
	
	public double Descent()
	{
		return CQt.QFontMetricsF_Descent(this.nativePtr);
	}
	
	public double Height()
	{
		return CQt.QFontMetricsF_Height(this.nativePtr);
	}
	
	public double Leading()
	{
		return CQt.QFontMetricsF_Leading(this.nativePtr);
	}
	
	public double LineSpacing()
	{
		return CQt.QFontMetricsF_LineSpacing(this.nativePtr);
	}
	
	public double MinLeftBearing()
	{
		return CQt.QFontMetricsF_MinLeftBearing(this.nativePtr);
	}
	
	public double MinRightBearing()
	{
		return CQt.QFontMetricsF_MinRightBearing(this.nativePtr);
	}
	
	public double MaxWidth()
	{
		return CQt.QFontMetricsF_MaxWidth(this.nativePtr);
	}
	
	public double XHeight()
	{
		return CQt.QFontMetricsF_XHeight(this.nativePtr);
	}
	
	public double AverageCharWidth()
	{
		return CQt.QFontMetricsF_AverageCharWidth(this.nativePtr);
	}
	
	public bool InFont(IQChar param1)
	{
		return CQt.QFontMetricsF_InFont(this.nativePtr, default);
	}
	
	public bool InFontUcs4(uint32 ucs4)
	{
		return CQt.QFontMetricsF_InFontUcs4(this.nativePtr, ucs4);
	}
	
	public double LeftBearing(IQChar param1)
	{
		return CQt.QFontMetricsF_LeftBearing(this.nativePtr, default);
	}
	
	public double RightBearing(IQChar param1)
	{
		return CQt.QFontMetricsF_RightBearing(this.nativePtr, default);
	}
	
	public double HorizontalAdvance(String stringVal)
	{
		return CQt.QFontMetricsF_HorizontalAdvance(this.nativePtr, libqt_string(stringVal));
	}
	
	public double HorizontalAdvanceWithQChar(IQChar param1)
	{
		return CQt.QFontMetricsF_HorizontalAdvanceWithQChar(this.nativePtr, default);
	}
	
	public double HorizontalAdvance2(String stringVal, IQTextOption textOption)
	{
		return CQt.QFontMetricsF_HorizontalAdvance2(this.nativePtr, libqt_string(stringVal), (textOption == default || textOption.NativePtr == default) ? default : textOption.NativePtr);
	}
	
	public void BoundingRect(String stringVal)
	{
		CQt.QFontMetricsF_BoundingRect(this.nativePtr, libqt_string(stringVal));
	}
	
	public void BoundingRect2(String text, IQTextOption textOption)
	{
		CQt.QFontMetricsF_BoundingRect2(this.nativePtr, libqt_string(text), (textOption == default || textOption.NativePtr == default) ? default : textOption.NativePtr);
	}
	
	public void BoundingRectWithQChar(IQChar param1)
	{
		CQt.QFontMetricsF_BoundingRectWithQChar(this.nativePtr, default);
	}
	
	public void BoundingRect3(IQRectF r, int32 flags, String stringVal)
	{
		CQt.QFontMetricsF_BoundingRect3(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(stringVal));
	}
	
	public void Size(int32 flags, String str)
	{
		CQt.QFontMetricsF_Size(this.nativePtr, flags, libqt_string(str));
	}
	
	public void TightBoundingRect(String text)
	{
		CQt.QFontMetricsF_TightBoundingRect(this.nativePtr, libqt_string(text));
	}
	
	public void TightBoundingRect2(String text, IQTextOption textOption)
	{
		CQt.QFontMetricsF_TightBoundingRect2(this.nativePtr, libqt_string(text), (textOption == default || textOption.NativePtr == default) ? default : textOption.NativePtr);
	}
	
	public libqt_string ElidedText(String text, int64 mode, double width)
	{
		return CQt.QFontMetricsF_ElidedText(this.nativePtr, libqt_string(text), (int64)mode, width);
	}
	
	public double UnderlinePos()
	{
		return CQt.QFontMetricsF_UnderlinePos(this.nativePtr);
	}
	
	public double OverlinePos()
	{
		return CQt.QFontMetricsF_OverlinePos(this.nativePtr);
	}
	
	public double StrikeOutPos()
	{
		return CQt.QFontMetricsF_StrikeOutPos(this.nativePtr);
	}
	
	public double LineWidth()
	{
		return CQt.QFontMetricsF_LineWidth(this.nativePtr);
	}
	
	public double FontDpi()
	{
		return CQt.QFontMetricsF_FontDpi(this.nativePtr);
	}
	
	public bool OperatorEqual(IQFontMetricsF other)
	{
		return CQt.QFontMetricsF_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQFontMetricsF other)
	{
		return CQt.QFontMetricsF_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public double HorizontalAdvance22(String stringVal, int32 length)
	{
		return CQt.QFontMetricsF_HorizontalAdvance22(this.nativePtr, libqt_string(stringVal), length);
	}
	
	public void BoundingRect4(IQRectF r, int32 flags, String stringVal, int32 tabstops)
	{
		CQt.QFontMetricsF_BoundingRect4(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(stringVal), tabstops);
	}
	
	public void BoundingRect5(IQRectF r, int32 flags, String stringVal, int32 tabstops, int32* tabarray)
	{
		CQt.QFontMetricsF_BoundingRect5(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, libqt_string(stringVal), tabstops, tabarray);
	}
	
	public void Size3(int32 flags, String str, int32 tabstops)
	{
		CQt.QFontMetricsF_Size3(this.nativePtr, flags, libqt_string(str), tabstops);
	}
	
	public void Size4(int32 flags, String str, int32 tabstops, int32* tabarray)
	{
		CQt.QFontMetricsF_Size4(this.nativePtr, flags, libqt_string(str), tabstops, tabarray);
	}
	
	public libqt_string ElidedText4(String text, int64 mode, double width, int32 flags)
	{
		return CQt.QFontMetricsF_ElidedText4(this.nativePtr, libqt_string(text), (int64)mode, width, flags);
	}
	
}
public class QFontMetricsF
{
	public QFontMetricsFPtr handle;
	
	public static implicit operator QFontMetricsFPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQFont font)
	{
		this.handle = QFontMetricsFPtr.New(font);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQFontMetricsF param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void OperatorAssignWithQFontMetrics(IQFontMetrics param1)
	{
		this.handle.OperatorAssignWithQFontMetrics(param1);
	}
	
	public void Swap(IQFontMetricsF other)
	{
		this.handle.Swap(other);
	}
	
	public double Ascent()
	{
		return this.handle.Ascent();
	}
	
	public double CapHeight()
	{
		return this.handle.CapHeight();
	}
	
	public double Descent()
	{
		return this.handle.Descent();
	}
	
	public double Height()
	{
		return this.handle.Height();
	}
	
	public double Leading()
	{
		return this.handle.Leading();
	}
	
	public double LineSpacing()
	{
		return this.handle.LineSpacing();
	}
	
	public double MinLeftBearing()
	{
		return this.handle.MinLeftBearing();
	}
	
	public double MinRightBearing()
	{
		return this.handle.MinRightBearing();
	}
	
	public double MaxWidth()
	{
		return this.handle.MaxWidth();
	}
	
	public double XHeight()
	{
		return this.handle.XHeight();
	}
	
	public double AverageCharWidth()
	{
		return this.handle.AverageCharWidth();
	}
	
	public bool InFont(IQChar param1)
	{
		return this.handle.InFont(default);
	}
	
	public bool InFontUcs4(uint32 ucs4)
	{
		return this.handle.InFontUcs4(ucs4);
	}
	
	public double LeftBearing(IQChar param1)
	{
		return this.handle.LeftBearing(default);
	}
	
	public double RightBearing(IQChar param1)
	{
		return this.handle.RightBearing(default);
	}
	
	public double HorizontalAdvance(String stringVal)
	{
		return this.handle.HorizontalAdvance(stringVal);
	}
	
	public double HorizontalAdvanceWithQChar(IQChar param1)
	{
		return this.handle.HorizontalAdvanceWithQChar(default);
	}
	
	public double HorizontalAdvance2(String stringVal, IQTextOption textOption)
	{
		return this.handle.HorizontalAdvance2(stringVal, textOption);
	}
	
	public void BoundingRect(String stringVal)
	{
		this.handle.BoundingRect(stringVal);
	}
	
	public void BoundingRect2(String text, IQTextOption textOption)
	{
		this.handle.BoundingRect2(text, textOption);
	}
	
	public void BoundingRectWithQChar(IQChar param1)
	{
		this.handle.BoundingRectWithQChar(default);
	}
	
	public void BoundingRect3(IQRectF r, int32 flags, String stringVal)
	{
		this.handle.BoundingRect3(r, flags, stringVal);
	}
	
	public void Size(int32 flags, String str)
	{
		this.handle.Size(flags, str);
	}
	
	public void TightBoundingRect(String text)
	{
		this.handle.TightBoundingRect(text);
	}
	
	public void TightBoundingRect2(String text, IQTextOption textOption)
	{
		this.handle.TightBoundingRect2(text, textOption);
	}
	
	public libqt_string ElidedText(String text, int64 mode, double width)
	{
		return this.handle.ElidedText(text, mode, width);
	}
	
	public double UnderlinePos()
	{
		return this.handle.UnderlinePos();
	}
	
	public double OverlinePos()
	{
		return this.handle.OverlinePos();
	}
	
	public double StrikeOutPos()
	{
		return this.handle.StrikeOutPos();
	}
	
	public double LineWidth()
	{
		return this.handle.LineWidth();
	}
	
	public double FontDpi()
	{
		return this.handle.FontDpi();
	}
	
	public bool OperatorEqual(IQFontMetricsF other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQFontMetricsF other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public double HorizontalAdvance22(String stringVal, int32 length)
	{
		return this.handle.HorizontalAdvance22(stringVal, length);
	}
	
	public void BoundingRect4(IQRectF r, int32 flags, String stringVal, int32 tabstops)
	{
		this.handle.BoundingRect4(r, flags, stringVal, tabstops);
	}
	
	public void BoundingRect5(IQRectF r, int32 flags, String stringVal, int32 tabstops, int32* tabarray)
	{
		this.handle.BoundingRect5(r, flags, stringVal, tabstops, tabarray);
	}
	
	public void Size3(int32 flags, String str, int32 tabstops)
	{
		this.handle.Size3(flags, str, tabstops);
	}
	
	public void Size4(int32 flags, String str, int32 tabstops, int32* tabarray)
	{
		this.handle.Size4(flags, str, tabstops, tabarray);
	}
	
	public libqt_string ElidedText4(String text, int64 mode, double width, int32 flags)
	{
		return this.handle.ElidedText4(text, mode, width, flags);
	}
	
}
extension CQt
{
	[LinkName("QFontMetricsF_new")]
	public static extern void* QFontMetricsF_new(void* font);
	[LinkName("QFontMetricsF_new2")]
	public static extern void* QFontMetricsF_new2(void* font, void* pd);
	[LinkName("QFontMetricsF_new3")]
	public static extern void* QFontMetricsF_new3(void* param1);
	[LinkName("QFontMetricsF_new4")]
	public static extern void* QFontMetricsF_new4(void* param1);
	[LinkName("QFontMetricsF_OperatorAssign")]
	public static extern void QFontMetricsF_OperatorAssign(void* c_this, void* param1);
	[LinkName("QFontMetricsF_OperatorAssignWithQFontMetrics")]
	public static extern void QFontMetricsF_OperatorAssignWithQFontMetrics(void* c_this, void* param1);
	[LinkName("QFontMetricsF_Swap")]
	public static extern void QFontMetricsF_Swap(void* c_this, void* other);
	[LinkName("QFontMetricsF_Ascent")]
	public static extern double QFontMetricsF_Ascent(void* c_this);
	[LinkName("QFontMetricsF_CapHeight")]
	public static extern double QFontMetricsF_CapHeight(void* c_this);
	[LinkName("QFontMetricsF_Descent")]
	public static extern double QFontMetricsF_Descent(void* c_this);
	[LinkName("QFontMetricsF_Height")]
	public static extern double QFontMetricsF_Height(void* c_this);
	[LinkName("QFontMetricsF_Leading")]
	public static extern double QFontMetricsF_Leading(void* c_this);
	[LinkName("QFontMetricsF_LineSpacing")]
	public static extern double QFontMetricsF_LineSpacing(void* c_this);
	[LinkName("QFontMetricsF_MinLeftBearing")]
	public static extern double QFontMetricsF_MinLeftBearing(void* c_this);
	[LinkName("QFontMetricsF_MinRightBearing")]
	public static extern double QFontMetricsF_MinRightBearing(void* c_this);
	[LinkName("QFontMetricsF_MaxWidth")]
	public static extern double QFontMetricsF_MaxWidth(void* c_this);
	[LinkName("QFontMetricsF_XHeight")]
	public static extern double QFontMetricsF_XHeight(void* c_this);
	[LinkName("QFontMetricsF_AverageCharWidth")]
	public static extern double QFontMetricsF_AverageCharWidth(void* c_this);
	[LinkName("QFontMetricsF_InFont")]
	public static extern bool QFontMetricsF_InFont(void* c_this, void param1);
	[LinkName("QFontMetricsF_InFontUcs4")]
	public static extern bool QFontMetricsF_InFontUcs4(void* c_this, uint32 ucs4);
	[LinkName("QFontMetricsF_LeftBearing")]
	public static extern double QFontMetricsF_LeftBearing(void* c_this, void param1);
	[LinkName("QFontMetricsF_RightBearing")]
	public static extern double QFontMetricsF_RightBearing(void* c_this, void param1);
	[LinkName("QFontMetricsF_HorizontalAdvance")]
	public static extern double QFontMetricsF_HorizontalAdvance(void* c_this, libqt_string stringVal);
	[LinkName("QFontMetricsF_HorizontalAdvanceWithQChar")]
	public static extern double QFontMetricsF_HorizontalAdvanceWithQChar(void* c_this, void param1);
	[LinkName("QFontMetricsF_HorizontalAdvance2")]
	public static extern double QFontMetricsF_HorizontalAdvance2(void* c_this, libqt_string stringVal, void* textOption);
	[LinkName("QFontMetricsF_BoundingRect")]
	public static extern void QFontMetricsF_BoundingRect(void* c_this, libqt_string stringVal);
	[LinkName("QFontMetricsF_BoundingRect2")]
	public static extern void QFontMetricsF_BoundingRect2(void* c_this, libqt_string text, void* textOption);
	[LinkName("QFontMetricsF_BoundingRectWithQChar")]
	public static extern void QFontMetricsF_BoundingRectWithQChar(void* c_this, void param1);
	[LinkName("QFontMetricsF_BoundingRect3")]
	public static extern void QFontMetricsF_BoundingRect3(void* c_this, void* r, int32 flags, libqt_string stringVal);
	[LinkName("QFontMetricsF_Size")]
	public static extern void QFontMetricsF_Size(void* c_this, int32 flags, libqt_string str);
	[LinkName("QFontMetricsF_TightBoundingRect")]
	public static extern void QFontMetricsF_TightBoundingRect(void* c_this, libqt_string text);
	[LinkName("QFontMetricsF_TightBoundingRect2")]
	public static extern void QFontMetricsF_TightBoundingRect2(void* c_this, libqt_string text, void* textOption);
	[LinkName("QFontMetricsF_ElidedText")]
	public static extern libqt_string QFontMetricsF_ElidedText(void* c_this, libqt_string text, int64 mode, double width);
	[LinkName("QFontMetricsF_UnderlinePos")]
	public static extern double QFontMetricsF_UnderlinePos(void* c_this);
	[LinkName("QFontMetricsF_OverlinePos")]
	public static extern double QFontMetricsF_OverlinePos(void* c_this);
	[LinkName("QFontMetricsF_StrikeOutPos")]
	public static extern double QFontMetricsF_StrikeOutPos(void* c_this);
	[LinkName("QFontMetricsF_LineWidth")]
	public static extern double QFontMetricsF_LineWidth(void* c_this);
	[LinkName("QFontMetricsF_FontDpi")]
	public static extern double QFontMetricsF_FontDpi(void* c_this);
	[LinkName("QFontMetricsF_OperatorEqual")]
	public static extern bool QFontMetricsF_OperatorEqual(void* c_this, void* other);
	[LinkName("QFontMetricsF_OperatorNotEqual")]
	public static extern bool QFontMetricsF_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QFontMetricsF_HorizontalAdvance22")]
	public static extern double QFontMetricsF_HorizontalAdvance22(void* c_this, libqt_string stringVal, int32 length);
	[LinkName("QFontMetricsF_BoundingRect4")]
	public static extern void QFontMetricsF_BoundingRect4(void* c_this, void* r, int32 flags, libqt_string stringVal, int32 tabstops);
	[LinkName("QFontMetricsF_BoundingRect5")]
	public static extern void QFontMetricsF_BoundingRect5(void* c_this, void* r, int32 flags, libqt_string stringVal, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetricsF_Size3")]
	public static extern void QFontMetricsF_Size3(void* c_this, int32 flags, libqt_string str, int32 tabstops);
	[LinkName("QFontMetricsF_Size4")]
	public static extern void QFontMetricsF_Size4(void* c_this, int32 flags, libqt_string str, int32 tabstops, int32* tabarray);
	[LinkName("QFontMetricsF_ElidedText4")]
	public static extern libqt_string QFontMetricsF_ElidedText4(void* c_this, libqt_string text, int64 mode, double width, int32 flags);
	/// Delete this object from C++ memory
	[LinkName("QFontMetricsF_Delete")]
	public static extern void QFontMetricsF_Delete(void* self);
}