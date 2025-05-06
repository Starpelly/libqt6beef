using System;
using System.Interop;
namespace Qt;

public struct QCursor
{
	[LinkName("QCursor_new")]
	public static extern QCursor* QCursor_new();
	[LinkName("QCursor_new2")]
	public static extern QCursor* QCursor_new2(int64 shape);
	[LinkName("QCursor_new3")]
	public static extern QCursor* QCursor_new3(QBitmap* bitmap, QBitmap* mask);
	[LinkName("QCursor_new4")]
	public static extern QCursor* QCursor_new4(QPixmap* pixmap);
	[LinkName("QCursor_new5")]
	public static extern QCursor* QCursor_new5(QCursor* cursor);
	[LinkName("QCursor_new6")]
	public static extern QCursor* QCursor_new6(QBitmap* bitmap, QBitmap* mask, int32 hotX);
	[LinkName("QCursor_new7")]
	public static extern QCursor* QCursor_new7(QBitmap* bitmap, QBitmap* mask, int32 hotX, int32 hotY);
	[LinkName("QCursor_new8")]
	public static extern QCursor* QCursor_new8(QPixmap* pixmap, int32 hotX);
	[LinkName("QCursor_new9")]
	public static extern QCursor* QCursor_new9(QPixmap* pixmap, int32 hotX, int32 hotY);
	[LinkName("QCursor_OperatorAssign")]
	public static extern void QCursor_OperatorAssign(Self* c_this, QCursor* cursor);
	[LinkName("QCursor_Swap")]
	public static extern void QCursor_Swap(Self* c_this, QCursor* other);
	[LinkName("QCursor_ToQVariant")]
	public static extern QVariant QCursor_ToQVariant(Self* c_this);
	[LinkName("QCursor_Shape")]
	public static extern int64 QCursor_Shape(Self* c_this);
	[LinkName("QCursor_SetShape")]
	public static extern void QCursor_SetShape(Self* c_this, int64 newShape);
	[LinkName("QCursor_Bitmap")]
	public static extern QBitmap QCursor_Bitmap(Self* c_this, int64 param1);
	[LinkName("QCursor_Mask")]
	public static extern QBitmap QCursor_Mask(Self* c_this, int64 param1);
	[LinkName("QCursor_Bitmap2")]
	public static extern QBitmap QCursor_Bitmap2(Self* c_this);
	[LinkName("QCursor_Mask2")]
	public static extern QBitmap QCursor_Mask2(Self* c_this);
	[LinkName("QCursor_Pixmap")]
	public static extern QPixmap QCursor_Pixmap(Self* c_this);
	[LinkName("QCursor_HotSpot")]
	public static extern QPoint QCursor_HotSpot(Self* c_this);
	[LinkName("QCursor_Pos")]
	public static extern QPoint QCursor_Pos();
	[LinkName("QCursor_PosWithScreen")]
	public static extern QPoint QCursor_PosWithScreen(QScreen* screen);
	[LinkName("QCursor_SetPos")]
	public static extern void QCursor_SetPos(int32 x, int32 y);
	[LinkName("QCursor_SetPos2")]
	public static extern void QCursor_SetPos2(QScreen* screen, int32 x, int32 y);
	[LinkName("QCursor_SetPosWithQPoint")]
	public static extern void QCursor_SetPosWithQPoint(QPoint* p);
	[LinkName("QCursor_SetPos3")]
	public static extern void QCursor_SetPos3(QScreen* screen, QPoint* p);
}