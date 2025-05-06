using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QRubberBand__Shape
{
	Line = 0,
	Rectangle = 1,
}
public struct QRubberBand : QWidget
{
	[LinkName("QRubberBand_new")]
	public static extern QRubberBand* QRubberBand_new(int64 param1);
	[LinkName("QRubberBand_new2")]
	public static extern QRubberBand* QRubberBand_new2(int64 param1, QWidget* param2);
	[LinkName("QRubberBand_MetaObject")]
	public static extern QMetaObject* QRubberBand_MetaObject(Self* c_this);
	[LinkName("QRubberBand_Metacast")]
	public static extern void* QRubberBand_Metacast(Self* c_this, char8[] param1);
	[LinkName("QRubberBand_Metacall")]
	public static extern int32 QRubberBand_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QRubberBand_Tr")]
	public static extern libqt_string QRubberBand_Tr(char8[] s);
	[LinkName("QRubberBand_Shape")]
	public static extern int64 QRubberBand_Shape(Self* c_this);
	[LinkName("QRubberBand_SetGeometry")]
	public static extern void QRubberBand_SetGeometry(Self* c_this, QRect* r);
	[LinkName("QRubberBand_SetGeometry2")]
	public static extern void QRubberBand_SetGeometry2(Self* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QRubberBand_Move")]
	public static extern void QRubberBand_Move(Self* c_this, int32 x, int32 y);
	[LinkName("QRubberBand_MoveWithQPoint")]
	public static extern void QRubberBand_MoveWithQPoint(Self* c_this, QPoint* p);
	[LinkName("QRubberBand_Resize")]
	public static extern void QRubberBand_Resize(Self* c_this, int32 w, int32 h);
	[LinkName("QRubberBand_ResizeWithQSize")]
	public static extern void QRubberBand_ResizeWithQSize(Self* c_this, QSize* s);
	[LinkName("QRubberBand_Event")]
	public static extern bool QRubberBand_Event(Self* c_this, QEvent* e);
	[LinkName("QRubberBand_PaintEvent")]
	public static extern void QRubberBand_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QRubberBand_ChangeEvent")]
	public static extern void QRubberBand_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QRubberBand_ShowEvent")]
	public static extern void QRubberBand_ShowEvent(Self* c_this, QShowEvent* param1);
	[LinkName("QRubberBand_ResizeEvent")]
	public static extern void QRubberBand_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QRubberBand_MoveEvent")]
	public static extern void QRubberBand_MoveEvent(Self* c_this, QMoveEvent* param1);
	[LinkName("QRubberBand_InitStyleOption")]
	public static extern void QRubberBand_InitStyleOption(Self* c_this, QStyleOptionRubberBand* option);
	[LinkName("QRubberBand_Tr2")]
	public static extern libqt_string QRubberBand_Tr2(char8[] s, char8[] c);
	[LinkName("QRubberBand_Tr3")]
	public static extern libqt_string QRubberBand_Tr3(char8[] s, char8[] c, int32 n);
}