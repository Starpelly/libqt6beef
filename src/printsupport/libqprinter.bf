using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPrinter__PrinterMode
{
	ScreenResolution = 0,
	PrinterResolution = 1,
	HighResolution = 2,
}
[AllowDuplicates]
public enum QPrinter__PageOrder
{
	FirstPageFirst = 0,
	LastPageFirst = 1,
}
[AllowDuplicates]
public enum QPrinter__ColorMode
{
	GrayScale = 0,
	Color = 1,
}
[AllowDuplicates]
public enum QPrinter__PaperSource
{
	OnlyOne = 0,
	Lower = 1,
	Middle = 2,
	Manual = 3,
	Envelope = 4,
	EnvelopeManual = 5,
	Auto = 6,
	Tractor = 7,
	SmallFormat = 8,
	LargeFormat = 9,
	LargeCapacity = 10,
	Cassette = 11,
	FormSource = 12,
	MaxPageSource = 13,
	CustomSource = 14,
	LastPaperSource = 14,
	Upper = 0,
}
[AllowDuplicates]
public enum QPrinter__PrinterState
{
	Idle = 0,
	Active = 1,
	Aborted = 2,
	Error = 3,
}
[AllowDuplicates]
public enum QPrinter__OutputFormat
{
	NativeFormat = 0,
	PdfFormat = 1,
}
[AllowDuplicates]
public enum QPrinter__PrintRange
{
	AllPages = 0,
	Selection = 1,
	PageRange = 2,
	CurrentPage = 3,
}
[AllowDuplicates]
public enum QPrinter__Unit
{
	Millimeter = 0,
	Point = 1,
	Inch = 2,
	Pica = 3,
	Didot = 4,
	Cicero = 5,
	DevicePixel = 6,
}
[AllowDuplicates]
public enum QPrinter__DuplexMode
{
	DuplexNone = 0,
	DuplexAuto = 1,
	DuplexLongSide = 2,
	DuplexShortSide = 3,
}
public struct QPrinter
{
	[LinkName("QPrinter_new")]
	public static extern void* QPrinter_new();
	[LinkName("QPrinter_new2")]
	public static extern void* QPrinter_new2(QPrinterInfo printer);
	[LinkName("QPrinter_new3")]
	public static extern void* QPrinter_new3(int64 mode);
	[LinkName("QPrinter_new4")]
	public static extern void* QPrinter_new4(QPrinterInfo printer, int64 mode);
	[LinkName("QPrinter_DevType")]
	public static extern int32 QPrinter_DevType(void* c_this);
	[LinkName("QPrinter_SetOutputFormat")]
	public static extern void QPrinter_SetOutputFormat(void* c_this, int64 format);
	[LinkName("QPrinter_OutputFormat")]
	public static extern int64 QPrinter_OutputFormat(void* c_this);
	[LinkName("QPrinter_SetPdfVersion")]
	public static extern void QPrinter_SetPdfVersion(void* c_this, int64 version);
	[LinkName("QPrinter_PdfVersion")]
	public static extern int64 QPrinter_PdfVersion(void* c_this);
	[LinkName("QPrinter_SetPrinterName")]
	public static extern void QPrinter_SetPrinterName(void* c_this, char8[] printerName);
	[LinkName("QPrinter_PrinterName")]
	public static extern char8[] QPrinter_PrinterName(void* c_this);
	[LinkName("QPrinter_IsValid")]
	public static extern bool QPrinter_IsValid(void* c_this);
	[LinkName("QPrinter_SetOutputFileName")]
	public static extern void QPrinter_SetOutputFileName(void* c_this, char8[] outputFileName);
	[LinkName("QPrinter_OutputFileName")]
	public static extern char8[] QPrinter_OutputFileName(void* c_this);
	[LinkName("QPrinter_SetPrintProgram")]
	public static extern void QPrinter_SetPrintProgram(void* c_this, char8[] printProgram);
	[LinkName("QPrinter_PrintProgram")]
	public static extern char8[] QPrinter_PrintProgram(void* c_this);
	[LinkName("QPrinter_SetDocName")]
	public static extern void QPrinter_SetDocName(void* c_this, char8[] docName);
	[LinkName("QPrinter_DocName")]
	public static extern char8[] QPrinter_DocName(void* c_this);
	[LinkName("QPrinter_SetCreator")]
	public static extern void QPrinter_SetCreator(void* c_this, char8[] creator);
	[LinkName("QPrinter_Creator")]
	public static extern char8[] QPrinter_Creator(void* c_this);
	[LinkName("QPrinter_SetPageOrder")]
	public static extern void QPrinter_SetPageOrder(void* c_this, int64 pageOrder);
	[LinkName("QPrinter_PageOrder")]
	public static extern int64 QPrinter_PageOrder(void* c_this);
	[LinkName("QPrinter_SetResolution")]
	public static extern void QPrinter_SetResolution(void* c_this, int32 resolution);
	[LinkName("QPrinter_Resolution")]
	public static extern int32 QPrinter_Resolution(void* c_this);
	[LinkName("QPrinter_SetColorMode")]
	public static extern void QPrinter_SetColorMode(void* c_this, int64 colorMode);
	[LinkName("QPrinter_ColorMode")]
	public static extern int64 QPrinter_ColorMode(void* c_this);
	[LinkName("QPrinter_SetCollateCopies")]
	public static extern void QPrinter_SetCollateCopies(void* c_this, bool collate);
	[LinkName("QPrinter_CollateCopies")]
	public static extern bool QPrinter_CollateCopies(void* c_this);
	[LinkName("QPrinter_SetFullPage")]
	public static extern void QPrinter_SetFullPage(void* c_this, bool fullPage);
	[LinkName("QPrinter_FullPage")]
	public static extern bool QPrinter_FullPage(void* c_this);
	[LinkName("QPrinter_SetCopyCount")]
	public static extern void QPrinter_SetCopyCount(void* c_this, int32 copyCount);
	[LinkName("QPrinter_CopyCount")]
	public static extern int32 QPrinter_CopyCount(void* c_this);
	[LinkName("QPrinter_SupportsMultipleCopies")]
	public static extern bool QPrinter_SupportsMultipleCopies(void* c_this);
	[LinkName("QPrinter_SetPaperSource")]
	public static extern void QPrinter_SetPaperSource(void* c_this, int64 paperSource);
	[LinkName("QPrinter_PaperSource")]
	public static extern int64 QPrinter_PaperSource(void* c_this);
	[LinkName("QPrinter_SetDuplex")]
	public static extern void QPrinter_SetDuplex(void* c_this, int64 duplex);
	[LinkName("QPrinter_Duplex")]
	public static extern int64 QPrinter_Duplex(void* c_this);
	[LinkName("QPrinter_SupportedResolutions")]
	public static extern int32[] QPrinter_SupportedResolutions(void* c_this);
	[LinkName("QPrinter_SetFontEmbeddingEnabled")]
	public static extern void QPrinter_SetFontEmbeddingEnabled(void* c_this, bool enable);
	[LinkName("QPrinter_FontEmbeddingEnabled")]
	public static extern bool QPrinter_FontEmbeddingEnabled(void* c_this);
	[LinkName("QPrinter_PaperRect")]
	public static extern QRectF QPrinter_PaperRect(void* c_this, int64 param1);
	[LinkName("QPrinter_PageRect")]
	public static extern QRectF QPrinter_PageRect(void* c_this, int64 param1);
	[LinkName("QPrinter_PrinterSelectionOption")]
	public static extern char8[] QPrinter_PrinterSelectionOption(void* c_this);
	[LinkName("QPrinter_SetPrinterSelectionOption")]
	public static extern void QPrinter_SetPrinterSelectionOption(void* c_this, char8[] printerSelectionOption);
	[LinkName("QPrinter_NewPage")]
	public static extern bool QPrinter_NewPage(void* c_this);
	[LinkName("QPrinter_Abort")]
	public static extern bool QPrinter_Abort(void* c_this);
	[LinkName("QPrinter_PrinterState")]
	public static extern int64 QPrinter_PrinterState(void* c_this);
	[LinkName("QPrinter_PaintEngine")]
	public static extern QPaintEngine QPrinter_PaintEngine(void* c_this);
	[LinkName("QPrinter_PrintEngine")]
	public static extern QPrintEngine QPrinter_PrintEngine(void* c_this);
	[LinkName("QPrinter_SetFromTo")]
	public static extern void QPrinter_SetFromTo(void* c_this, int32 fromPage, int32 toPage);
	[LinkName("QPrinter_FromPage")]
	public static extern int32 QPrinter_FromPage(void* c_this);
	[LinkName("QPrinter_ToPage")]
	public static extern int32 QPrinter_ToPage(void* c_this);
	[LinkName("QPrinter_SetPrintRange")]
	public static extern void QPrinter_SetPrintRange(void* c_this, int64 range);
	[LinkName("QPrinter_PrintRange")]
	public static extern int64 QPrinter_PrintRange(void* c_this);
	[LinkName("QPrinter_Metric")]
	public static extern int32 QPrinter_Metric(void* c_this, int64 param1);
	[LinkName("QPrinter_SetEngines")]
	public static extern void QPrinter_SetEngines(void* c_this, QPrintEngine printEngine, QPaintEngine paintEngine);
}