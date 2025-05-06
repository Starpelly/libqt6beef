using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractPrintDialog__PrintRange
{
	AllPages = 0,
	Selection = 1,
	PageRange = 2,
	CurrentPage = 3,
}
[AllowDuplicates]
public enum QAbstractPrintDialog__PrintDialogOption
{
	PrintToFile = 1,
	PrintSelection = 2,
	PrintPageRange = 4,
	PrintShowPageSize = 8,
	PrintCollateCopies = 16,
	PrintCurrentPage = 64,
}
public struct QAbstractPrintDialog
{
	[LinkName("QAbstractPrintDialog_new")]
	public static extern void* QAbstractPrintDialog_new(QPrinter printer);
	[LinkName("QAbstractPrintDialog_new2")]
	public static extern void* QAbstractPrintDialog_new2(QPrinter printer, QWidget parent);
	[LinkName("QAbstractPrintDialog_MetaObject")]
	public static extern QMetaObject QAbstractPrintDialog_MetaObject(void* c_this);
	[LinkName("QAbstractPrintDialog_Metacast")]
	public static extern void QAbstractPrintDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractPrintDialog_Metacall")]
	public static extern int32 QAbstractPrintDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractPrintDialog_Tr")]
	public static extern char8[] QAbstractPrintDialog_Tr(char8[] s);
	[LinkName("QAbstractPrintDialog_SetOptionTabs")]
	public static extern void QAbstractPrintDialog_SetOptionTabs(void* c_this, QWidget[] tabs);
	[LinkName("QAbstractPrintDialog_SetPrintRange")]
	public static extern void QAbstractPrintDialog_SetPrintRange(void* c_this, int64 range);
	[LinkName("QAbstractPrintDialog_PrintRange")]
	public static extern int64 QAbstractPrintDialog_PrintRange(void* c_this);
	[LinkName("QAbstractPrintDialog_SetMinMax")]
	public static extern void QAbstractPrintDialog_SetMinMax(void* c_this, int32 min, int32 max);
	[LinkName("QAbstractPrintDialog_MinPage")]
	public static extern int32 QAbstractPrintDialog_MinPage(void* c_this);
	[LinkName("QAbstractPrintDialog_MaxPage")]
	public static extern int32 QAbstractPrintDialog_MaxPage(void* c_this);
	[LinkName("QAbstractPrintDialog_SetFromTo")]
	public static extern void QAbstractPrintDialog_SetFromTo(void* c_this, int32 fromPage, int32 toPage);
	[LinkName("QAbstractPrintDialog_FromPage")]
	public static extern int32 QAbstractPrintDialog_FromPage(void* c_this);
	[LinkName("QAbstractPrintDialog_ToPage")]
	public static extern int32 QAbstractPrintDialog_ToPage(void* c_this);
	[LinkName("QAbstractPrintDialog_Printer")]
	public static extern QPrinter QAbstractPrintDialog_Printer(void* c_this);
	[LinkName("QAbstractPrintDialog_Tr2")]
	public static extern char8[] QAbstractPrintDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractPrintDialog_Tr3")]
	public static extern char8[] QAbstractPrintDialog_Tr3(char8[] s, char8[] c, int32 n);
}