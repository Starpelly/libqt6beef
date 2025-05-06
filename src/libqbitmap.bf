using System;
using System.Interop;
namespace Qt;

public struct QBitmap
{
	[LinkName("QBitmap_new")]
	public static extern void* QBitmap_new();
	[LinkName("QBitmap_new2")]
	public static extern void* QBitmap_new2(QPixmap param1);
	[LinkName("QBitmap_new3")]
	public static extern void* QBitmap_new3(int32 w, int32 h);
	[LinkName("QBitmap_new4")]
	public static extern void* QBitmap_new4(QSize param1);
	[LinkName("QBitmap_new5")]
	public static extern void* QBitmap_new5(char8[] fileName);
	[LinkName("QBitmap_new6")]
	public static extern void* QBitmap_new6(QBitmap param1);
	[LinkName("QBitmap_new7")]
	public static extern void* QBitmap_new7(char8[] fileName, char8[] format);
	[LinkName("QBitmap_OperatorAssign")]
	public static extern void QBitmap_OperatorAssign(void* c_this, QPixmap param1);
	[LinkName("QBitmap_Swap")]
	public static extern void QBitmap_Swap(void* c_this, QBitmap other);
	[LinkName("QBitmap_ToQVariant")]
	public static extern QVariant QBitmap_ToQVariant(void* c_this);
	[LinkName("QBitmap_Clear")]
	public static extern void QBitmap_Clear(void* c_this);
	[LinkName("QBitmap_FromImage")]
	public static extern QBitmap QBitmap_FromImage(QImage image);
	[LinkName("QBitmap_FromData")]
	public static extern QBitmap QBitmap_FromData(QSize size, uint8 bits);
	[LinkName("QBitmap_FromPixmap")]
	public static extern QBitmap QBitmap_FromPixmap(QPixmap pixmap);
	[LinkName("QBitmap_Transformed")]
	public static extern QBitmap QBitmap_Transformed(void* c_this, QTransform matrix);
	[LinkName("QBitmap_OperatorAssignWithQBitmap")]
	public static extern void QBitmap_OperatorAssignWithQBitmap(void* c_this, QBitmap param1);
	[LinkName("QBitmap_FromImage2")]
	public static extern QBitmap QBitmap_FromImage2(QImage image, int64 flags);
	[LinkName("QBitmap_FromData3")]
	public static extern QBitmap QBitmap_FromData3(QSize size, uint8 bits, int64 monoFormat);
}