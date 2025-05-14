using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGlyphRun__GlyphRunFlag
{
	Overline = 1,
	Underline = 2,
	StrikeOut = 4,
	RightToLeft = 8,
	SplitLigature = 16,
}
public interface IQGlyphRun
{
	void* NativePtr { get; }
}
public struct QGlyphRunPtr : IQGlyphRun, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGlyphRun_new());
	}
	
	public void Dispose()
	{
		CQt.QGlyphRun_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQGlyphRun other)
	{
		CQt.QGlyphRun_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQGlyphRun other)
	{
		CQt.QGlyphRun_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void RawFont()
	{
		CQt.QGlyphRun_RawFont(this.nativePtr);
	}
	
	public void SetRawFont(IQRawFont rawFont)
	{
		CQt.QGlyphRun_SetRawFont(this.nativePtr, (rawFont == default || rawFont.NativePtr == default) ? default : rawFont.NativePtr);
	}
	
	public void SetRawData(uint32* glyphIndexArray, IQPointF glyphPositionArray, int32 size)
	{
		CQt.QGlyphRun_SetRawData(this.nativePtr, glyphIndexArray, (glyphPositionArray == default || glyphPositionArray.NativePtr == default) ? default : glyphPositionArray.NativePtr, size);
	}
	
	public uint32[] GlyphIndexes()
	{
		return CQt.QGlyphRun_GlyphIndexes(this.nativePtr);
	}
	
	public void SetGlyphIndexes(uint32[] glyphIndexes)
	{
		CQt.QGlyphRun_SetGlyphIndexes(this.nativePtr, null);
	}
	
	public void[] Positions()
	{
		return CQt.QGlyphRun_Positions(this.nativePtr);
	}
	
	public void SetPositions(IQPointF[] positions)
	{
		CQt.QGlyphRun_SetPositions(this.nativePtr, null);
	}
	
	public void Clear()
	{
		CQt.QGlyphRun_Clear(this.nativePtr);
	}
	
	public bool OperatorEqual(IQGlyphRun other)
	{
		return CQt.QGlyphRun_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQGlyphRun other)
	{
		return CQt.QGlyphRun_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetOverline(bool overline)
	{
		CQt.QGlyphRun_SetOverline(this.nativePtr, overline);
	}
	
	public bool Overline()
	{
		return CQt.QGlyphRun_Overline(this.nativePtr);
	}
	
	public void SetUnderline(bool underline)
	{
		CQt.QGlyphRun_SetUnderline(this.nativePtr, underline);
	}
	
	public bool Underline()
	{
		return CQt.QGlyphRun_Underline(this.nativePtr);
	}
	
	public void SetStrikeOut(bool strikeOut)
	{
		CQt.QGlyphRun_SetStrikeOut(this.nativePtr, strikeOut);
	}
	
	public bool StrikeOut()
	{
		return CQt.QGlyphRun_StrikeOut(this.nativePtr);
	}
	
	public void SetRightToLeft(bool on)
	{
		CQt.QGlyphRun_SetRightToLeft(this.nativePtr, on);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QGlyphRun_IsRightToLeft(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGlyphRun_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGlyphRun_SetFlags(this.nativePtr, flags);
	}
	
	public int64 Flags()
	{
		return CQt.QGlyphRun_Flags(this.nativePtr);
	}
	
	public void SetBoundingRect(IQRectF boundingRect)
	{
		CQt.QGlyphRun_SetBoundingRect(this.nativePtr, (boundingRect == default || boundingRect.NativePtr == default) ? default : boundingRect.NativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGlyphRun_BoundingRect(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QGlyphRun_IsEmpty(this.nativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGlyphRun_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
}
public class QGlyphRun
{
	public QGlyphRunPtr handle;
	
	public static implicit operator QGlyphRunPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGlyphRunPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQGlyphRun other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQGlyphRun other)
	{
		this.handle.Swap(other);
	}
	
	public void RawFont()
	{
		this.handle.RawFont();
	}
	
	public void SetRawFont(IQRawFont rawFont)
	{
		this.handle.SetRawFont(rawFont);
	}
	
	public void SetRawData(uint32* glyphIndexArray, IQPointF glyphPositionArray, int32 size)
	{
		this.handle.SetRawData(glyphIndexArray, glyphPositionArray, size);
	}
	
	public uint32[] GlyphIndexes()
	{
		return this.handle.GlyphIndexes();
	}
	
	public void SetGlyphIndexes(uint32[] glyphIndexes)
	{
		this.handle.SetGlyphIndexes(null);
	}
	
	public void[] Positions()
	{
		return this.handle.Positions();
	}
	
	public void SetPositions(IQPointF[] positions)
	{
		this.handle.SetPositions(null);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public bool OperatorEqual(IQGlyphRun other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQGlyphRun other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public void SetOverline(bool overline)
	{
		this.handle.SetOverline(overline);
	}
	
	public bool Overline()
	{
		return this.handle.Overline();
	}
	
	public void SetUnderline(bool underline)
	{
		this.handle.SetUnderline(underline);
	}
	
	public bool Underline()
	{
		return this.handle.Underline();
	}
	
	public void SetStrikeOut(bool strikeOut)
	{
		this.handle.SetStrikeOut(strikeOut);
	}
	
	public bool StrikeOut()
	{
		return this.handle.StrikeOut();
	}
	
	public void SetRightToLeft(bool on)
	{
		this.handle.SetRightToLeft(on);
	}
	
	public bool IsRightToLeft()
	{
		return this.handle.IsRightToLeft();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetBoundingRect(IQRectF boundingRect)
	{
		this.handle.SetBoundingRect(boundingRect);
	}
	
	public void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
}
extension CQt
{
	[LinkName("QGlyphRun_new")]
	public static extern void* QGlyphRun_new();
	[LinkName("QGlyphRun_new2")]
	public static extern void* QGlyphRun_new2(void* other);
	[LinkName("QGlyphRun_OperatorAssign")]
	public static extern void QGlyphRun_OperatorAssign(void* c_this, void* other);
	[LinkName("QGlyphRun_Swap")]
	public static extern void QGlyphRun_Swap(void* c_this, void* other);
	[LinkName("QGlyphRun_RawFont")]
	public static extern void QGlyphRun_RawFont(void* c_this);
	[LinkName("QGlyphRun_SetRawFont")]
	public static extern void QGlyphRun_SetRawFont(void* c_this, void* rawFont);
	[LinkName("QGlyphRun_SetRawData")]
	public static extern void QGlyphRun_SetRawData(void* c_this, uint32* glyphIndexArray, void* glyphPositionArray, int32 size);
	[LinkName("QGlyphRun_GlyphIndexes")]
	public static extern uint32[] QGlyphRun_GlyphIndexes(void* c_this);
	[LinkName("QGlyphRun_SetGlyphIndexes")]
	public static extern void QGlyphRun_SetGlyphIndexes(void* c_this, uint32[] glyphIndexes);
	[LinkName("QGlyphRun_Positions")]
	public static extern void[] QGlyphRun_Positions(void* c_this);
	[LinkName("QGlyphRun_SetPositions")]
	public static extern void QGlyphRun_SetPositions(void* c_this, void[] positions);
	[LinkName("QGlyphRun_Clear")]
	public static extern void QGlyphRun_Clear(void* c_this);
	[LinkName("QGlyphRun_OperatorEqual")]
	public static extern bool QGlyphRun_OperatorEqual(void* c_this, void* other);
	[LinkName("QGlyphRun_OperatorNotEqual")]
	public static extern bool QGlyphRun_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QGlyphRun_SetOverline")]
	public static extern void QGlyphRun_SetOverline(void* c_this, bool overline);
	[LinkName("QGlyphRun_Overline")]
	public static extern bool QGlyphRun_Overline(void* c_this);
	[LinkName("QGlyphRun_SetUnderline")]
	public static extern void QGlyphRun_SetUnderline(void* c_this, bool underline);
	[LinkName("QGlyphRun_Underline")]
	public static extern bool QGlyphRun_Underline(void* c_this);
	[LinkName("QGlyphRun_SetStrikeOut")]
	public static extern void QGlyphRun_SetStrikeOut(void* c_this, bool strikeOut);
	[LinkName("QGlyphRun_StrikeOut")]
	public static extern bool QGlyphRun_StrikeOut(void* c_this);
	[LinkName("QGlyphRun_SetRightToLeft")]
	public static extern void QGlyphRun_SetRightToLeft(void* c_this, bool on);
	[LinkName("QGlyphRun_IsRightToLeft")]
	public static extern bool QGlyphRun_IsRightToLeft(void* c_this);
	[LinkName("QGlyphRun_SetFlag")]
	public static extern void QGlyphRun_SetFlag(void* c_this, int64 flag);
	[LinkName("QGlyphRun_SetFlags")]
	public static extern void QGlyphRun_SetFlags(void* c_this, int64 flags);
	[LinkName("QGlyphRun_Flags")]
	public static extern int64 QGlyphRun_Flags(void* c_this);
	[LinkName("QGlyphRun_SetBoundingRect")]
	public static extern void QGlyphRun_SetBoundingRect(void* c_this, void* boundingRect);
	[LinkName("QGlyphRun_BoundingRect")]
	public static extern void QGlyphRun_BoundingRect(void* c_this);
	[LinkName("QGlyphRun_IsEmpty")]
	public static extern bool QGlyphRun_IsEmpty(void* c_this);
	[LinkName("QGlyphRun_SetFlag2")]
	public static extern void QGlyphRun_SetFlag2(void* c_this, int64 flag, bool enabled);
	/// Delete this object from C++ memory
	[LinkName("QGlyphRun_Delete")]
	public static extern void QGlyphRun_Delete(void* self);
}