using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPrintEngine__PrintEnginePropertyKey
{
	PPK_CollateCopies = 0,
	PPK_ColorMode = 1,
	PPK_Creator = 2,
	PPK_DocumentName = 3,
	PPK_FullPage = 4,
	PPK_NumberOfCopies = 5,
	PPK_Orientation = 6,
	PPK_OutputFileName = 7,
	PPK_PageOrder = 8,
	PPK_PageRect = 9,
	PPK_PageSize = 10,
	PPK_PaperRect = 11,
	PPK_PaperSource = 12,
	PPK_PrinterName = 13,
	PPK_PrinterProgram = 14,
	PPK_Resolution = 15,
	PPK_SelectionOption = 16,
	PPK_SupportedResolutions = 17,
	PPK_WindowsPageSize = 18,
	PPK_FontEmbedding = 19,
	PPK_Duplex = 20,
	PPK_PaperSources = 21,
	PPK_CustomPaperSize = 22,
	PPK_PageMargins = 23,
	PPK_CopyCount = 24,
	PPK_SupportsMultipleCopies = 25,
	PPK_PaperName = 26,
	PPK_QPageSize = 27,
	PPK_QPageMargins = 28,
	PPK_QPageLayout = 29,
	PPK_PaperSize = 10,
	PPK_CustomBase = 65280,
}
public struct QPrintEngine
{
	[LinkName("QPrintEngine_SetProperty")]
	public static extern void QPrintEngine_SetProperty(void* c_this, int64 key, QVariant value);
	[LinkName("QPrintEngine_Property")]
	public static extern QVariant QPrintEngine_Property(void* c_this, int64 key);
	[LinkName("QPrintEngine_NewPage")]
	public static extern bool QPrintEngine_NewPage(void* c_this);
	[LinkName("QPrintEngine_Abort")]
	public static extern bool QPrintEngine_Abort(void* c_this);
	[LinkName("QPrintEngine_Metric")]
	public static extern int32 QPrintEngine_Metric(void* c_this, int64 param1);
	[LinkName("QPrintEngine_PrinterState")]
	public static extern int64 QPrintEngine_PrinterState(void* c_this);
	[LinkName("QPrintEngine_OperatorAssign")]
	public static extern void QPrintEngine_OperatorAssign(void* c_this, QPrintEngine param1);
}