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
public class QGlyphRun
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGlyphRun_new();
	}
	
	public ~this()
	{
		CQt.QGlyphRun_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QGlyphRun_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QGlyphRun_Swap(this.nativePtr, other);
	}
	
	public void RawFont()
	{
		CQt.QGlyphRun_RawFont(this.nativePtr);
	}
	
	public void SetRawFont(void* rawFont)
	{
		CQt.QGlyphRun_SetRawFont(this.nativePtr, rawFont);
	}
	
	public void SetRawData(uint32* glyphIndexArray, void* glyphPositionArray, int32 size)
	{
		CQt.QGlyphRun_SetRawData(this.nativePtr, glyphIndexArray, glyphPositionArray, size);
	}
	
	public uint32[] GlyphIndexes()
	{
		return CQt.QGlyphRun_GlyphIndexes(this.nativePtr);
	}
	
	public void SetGlyphIndexes(uint32[] glyphIndexes)
	{
		CQt.QGlyphRun_SetGlyphIndexes(this.nativePtr, glyphIndexes);
	}
	
	public void[] Positions()
	{
		return CQt.QGlyphRun_Positions(this.nativePtr);
	}
	
	public void SetPositions(void[] positions)
	{
		CQt.QGlyphRun_SetPositions(this.nativePtr, positions);
	}
	
	public void Clear()
	{
		CQt.QGlyphRun_Clear(this.nativePtr);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QGlyphRun_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QGlyphRun_OperatorNotEqual(this.nativePtr, other);
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
		CQt.QGlyphRun_SetFlag(this.nativePtr, flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGlyphRun_SetFlags(this.nativePtr, flags);
	}
	
	public int64 Flags()
	{
		return CQt.QGlyphRun_Flags(this.nativePtr);
	}
	
	public void SetBoundingRect(void* boundingRect)
	{
		CQt.QGlyphRun_SetBoundingRect(this.nativePtr, boundingRect);
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
		CQt.QGlyphRun_SetFlag2(this.nativePtr, flag, enabled);
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