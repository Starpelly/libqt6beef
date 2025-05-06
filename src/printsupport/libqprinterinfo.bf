using System;
using System.Interop;
namespace Qt;

public struct QPrinterInfo
{
	[LinkName("QPrinterInfo_new")]
	public static extern void* QPrinterInfo_new();
	[LinkName("QPrinterInfo_new2")]
	public static extern void* QPrinterInfo_new2(QPrinterInfo other);
	[LinkName("QPrinterInfo_new3")]
	public static extern void* QPrinterInfo_new3(QPrinter printer);
	[LinkName("QPrinterInfo_OperatorAssign")]
	public static extern void QPrinterInfo_OperatorAssign(void* c_this, QPrinterInfo other);
	[LinkName("QPrinterInfo_PrinterName")]
	public static extern char8[] QPrinterInfo_PrinterName(void* c_this);
	[LinkName("QPrinterInfo_Description")]
	public static extern char8[] QPrinterInfo_Description(void* c_this);
	[LinkName("QPrinterInfo_Location")]
	public static extern char8[] QPrinterInfo_Location(void* c_this);
	[LinkName("QPrinterInfo_MakeAndModel")]
	public static extern char8[] QPrinterInfo_MakeAndModel(void* c_this);
	[LinkName("QPrinterInfo_IsNull")]
	public static extern bool QPrinterInfo_IsNull(void* c_this);
	[LinkName("QPrinterInfo_IsDefault")]
	public static extern bool QPrinterInfo_IsDefault(void* c_this);
	[LinkName("QPrinterInfo_IsRemote")]
	public static extern bool QPrinterInfo_IsRemote(void* c_this);
	[LinkName("QPrinterInfo_State")]
	public static extern int64 QPrinterInfo_State(void* c_this);
	[LinkName("QPrinterInfo_SupportedPageSizes")]
	public static extern QPageSize[] QPrinterInfo_SupportedPageSizes(void* c_this);
	[LinkName("QPrinterInfo_DefaultPageSize")]
	public static extern QPageSize QPrinterInfo_DefaultPageSize(void* c_this);
	[LinkName("QPrinterInfo_SupportsCustomPageSizes")]
	public static extern bool QPrinterInfo_SupportsCustomPageSizes(void* c_this);
	[LinkName("QPrinterInfo_MinimumPhysicalPageSize")]
	public static extern QPageSize QPrinterInfo_MinimumPhysicalPageSize(void* c_this);
	[LinkName("QPrinterInfo_MaximumPhysicalPageSize")]
	public static extern QPageSize QPrinterInfo_MaximumPhysicalPageSize(void* c_this);
	[LinkName("QPrinterInfo_SupportedResolutions")]
	public static extern int32[] QPrinterInfo_SupportedResolutions(void* c_this);
	[LinkName("QPrinterInfo_DefaultDuplexMode")]
	public static extern int64 QPrinterInfo_DefaultDuplexMode(void* c_this);
	[LinkName("QPrinterInfo_SupportedDuplexModes")]
	public static extern int64[] QPrinterInfo_SupportedDuplexModes(void* c_this);
	[LinkName("QPrinterInfo_DefaultColorMode")]
	public static extern int64 QPrinterInfo_DefaultColorMode(void* c_this);
	[LinkName("QPrinterInfo_SupportedColorModes")]
	public static extern int64[] QPrinterInfo_SupportedColorModes(void* c_this);
	[LinkName("QPrinterInfo_AvailablePrinterNames")]
	public static extern char8[][] QPrinterInfo_AvailablePrinterNames();
	[LinkName("QPrinterInfo_AvailablePrinters")]
	public static extern QPrinterInfo[] QPrinterInfo_AvailablePrinters();
	[LinkName("QPrinterInfo_DefaultPrinterName")]
	public static extern char8[] QPrinterInfo_DefaultPrinterName();
	[LinkName("QPrinterInfo_DefaultPrinter")]
	public static extern QPrinterInfo QPrinterInfo_DefaultPrinter();
	[LinkName("QPrinterInfo_PrinterInfo")]
	public static extern QPrinterInfo QPrinterInfo_PrinterInfo(char8[] printerName);
}