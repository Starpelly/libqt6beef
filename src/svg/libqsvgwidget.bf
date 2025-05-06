using System;
using System.Interop;
namespace Qt;

public struct QSvgWidget
{
	[LinkName("QSvgWidget_new")]
	public static extern void* QSvgWidget_new(QWidget parent);
	[LinkName("QSvgWidget_new2")]
	public static extern void* QSvgWidget_new2();
	[LinkName("QSvgWidget_new3")]
	public static extern void* QSvgWidget_new3(char8[] file);
	[LinkName("QSvgWidget_new4")]
	public static extern void* QSvgWidget_new4(char8[] file, QWidget parent);
	[LinkName("QSvgWidget_MetaObject")]
	public static extern QMetaObject QSvgWidget_MetaObject(void* c_this);
	[LinkName("QSvgWidget_Metacast")]
	public static extern void QSvgWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QSvgWidget_Metacall")]
	public static extern int32 QSvgWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSvgWidget_Tr")]
	public static extern char8[] QSvgWidget_Tr(char8[] s);
	[LinkName("QSvgWidget_Renderer")]
	public static extern QSvgRenderer QSvgWidget_Renderer(void* c_this);
	[LinkName("QSvgWidget_SizeHint")]
	public static extern QSize QSvgWidget_SizeHint(void* c_this);
	[LinkName("QSvgWidget_Load")]
	public static extern void QSvgWidget_Load(void* c_this, char8[] file);
	[LinkName("QSvgWidget_LoadWithContents")]
	public static extern void QSvgWidget_LoadWithContents(void* c_this, uint8[] contents);
	[LinkName("QSvgWidget_PaintEvent")]
	public static extern void QSvgWidget_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QSvgWidget_Tr2")]
	public static extern char8[] QSvgWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QSvgWidget_Tr3")]
	public static extern char8[] QSvgWidget_Tr3(char8[] s, char8[] c, int32 n);
}