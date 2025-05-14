using System;
using System.Interop;
namespace Qt;

public interface IQCursor
{
	void* NativePtr { get; }
}
public struct QCursorPtr : IQCursor, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCursor_new());
	}
	
	public void Dispose()
	{
		CQt.QCursor_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQCursor cursor)
	{
		CQt.QCursor_OperatorAssign(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public void Swap(IQCursor other)
	{
		CQt.QCursor_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
		CQt.QCursor_SetShape(this.nativePtr, (int64)newShape);
	}
	
	public void Bitmap(int64 param1)
	{
		CQt.QCursor_Bitmap(this.nativePtr, (int64)param1);
	}
	
	public void Mask(int64 param1)
	{
		CQt.QCursor_Mask(this.nativePtr, (int64)param1);
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
	
	public static void PosWithScreen(IQScreen screen)
	{
		CQt.QCursor_PosWithScreen((screen == default || screen.NativePtr == default) ? default : screen.NativePtr);
	}
	
	public static void SetPos(int32 x, int32 y)
	{
		CQt.QCursor_SetPos(x, y);
	}
	
	public static void SetPos2(IQScreen screen, int32 x, int32 y)
	{
		CQt.QCursor_SetPos2((screen == default || screen.NativePtr == default) ? default : screen.NativePtr, x, y);
	}
	
	public static void SetPosWithQPoint(IQPoint p)
	{
		CQt.QCursor_SetPosWithQPoint((p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public static void SetPos3(IQScreen screen, IQPoint p)
	{
		CQt.QCursor_SetPos3((screen == default || screen.NativePtr == default) ? default : screen.NativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
}
public class QCursor
{
	public QCursorPtr handle;
	
	public static implicit operator QCursorPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCursorPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQCursor cursor)
	{
		this.handle.OperatorAssign(cursor);
	}
	
	public void Swap(IQCursor other)
	{
		this.handle.Swap(other);
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public int64 Shape()
	{
		return this.handle.Shape();
	}
	
	public void SetShape(int64 newShape)
	{
		this.handle.SetShape(newShape);
	}
	
	public void Bitmap(int64 param1)
	{
		this.handle.Bitmap(param1);
	}
	
	public void Mask(int64 param1)
	{
		this.handle.Mask(param1);
	}
	
	public void Bitmap2()
	{
		this.handle.Bitmap2();
	}
	
	public void Mask2()
	{
		this.handle.Mask2();
	}
	
	public void Pixmap()
	{
		this.handle.Pixmap();
	}
	
	public void HotSpot()
	{
		this.handle.HotSpot();
	}
	
	public static void Pos()
	{
		QCursorPtr.Pos();
	}
	
	public static void PosWithScreen(IQScreen screen)
	{
		QCursorPtr.PosWithScreen(screen);
	}
	
	public static void SetPos(int32 x, int32 y)
	{
		QCursorPtr.SetPos(x, y);
	}
	
	public static void SetPos2(IQScreen screen, int32 x, int32 y)
	{
		QCursorPtr.SetPos2(screen, x, y);
	}
	
	public static void SetPosWithQPoint(IQPoint p)
	{
		QCursorPtr.SetPosWithQPoint(p);
	}
	
	public static void SetPos3(IQScreen screen, IQPoint p)
	{
		QCursorPtr.SetPos3(screen, p);
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