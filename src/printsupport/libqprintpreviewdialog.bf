using System;
using System.Interop;
namespace Qt;

public struct QPrintPreviewDialog
{
	[LinkName("QPrintPreviewDialog_new")]
	public static extern void* QPrintPreviewDialog_new(QWidget parent);
	[LinkName("QPrintPreviewDialog_new2")]
	public static extern void* QPrintPreviewDialog_new2();
	[LinkName("QPrintPreviewDialog_new3")]
	public static extern void* QPrintPreviewDialog_new3(QPrinter printer);
	[LinkName("QPrintPreviewDialog_new4")]
	public static extern void* QPrintPreviewDialog_new4(QWidget parent, int64 flags);
	[LinkName("QPrintPreviewDialog_new5")]
	public static extern void* QPrintPreviewDialog_new5(QPrinter printer, QWidget parent);
	[LinkName("QPrintPreviewDialog_new6")]
	public static extern void* QPrintPreviewDialog_new6(QPrinter printer, QWidget parent, int64 flags);
	[LinkName("QPrintPreviewDialog_MetaObject")]
	public static extern QMetaObject QPrintPreviewDialog_MetaObject(void* c_this);
	[LinkName("QPrintPreviewDialog_Metacast")]
	public static extern void QPrintPreviewDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QPrintPreviewDialog_Metacall")]
	public static extern int32 QPrintPreviewDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPrintPreviewDialog_Tr")]
	public static extern char8[] QPrintPreviewDialog_Tr(char8[] s);
	[LinkName("QPrintPreviewDialog_Printer")]
	public static extern QPrinter QPrintPreviewDialog_Printer(void* c_this);
	[LinkName("QPrintPreviewDialog_SetVisible")]
	public static extern void QPrintPreviewDialog_SetVisible(void* c_this, bool visible);
	[LinkName("QPrintPreviewDialog_Done")]
	public static extern void QPrintPreviewDialog_Done(void* c_this, int32 result);
	[LinkName("QPrintPreviewDialog_PaintRequested")]
	public static extern void QPrintPreviewDialog_PaintRequested(void* c_this, QPrinter printer);
	[LinkName("QPrintPreviewDialog_Tr2")]
	public static extern char8[] QPrintPreviewDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QPrintPreviewDialog_Tr3")]
	public static extern char8[] QPrintPreviewDialog_Tr3(char8[] s, char8[] c, int32 n);
}