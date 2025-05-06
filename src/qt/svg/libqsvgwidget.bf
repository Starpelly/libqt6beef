using System;
using System.Interop;
namespace Qt;

public struct QSvgWidget : QWidget
{
	[LinkName("QSvgWidget_new")]
	public static extern QSvgWidget* QSvgWidget_new(QWidget* parent);
	[LinkName("QSvgWidget_new2")]
	public static extern QSvgWidget* QSvgWidget_new2();
	[LinkName("QSvgWidget_new3")]
	public static extern QSvgWidget* QSvgWidget_new3(libqt_string file);
	[LinkName("QSvgWidget_new4")]
	public static extern QSvgWidget* QSvgWidget_new4(libqt_string file, QWidget* parent);
	[LinkName("QSvgWidget_MetaObject")]
	public static extern QMetaObject* QSvgWidget_MetaObject(Self* c_this);
	[LinkName("QSvgWidget_Metacast")]
	public static extern void* QSvgWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSvgWidget_Metacall")]
	public static extern int32 QSvgWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSvgWidget_Tr")]
	public static extern libqt_string QSvgWidget_Tr(char8[] s);
	[LinkName("QSvgWidget_Renderer")]
	public static extern QSvgRenderer* QSvgWidget_Renderer(Self* c_this);
	[LinkName("QSvgWidget_SizeHint")]
	public static extern QSize QSvgWidget_SizeHint(Self* c_this);
	[LinkName("QSvgWidget_Load")]
	public static extern void QSvgWidget_Load(Self* c_this, libqt_string file);
	[LinkName("QSvgWidget_LoadWithContents")]
	public static extern void QSvgWidget_LoadWithContents(Self* c_this, libqt_string contents);
	[LinkName("QSvgWidget_PaintEvent")]
	public static extern void QSvgWidget_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QSvgWidget_Tr2")]
	public static extern libqt_string QSvgWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QSvgWidget_Tr3")]
	public static extern libqt_string QSvgWidget_Tr3(char8[] s, char8[] c, int32 n);
}