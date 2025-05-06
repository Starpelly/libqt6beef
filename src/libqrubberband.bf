using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QRubberBand__Shape
{
	Line = 0,
	Rectangle = 1,
}
public struct QRubberBand
{
	[LinkName("QRubberBand_new")]
	public static extern void* QRubberBand_new(int64 param1);
	[LinkName("QRubberBand_new2")]
	public static extern void* QRubberBand_new2(int64 param1, QWidget param2);
	[LinkName("QRubberBand_MetaObject")]
	public static extern QMetaObject QRubberBand_MetaObject(void* c_this);
	[LinkName("QRubberBand_Metacast")]
	public static extern void QRubberBand_Metacast(void* c_this, char8[] param1);
	[LinkName("QRubberBand_Metacall")]
	public static extern int32 QRubberBand_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QRubberBand_Tr")]
	public static extern char8[] QRubberBand_Tr(char8[] s);
	[LinkName("QRubberBand_Shape")]
	public static extern int64 QRubberBand_Shape(void* c_this);
	[LinkName("QRubberBand_SetGeometry")]
	public static extern void QRubberBand_SetGeometry(void* c_this, QRect r);
	[LinkName("QRubberBand_SetGeometry2")]
	public static extern void QRubberBand_SetGeometry2(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QRubberBand_Move")]
	public static extern void QRubberBand_Move(void* c_this, int32 x, int32 y);
	[LinkName("QRubberBand_MoveWithQPoint")]
	public static extern void QRubberBand_MoveWithQPoint(void* c_this, QPoint p);
	[LinkName("QRubberBand_Resize")]
	public static extern void QRubberBand_Resize(void* c_this, int32 w, int32 h);
	[LinkName("QRubberBand_ResizeWithQSize")]
	public static extern void QRubberBand_ResizeWithQSize(void* c_this, QSize s);
	[LinkName("QRubberBand_Event")]
	public static extern bool QRubberBand_Event(void* c_this, QEvent e);
	[LinkName("QRubberBand_PaintEvent")]
	public static extern void QRubberBand_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QRubberBand_ChangeEvent")]
	public static extern void QRubberBand_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QRubberBand_ShowEvent")]
	public static extern void QRubberBand_ShowEvent(void* c_this, QShowEvent param1);
	[LinkName("QRubberBand_ResizeEvent")]
	public static extern void QRubberBand_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QRubberBand_MoveEvent")]
	public static extern void QRubberBand_MoveEvent(void* c_this, QMoveEvent param1);
	[LinkName("QRubberBand_InitStyleOption")]
	public static extern void QRubberBand_InitStyleOption(void* c_this, QStyleOptionRubberBand option);
	[LinkName("QRubberBand_Tr2")]
	public static extern char8[] QRubberBand_Tr2(char8[] s, char8[] c);
	[LinkName("QRubberBand_Tr3")]
	public static extern char8[] QRubberBand_Tr3(char8[] s, char8[] c, int32 n);
}