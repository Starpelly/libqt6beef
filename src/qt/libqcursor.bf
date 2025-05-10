using System;
using System.Interop;
namespace Qt;

public class QCursor
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCursor_new();
	}
	
	public ~this()
	{
		CQt.QCursor_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* cursor)
	{
		CQt.QCursor_OperatorAssign(this.nativePtr, cursor);
	}
	
	public void Swap(void* other)
	{
		CQt.QCursor_Swap(this.nativePtr, other);
	}
	
	public void ToQVariant()
	{
		CQt.QCursor_ToQVariant(this.nativePtr);
	}
	
	public int64 Shape()
	{
		return CQt.QCursor_Shape(this.nativePtr);
	}
	
	public void SetShape(int64 newShape)
	{
		CQt.QCursor_SetShape(this.nativePtr, newShape);
	}
	
	public void Bitmap(int64 param1)
	{
		CQt.QCursor_Bitmap(this.nativePtr, param1);
	}
	
	public void Mask(int64 param1)
	{
		CQt.QCursor_Mask(this.nativePtr, param1);
	}
	
	public void Bitmap2()
	{
		CQt.QCursor_Bitmap2(this.nativePtr);
	}
	
	public void Mask2()
	{
		CQt.QCursor_Mask2(this.nativePtr);
	}
	
	public void Pixmap()
	{
		CQt.QCursor_Pixmap(this.nativePtr);
	}
	
	public void HotSpot()
	{
		CQt.QCursor_HotSpot(this.nativePtr);
	}
	
	public static void Pos()
	{
		CQt.QCursor_Pos();
	}
	
	public static void PosWithScreen(void* screen)
	{
		CQt.QCursor_PosWithScreen(screen);
	}
	
	public static void SetPos(int32 x, int32 y)
	{
		CQt.QCursor_SetPos(x, y);
	}
	
	public static void SetPos2(void* screen, int32 x, int32 y)
	{
		CQt.QCursor_SetPos2(screen, x, y);
	}
	
	public static void SetPosWithQPoint(void* p)
	{
		CQt.QCursor_SetPosWithQPoint(p);
	}
	
	public static void SetPos3(void* screen, void* p)
	{
		CQt.QCursor_SetPos3(screen, p);
	}
	
}
extension CQt
{
	[LinkName("QCursor_new")]
	public static extern void* QCursor_new();
	[LinkName("QCursor_new2")]
	public static extern void* QCursor_new2(int64 shape);
	[LinkName("QCursor_new3")]
	public static extern void* QCursor_new3(void* bitmap, void* mask);
	[LinkName("QCursor_new4")]
	public static extern void* QCursor_new4(void* pixmap);
	[LinkName("QCursor_new5")]
	public static extern void* QCursor_new5(void* cursor);
	[LinkName("QCursor_new6")]
	public static extern void* QCursor_new6(void* bitmap, void* mask, int32 hotX);
	[LinkName("QCursor_new7")]
	public static extern void* QCursor_new7(void* bitmap, void* mask, int32 hotX, int32 hotY);
	[LinkName("QCursor_new8")]
	public static extern void* QCursor_new8(void* pixmap, int32 hotX);
	[LinkName("QCursor_new9")]
	public static extern void* QCursor_new9(void* pixmap, int32 hotX, int32 hotY);
	[LinkName("QCursor_OperatorAssign")]
	public static extern void QCursor_OperatorAssign(void* c_this, void* cursor);
	[LinkName("QCursor_Swap")]
	public static extern void QCursor_Swap(void* c_this, void* other);
	[LinkName("QCursor_ToQVariant")]
	public static extern void QCursor_ToQVariant(void* c_this);
	[LinkName("QCursor_Shape")]
	public static extern int64 QCursor_Shape(void* c_this);
	[LinkName("QCursor_SetShape")]
	public static extern void QCursor_SetShape(void* c_this, int64 newShape);
	[LinkName("QCursor_Bitmap")]
	public static extern void QCursor_Bitmap(void* c_this, int64 param1);
	[LinkName("QCursor_Mask")]
	public static extern void QCursor_Mask(void* c_this, int64 param1);
	[LinkName("QCursor_Bitmap2")]
	public static extern void QCursor_Bitmap2(void* c_this);
	[LinkName("QCursor_Mask2")]
	public static extern void QCursor_Mask2(void* c_this);
	[LinkName("QCursor_Pixmap")]
	public static extern void QCursor_Pixmap(void* c_this);
	[LinkName("QCursor_HotSpot")]
	public static extern void QCursor_HotSpot(void* c_this);
	[LinkName("QCursor_Pos")]
	public static extern void QCursor_Pos();
	[LinkName("QCursor_PosWithScreen")]
	public static extern void QCursor_PosWithScreen(void* screen);
	[LinkName("QCursor_SetPos")]
	public static extern void QCursor_SetPos(int32 x, int32 y);
	[LinkName("QCursor_SetPos2")]
	public static extern void QCursor_SetPos2(void* screen, int32 x, int32 y);
	[LinkName("QCursor_SetPosWithQPoint")]
	public static extern void QCursor_SetPosWithQPoint(void* p);
	[LinkName("QCursor_SetPos3")]
	public static extern void QCursor_SetPos3(void* screen, void* p);
	/// Delete this object from C++ memory
	[LinkName("QCursor_Delete")]
	public static extern void QCursor_Delete(void* self);
}