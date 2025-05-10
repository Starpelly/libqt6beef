using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPageSize__PageSizeId
{
	Letter = 0,
	Legal = 1,
	Executive = 2,
	A0 = 3,
	A1 = 4,
	A2 = 5,
	A3 = 6,
	A4 = 7,
	A5 = 8,
	A6 = 9,
	A7 = 10,
	A8 = 11,
	A9 = 12,
	A10 = 13,
	B0 = 14,
	B1 = 15,
	B2 = 16,
	B3 = 17,
	B4 = 18,
	B5 = 19,
	B6 = 20,
	B7 = 21,
	B8 = 22,
	B9 = 23,
	B10 = 24,
	C5E = 25,
	Comm10E = 26,
	DLE = 27,
	Folio = 28,
	Ledger = 29,
	Tabloid = 30,
	Custom = 31,
	A3Extra = 32,
	A4Extra = 33,
	A4Plus = 34,
	A4Small = 35,
	A5Extra = 36,
	B5Extra = 37,
	JisB0 = 38,
	JisB1 = 39,
	JisB2 = 40,
	JisB3 = 41,
	JisB4 = 42,
	JisB5 = 43,
	JisB6 = 44,
	JisB7 = 45,
	JisB8 = 46,
	JisB9 = 47,
	JisB10 = 48,
	AnsiC = 49,
	AnsiD = 50,
	AnsiE = 51,
	LegalExtra = 52,
	LetterExtra = 53,
	LetterPlus = 54,
	LetterSmall = 55,
	TabloidExtra = 56,
	ArchA = 57,
	ArchB = 58,
	ArchC = 59,
	ArchD = 60,
	ArchE = 61,
	Imperial7x9 = 62,
	Imperial8x10 = 63,
	Imperial9x11 = 64,
	Imperial9x12 = 65,
	Imperial10x11 = 66,
	Imperial10x13 = 67,
	Imperial10x14 = 68,
	Imperial12x11 = 69,
	Imperial15x11 = 70,
	ExecutiveStandard = 71,
	Note = 72,
	Quarto = 73,
	Statement = 74,
	SuperA = 75,
	SuperB = 76,
	Postcard = 77,
	DoublePostcard = 78,
	Prc16K = 79,
	Prc32K = 80,
	Prc32KBig = 81,
	FanFoldUS = 82,
	FanFoldGerman = 83,
	FanFoldGermanLegal = 84,
	EnvelopeB4 = 85,
	EnvelopeB5 = 86,
	EnvelopeB6 = 87,
	EnvelopeC0 = 88,
	EnvelopeC1 = 89,
	EnvelopeC2 = 90,
	EnvelopeC3 = 91,
	EnvelopeC4 = 92,
	EnvelopeC6 = 93,
	EnvelopeC65 = 94,
	EnvelopeC7 = 95,
	Envelope9 = 96,
	Envelope11 = 97,
	Envelope12 = 98,
	Envelope14 = 99,
	EnvelopeMonarch = 100,
	EnvelopePersonal = 101,
	EnvelopeChou3 = 102,
	EnvelopeChou4 = 103,
	EnvelopeInvite = 104,
	EnvelopeItalian = 105,
	EnvelopeKaku2 = 106,
	EnvelopeKaku3 = 107,
	EnvelopePrc1 = 108,
	EnvelopePrc2 = 109,
	EnvelopePrc3 = 110,
	EnvelopePrc4 = 111,
	EnvelopePrc5 = 112,
	EnvelopePrc6 = 113,
	EnvelopePrc7 = 114,
	EnvelopePrc8 = 115,
	EnvelopePrc9 = 116,
	EnvelopePrc10 = 117,
	EnvelopeYou4 = 118,
	LastPageSize = 118,
	AnsiA = 0,
	AnsiB = 29,
	EnvelopeC5 = 25,
	EnvelopeDL = 27,
	Envelope10 = 26,
}
[AllowDuplicates]
public enum QPageSize__Unit
{
	Millimeter = 0,
	Point = 1,
	Inch = 2,
	Pica = 3,
	Didot = 4,
	Cicero = 5,
}
[AllowDuplicates]
public enum QPageSize__SizeMatchPolicy
{
	FuzzyMatch = 0,
	FuzzyOrientationMatch = 1,
	ExactMatch = 2,
}
public interface IQPageSize
{
	void* NativePtr { get; }
}
public class QPageSize : IQPageSize
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPageSize_new();
	}
	
	public ~this()
	{
		CQt.QPageSize_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQPageSize other)
	{
		CQt.QPageSize_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQPageSize other)
	{
		CQt.QPageSize_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsEquivalentTo(IQPageSize other)
	{
		return CQt.QPageSize_IsEquivalentTo(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QPageSize_IsValid(this.nativePtr);
	}
	
	public libqt_string Key()
	{
		return CQt.QPageSize_Key(this.nativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QPageSize_Name(this.nativePtr);
	}
	
	public int64 Id()
	{
		return CQt.QPageSize_Id(this.nativePtr);
	}
	
	public int32 WindowsId()
	{
		return CQt.QPageSize_WindowsId(this.nativePtr);
	}
	
	public void DefinitionSize()
	{
		CQt.QPageSize_DefinitionSize(this.nativePtr);
	}
	
	public int64 DefinitionUnits()
	{
		return CQt.QPageSize_DefinitionUnits(this.nativePtr);
	}
	
	public void Size(int64 units)
	{
		CQt.QPageSize_Size(this.nativePtr, units);
	}
	
	public void SizePoints()
	{
		CQt.QPageSize_SizePoints(this.nativePtr);
	}
	
	public void SizePixels(int32 resolution)
	{
		CQt.QPageSize_SizePixels(this.nativePtr, resolution);
	}
	
	public void Rect(int64 units)
	{
		CQt.QPageSize_Rect(this.nativePtr, units);
	}
	
	public void RectPoints()
	{
		CQt.QPageSize_RectPoints(this.nativePtr);
	}
	
	public void RectPixels(int32 resolution)
	{
		CQt.QPageSize_RectPixels(this.nativePtr, resolution);
	}
	
	public static libqt_string KeyWithPageSizeId(int64 pageSizeId)
	{
		return CQt.QPageSize_KeyWithPageSizeId(pageSizeId);
	}
	
	public static libqt_string NameWithPageSizeId(int64 pageSizeId)
	{
		return CQt.QPageSize_NameWithPageSizeId(pageSizeId);
	}
	
	public static int64 IdWithPointSize(IQSize pointSize)
	{
		return CQt.QPageSize_IdWithPointSize((pointSize == default) ? default : (void*)pointSize.NativePtr);
	}
	
	public static int64 Id2(IQSizeF size, int64 units)
	{
		return CQt.QPageSize_Id2((size == default) ? default : (void*)size.NativePtr, units);
	}
	
	public static int64 IdWithWindowsId(int32 windowsId)
	{
		return CQt.QPageSize_IdWithWindowsId(windowsId);
	}
	
	public static int32 WindowsIdWithPageSizeId(int64 pageSizeId)
	{
		return CQt.QPageSize_WindowsIdWithPageSizeId(pageSizeId);
	}
	
	public static void DefinitionSizeWithPageSizeId(int64 pageSizeId)
	{
		CQt.QPageSize_DefinitionSizeWithPageSizeId(pageSizeId);
	}
	
	public static int64 DefinitionUnitsWithPageSizeId(int64 pageSizeId)
	{
		return CQt.QPageSize_DefinitionUnitsWithPageSizeId(pageSizeId);
	}
	
	public static void Size2(int64 pageSizeId, int64 units)
	{
		CQt.QPageSize_Size2(pageSizeId, units);
	}
	
	public static void SizePointsWithPageSizeId(int64 pageSizeId)
	{
		CQt.QPageSize_SizePointsWithPageSizeId(pageSizeId);
	}
	
	public static void SizePixels2(int64 pageSizeId, int32 resolution)
	{
		CQt.QPageSize_SizePixels2(pageSizeId, resolution);
	}
	
	public static int64 Id22(IQSize pointSize, int64 matchPolicy)
	{
		return CQt.QPageSize_Id22((pointSize == default) ? default : (void*)pointSize.NativePtr, matchPolicy);
	}
	
	public static int64 Id3(IQSizeF size, int64 units, int64 matchPolicy)
	{
		return CQt.QPageSize_Id3((size == default) ? default : (void*)size.NativePtr, units, matchPolicy);
	}
	
}
extension CQt
{
	[LinkName("QPageSize_new")]
	public static extern void* QPageSize_new();
	[LinkName("QPageSize_new2")]
	public static extern void* QPageSize_new2(int64 pageSizeId);
	[LinkName("QPageSize_new3")]
	public static extern void* QPageSize_new3(void* pointSize);
	[LinkName("QPageSize_new4")]
	public static extern void* QPageSize_new4(void* size, int64 units);
	[LinkName("QPageSize_new5")]
	public static extern void* QPageSize_new5(void* other);
	[LinkName("QPageSize_new6")]
	public static extern void* QPageSize_new6(void* pointSize, libqt_string name);
	[LinkName("QPageSize_new7")]
	public static extern void* QPageSize_new7(void* pointSize, libqt_string name, int64 matchPolicy);
	[LinkName("QPageSize_new8")]
	public static extern void* QPageSize_new8(void* size, int64 units, libqt_string name);
	[LinkName("QPageSize_new9")]
	public static extern void* QPageSize_new9(void* size, int64 units, libqt_string name, int64 matchPolicy);
	[LinkName("QPageSize_OperatorAssign")]
	public static extern void QPageSize_OperatorAssign(void* c_this, void* other);
	[LinkName("QPageSize_Swap")]
	public static extern void QPageSize_Swap(void* c_this, void* other);
	[LinkName("QPageSize_IsEquivalentTo")]
	public static extern bool QPageSize_IsEquivalentTo(void* c_this, void* other);
	[LinkName("QPageSize_IsValid")]
	public static extern bool QPageSize_IsValid(void* c_this);
	[LinkName("QPageSize_Key")]
	public static extern libqt_string QPageSize_Key(void* c_this);
	[LinkName("QPageSize_Name")]
	public static extern libqt_string QPageSize_Name(void* c_this);
	[LinkName("QPageSize_Id")]
	public static extern int64 QPageSize_Id(void* c_this);
	[LinkName("QPageSize_WindowsId")]
	public static extern int32 QPageSize_WindowsId(void* c_this);
	[LinkName("QPageSize_DefinitionSize")]
	public static extern void QPageSize_DefinitionSize(void* c_this);
	[LinkName("QPageSize_DefinitionUnits")]
	public static extern int64 QPageSize_DefinitionUnits(void* c_this);
	[LinkName("QPageSize_Size")]
	public static extern void QPageSize_Size(void* c_this, int64 units);
	[LinkName("QPageSize_SizePoints")]
	public static extern void QPageSize_SizePoints(void* c_this);
	[LinkName("QPageSize_SizePixels")]
	public static extern void QPageSize_SizePixels(void* c_this, int32 resolution);
	[LinkName("QPageSize_Rect")]
	public static extern void QPageSize_Rect(void* c_this, int64 units);
	[LinkName("QPageSize_RectPoints")]
	public static extern void QPageSize_RectPoints(void* c_this);
	[LinkName("QPageSize_RectPixels")]
	public static extern void QPageSize_RectPixels(void* c_this, int32 resolution);
	[LinkName("QPageSize_KeyWithPageSizeId")]
	public static extern libqt_string QPageSize_KeyWithPageSizeId(int64 pageSizeId);
	[LinkName("QPageSize_NameWithPageSizeId")]
	public static extern libqt_string QPageSize_NameWithPageSizeId(int64 pageSizeId);
	[LinkName("QPageSize_IdWithPointSize")]
	public static extern int64 QPageSize_IdWithPointSize(void* pointSize);
	[LinkName("QPageSize_Id2")]
	public static extern int64 QPageSize_Id2(void* size, int64 units);
	[LinkName("QPageSize_IdWithWindowsId")]
	public static extern int64 QPageSize_IdWithWindowsId(int32 windowsId);
	[LinkName("QPageSize_WindowsIdWithPageSizeId")]
	public static extern int32 QPageSize_WindowsIdWithPageSizeId(int64 pageSizeId);
	[LinkName("QPageSize_DefinitionSizeWithPageSizeId")]
	public static extern void QPageSize_DefinitionSizeWithPageSizeId(int64 pageSizeId);
	[LinkName("QPageSize_DefinitionUnitsWithPageSizeId")]
	public static extern int64 QPageSize_DefinitionUnitsWithPageSizeId(int64 pageSizeId);
	[LinkName("QPageSize_Size2")]
	public static extern void QPageSize_Size2(int64 pageSizeId, int64 units);
	[LinkName("QPageSize_SizePointsWithPageSizeId")]
	public static extern void QPageSize_SizePointsWithPageSizeId(int64 pageSizeId);
	[LinkName("QPageSize_SizePixels2")]
	public static extern void QPageSize_SizePixels2(int64 pageSizeId, int32 resolution);
	[LinkName("QPageSize_Id22")]
	public static extern int64 QPageSize_Id22(void* pointSize, int64 matchPolicy);
	[LinkName("QPageSize_Id3")]
	public static extern int64 QPageSize_Id3(void* size, int64 units, int64 matchPolicy);
	/// Delete this object from C++ memory
	[LinkName("QPageSize_Delete")]
	public static extern void QPageSize_Delete(void* self);
}