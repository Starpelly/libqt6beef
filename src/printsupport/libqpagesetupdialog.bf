using System;
using System.Interop;
namespace Qt;

public struct QPageSetupDialog
{
	[LinkName("QPageSetupDialog_new")]
	public static extern void* QPageSetupDialog_new(QWidget parent);
	[LinkName("QPageSetupDialog_new2")]
	public static extern void* QPageSetupDialog_new2(QPrinter printer);
	[LinkName("QPageSetupDialog_new3")]
	public static extern void* QPageSetupDialog_new3();
	[LinkName("QPageSetupDialog_new4")]
	public static extern void* QPageSetupDialog_new4(QPrinter printer, QWidget parent);
	[LinkName("QPageSetupDialog_MetaObject")]
	public static extern QMetaObject QPageSetupDialog_MetaObject(void* c_this);
	[LinkName("QPageSetupDialog_Metacast")]
	public static extern void QPageSetupDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QPageSetupDialog_Metacall")]
	public static extern int32 QPageSetupDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPageSetupDialog_Tr")]
	public static extern char8[] QPageSetupDialog_Tr(char8[] s);
	[LinkName("QPageSetupDialog_Exec")]
	public static extern int32 QPageSetupDialog_Exec(void* c_this);
	[LinkName("QPageSetupDialog_Done")]
	public static extern void QPageSetupDialog_Done(void* c_this, int32 result);
	[LinkName("QPageSetupDialog_Printer")]
	public static extern QPrinter QPageSetupDialog_Printer(void* c_this);
	[LinkName("QPageSetupDialog_Tr2")]
	public static extern char8[] QPageSetupDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QPageSetupDialog_Tr3")]
	public static extern char8[] QPageSetupDialog_Tr3(char8[] s, char8[] c, int32 n);
}