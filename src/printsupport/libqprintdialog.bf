using System;
using System.Interop;
namespace Qt;

public struct QPrintDialog
{
	[LinkName("QPrintDialog_new")]
	public static extern void* QPrintDialog_new(QWidget parent);
	[LinkName("QPrintDialog_new2")]
	public static extern void* QPrintDialog_new2(QPrinter printer);
	[LinkName("QPrintDialog_new3")]
	public static extern void* QPrintDialog_new3();
	[LinkName("QPrintDialog_new4")]
	public static extern void* QPrintDialog_new4(QPrinter printer, QWidget parent);
	[LinkName("QPrintDialog_MetaObject")]
	public static extern QMetaObject QPrintDialog_MetaObject(void* c_this);
	[LinkName("QPrintDialog_Metacast")]
	public static extern void QPrintDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QPrintDialog_Metacall")]
	public static extern int32 QPrintDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPrintDialog_Tr")]
	public static extern char8[] QPrintDialog_Tr(char8[] s);
	[LinkName("QPrintDialog_Exec")]
	public static extern int32 QPrintDialog_Exec(void* c_this);
	[LinkName("QPrintDialog_Accept")]
	public static extern void QPrintDialog_Accept(void* c_this);
	[LinkName("QPrintDialog_Done")]
	public static extern void QPrintDialog_Done(void* c_this, int32 result);
	[LinkName("QPrintDialog_SetOption")]
	public static extern void QPrintDialog_SetOption(void* c_this, int64 option);
	[LinkName("QPrintDialog_TestOption")]
	public static extern bool QPrintDialog_TestOption(void* c_this, int64 option);
	[LinkName("QPrintDialog_SetOptions")]
	public static extern void QPrintDialog_SetOptions(void* c_this, int64 options);
	[LinkName("QPrintDialog_Options")]
	public static extern int64 QPrintDialog_Options(void* c_this);
	[LinkName("QPrintDialog_SetVisible")]
	public static extern void QPrintDialog_SetVisible(void* c_this, bool visible);
	[LinkName("QPrintDialog_Accepted")]
	public static extern void QPrintDialog_Accepted(void* c_this, QPrinter printer);
	[LinkName("QPrintDialog_Tr2")]
	public static extern char8[] QPrintDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QPrintDialog_Tr3")]
	public static extern char8[] QPrintDialog_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QPrintDialog_SetOption2")]
	public static extern void QPrintDialog_SetOption2(void* c_this, int64 option, bool on);
}