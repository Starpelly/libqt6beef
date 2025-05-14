using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStaticText__PerformanceHint
{
	ModerateCaching = 0,
	AggressiveCaching = 1,
}
public interface IQStaticText
{
	void* NativePtr { get; }
}
public struct QStaticTextPtr : IQStaticText, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QStaticText_new());
	}
	
	public void Dispose()
	{
		CQt.QStaticText_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQStaticText param1)
	{
		CQt.QStaticText_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQStaticText other)
	{
		CQt.QStaticText_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetText(String text)
	{
		CQt.QStaticText_SetText(this.nativePtr, libqt_string(text));
	}
	
	public libqt_string Text()
	{
		return CQt.QStaticText_Text(this.nativePtr);
	}
	
	public void SetTextFormat(int64 textFormat)
	{
		CQt.QStaticText_SetTextFormat(this.nativePtr, (int64)textFormat);
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
	
	public void SetTextOption(IQTextOption textOption)
	{
		CQt.QStaticText_SetTextOption(this.nativePtr, (textOption == default || textOption.NativePtr == default) ? default : textOption.NativePtr);
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
		CQt.QStaticText_SetPerformanceHint(this.nativePtr, (int64)performanceHint);
	}
	
	public int64 PerformanceHint()
	{
		return CQt.QStaticText_PerformanceHint(this.nativePtr);
	}
	
	public bool OperatorEqual(IQStaticText param1)
	{
		return CQt.QStaticText_OperatorEqual(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public bool OperatorNotEqual(IQStaticText param1)
	{
		return CQt.QStaticText_OperatorNotEqual(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Prepare1(IQTransform matrix)
	{
		CQt.QStaticText_Prepare1(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void Prepare2(IQTransform matrix, IQFont font)
	{
		CQt.QStaticText_Prepare2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
}
public class QStaticText
{
	public QStaticTextPtr handle;
	
	public static implicit operator QStaticTextPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QStaticTextPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQStaticText param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void Swap(IQStaticText other)
	{
		this.handle.Swap(other);
	}
	
	public void SetText(String text)
	{
		this.handle.SetText(text);
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void SetTextFormat(int64 textFormat)
	{
		this.handle.SetTextFormat(textFormat);
	}
	
	public int64 TextFormat()
	{
		return this.handle.TextFormat();
	}
	
	public void SetTextWidth(double textWidth)
	{
		this.handle.SetTextWidth(textWidth);
	}
	
	public double TextWidth()
	{
		return this.handle.TextWidth();
	}
	
	public void SetTextOption(IQTextOption textOption)
	{
		this.handle.SetTextOption(textOption);
	}
	
	public void TextOption()
	{
		this.handle.TextOption();
	}
	
	public void Size()
	{
		this.handle.Size();
	}
	
	public void Prepare()
	{
		this.handle.Prepare();
	}
	
	public void SetPerformanceHint(int64 performanceHint)
	{
		this.handle.SetPerformanceHint(performanceHint);
	}
	
	public int64 PerformanceHint()
	{
		return this.handle.PerformanceHint();
	}
	
	public bool OperatorEqual(IQStaticText param1)
	{
		return this.handle.OperatorEqual(param1);
	}
	
	public bool OperatorNotEqual(IQStaticText param1)
	{
		return this.handle.OperatorNotEqual(param1);
	}
	
	public void Prepare1(IQTransform matrix)
	{
		this.handle.Prepare1(matrix);
	}
	
	public void Prepare2(IQTransform matrix, IQFont font)
	{
		this.handle.Prepare2(matrix, font);
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