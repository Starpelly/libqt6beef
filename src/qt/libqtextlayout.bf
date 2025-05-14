using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextLayout__CursorMode
{
	SkipCharacters = 0,
	SkipWords = 1,
}
[AllowDuplicates]
public enum QTextLine__Edge
{
	Leading = 0,
	Trailing = 1,
}
[AllowDuplicates]
public enum QTextLine__CursorPosition
{
	CursorBetweenCharacters = 0,
	CursorOnCharacter = 1,
}
public interface IQTextInlineObject
{
	void* NativePtr { get; }
}
public struct QTextInlineObjectPtr : IQTextInlineObject, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQTextInlineObject other)
	{
		return .(CQt.QTextInlineObject_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTextInlineObject_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextInlineObject_IsValid(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QTextInlineObject_Rect(this.nativePtr);
	}
	
	public double Width()
	{
		return CQt.QTextInlineObject_Width(this.nativePtr);
	}
	
	public double Ascent()
	{
		return CQt.QTextInlineObject_Ascent(this.nativePtr);
	}
	
	public double Descent()
	{
		return CQt.QTextInlineObject_Descent(this.nativePtr);
	}
	
	public double Height()
	{
		return CQt.QTextInlineObject_Height(this.nativePtr);
	}
	
	public int64 TextDirection()
	{
		return CQt.QTextInlineObject_TextDirection(this.nativePtr);
	}
	
	public void SetWidth(double w)
	{
		CQt.QTextInlineObject_SetWidth(this.nativePtr, w);
	}
	
	public void SetAscent(double a)
	{
		CQt.QTextInlineObject_SetAscent(this.nativePtr, a);
	}
	
	public void SetDescent(double d)
	{
		CQt.QTextInlineObject_SetDescent(this.nativePtr, d);
	}
	
	public int32 TextPosition()
	{
		return CQt.QTextInlineObject_TextPosition(this.nativePtr);
	}
	
	public int32 FormatIndex()
	{
		return CQt.QTextInlineObject_FormatIndex(this.nativePtr);
	}
	
	public void Format()
	{
		CQt.QTextInlineObject_Format(this.nativePtr);
	}
	
}
public class QTextInlineObject
{
	public QTextInlineObjectPtr handle;
	
	public static implicit operator QTextInlineObjectPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQTextInlineObject other)
	{
		this.handle = QTextInlineObjectPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public void Rect()
	{
		this.handle.Rect();
	}
	
	public double Width()
	{
		return this.handle.Width();
	}
	
	public double Ascent()
	{
		return this.handle.Ascent();
	}
	
	public double Descent()
	{
		return this.handle.Descent();
	}
	
	public double Height()
	{
		return this.handle.Height();
	}
	
	public int64 TextDirection()
	{
		return this.handle.TextDirection();
	}
	
	public void SetWidth(double w)
	{
		this.handle.SetWidth(w);
	}
	
	public void SetAscent(double a)
	{
		this.handle.SetAscent(a);
	}
	
	public void SetDescent(double d)
	{
		this.handle.SetDescent(d);
	}
	
	public int32 TextPosition()
	{
		return this.handle.TextPosition();
	}
	
	public int32 FormatIndex()
	{
		return this.handle.FormatIndex();
	}
	
	public void Format()
	{
		this.handle.Format();
	}
	
}
extension CQt
{
	[LinkName("QTextInlineObject_new")]
	public static extern void* QTextInlineObject_new(void* other);
	[LinkName("QTextInlineObject_new2")]
	public static extern void* QTextInlineObject_new2(void* other);
	[LinkName("QTextInlineObject_new3")]
	public static extern void* QTextInlineObject_new3();
	[LinkName("QTextInlineObject_IsValid")]
	public static extern bool QTextInlineObject_IsValid(void* c_this);
	[LinkName("QTextInlineObject_Rect")]
	public static extern void QTextInlineObject_Rect(void* c_this);
	[LinkName("QTextInlineObject_Width")]
	public static extern double QTextInlineObject_Width(void* c_this);
	[LinkName("QTextInlineObject_Ascent")]
	public static extern double QTextInlineObject_Ascent(void* c_this);
	[LinkName("QTextInlineObject_Descent")]
	public static extern double QTextInlineObject_Descent(void* c_this);
	[LinkName("QTextInlineObject_Height")]
	public static extern double QTextInlineObject_Height(void* c_this);
	[LinkName("QTextInlineObject_TextDirection")]
	public static extern int64 QTextInlineObject_TextDirection(void* c_this);
	[LinkName("QTextInlineObject_SetWidth")]
	public static extern void QTextInlineObject_SetWidth(void* c_this, double w);
	[LinkName("QTextInlineObject_SetAscent")]
	public static extern void QTextInlineObject_SetAscent(void* c_this, double a);
	[LinkName("QTextInlineObject_SetDescent")]
	public static extern void QTextInlineObject_SetDescent(void* c_this, double d);
	[LinkName("QTextInlineObject_TextPosition")]
	public static extern int32 QTextInlineObject_TextPosition(void* c_this);
	[LinkName("QTextInlineObject_FormatIndex")]
	public static extern int32 QTextInlineObject_FormatIndex(void* c_this);
	[LinkName("QTextInlineObject_Format")]
	public static extern void QTextInlineObject_Format(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextInlineObject_Delete")]
	public static extern void QTextInlineObject_Delete(void* self);
}
public interface IQTextLayout
{
	void* NativePtr { get; }
}
public struct QTextLayoutPtr : IQTextLayout, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTextLayout_new());
	}
	
	public void Dispose()
	{
		CQt.QTextLayout_Delete(this.nativePtr);
	}
	
	public void SetFont(IQFont f)
	{
		CQt.QTextLayout_SetFont(this.nativePtr, (f == default || f.NativePtr == default) ? default : f.NativePtr);
	}
	
	public void Font()
	{
		CQt.QTextLayout_Font(this.nativePtr);
	}
	
	public void SetRawFont(IQRawFont rawFont)
	{
		CQt.QTextLayout_SetRawFont(this.nativePtr, (rawFont == default || rawFont.NativePtr == default) ? default : rawFont.NativePtr);
	}
	
	public void SetText(String stringVal)
	{
		CQt.QTextLayout_SetText(this.nativePtr, libqt_string(stringVal));
	}
	
	public libqt_string Text()
	{
		return CQt.QTextLayout_Text(this.nativePtr);
	}
	
	public void SetTextOption(IQTextOption option)
	{
		CQt.QTextLayout_SetTextOption(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr);
	}
	
	public void* TextOption()
	{
		return CQt.QTextLayout_TextOption(this.nativePtr);
	}
	
	public void SetPreeditArea(int32 position, String text)
	{
		CQt.QTextLayout_SetPreeditArea(this.nativePtr, position, libqt_string(text));
	}
	
	public int32 PreeditAreaPosition()
	{
		return CQt.QTextLayout_PreeditAreaPosition(this.nativePtr);
	}
	
	public libqt_string PreeditAreaText()
	{
		return CQt.QTextLayout_PreeditAreaText(this.nativePtr);
	}
	
	public void SetFormats(QTextLayout__FormatRangePtr[] overrides)
	{
		CQt.QTextLayout_SetFormats(this.nativePtr, null);
	}
	
	public void[] Formats()
	{
		return CQt.QTextLayout_Formats(this.nativePtr);
	}
	
	public void ClearFormats()
	{
		CQt.QTextLayout_ClearFormats(this.nativePtr);
	}
	
	public void SetCacheEnabled(bool enable)
	{
		CQt.QTextLayout_SetCacheEnabled(this.nativePtr, enable);
	}
	
	public bool CacheEnabled()
	{
		return CQt.QTextLayout_CacheEnabled(this.nativePtr);
	}
	
	public void SetCursorMoveStyle(int64 style)
	{
		CQt.QTextLayout_SetCursorMoveStyle(this.nativePtr, (int64)style);
	}
	
	public int64 CursorMoveStyle()
	{
		return CQt.QTextLayout_CursorMoveStyle(this.nativePtr);
	}
	
	public void BeginLayout()
	{
		CQt.QTextLayout_BeginLayout(this.nativePtr);
	}
	
	public void EndLayout()
	{
		CQt.QTextLayout_EndLayout(this.nativePtr);
	}
	
	public void ClearLayout()
	{
		CQt.QTextLayout_ClearLayout(this.nativePtr);
	}
	
	public void CreateLine()
	{
		CQt.QTextLayout_CreateLine(this.nativePtr);
	}
	
	public int32 LineCount()
	{
		return CQt.QTextLayout_LineCount(this.nativePtr);
	}
	
	public void LineAt(int32 i)
	{
		CQt.QTextLayout_LineAt(this.nativePtr, i);
	}
	
	public void LineForTextPosition(int32 pos)
	{
		CQt.QTextLayout_LineForTextPosition(this.nativePtr, pos);
	}
	
	public bool IsValidCursorPosition(int32 pos)
	{
		return CQt.QTextLayout_IsValidCursorPosition(this.nativePtr, pos);
	}
	
	public int32 NextCursorPosition(int32 oldPos)
	{
		return CQt.QTextLayout_NextCursorPosition(this.nativePtr, oldPos);
	}
	
	public int32 PreviousCursorPosition(int32 oldPos)
	{
		return CQt.QTextLayout_PreviousCursorPosition(this.nativePtr, oldPos);
	}
	
	public int32 LeftCursorPosition(int32 oldPos)
	{
		return CQt.QTextLayout_LeftCursorPosition(this.nativePtr, oldPos);
	}
	
	public int32 RightCursorPosition(int32 oldPos)
	{
		return CQt.QTextLayout_RightCursorPosition(this.nativePtr, oldPos);
	}
	
	public void Draw(IQPainter p, IQPointF pos)
	{
		CQt.QTextLayout_Draw(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void DrawCursor(IQPainter p, IQPointF pos, int32 cursorPosition)
	{
		CQt.QTextLayout_DrawCursor(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, cursorPosition);
	}
	
	public void DrawCursor2(IQPainter p, IQPointF pos, int32 cursorPosition, int32 width)
	{
		CQt.QTextLayout_DrawCursor2(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, cursorPosition, width);
	}
	
	public void Position()
	{
		CQt.QTextLayout_Position(this.nativePtr);
	}
	
	public void SetPosition(IQPointF p)
	{
		CQt.QTextLayout_SetPosition(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QTextLayout_BoundingRect(this.nativePtr);
	}
	
	public double MinimumWidth()
	{
		return CQt.QTextLayout_MinimumWidth(this.nativePtr);
	}
	
	public double MaximumWidth()
	{
		return CQt.QTextLayout_MaximumWidth(this.nativePtr);
	}
	
	public void[] GlyphRuns()
	{
		return CQt.QTextLayout_GlyphRuns(this.nativePtr);
	}
	
	public void SetFlags(int32 flags)
	{
		CQt.QTextLayout_SetFlags(this.nativePtr, flags);
	}
	
	public int32 NextCursorPosition2(int32 oldPos, int64 mode)
	{
		return CQt.QTextLayout_NextCursorPosition2(this.nativePtr, oldPos, (int64)mode);
	}
	
	public int32 PreviousCursorPosition2(int32 oldPos, int64 mode)
	{
		return CQt.QTextLayout_PreviousCursorPosition2(this.nativePtr, oldPos, (int64)mode);
	}
	
	public void Draw3(IQPainter p, IQPointF pos, QTextLayout__FormatRangePtr[] selections)
	{
		CQt.QTextLayout_Draw3(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, null);
	}
	
	public void Draw4(IQPainter p, IQPointF pos, QTextLayout__FormatRangePtr[] selections, IQRectF clip)
	{
		CQt.QTextLayout_Draw4(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, null, (clip == default || clip.NativePtr == default) ? default : clip.NativePtr);
	}
	
	public void[] GlyphRuns1(int32 from)
	{
		return CQt.QTextLayout_GlyphRuns1(this.nativePtr, from);
	}
	
	public void[] GlyphRuns2(int32 from, int32 length)
	{
		return CQt.QTextLayout_GlyphRuns2(this.nativePtr, from, length);
	}
	
}
public class QTextLayout
{
	public QTextLayoutPtr handle;
	
	public static implicit operator QTextLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTextLayoutPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void SetFont(IQFont f)
	{
		this.handle.SetFont(f);
	}
	
	public void Font()
	{
		this.handle.Font();
	}
	
	public void SetRawFont(IQRawFont rawFont)
	{
		this.handle.SetRawFont(rawFont);
	}
	
	public void SetText(String stringVal)
	{
		this.handle.SetText(stringVal);
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void SetTextOption(IQTextOption option)
	{
		this.handle.SetTextOption(option);
	}
	
	public void* TextOption()
	{
		return this.handle.TextOption();
	}
	
	public void SetPreeditArea(int32 position, String text)
	{
		this.handle.SetPreeditArea(position, text);
	}
	
	public int32 PreeditAreaPosition()
	{
		return this.handle.PreeditAreaPosition();
	}
	
	public libqt_string PreeditAreaText()
	{
		return this.handle.PreeditAreaText();
	}
	
	public void SetFormats(QTextLayout__FormatRangePtr[] overrides)
	{
		this.handle.SetFormats(null);
	}
	
	public void[] Formats()
	{
		return this.handle.Formats();
	}
	
	public void ClearFormats()
	{
		this.handle.ClearFormats();
	}
	
	public void SetCacheEnabled(bool enable)
	{
		this.handle.SetCacheEnabled(enable);
	}
	
	public bool CacheEnabled()
	{
		return this.handle.CacheEnabled();
	}
	
	public void SetCursorMoveStyle(int64 style)
	{
		this.handle.SetCursorMoveStyle(style);
	}
	
	public int64 CursorMoveStyle()
	{
		return this.handle.CursorMoveStyle();
	}
	
	public void BeginLayout()
	{
		this.handle.BeginLayout();
	}
	
	public void EndLayout()
	{
		this.handle.EndLayout();
	}
	
	public void ClearLayout()
	{
		this.handle.ClearLayout();
	}
	
	public void CreateLine()
	{
		this.handle.CreateLine();
	}
	
	public int32 LineCount()
	{
		return this.handle.LineCount();
	}
	
	public void LineAt(int32 i)
	{
		this.handle.LineAt(i);
	}
	
	public void LineForTextPosition(int32 pos)
	{
		this.handle.LineForTextPosition(pos);
	}
	
	public bool IsValidCursorPosition(int32 pos)
	{
		return this.handle.IsValidCursorPosition(pos);
	}
	
	public int32 NextCursorPosition(int32 oldPos)
	{
		return this.handle.NextCursorPosition(oldPos);
	}
	
	public int32 PreviousCursorPosition(int32 oldPos)
	{
		return this.handle.PreviousCursorPosition(oldPos);
	}
	
	public int32 LeftCursorPosition(int32 oldPos)
	{
		return this.handle.LeftCursorPosition(oldPos);
	}
	
	public int32 RightCursorPosition(int32 oldPos)
	{
		return this.handle.RightCursorPosition(oldPos);
	}
	
	public void Draw(IQPainter p, IQPointF pos)
	{
		this.handle.Draw(p, pos);
	}
	
	public void DrawCursor(IQPainter p, IQPointF pos, int32 cursorPosition)
	{
		this.handle.DrawCursor(p, pos, cursorPosition);
	}
	
	public void DrawCursor2(IQPainter p, IQPointF pos, int32 cursorPosition, int32 width)
	{
		this.handle.DrawCursor2(p, pos, cursorPosition, width);
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void SetPosition(IQPointF p)
	{
		this.handle.SetPosition(p);
	}
	
	public void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public double MinimumWidth()
	{
		return this.handle.MinimumWidth();
	}
	
	public double MaximumWidth()
	{
		return this.handle.MaximumWidth();
	}
	
	public void[] GlyphRuns()
	{
		return this.handle.GlyphRuns();
	}
	
	public void SetFlags(int32 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int32 NextCursorPosition2(int32 oldPos, int64 mode)
	{
		return this.handle.NextCursorPosition2(oldPos, mode);
	}
	
	public int32 PreviousCursorPosition2(int32 oldPos, int64 mode)
	{
		return this.handle.PreviousCursorPosition2(oldPos, mode);
	}
	
	public void Draw3(IQPainter p, IQPointF pos, QTextLayout__FormatRangePtr[] selections)
	{
		this.handle.Draw3(p, pos, null);
	}
	
	public void Draw4(IQPainter p, IQPointF pos, QTextLayout__FormatRangePtr[] selections, IQRectF clip)
	{
		this.handle.Draw4(p, pos, null, clip);
	}
	
	public void[] GlyphRuns1(int32 from)
	{
		return this.handle.GlyphRuns1(from);
	}
	
	public void[] GlyphRuns2(int32 from, int32 length)
	{
		return this.handle.GlyphRuns2(from, length);
	}
	
}
extension CQt
{
	[LinkName("QTextLayout_new")]
	public static extern void* QTextLayout_new();
	[LinkName("QTextLayout_new2")]
	public static extern void* QTextLayout_new2(libqt_string text);
	[LinkName("QTextLayout_new3")]
	public static extern void* QTextLayout_new3(libqt_string text, void* font);
	[LinkName("QTextLayout_new4")]
	public static extern void* QTextLayout_new4(void* b);
	[LinkName("QTextLayout_new5")]
	public static extern void* QTextLayout_new5(libqt_string text, void* font, void* paintdevice);
	[LinkName("QTextLayout_SetFont")]
	public static extern void QTextLayout_SetFont(void* c_this, void* f);
	[LinkName("QTextLayout_Font")]
	public static extern void QTextLayout_Font(void* c_this);
	[LinkName("QTextLayout_SetRawFont")]
	public static extern void QTextLayout_SetRawFont(void* c_this, void* rawFont);
	[LinkName("QTextLayout_SetText")]
	public static extern void QTextLayout_SetText(void* c_this, libqt_string stringVal);
	[LinkName("QTextLayout_Text")]
	public static extern libqt_string QTextLayout_Text(void* c_this);
	[LinkName("QTextLayout_SetTextOption")]
	public static extern void QTextLayout_SetTextOption(void* c_this, void* option);
	[LinkName("QTextLayout_TextOption")]
	public static extern void* QTextLayout_TextOption(void* c_this);
	[LinkName("QTextLayout_SetPreeditArea")]
	public static extern void QTextLayout_SetPreeditArea(void* c_this, int32 position, libqt_string text);
	[LinkName("QTextLayout_PreeditAreaPosition")]
	public static extern int32 QTextLayout_PreeditAreaPosition(void* c_this);
	[LinkName("QTextLayout_PreeditAreaText")]
	public static extern libqt_string QTextLayout_PreeditAreaText(void* c_this);
	[LinkName("QTextLayout_SetFormats")]
	public static extern void QTextLayout_SetFormats(void* c_this, void[] overrides);
	[LinkName("QTextLayout_Formats")]
	public static extern void[] QTextLayout_Formats(void* c_this);
	[LinkName("QTextLayout_ClearFormats")]
	public static extern void QTextLayout_ClearFormats(void* c_this);
	[LinkName("QTextLayout_SetCacheEnabled")]
	public static extern void QTextLayout_SetCacheEnabled(void* c_this, bool enable);
	[LinkName("QTextLayout_CacheEnabled")]
	public static extern bool QTextLayout_CacheEnabled(void* c_this);
	[LinkName("QTextLayout_SetCursorMoveStyle")]
	public static extern void QTextLayout_SetCursorMoveStyle(void* c_this, int64 style);
	[LinkName("QTextLayout_CursorMoveStyle")]
	public static extern int64 QTextLayout_CursorMoveStyle(void* c_this);
	[LinkName("QTextLayout_BeginLayout")]
	public static extern void QTextLayout_BeginLayout(void* c_this);
	[LinkName("QTextLayout_EndLayout")]
	public static extern void QTextLayout_EndLayout(void* c_this);
	[LinkName("QTextLayout_ClearLayout")]
	public static extern void QTextLayout_ClearLayout(void* c_this);
	[LinkName("QTextLayout_CreateLine")]
	public static extern void QTextLayout_CreateLine(void* c_this);
	[LinkName("QTextLayout_LineCount")]
	public static extern int32 QTextLayout_LineCount(void* c_this);
	[LinkName("QTextLayout_LineAt")]
	public static extern void QTextLayout_LineAt(void* c_this, int32 i);
	[LinkName("QTextLayout_LineForTextPosition")]
	public static extern void QTextLayout_LineForTextPosition(void* c_this, int32 pos);
	[LinkName("QTextLayout_IsValidCursorPosition")]
	public static extern bool QTextLayout_IsValidCursorPosition(void* c_this, int32 pos);
	[LinkName("QTextLayout_NextCursorPosition")]
	public static extern int32 QTextLayout_NextCursorPosition(void* c_this, int32 oldPos);
	[LinkName("QTextLayout_PreviousCursorPosition")]
	public static extern int32 QTextLayout_PreviousCursorPosition(void* c_this, int32 oldPos);
	[LinkName("QTextLayout_LeftCursorPosition")]
	public static extern int32 QTextLayout_LeftCursorPosition(void* c_this, int32 oldPos);
	[LinkName("QTextLayout_RightCursorPosition")]
	public static extern int32 QTextLayout_RightCursorPosition(void* c_this, int32 oldPos);
	[LinkName("QTextLayout_Draw")]
	public static extern void QTextLayout_Draw(void* c_this, void* p, void* pos);
	[LinkName("QTextLayout_DrawCursor")]
	public static extern void QTextLayout_DrawCursor(void* c_this, void* p, void* pos, int32 cursorPosition);
	[LinkName("QTextLayout_DrawCursor2")]
	public static extern void QTextLayout_DrawCursor2(void* c_this, void* p, void* pos, int32 cursorPosition, int32 width);
	[LinkName("QTextLayout_Position")]
	public static extern void QTextLayout_Position(void* c_this);
	[LinkName("QTextLayout_SetPosition")]
	public static extern void QTextLayout_SetPosition(void* c_this, void* p);
	[LinkName("QTextLayout_BoundingRect")]
	public static extern void QTextLayout_BoundingRect(void* c_this);
	[LinkName("QTextLayout_MinimumWidth")]
	public static extern double QTextLayout_MinimumWidth(void* c_this);
	[LinkName("QTextLayout_MaximumWidth")]
	public static extern double QTextLayout_MaximumWidth(void* c_this);
	[LinkName("QTextLayout_GlyphRuns")]
	public static extern void[] QTextLayout_GlyphRuns(void* c_this);
	[LinkName("QTextLayout_SetFlags")]
	public static extern void QTextLayout_SetFlags(void* c_this, int32 flags);
	[LinkName("QTextLayout_NextCursorPosition2")]
	public static extern int32 QTextLayout_NextCursorPosition2(void* c_this, int32 oldPos, int64 mode);
	[LinkName("QTextLayout_PreviousCursorPosition2")]
	public static extern int32 QTextLayout_PreviousCursorPosition2(void* c_this, int32 oldPos, int64 mode);
	[LinkName("QTextLayout_Draw3")]
	public static extern void QTextLayout_Draw3(void* c_this, void* p, void* pos, void[] selections);
	[LinkName("QTextLayout_Draw4")]
	public static extern void QTextLayout_Draw4(void* c_this, void* p, void* pos, void[] selections, void* clip);
	[LinkName("QTextLayout_GlyphRuns1")]
	public static extern void[] QTextLayout_GlyphRuns1(void* c_this, int32 from);
	[LinkName("QTextLayout_GlyphRuns2")]
	public static extern void[] QTextLayout_GlyphRuns2(void* c_this, int32 from, int32 length);
	/// Delete this object from C++ memory
	[LinkName("QTextLayout_Delete")]
	public static extern void QTextLayout_Delete(void* self);
}
public interface IQTextLine
{
	void* NativePtr { get; }
}
public struct QTextLinePtr : IQTextLine, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQTextLine other)
	{
		return .(CQt.QTextLine_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTextLine_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextLine_IsValid(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QTextLine_Rect(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QTextLine_X(this.nativePtr);
	}
	
	public double Y()
	{
		return CQt.QTextLine_Y(this.nativePtr);
	}
	
	public double Width()
	{
		return CQt.QTextLine_Width(this.nativePtr);
	}
	
	public double Ascent()
	{
		return CQt.QTextLine_Ascent(this.nativePtr);
	}
	
	public double Descent()
	{
		return CQt.QTextLine_Descent(this.nativePtr);
	}
	
	public double Height()
	{
		return CQt.QTextLine_Height(this.nativePtr);
	}
	
	public double Leading()
	{
		return CQt.QTextLine_Leading(this.nativePtr);
	}
	
	public void SetLeadingIncluded(bool included)
	{
		CQt.QTextLine_SetLeadingIncluded(this.nativePtr, included);
	}
	
	public bool LeadingIncluded()
	{
		return CQt.QTextLine_LeadingIncluded(this.nativePtr);
	}
	
	public double NaturalTextWidth()
	{
		return CQt.QTextLine_NaturalTextWidth(this.nativePtr);
	}
	
	public double HorizontalAdvance()
	{
		return CQt.QTextLine_HorizontalAdvance(this.nativePtr);
	}
	
	public void NaturalTextRect()
	{
		CQt.QTextLine_NaturalTextRect(this.nativePtr);
	}
	
	public double CursorToX(int32* cursorPos)
	{
		return CQt.QTextLine_CursorToX(this.nativePtr, cursorPos);
	}
	
	public double CursorToXWithCursorPos(int32 cursorPos)
	{
		return CQt.QTextLine_CursorToXWithCursorPos(this.nativePtr, cursorPos);
	}
	
	public int32 XToCursor(double x)
	{
		return CQt.QTextLine_XToCursor(this.nativePtr, x);
	}
	
	public void SetLineWidth(double width)
	{
		CQt.QTextLine_SetLineWidth(this.nativePtr, width);
	}
	
	public void SetNumColumns(int32 columns)
	{
		CQt.QTextLine_SetNumColumns(this.nativePtr, columns);
	}
	
	public void SetNumColumns2(int32 columns, double alignmentWidth)
	{
		CQt.QTextLine_SetNumColumns2(this.nativePtr, columns, alignmentWidth);
	}
	
	public void SetPosition(IQPointF pos)
	{
		CQt.QTextLine_SetPosition(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void Position()
	{
		CQt.QTextLine_Position(this.nativePtr);
	}
	
	public int32 TextStart()
	{
		return CQt.QTextLine_TextStart(this.nativePtr);
	}
	
	public int32 TextLength()
	{
		return CQt.QTextLine_TextLength(this.nativePtr);
	}
	
	public int32 LineNumber()
	{
		return CQt.QTextLine_LineNumber(this.nativePtr);
	}
	
	public void Draw(IQPainter painter, IQPointF position)
	{
		CQt.QTextLine_Draw(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (position == default || position.NativePtr == default) ? default : position.NativePtr);
	}
	
	public void[] GlyphRuns()
	{
		return CQt.QTextLine_GlyphRuns(this.nativePtr);
	}
	
	public double CursorToX2(int32* cursorPos, int64 edge)
	{
		return CQt.QTextLine_CursorToX2(this.nativePtr, cursorPos, (int64)edge);
	}
	
	public double CursorToX22(int32 cursorPos, int64 edge)
	{
		return CQt.QTextLine_CursorToX22(this.nativePtr, cursorPos, (int64)edge);
	}
	
	public int32 XToCursor2(double x, int64 param2)
	{
		return CQt.QTextLine_XToCursor2(this.nativePtr, x, (int64)param2);
	}
	
	public void[] GlyphRuns1(int32 from)
	{
		return CQt.QTextLine_GlyphRuns1(this.nativePtr, from);
	}
	
	public void[] GlyphRuns2(int32 from, int32 length)
	{
		return CQt.QTextLine_GlyphRuns2(this.nativePtr, from, length);
	}
	
}
public class QTextLine
{
	public QTextLinePtr handle;
	
	public static implicit operator QTextLinePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQTextLine other)
	{
		this.handle = QTextLinePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public void Rect()
	{
		this.handle.Rect();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public double Width()
	{
		return this.handle.Width();
	}
	
	public double Ascent()
	{
		return this.handle.Ascent();
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
	
	public void SetLeadingIncluded(bool included)
	{
		this.handle.SetLeadingIncluded(included);
	}
	
	public bool LeadingIncluded()
	{
		return this.handle.LeadingIncluded();
	}
	
	public double NaturalTextWidth()
	{
		return this.handle.NaturalTextWidth();
	}
	
	public double HorizontalAdvance()
	{
		return this.handle.HorizontalAdvance();
	}
	
	public void NaturalTextRect()
	{
		this.handle.NaturalTextRect();
	}
	
	public double CursorToX(int32* cursorPos)
	{
		return this.handle.CursorToX(cursorPos);
	}
	
	public double CursorToXWithCursorPos(int32 cursorPos)
	{
		return this.handle.CursorToXWithCursorPos(cursorPos);
	}
	
	public int32 XToCursor(double x)
	{
		return this.handle.XToCursor(x);
	}
	
	public void SetLineWidth(double width)
	{
		this.handle.SetLineWidth(width);
	}
	
	public void SetNumColumns(int32 columns)
	{
		this.handle.SetNumColumns(columns);
	}
	
	public void SetNumColumns2(int32 columns, double alignmentWidth)
	{
		this.handle.SetNumColumns2(columns, alignmentWidth);
	}
	
	public void SetPosition(IQPointF pos)
	{
		this.handle.SetPosition(pos);
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public int32 TextStart()
	{
		return this.handle.TextStart();
	}
	
	public int32 TextLength()
	{
		return this.handle.TextLength();
	}
	
	public int32 LineNumber()
	{
		return this.handle.LineNumber();
	}
	
	public void Draw(IQPainter painter, IQPointF position)
	{
		this.handle.Draw(painter, position);
	}
	
	public void[] GlyphRuns()
	{
		return this.handle.GlyphRuns();
	}
	
	public double CursorToX2(int32* cursorPos, int64 edge)
	{
		return this.handle.CursorToX2(cursorPos, edge);
	}
	
	public double CursorToX22(int32 cursorPos, int64 edge)
	{
		return this.handle.CursorToX22(cursorPos, edge);
	}
	
	public int32 XToCursor2(double x, int64 param2)
	{
		return this.handle.XToCursor2(x, param2);
	}
	
	public void[] GlyphRuns1(int32 from)
	{
		return this.handle.GlyphRuns1(from);
	}
	
	public void[] GlyphRuns2(int32 from, int32 length)
	{
		return this.handle.GlyphRuns2(from, length);
	}
	
}
extension CQt
{
	[LinkName("QTextLine_new")]
	public static extern void* QTextLine_new(void* other);
	[LinkName("QTextLine_new2")]
	public static extern void* QTextLine_new2(void* other);
	[LinkName("QTextLine_new3")]
	public static extern void* QTextLine_new3();
	[LinkName("QTextLine_IsValid")]
	public static extern bool QTextLine_IsValid(void* c_this);
	[LinkName("QTextLine_Rect")]
	public static extern void QTextLine_Rect(void* c_this);
	[LinkName("QTextLine_X")]
	public static extern double QTextLine_X(void* c_this);
	[LinkName("QTextLine_Y")]
	public static extern double QTextLine_Y(void* c_this);
	[LinkName("QTextLine_Width")]
	public static extern double QTextLine_Width(void* c_this);
	[LinkName("QTextLine_Ascent")]
	public static extern double QTextLine_Ascent(void* c_this);
	[LinkName("QTextLine_Descent")]
	public static extern double QTextLine_Descent(void* c_this);
	[LinkName("QTextLine_Height")]
	public static extern double QTextLine_Height(void* c_this);
	[LinkName("QTextLine_Leading")]
	public static extern double QTextLine_Leading(void* c_this);
	[LinkName("QTextLine_SetLeadingIncluded")]
	public static extern void QTextLine_SetLeadingIncluded(void* c_this, bool included);
	[LinkName("QTextLine_LeadingIncluded")]
	public static extern bool QTextLine_LeadingIncluded(void* c_this);
	[LinkName("QTextLine_NaturalTextWidth")]
	public static extern double QTextLine_NaturalTextWidth(void* c_this);
	[LinkName("QTextLine_HorizontalAdvance")]
	public static extern double QTextLine_HorizontalAdvance(void* c_this);
	[LinkName("QTextLine_NaturalTextRect")]
	public static extern void QTextLine_NaturalTextRect(void* c_this);
	[LinkName("QTextLine_CursorToX")]
	public static extern double QTextLine_CursorToX(void* c_this, int32* cursorPos);
	[LinkName("QTextLine_CursorToXWithCursorPos")]
	public static extern double QTextLine_CursorToXWithCursorPos(void* c_this, int32 cursorPos);
	[LinkName("QTextLine_XToCursor")]
	public static extern int32 QTextLine_XToCursor(void* c_this, double x);
	[LinkName("QTextLine_SetLineWidth")]
	public static extern void QTextLine_SetLineWidth(void* c_this, double width);
	[LinkName("QTextLine_SetNumColumns")]
	public static extern void QTextLine_SetNumColumns(void* c_this, int32 columns);
	[LinkName("QTextLine_SetNumColumns2")]
	public static extern void QTextLine_SetNumColumns2(void* c_this, int32 columns, double alignmentWidth);
	[LinkName("QTextLine_SetPosition")]
	public static extern void QTextLine_SetPosition(void* c_this, void* pos);
	[LinkName("QTextLine_Position")]
	public static extern void QTextLine_Position(void* c_this);
	[LinkName("QTextLine_TextStart")]
	public static extern int32 QTextLine_TextStart(void* c_this);
	[LinkName("QTextLine_TextLength")]
	public static extern int32 QTextLine_TextLength(void* c_this);
	[LinkName("QTextLine_LineNumber")]
	public static extern int32 QTextLine_LineNumber(void* c_this);
	[LinkName("QTextLine_Draw")]
	public static extern void QTextLine_Draw(void* c_this, void* painter, void* position);
	[LinkName("QTextLine_GlyphRuns")]
	public static extern void[] QTextLine_GlyphRuns(void* c_this);
	[LinkName("QTextLine_CursorToX2")]
	public static extern double QTextLine_CursorToX2(void* c_this, int32* cursorPos, int64 edge);
	[LinkName("QTextLine_CursorToX22")]
	public static extern double QTextLine_CursorToX22(void* c_this, int32 cursorPos, int64 edge);
	[LinkName("QTextLine_XToCursor2")]
	public static extern int32 QTextLine_XToCursor2(void* c_this, double x, int64 param2);
	[LinkName("QTextLine_GlyphRuns1")]
	public static extern void[] QTextLine_GlyphRuns1(void* c_this, int32 from);
	[LinkName("QTextLine_GlyphRuns2")]
	public static extern void[] QTextLine_GlyphRuns2(void* c_this, int32 from, int32 length);
	/// Delete this object from C++ memory
	[LinkName("QTextLine_Delete")]
	public static extern void QTextLine_Delete(void* self);
}
public interface IQTextLayout__FormatRange
{
	void* NativePtr { get; }
}
public struct QTextLayout__FormatRangePtr : IQTextLayout__FormatRange, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QTextLayout__FormatRangePtr param1)
	{
		return .(CQt.QTextLayout__FormatRange_new((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTextLayout__FormatRange_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QTextLayout__FormatRangePtr param1)
	{
		CQt.QTextLayout__FormatRange_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QTextLayout__FormatRange
{
	public QTextLayout__FormatRangePtr handle;
	
	public static implicit operator QTextLayout__FormatRangePtr(Self self)
	{
		return self.handle;
	}
	
	public this(QTextLayout__FormatRangePtr param1)
	{
		this.handle = QTextLayout__FormatRangePtr.New(param1);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QTextLayout__FormatRangePtr param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
}
extension CQt
{
	[LinkName("QTextLayout__FormatRange_new")]
	public static extern void* QTextLayout__FormatRange_new(void* param1);
	[LinkName("QTextLayout__FormatRange_OperatorAssign")]
	public static extern void QTextLayout__FormatRange_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QTextLayout__FormatRange_Delete")]
	public static extern void QTextLayout__FormatRange_Delete(void* self);
}