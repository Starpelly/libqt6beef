using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextLength__Type
{
	VariableLength = 0,
	FixedLength = 1,
	PercentageLength = 2,
}
[AllowDuplicates]
public enum QTextFormat__FormatType
{
	InvalidFormat = -1,
	BlockFormat = 1,
	CharFormat = 2,
	ListFormat = 3,
	FrameFormat = 5,
	UserFormat = 100,
}
[AllowDuplicates]
public enum QTextFormat__Property
{
	ObjectIndex = 0,
	CssFloat = 2048,
	LayoutDirection = 2049,
	OutlinePen = 2064,
	BackgroundBrush = 2080,
	ForegroundBrush = 2081,
	BackgroundImageUrl = 2083,
	BlockAlignment = 4112,
	BlockTopMargin = 4144,
	BlockBottomMargin = 4145,
	BlockLeftMargin = 4146,
	BlockRightMargin = 4147,
	TextIndent = 4148,
	TabPositions = 4149,
	BlockIndent = 4160,
	LineHeight = 4168,
	LineHeightType = 4169,
	BlockNonBreakableLines = 4176,
	BlockTrailingHorizontalRulerWidth = 4192,
	HeadingLevel = 4208,
	BlockQuoteLevel = 4224,
	BlockCodeLanguage = 4240,
	BlockCodeFence = 4241,
	BlockMarker = 4256,
	FirstFontProperty = 8160,
	FontCapitalization = 8160,
	FontLetterSpacing = 8161,
	FontWordSpacing = 8162,
	FontStyleHint = 8163,
	FontStyleStrategy = 8164,
	FontKerning = 8165,
	FontHintingPreference = 8166,
	FontFamilies = 8167,
	FontStyleName = 8168,
	FontLetterSpacingType = 8169,
	FontStretch = 8170,
	FontFamily = 8192,
	FontPointSize = 8193,
	FontSizeAdjustment = 8194,
	FontSizeIncrement = 8194,
	FontWeight = 8195,
	FontItalic = 8196,
	FontUnderline = 8197,
	FontOverline = 8198,
	FontStrikeOut = 8199,
	FontFixedPitch = 8200,
	FontPixelSize = 8201,
	LastFontProperty = 8201,
	TextUnderlineColor = 8224,
	TextVerticalAlignment = 8225,
	TextOutline = 8226,
	TextUnderlineStyle = 8227,
	TextToolTip = 8228,
	TextSuperScriptBaseline = 8229,
	TextSubScriptBaseline = 8230,
	TextBaselineOffset = 8231,
	IsAnchor = 8240,
	AnchorHref = 8241,
	AnchorName = 8242,
	OldFontLetterSpacingType = 8243,
	OldFontStretch = 8244,
	OldTextUnderlineColor = 8208,
	OldFontFamily = 8192,
	ObjectType = 12032,
	ListStyle = 12288,
	ListIndent = 12289,
	ListNumberPrefix = 12290,
	ListNumberSuffix = 12291,
	FrameBorder = 16384,
	FrameMargin = 16385,
	FramePadding = 16386,
	FrameWidth = 16387,
	FrameHeight = 16388,
	FrameTopMargin = 16389,
	FrameBottomMargin = 16390,
	FrameLeftMargin = 16391,
	FrameRightMargin = 16392,
	FrameBorderBrush = 16393,
	FrameBorderStyle = 16400,
	TableColumns = 16640,
	TableColumnWidthConstraints = 16641,
	TableCellSpacing = 16642,
	TableCellPadding = 16643,
	TableHeaderRowCount = 16644,
	TableBorderCollapse = 16645,
	TableCellRowSpan = 18448,
	TableCellColumnSpan = 18449,
	TableCellTopPadding = 18450,
	TableCellBottomPadding = 18451,
	TableCellLeftPadding = 18452,
	TableCellRightPadding = 18453,
	TableCellTopBorder = 18454,
	TableCellBottomBorder = 18455,
	TableCellLeftBorder = 18456,
	TableCellRightBorder = 18457,
	TableCellTopBorderStyle = 18458,
	TableCellBottomBorderStyle = 18459,
	TableCellLeftBorderStyle = 18460,
	TableCellRightBorderStyle = 18461,
	TableCellTopBorderBrush = 18462,
	TableCellBottomBorderBrush = 18463,
	TableCellLeftBorderBrush = 18464,
	TableCellRightBorderBrush = 18465,
	ImageName = 20480,
	ImageTitle = 20481,
	ImageAltText = 20482,
	ImageWidth = 20496,
	ImageHeight = 20497,
	ImageQuality = 20500,
	FullWidthSelection = 24576,
	PageBreakPolicy = 28672,
	UserProperty = 1048576,
}
[AllowDuplicates]
public enum QTextFormat__ObjectTypes
{
	NoObject = 0,
	ImageObject = 1,
	TableObject = 2,
	TableCellObject = 3,
	UserObject = 4096,
}
[AllowDuplicates]
public enum QTextFormat__PageBreakFlag
{
	PageBreak_Auto = 0,
	PageBreak_AlwaysBefore = 1,
	PageBreak_AlwaysAfter = 16,
}
[AllowDuplicates]
public enum QTextCharFormat__VerticalAlignment
{
	AlignNormal = 0,
	AlignSuperScript = 1,
	AlignSubScript = 2,
	AlignMiddle = 3,
	AlignTop = 4,
	AlignBottom = 5,
	AlignBaseline = 6,
}
[AllowDuplicates]
public enum QTextCharFormat__UnderlineStyle
{
	NoUnderline = 0,
	SingleUnderline = 1,
	DashUnderline = 2,
	DotLine = 3,
	DashDotLine = 4,
	DashDotDotLine = 5,
	WaveUnderline = 6,
	SpellCheckUnderline = 7,
}
[AllowDuplicates]
public enum QTextCharFormat__FontPropertiesInheritanceBehavior
{
	FontPropertiesSpecifiedOnly = 0,
	FontPropertiesAll = 1,
}
[AllowDuplicates]
public enum QTextBlockFormat__LineHeightTypes
{
	SingleHeight = 0,
	ProportionalHeight = 1,
	FixedHeight = 2,
	MinimumHeight = 3,
	LineDistanceHeight = 4,
}
[AllowDuplicates]
public enum QTextBlockFormat__MarkerType
{
	NoMarker = 0,
	Unchecked = 1,
	Checked = 2,
}
[AllowDuplicates]
public enum QTextListFormat__Style
{
	ListDisc = -1,
	ListCircle = -2,
	ListSquare = -3,
	ListDecimal = -4,
	ListLowerAlpha = -5,
	ListUpperAlpha = -6,
	ListLowerRoman = -7,
	ListUpperRoman = -8,
	ListStyleUndefined = 0,
}
[AllowDuplicates]
public enum QTextFrameFormat__Position
{
	InFlow = 0,
	FloatLeft = 1,
	FloatRight = 2,
}
[AllowDuplicates]
public enum QTextFrameFormat__BorderStyle
{
	BorderStyle_None = 0,
	BorderStyle_Dotted = 1,
	BorderStyle_Dashed = 2,
	BorderStyle_Solid = 3,
	BorderStyle_Double = 4,
	BorderStyle_DotDash = 5,
	BorderStyle_DotDotDash = 6,
	BorderStyle_Groove = 7,
	BorderStyle_Ridge = 8,
	BorderStyle_Inset = 9,
	BorderStyle_Outset = 10,
}
public class QTextLength
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QTextLength_new(other);
	}
	
	public ~this()
	{
		CQt.QTextLength_Delete(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QTextLength_Type(this.nativePtr);
	}
	
	public double Value(double maximumLength)
	{
		return CQt.QTextLength_Value(this.nativePtr, maximumLength);
	}
	
	public double RawValue()
	{
		return CQt.QTextLength_RawValue(this.nativePtr);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QTextLength_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QTextLength_OperatorNotEqual(this.nativePtr, other);
	}
	
	public void ToQVariant()
	{
		CQt.QTextLength_ToQVariant(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextLength_new")]
	public static extern void* QTextLength_new(void* other);
	[LinkName("QTextLength_new2")]
	public static extern void* QTextLength_new2(void* other);
	[LinkName("QTextLength_new3")]
	public static extern void* QTextLength_new3();
	[LinkName("QTextLength_new4")]
	public static extern void* QTextLength_new4(int64 typeVal, double value);
	[LinkName("QTextLength_new5")]
	public static extern void* QTextLength_new5(void* param1);
	[LinkName("QTextLength_Type")]
	public static extern int64 QTextLength_Type(void* c_this);
	[LinkName("QTextLength_Value")]
	public static extern double QTextLength_Value(void* c_this, double maximumLength);
	[LinkName("QTextLength_RawValue")]
	public static extern double QTextLength_RawValue(void* c_this);
	[LinkName("QTextLength_OperatorEqual")]
	public static extern bool QTextLength_OperatorEqual(void* c_this, void* other);
	[LinkName("QTextLength_OperatorNotEqual")]
	public static extern bool QTextLength_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QTextLength_ToQVariant")]
	public static extern void QTextLength_ToQVariant(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextLength_Delete")]
	public static extern void QTextLength_Delete(void* self);
}
public class QTextFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextFormat_new();
	}
	
	public ~this()
	{
		CQt.QTextFormat_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextFormat_OperatorAssign(this.nativePtr, rhs);
	}
	
	public void Swap(void* other)
	{
		CQt.QTextFormat_Swap(this.nativePtr, other);
	}
	
	public void Merge(void* other)
	{
		CQt.QTextFormat_Merge(this.nativePtr, other);
	}
	
	public bool IsValid()
	{
		return CQt.QTextFormat_IsValid(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextFormat_IsEmpty(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTextFormat_Type(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextFormat_ObjectIndex(this.nativePtr);
	}
	
	public void SetObjectIndex(int32 object)
	{
		CQt.QTextFormat_SetObjectIndex(this.nativePtr, object);
	}
	
	public void Property(int32 propertyId)
	{
		CQt.QTextFormat_Property(this.nativePtr, propertyId);
	}
	
	public void SetProperty(int32 propertyId, void* value)
	{
		CQt.QTextFormat_SetProperty(this.nativePtr, propertyId, value);
	}
	
	public void ClearProperty(int32 propertyId)
	{
		CQt.QTextFormat_ClearProperty(this.nativePtr, propertyId);
	}
	
	public bool HasProperty(int32 propertyId)
	{
		return CQt.QTextFormat_HasProperty(this.nativePtr, propertyId);
	}
	
	public bool BoolProperty(int32 propertyId)
	{
		return CQt.QTextFormat_BoolProperty(this.nativePtr, propertyId);
	}
	
	public int32 IntProperty(int32 propertyId)
	{
		return CQt.QTextFormat_IntProperty(this.nativePtr, propertyId);
	}
	
	public double DoubleProperty(int32 propertyId)
	{
		return CQt.QTextFormat_DoubleProperty(this.nativePtr, propertyId);
	}
	
	public libqt_string StringProperty(int32 propertyId)
	{
		return CQt.QTextFormat_StringProperty(this.nativePtr, propertyId);
	}
	
	public void ColorProperty(int32 propertyId)
	{
		CQt.QTextFormat_ColorProperty(this.nativePtr, propertyId);
	}
	
	public void PenProperty(int32 propertyId)
	{
		CQt.QTextFormat_PenProperty(this.nativePtr, propertyId);
	}
	
	public void BrushProperty(int32 propertyId)
	{
		CQt.QTextFormat_BrushProperty(this.nativePtr, propertyId);
	}
	
	public void LengthProperty(int32 propertyId)
	{
		CQt.QTextFormat_LengthProperty(this.nativePtr, propertyId);
	}
	
	public void[] LengthVectorProperty(int32 propertyId)
	{
		return CQt.QTextFormat_LengthVectorProperty(this.nativePtr, propertyId);
	}
	
	public void SetProperty2(int32 propertyId, void[] lengths)
	{
		CQt.QTextFormat_SetProperty2(this.nativePtr, propertyId, lengths);
	}
	
	public void* Properties()
	{
		return CQt.QTextFormat_Properties(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QTextFormat_PropertyCount(this.nativePtr);
	}
	
	public void SetObjectType(int32 typeVal)
	{
		CQt.QTextFormat_SetObjectType(this.nativePtr, typeVal);
	}
	
	public int32 ObjectType()
	{
		return CQt.QTextFormat_ObjectType(this.nativePtr);
	}
	
	public bool IsCharFormat()
	{
		return CQt.QTextFormat_IsCharFormat(this.nativePtr);
	}
	
	public bool IsBlockFormat()
	{
		return CQt.QTextFormat_IsBlockFormat(this.nativePtr);
	}
	
	public bool IsListFormat()
	{
		return CQt.QTextFormat_IsListFormat(this.nativePtr);
	}
	
	public bool IsFrameFormat()
	{
		return CQt.QTextFormat_IsFrameFormat(this.nativePtr);
	}
	
	public bool IsImageFormat()
	{
		return CQt.QTextFormat_IsImageFormat(this.nativePtr);
	}
	
	public bool IsTableFormat()
	{
		return CQt.QTextFormat_IsTableFormat(this.nativePtr);
	}
	
	public bool IsTableCellFormat()
	{
		return CQt.QTextFormat_IsTableCellFormat(this.nativePtr);
	}
	
	public void ToBlockFormat()
	{
		CQt.QTextFormat_ToBlockFormat(this.nativePtr);
	}
	
	public void ToCharFormat()
	{
		CQt.QTextFormat_ToCharFormat(this.nativePtr);
	}
	
	public void ToListFormat()
	{
		CQt.QTextFormat_ToListFormat(this.nativePtr);
	}
	
	public void ToTableFormat()
	{
		CQt.QTextFormat_ToTableFormat(this.nativePtr);
	}
	
	public void ToFrameFormat()
	{
		CQt.QTextFormat_ToFrameFormat(this.nativePtr);
	}
	
	public void ToImageFormat()
	{
		CQt.QTextFormat_ToImageFormat(this.nativePtr);
	}
	
	public void ToTableCellFormat()
	{
		CQt.QTextFormat_ToTableCellFormat(this.nativePtr);
	}
	
	public bool OperatorEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorEqual(this.nativePtr, rhs);
	}
	
	public bool OperatorNotEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorNotEqual(this.nativePtr, rhs);
	}
	
	public void ToQVariant()
	{
		CQt.QTextFormat_ToQVariant(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QTextFormat_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QTextFormat_LayoutDirection(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTextFormat_SetBackground(this.nativePtr, brush);
	}
	
	public void Background()
	{
		CQt.QTextFormat_Background(this.nativePtr);
	}
	
	public void ClearBackground()
	{
		CQt.QTextFormat_ClearBackground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTextFormat_SetForeground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTextFormat_Foreground(this.nativePtr);
	}
	
	public void ClearForeground()
	{
		CQt.QTextFormat_ClearForeground(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextFormat_new")]
	public static extern void* QTextFormat_new();
	[LinkName("QTextFormat_new2")]
	public static extern void* QTextFormat_new2(int32 typeVal);
	[LinkName("QTextFormat_new3")]
	public static extern void* QTextFormat_new3(void* rhs);
	[LinkName("QTextFormat_OperatorAssign")]
	public static extern void QTextFormat_OperatorAssign(void* c_this, void* rhs);
	[LinkName("QTextFormat_Swap")]
	public static extern void QTextFormat_Swap(void* c_this, void* other);
	[LinkName("QTextFormat_Merge")]
	public static extern void QTextFormat_Merge(void* c_this, void* other);
	[LinkName("QTextFormat_IsValid")]
	public static extern bool QTextFormat_IsValid(void* c_this);
	[LinkName("QTextFormat_IsEmpty")]
	public static extern bool QTextFormat_IsEmpty(void* c_this);
	[LinkName("QTextFormat_Type")]
	public static extern int32 QTextFormat_Type(void* c_this);
	[LinkName("QTextFormat_ObjectIndex")]
	public static extern int32 QTextFormat_ObjectIndex(void* c_this);
	[LinkName("QTextFormat_SetObjectIndex")]
	public static extern void QTextFormat_SetObjectIndex(void* c_this, int32 object);
	[LinkName("QTextFormat_Property")]
	public static extern void QTextFormat_Property(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_SetProperty")]
	public static extern void QTextFormat_SetProperty(void* c_this, int32 propertyId, void* value);
	[LinkName("QTextFormat_ClearProperty")]
	public static extern void QTextFormat_ClearProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_HasProperty")]
	public static extern bool QTextFormat_HasProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_BoolProperty")]
	public static extern bool QTextFormat_BoolProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_IntProperty")]
	public static extern int32 QTextFormat_IntProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_DoubleProperty")]
	public static extern double QTextFormat_DoubleProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_StringProperty")]
	public static extern libqt_string QTextFormat_StringProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_ColorProperty")]
	public static extern void QTextFormat_ColorProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_PenProperty")]
	public static extern void QTextFormat_PenProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_BrushProperty")]
	public static extern void QTextFormat_BrushProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_LengthProperty")]
	public static extern void QTextFormat_LengthProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_LengthVectorProperty")]
	public static extern void[] QTextFormat_LengthVectorProperty(void* c_this, int32 propertyId);
	[LinkName("QTextFormat_SetProperty2")]
	public static extern void QTextFormat_SetProperty2(void* c_this, int32 propertyId, void[] lengths);
	[LinkName("QTextFormat_Properties")]
	public static extern void* QTextFormat_Properties(void* c_this);
	[LinkName("QTextFormat_PropertyCount")]
	public static extern int32 QTextFormat_PropertyCount(void* c_this);
	[LinkName("QTextFormat_SetObjectType")]
	public static extern void QTextFormat_SetObjectType(void* c_this, int32 typeVal);
	[LinkName("QTextFormat_ObjectType")]
	public static extern int32 QTextFormat_ObjectType(void* c_this);
	[LinkName("QTextFormat_IsCharFormat")]
	public static extern bool QTextFormat_IsCharFormat(void* c_this);
	[LinkName("QTextFormat_IsBlockFormat")]
	public static extern bool QTextFormat_IsBlockFormat(void* c_this);
	[LinkName("QTextFormat_IsListFormat")]
	public static extern bool QTextFormat_IsListFormat(void* c_this);
	[LinkName("QTextFormat_IsFrameFormat")]
	public static extern bool QTextFormat_IsFrameFormat(void* c_this);
	[LinkName("QTextFormat_IsImageFormat")]
	public static extern bool QTextFormat_IsImageFormat(void* c_this);
	[LinkName("QTextFormat_IsTableFormat")]
	public static extern bool QTextFormat_IsTableFormat(void* c_this);
	[LinkName("QTextFormat_IsTableCellFormat")]
	public static extern bool QTextFormat_IsTableCellFormat(void* c_this);
	[LinkName("QTextFormat_ToBlockFormat")]
	public static extern void QTextFormat_ToBlockFormat(void* c_this);
	[LinkName("QTextFormat_ToCharFormat")]
	public static extern void QTextFormat_ToCharFormat(void* c_this);
	[LinkName("QTextFormat_ToListFormat")]
	public static extern void QTextFormat_ToListFormat(void* c_this);
	[LinkName("QTextFormat_ToTableFormat")]
	public static extern void QTextFormat_ToTableFormat(void* c_this);
	[LinkName("QTextFormat_ToFrameFormat")]
	public static extern void QTextFormat_ToFrameFormat(void* c_this);
	[LinkName("QTextFormat_ToImageFormat")]
	public static extern void QTextFormat_ToImageFormat(void* c_this);
	[LinkName("QTextFormat_ToTableCellFormat")]
	public static extern void QTextFormat_ToTableCellFormat(void* c_this);
	[LinkName("QTextFormat_OperatorEqual")]
	public static extern bool QTextFormat_OperatorEqual(void* c_this, void* rhs);
	[LinkName("QTextFormat_OperatorNotEqual")]
	public static extern bool QTextFormat_OperatorNotEqual(void* c_this, void* rhs);
	[LinkName("QTextFormat_ToQVariant")]
	public static extern void QTextFormat_ToQVariant(void* c_this);
	[LinkName("QTextFormat_SetLayoutDirection")]
	public static extern void QTextFormat_SetLayoutDirection(void* c_this, int64 direction);
	[LinkName("QTextFormat_LayoutDirection")]
	public static extern int64 QTextFormat_LayoutDirection(void* c_this);
	[LinkName("QTextFormat_SetBackground")]
	public static extern void QTextFormat_SetBackground(void* c_this, void* brush);
	[LinkName("QTextFormat_Background")]
	public static extern void QTextFormat_Background(void* c_this);
	[LinkName("QTextFormat_ClearBackground")]
	public static extern void QTextFormat_ClearBackground(void* c_this);
	[LinkName("QTextFormat_SetForeground")]
	public static extern void QTextFormat_SetForeground(void* c_this, void* brush);
	[LinkName("QTextFormat_Foreground")]
	public static extern void QTextFormat_Foreground(void* c_this);
	[LinkName("QTextFormat_ClearForeground")]
	public static extern void QTextFormat_ClearForeground(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextFormat_Delete")]
	public static extern void QTextFormat_Delete(void* self);
}
public class QTextCharFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextCharFormat_new();
	}
	
	public ~this()
	{
		CQt.QTextCharFormat_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextCharFormat_IsValid(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QTextCharFormat_SetFont(this.nativePtr, font);
	}
	
	public void Font()
	{
		CQt.QTextCharFormat_Font(this.nativePtr);
	}
	
	public void SetFontFamily(libqt_string family)
	{
		CQt.QTextCharFormat_SetFontFamily(this.nativePtr, family);
	}
	
	public libqt_string FontFamily()
	{
		return CQt.QTextCharFormat_FontFamily(this.nativePtr);
	}
	
	public void SetFontFamilies(libqt_string[] families)
	{
		CQt.QTextCharFormat_SetFontFamilies(this.nativePtr, families);
	}
	
	public void FontFamilies()
	{
		CQt.QTextCharFormat_FontFamilies(this.nativePtr);
	}
	
	public void SetFontStyleName(libqt_string styleName)
	{
		CQt.QTextCharFormat_SetFontStyleName(this.nativePtr, styleName);
	}
	
	public void FontStyleName()
	{
		CQt.QTextCharFormat_FontStyleName(this.nativePtr);
	}
	
	public void SetFontPointSize(double size)
	{
		CQt.QTextCharFormat_SetFontPointSize(this.nativePtr, size);
	}
	
	public double FontPointSize()
	{
		return CQt.QTextCharFormat_FontPointSize(this.nativePtr);
	}
	
	public void SetFontWeight(int32 weight)
	{
		CQt.QTextCharFormat_SetFontWeight(this.nativePtr, weight);
	}
	
	public int32 FontWeight()
	{
		return CQt.QTextCharFormat_FontWeight(this.nativePtr);
	}
	
	public void SetFontItalic(bool italic)
	{
		CQt.QTextCharFormat_SetFontItalic(this.nativePtr, italic);
	}
	
	public bool FontItalic()
	{
		return CQt.QTextCharFormat_FontItalic(this.nativePtr);
	}
	
	public void SetFontCapitalization(int64 capitalization)
	{
		CQt.QTextCharFormat_SetFontCapitalization(this.nativePtr, capitalization);
	}
	
	public int64 FontCapitalization()
	{
		return CQt.QTextCharFormat_FontCapitalization(this.nativePtr);
	}
	
	public void SetFontLetterSpacingType(int64 letterSpacingType)
	{
		CQt.QTextCharFormat_SetFontLetterSpacingType(this.nativePtr, letterSpacingType);
	}
	
	public int64 FontLetterSpacingType()
	{
		return CQt.QTextCharFormat_FontLetterSpacingType(this.nativePtr);
	}
	
	public void SetFontLetterSpacing(double spacing)
	{
		CQt.QTextCharFormat_SetFontLetterSpacing(this.nativePtr, spacing);
	}
	
	public double FontLetterSpacing()
	{
		return CQt.QTextCharFormat_FontLetterSpacing(this.nativePtr);
	}
	
	public void SetFontWordSpacing(double spacing)
	{
		CQt.QTextCharFormat_SetFontWordSpacing(this.nativePtr, spacing);
	}
	
	public double FontWordSpacing()
	{
		return CQt.QTextCharFormat_FontWordSpacing(this.nativePtr);
	}
	
	public void SetFontUnderline(bool underline)
	{
		CQt.QTextCharFormat_SetFontUnderline(this.nativePtr, underline);
	}
	
	public bool FontUnderline()
	{
		return CQt.QTextCharFormat_FontUnderline(this.nativePtr);
	}
	
	public void SetFontOverline(bool overline)
	{
		CQt.QTextCharFormat_SetFontOverline(this.nativePtr, overline);
	}
	
	public bool FontOverline()
	{
		return CQt.QTextCharFormat_FontOverline(this.nativePtr);
	}
	
	public void SetFontStrikeOut(bool strikeOut)
	{
		CQt.QTextCharFormat_SetFontStrikeOut(this.nativePtr, strikeOut);
	}
	
	public bool FontStrikeOut()
	{
		return CQt.QTextCharFormat_FontStrikeOut(this.nativePtr);
	}
	
	public void SetUnderlineColor(void* color)
	{
		CQt.QTextCharFormat_SetUnderlineColor(this.nativePtr, color);
	}
	
	public void UnderlineColor()
	{
		CQt.QTextCharFormat_UnderlineColor(this.nativePtr);
	}
	
	public void SetFontFixedPitch(bool fixedPitch)
	{
		CQt.QTextCharFormat_SetFontFixedPitch(this.nativePtr, fixedPitch);
	}
	
	public bool FontFixedPitch()
	{
		return CQt.QTextCharFormat_FontFixedPitch(this.nativePtr);
	}
	
	public void SetFontStretch(int32 factor)
	{
		CQt.QTextCharFormat_SetFontStretch(this.nativePtr, factor);
	}
	
	public int32 FontStretch()
	{
		return CQt.QTextCharFormat_FontStretch(this.nativePtr);
	}
	
	public void SetFontStyleHint(int64 hint)
	{
		CQt.QTextCharFormat_SetFontStyleHint(this.nativePtr, hint);
	}
	
	public void SetFontStyleStrategy(int64 strategy)
	{
		CQt.QTextCharFormat_SetFontStyleStrategy(this.nativePtr, strategy);
	}
	
	public int64 FontStyleHint()
	{
		return CQt.QTextCharFormat_FontStyleHint(this.nativePtr);
	}
	
	public int64 FontStyleStrategy()
	{
		return CQt.QTextCharFormat_FontStyleStrategy(this.nativePtr);
	}
	
	public void SetFontHintingPreference(int64 hintingPreference)
	{
		CQt.QTextCharFormat_SetFontHintingPreference(this.nativePtr, hintingPreference);
	}
	
	public int64 FontHintingPreference()
	{
		return CQt.QTextCharFormat_FontHintingPreference(this.nativePtr);
	}
	
	public void SetFontKerning(bool enable)
	{
		CQt.QTextCharFormat_SetFontKerning(this.nativePtr, enable);
	}
	
	public bool FontKerning()
	{
		return CQt.QTextCharFormat_FontKerning(this.nativePtr);
	}
	
	public void SetUnderlineStyle(int64 style)
	{
		CQt.QTextCharFormat_SetUnderlineStyle(this.nativePtr, style);
	}
	
	public int64 UnderlineStyle()
	{
		return CQt.QTextCharFormat_UnderlineStyle(this.nativePtr);
	}
	
	public void SetVerticalAlignment(int64 alignment)
	{
		CQt.QTextCharFormat_SetVerticalAlignment(this.nativePtr, alignment);
	}
	
	public int64 VerticalAlignment()
	{
		return CQt.QTextCharFormat_VerticalAlignment(this.nativePtr);
	}
	
	public void SetTextOutline(void* pen)
	{
		CQt.QTextCharFormat_SetTextOutline(this.nativePtr, pen);
	}
	
	public void TextOutline()
	{
		CQt.QTextCharFormat_TextOutline(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string tip)
	{
		CQt.QTextCharFormat_SetToolTip(this.nativePtr, tip);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QTextCharFormat_ToolTip(this.nativePtr);
	}
	
	public void SetSuperScriptBaseline(double baseline)
	{
		CQt.QTextCharFormat_SetSuperScriptBaseline(this.nativePtr, baseline);
	}
	
	public double SuperScriptBaseline()
	{
		return CQt.QTextCharFormat_SuperScriptBaseline(this.nativePtr);
	}
	
	public void SetSubScriptBaseline(double baseline)
	{
		CQt.QTextCharFormat_SetSubScriptBaseline(this.nativePtr, baseline);
	}
	
	public double SubScriptBaseline()
	{
		return CQt.QTextCharFormat_SubScriptBaseline(this.nativePtr);
	}
	
	public void SetBaselineOffset(double baseline)
	{
		CQt.QTextCharFormat_SetBaselineOffset(this.nativePtr, baseline);
	}
	
	public double BaselineOffset()
	{
		return CQt.QTextCharFormat_BaselineOffset(this.nativePtr);
	}
	
	public void SetAnchor(bool anchor)
	{
		CQt.QTextCharFormat_SetAnchor(this.nativePtr, anchor);
	}
	
	public bool IsAnchor()
	{
		return CQt.QTextCharFormat_IsAnchor(this.nativePtr);
	}
	
	public void SetAnchorHref(libqt_string value)
	{
		CQt.QTextCharFormat_SetAnchorHref(this.nativePtr, value);
	}
	
	public libqt_string AnchorHref()
	{
		return CQt.QTextCharFormat_AnchorHref(this.nativePtr);
	}
	
	public void SetAnchorNames(libqt_string[] names)
	{
		CQt.QTextCharFormat_SetAnchorNames(this.nativePtr, names);
	}
	
	public libqt_string[] AnchorNames()
	{
		return CQt.QTextCharFormat_AnchorNames(this.nativePtr);
	}
	
	public void SetTableCellRowSpan(int32 tableCellRowSpan)
	{
		CQt.QTextCharFormat_SetTableCellRowSpan(this.nativePtr, tableCellRowSpan);
	}
	
	public int32 TableCellRowSpan()
	{
		return CQt.QTextCharFormat_TableCellRowSpan(this.nativePtr);
	}
	
	public void SetTableCellColumnSpan(int32 tableCellColumnSpan)
	{
		CQt.QTextCharFormat_SetTableCellColumnSpan(this.nativePtr, tableCellColumnSpan);
	}
	
	public int32 TableCellColumnSpan()
	{
		return CQt.QTextCharFormat_TableCellColumnSpan(this.nativePtr);
	}
	
	public void SetFont2(void* font, int64 behavior)
	{
		CQt.QTextCharFormat_SetFont2(this.nativePtr, font, behavior);
	}
	
	public void SetFontStyleHint2(int64 hint, int64 strategy)
	{
		CQt.QTextCharFormat_SetFontStyleHint2(this.nativePtr, hint, strategy);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextFormat_OperatorAssign(this.nativePtr, rhs);
	}
	
	public void Swap(void* other)
	{
		CQt.QTextFormat_Swap(this.nativePtr, other);
	}
	
	public void Merge(void* other)
	{
		CQt.QTextFormat_Merge(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextFormat_IsEmpty(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTextFormat_Type(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextFormat_ObjectIndex(this.nativePtr);
	}
	
	public void SetObjectIndex(int32 object)
	{
		CQt.QTextFormat_SetObjectIndex(this.nativePtr, object);
	}
	
	public void Property(int32 propertyId)
	{
		CQt.QTextFormat_Property(this.nativePtr, propertyId);
	}
	
	public void SetProperty(int32 propertyId, void* value)
	{
		CQt.QTextFormat_SetProperty(this.nativePtr, propertyId, value);
	}
	
	public void ClearProperty(int32 propertyId)
	{
		CQt.QTextFormat_ClearProperty(this.nativePtr, propertyId);
	}
	
	public bool HasProperty(int32 propertyId)
	{
		return CQt.QTextFormat_HasProperty(this.nativePtr, propertyId);
	}
	
	public bool BoolProperty(int32 propertyId)
	{
		return CQt.QTextFormat_BoolProperty(this.nativePtr, propertyId);
	}
	
	public int32 IntProperty(int32 propertyId)
	{
		return CQt.QTextFormat_IntProperty(this.nativePtr, propertyId);
	}
	
	public double DoubleProperty(int32 propertyId)
	{
		return CQt.QTextFormat_DoubleProperty(this.nativePtr, propertyId);
	}
	
	public libqt_string StringProperty(int32 propertyId)
	{
		return CQt.QTextFormat_StringProperty(this.nativePtr, propertyId);
	}
	
	public void ColorProperty(int32 propertyId)
	{
		CQt.QTextFormat_ColorProperty(this.nativePtr, propertyId);
	}
	
	public void PenProperty(int32 propertyId)
	{
		CQt.QTextFormat_PenProperty(this.nativePtr, propertyId);
	}
	
	public void BrushProperty(int32 propertyId)
	{
		CQt.QTextFormat_BrushProperty(this.nativePtr, propertyId);
	}
	
	public void LengthProperty(int32 propertyId)
	{
		CQt.QTextFormat_LengthProperty(this.nativePtr, propertyId);
	}
	
	public void[] LengthVectorProperty(int32 propertyId)
	{
		return CQt.QTextFormat_LengthVectorProperty(this.nativePtr, propertyId);
	}
	
	public void SetProperty2(int32 propertyId, void[] lengths)
	{
		CQt.QTextFormat_SetProperty2(this.nativePtr, propertyId, lengths);
	}
	
	public void* Properties()
	{
		return CQt.QTextFormat_Properties(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QTextFormat_PropertyCount(this.nativePtr);
	}
	
	public void SetObjectType(int32 typeVal)
	{
		CQt.QTextFormat_SetObjectType(this.nativePtr, typeVal);
	}
	
	public int32 ObjectType()
	{
		return CQt.QTextFormat_ObjectType(this.nativePtr);
	}
	
	public bool IsCharFormat()
	{
		return CQt.QTextFormat_IsCharFormat(this.nativePtr);
	}
	
	public bool IsBlockFormat()
	{
		return CQt.QTextFormat_IsBlockFormat(this.nativePtr);
	}
	
	public bool IsListFormat()
	{
		return CQt.QTextFormat_IsListFormat(this.nativePtr);
	}
	
	public bool IsFrameFormat()
	{
		return CQt.QTextFormat_IsFrameFormat(this.nativePtr);
	}
	
	public bool IsImageFormat()
	{
		return CQt.QTextFormat_IsImageFormat(this.nativePtr);
	}
	
	public bool IsTableFormat()
	{
		return CQt.QTextFormat_IsTableFormat(this.nativePtr);
	}
	
	public bool IsTableCellFormat()
	{
		return CQt.QTextFormat_IsTableCellFormat(this.nativePtr);
	}
	
	public void ToBlockFormat()
	{
		CQt.QTextFormat_ToBlockFormat(this.nativePtr);
	}
	
	public void ToCharFormat()
	{
		CQt.QTextFormat_ToCharFormat(this.nativePtr);
	}
	
	public void ToListFormat()
	{
		CQt.QTextFormat_ToListFormat(this.nativePtr);
	}
	
	public void ToTableFormat()
	{
		CQt.QTextFormat_ToTableFormat(this.nativePtr);
	}
	
	public void ToFrameFormat()
	{
		CQt.QTextFormat_ToFrameFormat(this.nativePtr);
	}
	
	public void ToImageFormat()
	{
		CQt.QTextFormat_ToImageFormat(this.nativePtr);
	}
	
	public void ToTableCellFormat()
	{
		CQt.QTextFormat_ToTableCellFormat(this.nativePtr);
	}
	
	public bool OperatorEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorEqual(this.nativePtr, rhs);
	}
	
	public bool OperatorNotEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorNotEqual(this.nativePtr, rhs);
	}
	
	public void ToQVariant()
	{
		CQt.QTextFormat_ToQVariant(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QTextFormat_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QTextFormat_LayoutDirection(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTextFormat_SetBackground(this.nativePtr, brush);
	}
	
	public void Background()
	{
		CQt.QTextFormat_Background(this.nativePtr);
	}
	
	public void ClearBackground()
	{
		CQt.QTextFormat_ClearBackground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTextFormat_SetForeground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTextFormat_Foreground(this.nativePtr);
	}
	
	public void ClearForeground()
	{
		CQt.QTextFormat_ClearForeground(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextCharFormat_new")]
	public static extern void* QTextCharFormat_new();
	[LinkName("QTextCharFormat_new2")]
	public static extern void* QTextCharFormat_new2(void* param1);
	[LinkName("QTextCharFormat_IsValid")]
	public static extern bool QTextCharFormat_IsValid(void* c_this);
	[LinkName("QTextCharFormat_SetFont")]
	public static extern void QTextCharFormat_SetFont(void* c_this, void* font);
	[LinkName("QTextCharFormat_Font")]
	public static extern void QTextCharFormat_Font(void* c_this);
	[LinkName("QTextCharFormat_SetFontFamily")]
	public static extern void QTextCharFormat_SetFontFamily(void* c_this, libqt_string family);
	[LinkName("QTextCharFormat_FontFamily")]
	public static extern libqt_string QTextCharFormat_FontFamily(void* c_this);
	[LinkName("QTextCharFormat_SetFontFamilies")]
	public static extern void QTextCharFormat_SetFontFamilies(void* c_this, libqt_string[] families);
	[LinkName("QTextCharFormat_FontFamilies")]
	public static extern void QTextCharFormat_FontFamilies(void* c_this);
	[LinkName("QTextCharFormat_SetFontStyleName")]
	public static extern void QTextCharFormat_SetFontStyleName(void* c_this, libqt_string styleName);
	[LinkName("QTextCharFormat_FontStyleName")]
	public static extern void QTextCharFormat_FontStyleName(void* c_this);
	[LinkName("QTextCharFormat_SetFontPointSize")]
	public static extern void QTextCharFormat_SetFontPointSize(void* c_this, double size);
	[LinkName("QTextCharFormat_FontPointSize")]
	public static extern double QTextCharFormat_FontPointSize(void* c_this);
	[LinkName("QTextCharFormat_SetFontWeight")]
	public static extern void QTextCharFormat_SetFontWeight(void* c_this, int32 weight);
	[LinkName("QTextCharFormat_FontWeight")]
	public static extern int32 QTextCharFormat_FontWeight(void* c_this);
	[LinkName("QTextCharFormat_SetFontItalic")]
	public static extern void QTextCharFormat_SetFontItalic(void* c_this, bool italic);
	[LinkName("QTextCharFormat_FontItalic")]
	public static extern bool QTextCharFormat_FontItalic(void* c_this);
	[LinkName("QTextCharFormat_SetFontCapitalization")]
	public static extern void QTextCharFormat_SetFontCapitalization(void* c_this, int64 capitalization);
	[LinkName("QTextCharFormat_FontCapitalization")]
	public static extern int64 QTextCharFormat_FontCapitalization(void* c_this);
	[LinkName("QTextCharFormat_SetFontLetterSpacingType")]
	public static extern void QTextCharFormat_SetFontLetterSpacingType(void* c_this, int64 letterSpacingType);
	[LinkName("QTextCharFormat_FontLetterSpacingType")]
	public static extern int64 QTextCharFormat_FontLetterSpacingType(void* c_this);
	[LinkName("QTextCharFormat_SetFontLetterSpacing")]
	public static extern void QTextCharFormat_SetFontLetterSpacing(void* c_this, double spacing);
	[LinkName("QTextCharFormat_FontLetterSpacing")]
	public static extern double QTextCharFormat_FontLetterSpacing(void* c_this);
	[LinkName("QTextCharFormat_SetFontWordSpacing")]
	public static extern void QTextCharFormat_SetFontWordSpacing(void* c_this, double spacing);
	[LinkName("QTextCharFormat_FontWordSpacing")]
	public static extern double QTextCharFormat_FontWordSpacing(void* c_this);
	[LinkName("QTextCharFormat_SetFontUnderline")]
	public static extern void QTextCharFormat_SetFontUnderline(void* c_this, bool underline);
	[LinkName("QTextCharFormat_FontUnderline")]
	public static extern bool QTextCharFormat_FontUnderline(void* c_this);
	[LinkName("QTextCharFormat_SetFontOverline")]
	public static extern void QTextCharFormat_SetFontOverline(void* c_this, bool overline);
	[LinkName("QTextCharFormat_FontOverline")]
	public static extern bool QTextCharFormat_FontOverline(void* c_this);
	[LinkName("QTextCharFormat_SetFontStrikeOut")]
	public static extern void QTextCharFormat_SetFontStrikeOut(void* c_this, bool strikeOut);
	[LinkName("QTextCharFormat_FontStrikeOut")]
	public static extern bool QTextCharFormat_FontStrikeOut(void* c_this);
	[LinkName("QTextCharFormat_SetUnderlineColor")]
	public static extern void QTextCharFormat_SetUnderlineColor(void* c_this, void* color);
	[LinkName("QTextCharFormat_UnderlineColor")]
	public static extern void QTextCharFormat_UnderlineColor(void* c_this);
	[LinkName("QTextCharFormat_SetFontFixedPitch")]
	public static extern void QTextCharFormat_SetFontFixedPitch(void* c_this, bool fixedPitch);
	[LinkName("QTextCharFormat_FontFixedPitch")]
	public static extern bool QTextCharFormat_FontFixedPitch(void* c_this);
	[LinkName("QTextCharFormat_SetFontStretch")]
	public static extern void QTextCharFormat_SetFontStretch(void* c_this, int32 factor);
	[LinkName("QTextCharFormat_FontStretch")]
	public static extern int32 QTextCharFormat_FontStretch(void* c_this);
	[LinkName("QTextCharFormat_SetFontStyleHint")]
	public static extern void QTextCharFormat_SetFontStyleHint(void* c_this, int64 hint);
	[LinkName("QTextCharFormat_SetFontStyleStrategy")]
	public static extern void QTextCharFormat_SetFontStyleStrategy(void* c_this, int64 strategy);
	[LinkName("QTextCharFormat_FontStyleHint")]
	public static extern int64 QTextCharFormat_FontStyleHint(void* c_this);
	[LinkName("QTextCharFormat_FontStyleStrategy")]
	public static extern int64 QTextCharFormat_FontStyleStrategy(void* c_this);
	[LinkName("QTextCharFormat_SetFontHintingPreference")]
	public static extern void QTextCharFormat_SetFontHintingPreference(void* c_this, int64 hintingPreference);
	[LinkName("QTextCharFormat_FontHintingPreference")]
	public static extern int64 QTextCharFormat_FontHintingPreference(void* c_this);
	[LinkName("QTextCharFormat_SetFontKerning")]
	public static extern void QTextCharFormat_SetFontKerning(void* c_this, bool enable);
	[LinkName("QTextCharFormat_FontKerning")]
	public static extern bool QTextCharFormat_FontKerning(void* c_this);
	[LinkName("QTextCharFormat_SetUnderlineStyle")]
	public static extern void QTextCharFormat_SetUnderlineStyle(void* c_this, int64 style);
	[LinkName("QTextCharFormat_UnderlineStyle")]
	public static extern int64 QTextCharFormat_UnderlineStyle(void* c_this);
	[LinkName("QTextCharFormat_SetVerticalAlignment")]
	public static extern void QTextCharFormat_SetVerticalAlignment(void* c_this, int64 alignment);
	[LinkName("QTextCharFormat_VerticalAlignment")]
	public static extern int64 QTextCharFormat_VerticalAlignment(void* c_this);
	[LinkName("QTextCharFormat_SetTextOutline")]
	public static extern void QTextCharFormat_SetTextOutline(void* c_this, void* pen);
	[LinkName("QTextCharFormat_TextOutline")]
	public static extern void QTextCharFormat_TextOutline(void* c_this);
	[LinkName("QTextCharFormat_SetToolTip")]
	public static extern void QTextCharFormat_SetToolTip(void* c_this, libqt_string tip);
	[LinkName("QTextCharFormat_ToolTip")]
	public static extern libqt_string QTextCharFormat_ToolTip(void* c_this);
	[LinkName("QTextCharFormat_SetSuperScriptBaseline")]
	public static extern void QTextCharFormat_SetSuperScriptBaseline(void* c_this, double baseline);
	[LinkName("QTextCharFormat_SuperScriptBaseline")]
	public static extern double QTextCharFormat_SuperScriptBaseline(void* c_this);
	[LinkName("QTextCharFormat_SetSubScriptBaseline")]
	public static extern void QTextCharFormat_SetSubScriptBaseline(void* c_this, double baseline);
	[LinkName("QTextCharFormat_SubScriptBaseline")]
	public static extern double QTextCharFormat_SubScriptBaseline(void* c_this);
	[LinkName("QTextCharFormat_SetBaselineOffset")]
	public static extern void QTextCharFormat_SetBaselineOffset(void* c_this, double baseline);
	[LinkName("QTextCharFormat_BaselineOffset")]
	public static extern double QTextCharFormat_BaselineOffset(void* c_this);
	[LinkName("QTextCharFormat_SetAnchor")]
	public static extern void QTextCharFormat_SetAnchor(void* c_this, bool anchor);
	[LinkName("QTextCharFormat_IsAnchor")]
	public static extern bool QTextCharFormat_IsAnchor(void* c_this);
	[LinkName("QTextCharFormat_SetAnchorHref")]
	public static extern void QTextCharFormat_SetAnchorHref(void* c_this, libqt_string value);
	[LinkName("QTextCharFormat_AnchorHref")]
	public static extern libqt_string QTextCharFormat_AnchorHref(void* c_this);
	[LinkName("QTextCharFormat_SetAnchorNames")]
	public static extern void QTextCharFormat_SetAnchorNames(void* c_this, libqt_string[] names);
	[LinkName("QTextCharFormat_AnchorNames")]
	public static extern libqt_string[] QTextCharFormat_AnchorNames(void* c_this);
	[LinkName("QTextCharFormat_SetTableCellRowSpan")]
	public static extern void QTextCharFormat_SetTableCellRowSpan(void* c_this, int32 tableCellRowSpan);
	[LinkName("QTextCharFormat_TableCellRowSpan")]
	public static extern int32 QTextCharFormat_TableCellRowSpan(void* c_this);
	[LinkName("QTextCharFormat_SetTableCellColumnSpan")]
	public static extern void QTextCharFormat_SetTableCellColumnSpan(void* c_this, int32 tableCellColumnSpan);
	[LinkName("QTextCharFormat_TableCellColumnSpan")]
	public static extern int32 QTextCharFormat_TableCellColumnSpan(void* c_this);
	[LinkName("QTextCharFormat_SetFont2")]
	public static extern void QTextCharFormat_SetFont2(void* c_this, void* font, int64 behavior);
	[LinkName("QTextCharFormat_SetFontStyleHint2")]
	public static extern void QTextCharFormat_SetFontStyleHint2(void* c_this, int64 hint, int64 strategy);
	/// Delete this object from C++ memory
	[LinkName("QTextCharFormat_Delete")]
	public static extern void QTextCharFormat_Delete(void* self);
}
public class QTextBlockFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextBlockFormat_new();
	}
	
	public ~this()
	{
		CQt.QTextBlockFormat_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextBlockFormat_IsValid(this.nativePtr);
	}
	
	public void SetAlignment(int64 alignment)
	{
		CQt.QTextBlockFormat_SetAlignment(this.nativePtr, alignment);
	}
	
	public int64 Alignment()
	{
		return CQt.QTextBlockFormat_Alignment(this.nativePtr);
	}
	
	public void SetTopMargin(double margin)
	{
		CQt.QTextBlockFormat_SetTopMargin(this.nativePtr, margin);
	}
	
	public double TopMargin()
	{
		return CQt.QTextBlockFormat_TopMargin(this.nativePtr);
	}
	
	public void SetBottomMargin(double margin)
	{
		CQt.QTextBlockFormat_SetBottomMargin(this.nativePtr, margin);
	}
	
	public double BottomMargin()
	{
		return CQt.QTextBlockFormat_BottomMargin(this.nativePtr);
	}
	
	public void SetLeftMargin(double margin)
	{
		CQt.QTextBlockFormat_SetLeftMargin(this.nativePtr, margin);
	}
	
	public double LeftMargin()
	{
		return CQt.QTextBlockFormat_LeftMargin(this.nativePtr);
	}
	
	public void SetRightMargin(double margin)
	{
		CQt.QTextBlockFormat_SetRightMargin(this.nativePtr, margin);
	}
	
	public double RightMargin()
	{
		return CQt.QTextBlockFormat_RightMargin(this.nativePtr);
	}
	
	public void SetTextIndent(double aindent)
	{
		CQt.QTextBlockFormat_SetTextIndent(this.nativePtr, aindent);
	}
	
	public double TextIndent()
	{
		return CQt.QTextBlockFormat_TextIndent(this.nativePtr);
	}
	
	public void SetIndent(int32 indent)
	{
		CQt.QTextBlockFormat_SetIndent(this.nativePtr, indent);
	}
	
	public int32 Indent()
	{
		return CQt.QTextBlockFormat_Indent(this.nativePtr);
	}
	
	public void SetHeadingLevel(int32 alevel)
	{
		CQt.QTextBlockFormat_SetHeadingLevel(this.nativePtr, alevel);
	}
	
	public int32 HeadingLevel()
	{
		return CQt.QTextBlockFormat_HeadingLevel(this.nativePtr);
	}
	
	public void SetLineHeight(double height, int32 heightType)
	{
		CQt.QTextBlockFormat_SetLineHeight(this.nativePtr, height, heightType);
	}
	
	public double LineHeight(double scriptLineHeight, double scaling)
	{
		return CQt.QTextBlockFormat_LineHeight(this.nativePtr, scriptLineHeight, scaling);
	}
	
	public double LineHeight2()
	{
		return CQt.QTextBlockFormat_LineHeight2(this.nativePtr);
	}
	
	public int32 LineHeightType()
	{
		return CQt.QTextBlockFormat_LineHeightType(this.nativePtr);
	}
	
	public void SetNonBreakableLines(bool b)
	{
		CQt.QTextBlockFormat_SetNonBreakableLines(this.nativePtr, b);
	}
	
	public bool NonBreakableLines()
	{
		return CQt.QTextBlockFormat_NonBreakableLines(this.nativePtr);
	}
	
	public void SetPageBreakPolicy(int64 flags)
	{
		CQt.QTextBlockFormat_SetPageBreakPolicy(this.nativePtr, flags);
	}
	
	public int64 PageBreakPolicy()
	{
		return CQt.QTextBlockFormat_PageBreakPolicy(this.nativePtr);
	}
	
	public void SetTabPositions(QTextOption__Tab[] tabs)
	{
		CQt.QTextBlockFormat_SetTabPositions(this.nativePtr, tabs);
	}
	
	public QTextOption__Tab[] TabPositions()
	{
		return CQt.QTextBlockFormat_TabPositions(this.nativePtr);
	}
	
	public void SetMarker(int64 marker)
	{
		CQt.QTextBlockFormat_SetMarker(this.nativePtr, marker);
	}
	
	public int64 Marker()
	{
		return CQt.QTextBlockFormat_Marker(this.nativePtr);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextFormat_OperatorAssign(this.nativePtr, rhs);
	}
	
	public void Swap(void* other)
	{
		CQt.QTextFormat_Swap(this.nativePtr, other);
	}
	
	public void Merge(void* other)
	{
		CQt.QTextFormat_Merge(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextFormat_IsEmpty(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTextFormat_Type(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextFormat_ObjectIndex(this.nativePtr);
	}
	
	public void SetObjectIndex(int32 object)
	{
		CQt.QTextFormat_SetObjectIndex(this.nativePtr, object);
	}
	
	public void Property(int32 propertyId)
	{
		CQt.QTextFormat_Property(this.nativePtr, propertyId);
	}
	
	public void SetProperty(int32 propertyId, void* value)
	{
		CQt.QTextFormat_SetProperty(this.nativePtr, propertyId, value);
	}
	
	public void ClearProperty(int32 propertyId)
	{
		CQt.QTextFormat_ClearProperty(this.nativePtr, propertyId);
	}
	
	public bool HasProperty(int32 propertyId)
	{
		return CQt.QTextFormat_HasProperty(this.nativePtr, propertyId);
	}
	
	public bool BoolProperty(int32 propertyId)
	{
		return CQt.QTextFormat_BoolProperty(this.nativePtr, propertyId);
	}
	
	public int32 IntProperty(int32 propertyId)
	{
		return CQt.QTextFormat_IntProperty(this.nativePtr, propertyId);
	}
	
	public double DoubleProperty(int32 propertyId)
	{
		return CQt.QTextFormat_DoubleProperty(this.nativePtr, propertyId);
	}
	
	public libqt_string StringProperty(int32 propertyId)
	{
		return CQt.QTextFormat_StringProperty(this.nativePtr, propertyId);
	}
	
	public void ColorProperty(int32 propertyId)
	{
		CQt.QTextFormat_ColorProperty(this.nativePtr, propertyId);
	}
	
	public void PenProperty(int32 propertyId)
	{
		CQt.QTextFormat_PenProperty(this.nativePtr, propertyId);
	}
	
	public void BrushProperty(int32 propertyId)
	{
		CQt.QTextFormat_BrushProperty(this.nativePtr, propertyId);
	}
	
	public void LengthProperty(int32 propertyId)
	{
		CQt.QTextFormat_LengthProperty(this.nativePtr, propertyId);
	}
	
	public void[] LengthVectorProperty(int32 propertyId)
	{
		return CQt.QTextFormat_LengthVectorProperty(this.nativePtr, propertyId);
	}
	
	public void SetProperty2(int32 propertyId, void[] lengths)
	{
		CQt.QTextFormat_SetProperty2(this.nativePtr, propertyId, lengths);
	}
	
	public void* Properties()
	{
		return CQt.QTextFormat_Properties(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QTextFormat_PropertyCount(this.nativePtr);
	}
	
	public void SetObjectType(int32 typeVal)
	{
		CQt.QTextFormat_SetObjectType(this.nativePtr, typeVal);
	}
	
	public int32 ObjectType()
	{
		return CQt.QTextFormat_ObjectType(this.nativePtr);
	}
	
	public bool IsCharFormat()
	{
		return CQt.QTextFormat_IsCharFormat(this.nativePtr);
	}
	
	public bool IsBlockFormat()
	{
		return CQt.QTextFormat_IsBlockFormat(this.nativePtr);
	}
	
	public bool IsListFormat()
	{
		return CQt.QTextFormat_IsListFormat(this.nativePtr);
	}
	
	public bool IsFrameFormat()
	{
		return CQt.QTextFormat_IsFrameFormat(this.nativePtr);
	}
	
	public bool IsImageFormat()
	{
		return CQt.QTextFormat_IsImageFormat(this.nativePtr);
	}
	
	public bool IsTableFormat()
	{
		return CQt.QTextFormat_IsTableFormat(this.nativePtr);
	}
	
	public bool IsTableCellFormat()
	{
		return CQt.QTextFormat_IsTableCellFormat(this.nativePtr);
	}
	
	public void ToBlockFormat()
	{
		CQt.QTextFormat_ToBlockFormat(this.nativePtr);
	}
	
	public void ToCharFormat()
	{
		CQt.QTextFormat_ToCharFormat(this.nativePtr);
	}
	
	public void ToListFormat()
	{
		CQt.QTextFormat_ToListFormat(this.nativePtr);
	}
	
	public void ToTableFormat()
	{
		CQt.QTextFormat_ToTableFormat(this.nativePtr);
	}
	
	public void ToFrameFormat()
	{
		CQt.QTextFormat_ToFrameFormat(this.nativePtr);
	}
	
	public void ToImageFormat()
	{
		CQt.QTextFormat_ToImageFormat(this.nativePtr);
	}
	
	public void ToTableCellFormat()
	{
		CQt.QTextFormat_ToTableCellFormat(this.nativePtr);
	}
	
	public bool OperatorEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorEqual(this.nativePtr, rhs);
	}
	
	public bool OperatorNotEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorNotEqual(this.nativePtr, rhs);
	}
	
	public void ToQVariant()
	{
		CQt.QTextFormat_ToQVariant(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QTextFormat_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QTextFormat_LayoutDirection(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTextFormat_SetBackground(this.nativePtr, brush);
	}
	
	public void Background()
	{
		CQt.QTextFormat_Background(this.nativePtr);
	}
	
	public void ClearBackground()
	{
		CQt.QTextFormat_ClearBackground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTextFormat_SetForeground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTextFormat_Foreground(this.nativePtr);
	}
	
	public void ClearForeground()
	{
		CQt.QTextFormat_ClearForeground(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextBlockFormat_new")]
	public static extern void* QTextBlockFormat_new();
	[LinkName("QTextBlockFormat_new2")]
	public static extern void* QTextBlockFormat_new2(void* param1);
	[LinkName("QTextBlockFormat_IsValid")]
	public static extern bool QTextBlockFormat_IsValid(void* c_this);
	[LinkName("QTextBlockFormat_SetAlignment")]
	public static extern void QTextBlockFormat_SetAlignment(void* c_this, int64 alignment);
	[LinkName("QTextBlockFormat_Alignment")]
	public static extern int64 QTextBlockFormat_Alignment(void* c_this);
	[LinkName("QTextBlockFormat_SetTopMargin")]
	public static extern void QTextBlockFormat_SetTopMargin(void* c_this, double margin);
	[LinkName("QTextBlockFormat_TopMargin")]
	public static extern double QTextBlockFormat_TopMargin(void* c_this);
	[LinkName("QTextBlockFormat_SetBottomMargin")]
	public static extern void QTextBlockFormat_SetBottomMargin(void* c_this, double margin);
	[LinkName("QTextBlockFormat_BottomMargin")]
	public static extern double QTextBlockFormat_BottomMargin(void* c_this);
	[LinkName("QTextBlockFormat_SetLeftMargin")]
	public static extern void QTextBlockFormat_SetLeftMargin(void* c_this, double margin);
	[LinkName("QTextBlockFormat_LeftMargin")]
	public static extern double QTextBlockFormat_LeftMargin(void* c_this);
	[LinkName("QTextBlockFormat_SetRightMargin")]
	public static extern void QTextBlockFormat_SetRightMargin(void* c_this, double margin);
	[LinkName("QTextBlockFormat_RightMargin")]
	public static extern double QTextBlockFormat_RightMargin(void* c_this);
	[LinkName("QTextBlockFormat_SetTextIndent")]
	public static extern void QTextBlockFormat_SetTextIndent(void* c_this, double aindent);
	[LinkName("QTextBlockFormat_TextIndent")]
	public static extern double QTextBlockFormat_TextIndent(void* c_this);
	[LinkName("QTextBlockFormat_SetIndent")]
	public static extern void QTextBlockFormat_SetIndent(void* c_this, int32 indent);
	[LinkName("QTextBlockFormat_Indent")]
	public static extern int32 QTextBlockFormat_Indent(void* c_this);
	[LinkName("QTextBlockFormat_SetHeadingLevel")]
	public static extern void QTextBlockFormat_SetHeadingLevel(void* c_this, int32 alevel);
	[LinkName("QTextBlockFormat_HeadingLevel")]
	public static extern int32 QTextBlockFormat_HeadingLevel(void* c_this);
	[LinkName("QTextBlockFormat_SetLineHeight")]
	public static extern void QTextBlockFormat_SetLineHeight(void* c_this, double height, int32 heightType);
	[LinkName("QTextBlockFormat_LineHeight")]
	public static extern double QTextBlockFormat_LineHeight(void* c_this, double scriptLineHeight, double scaling);
	[LinkName("QTextBlockFormat_LineHeight2")]
	public static extern double QTextBlockFormat_LineHeight2(void* c_this);
	[LinkName("QTextBlockFormat_LineHeightType")]
	public static extern int32 QTextBlockFormat_LineHeightType(void* c_this);
	[LinkName("QTextBlockFormat_SetNonBreakableLines")]
	public static extern void QTextBlockFormat_SetNonBreakableLines(void* c_this, bool b);
	[LinkName("QTextBlockFormat_NonBreakableLines")]
	public static extern bool QTextBlockFormat_NonBreakableLines(void* c_this);
	[LinkName("QTextBlockFormat_SetPageBreakPolicy")]
	public static extern void QTextBlockFormat_SetPageBreakPolicy(void* c_this, int64 flags);
	[LinkName("QTextBlockFormat_PageBreakPolicy")]
	public static extern int64 QTextBlockFormat_PageBreakPolicy(void* c_this);
	[LinkName("QTextBlockFormat_SetTabPositions")]
	public static extern void QTextBlockFormat_SetTabPositions(void* c_this, QTextOption__Tab[] tabs);
	[LinkName("QTextBlockFormat_TabPositions")]
	public static extern QTextOption__Tab[] QTextBlockFormat_TabPositions(void* c_this);
	[LinkName("QTextBlockFormat_SetMarker")]
	public static extern void QTextBlockFormat_SetMarker(void* c_this, int64 marker);
	[LinkName("QTextBlockFormat_Marker")]
	public static extern int64 QTextBlockFormat_Marker(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextBlockFormat_Delete")]
	public static extern void QTextBlockFormat_Delete(void* self);
}
public class QTextListFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextListFormat_new();
	}
	
	public ~this()
	{
		CQt.QTextListFormat_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextListFormat_IsValid(this.nativePtr);
	}
	
	public void SetStyle(int64 style)
	{
		CQt.QTextListFormat_SetStyle(this.nativePtr, style);
	}
	
	public int64 Style()
	{
		return CQt.QTextListFormat_Style(this.nativePtr);
	}
	
	public void SetIndent(int32 indent)
	{
		CQt.QTextListFormat_SetIndent(this.nativePtr, indent);
	}
	
	public int32 Indent()
	{
		return CQt.QTextListFormat_Indent(this.nativePtr);
	}
	
	public void SetNumberPrefix(libqt_string numberPrefix)
	{
		CQt.QTextListFormat_SetNumberPrefix(this.nativePtr, numberPrefix);
	}
	
	public libqt_string NumberPrefix()
	{
		return CQt.QTextListFormat_NumberPrefix(this.nativePtr);
	}
	
	public void SetNumberSuffix(libqt_string numberSuffix)
	{
		CQt.QTextListFormat_SetNumberSuffix(this.nativePtr, numberSuffix);
	}
	
	public libqt_string NumberSuffix()
	{
		return CQt.QTextListFormat_NumberSuffix(this.nativePtr);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextFormat_OperatorAssign(this.nativePtr, rhs);
	}
	
	public void Swap(void* other)
	{
		CQt.QTextFormat_Swap(this.nativePtr, other);
	}
	
	public void Merge(void* other)
	{
		CQt.QTextFormat_Merge(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextFormat_IsEmpty(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTextFormat_Type(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextFormat_ObjectIndex(this.nativePtr);
	}
	
	public void SetObjectIndex(int32 object)
	{
		CQt.QTextFormat_SetObjectIndex(this.nativePtr, object);
	}
	
	public void Property(int32 propertyId)
	{
		CQt.QTextFormat_Property(this.nativePtr, propertyId);
	}
	
	public void SetProperty(int32 propertyId, void* value)
	{
		CQt.QTextFormat_SetProperty(this.nativePtr, propertyId, value);
	}
	
	public void ClearProperty(int32 propertyId)
	{
		CQt.QTextFormat_ClearProperty(this.nativePtr, propertyId);
	}
	
	public bool HasProperty(int32 propertyId)
	{
		return CQt.QTextFormat_HasProperty(this.nativePtr, propertyId);
	}
	
	public bool BoolProperty(int32 propertyId)
	{
		return CQt.QTextFormat_BoolProperty(this.nativePtr, propertyId);
	}
	
	public int32 IntProperty(int32 propertyId)
	{
		return CQt.QTextFormat_IntProperty(this.nativePtr, propertyId);
	}
	
	public double DoubleProperty(int32 propertyId)
	{
		return CQt.QTextFormat_DoubleProperty(this.nativePtr, propertyId);
	}
	
	public libqt_string StringProperty(int32 propertyId)
	{
		return CQt.QTextFormat_StringProperty(this.nativePtr, propertyId);
	}
	
	public void ColorProperty(int32 propertyId)
	{
		CQt.QTextFormat_ColorProperty(this.nativePtr, propertyId);
	}
	
	public void PenProperty(int32 propertyId)
	{
		CQt.QTextFormat_PenProperty(this.nativePtr, propertyId);
	}
	
	public void BrushProperty(int32 propertyId)
	{
		CQt.QTextFormat_BrushProperty(this.nativePtr, propertyId);
	}
	
	public void LengthProperty(int32 propertyId)
	{
		CQt.QTextFormat_LengthProperty(this.nativePtr, propertyId);
	}
	
	public void[] LengthVectorProperty(int32 propertyId)
	{
		return CQt.QTextFormat_LengthVectorProperty(this.nativePtr, propertyId);
	}
	
	public void SetProperty2(int32 propertyId, void[] lengths)
	{
		CQt.QTextFormat_SetProperty2(this.nativePtr, propertyId, lengths);
	}
	
	public void* Properties()
	{
		return CQt.QTextFormat_Properties(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QTextFormat_PropertyCount(this.nativePtr);
	}
	
	public void SetObjectType(int32 typeVal)
	{
		CQt.QTextFormat_SetObjectType(this.nativePtr, typeVal);
	}
	
	public int32 ObjectType()
	{
		return CQt.QTextFormat_ObjectType(this.nativePtr);
	}
	
	public bool IsCharFormat()
	{
		return CQt.QTextFormat_IsCharFormat(this.nativePtr);
	}
	
	public bool IsBlockFormat()
	{
		return CQt.QTextFormat_IsBlockFormat(this.nativePtr);
	}
	
	public bool IsListFormat()
	{
		return CQt.QTextFormat_IsListFormat(this.nativePtr);
	}
	
	public bool IsFrameFormat()
	{
		return CQt.QTextFormat_IsFrameFormat(this.nativePtr);
	}
	
	public bool IsImageFormat()
	{
		return CQt.QTextFormat_IsImageFormat(this.nativePtr);
	}
	
	public bool IsTableFormat()
	{
		return CQt.QTextFormat_IsTableFormat(this.nativePtr);
	}
	
	public bool IsTableCellFormat()
	{
		return CQt.QTextFormat_IsTableCellFormat(this.nativePtr);
	}
	
	public void ToBlockFormat()
	{
		CQt.QTextFormat_ToBlockFormat(this.nativePtr);
	}
	
	public void ToCharFormat()
	{
		CQt.QTextFormat_ToCharFormat(this.nativePtr);
	}
	
	public void ToListFormat()
	{
		CQt.QTextFormat_ToListFormat(this.nativePtr);
	}
	
	public void ToTableFormat()
	{
		CQt.QTextFormat_ToTableFormat(this.nativePtr);
	}
	
	public void ToFrameFormat()
	{
		CQt.QTextFormat_ToFrameFormat(this.nativePtr);
	}
	
	public void ToImageFormat()
	{
		CQt.QTextFormat_ToImageFormat(this.nativePtr);
	}
	
	public void ToTableCellFormat()
	{
		CQt.QTextFormat_ToTableCellFormat(this.nativePtr);
	}
	
	public bool OperatorEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorEqual(this.nativePtr, rhs);
	}
	
	public bool OperatorNotEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorNotEqual(this.nativePtr, rhs);
	}
	
	public void ToQVariant()
	{
		CQt.QTextFormat_ToQVariant(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QTextFormat_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QTextFormat_LayoutDirection(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTextFormat_SetBackground(this.nativePtr, brush);
	}
	
	public void Background()
	{
		CQt.QTextFormat_Background(this.nativePtr);
	}
	
	public void ClearBackground()
	{
		CQt.QTextFormat_ClearBackground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTextFormat_SetForeground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTextFormat_Foreground(this.nativePtr);
	}
	
	public void ClearForeground()
	{
		CQt.QTextFormat_ClearForeground(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextListFormat_new")]
	public static extern void* QTextListFormat_new();
	[LinkName("QTextListFormat_new2")]
	public static extern void* QTextListFormat_new2(void* param1);
	[LinkName("QTextListFormat_IsValid")]
	public static extern bool QTextListFormat_IsValid(void* c_this);
	[LinkName("QTextListFormat_SetStyle")]
	public static extern void QTextListFormat_SetStyle(void* c_this, int64 style);
	[LinkName("QTextListFormat_Style")]
	public static extern int64 QTextListFormat_Style(void* c_this);
	[LinkName("QTextListFormat_SetIndent")]
	public static extern void QTextListFormat_SetIndent(void* c_this, int32 indent);
	[LinkName("QTextListFormat_Indent")]
	public static extern int32 QTextListFormat_Indent(void* c_this);
	[LinkName("QTextListFormat_SetNumberPrefix")]
	public static extern void QTextListFormat_SetNumberPrefix(void* c_this, libqt_string numberPrefix);
	[LinkName("QTextListFormat_NumberPrefix")]
	public static extern libqt_string QTextListFormat_NumberPrefix(void* c_this);
	[LinkName("QTextListFormat_SetNumberSuffix")]
	public static extern void QTextListFormat_SetNumberSuffix(void* c_this, libqt_string numberSuffix);
	[LinkName("QTextListFormat_NumberSuffix")]
	public static extern libqt_string QTextListFormat_NumberSuffix(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextListFormat_Delete")]
	public static extern void QTextListFormat_Delete(void* self);
}
public class QTextImageFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextImageFormat_new();
	}
	
	public ~this()
	{
		CQt.QTextImageFormat_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextImageFormat_IsValid(this.nativePtr);
	}
	
	public void SetName(libqt_string name)
	{
		CQt.QTextImageFormat_SetName(this.nativePtr, name);
	}
	
	public libqt_string Name()
	{
		return CQt.QTextImageFormat_Name(this.nativePtr);
	}
	
	public void SetWidth(double width)
	{
		CQt.QTextImageFormat_SetWidth(this.nativePtr, width);
	}
	
	public double Width()
	{
		return CQt.QTextImageFormat_Width(this.nativePtr);
	}
	
	public void SetHeight(double height)
	{
		CQt.QTextImageFormat_SetHeight(this.nativePtr, height);
	}
	
	public double Height()
	{
		return CQt.QTextImageFormat_Height(this.nativePtr);
	}
	
	public void SetQuality(int32 quality)
	{
		CQt.QTextImageFormat_SetQuality(this.nativePtr, quality);
	}
	
	public void SetQuality2()
	{
		CQt.QTextImageFormat_SetQuality2(this.nativePtr);
	}
	
	public int32 Quality()
	{
		return CQt.QTextImageFormat_Quality(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QTextCharFormat_SetFont(this.nativePtr, font);
	}
	
	public void Font()
	{
		CQt.QTextCharFormat_Font(this.nativePtr);
	}
	
	public void SetFontFamily(libqt_string family)
	{
		CQt.QTextCharFormat_SetFontFamily(this.nativePtr, family);
	}
	
	public libqt_string FontFamily()
	{
		return CQt.QTextCharFormat_FontFamily(this.nativePtr);
	}
	
	public void SetFontFamilies(libqt_string[] families)
	{
		CQt.QTextCharFormat_SetFontFamilies(this.nativePtr, families);
	}
	
	public void FontFamilies()
	{
		CQt.QTextCharFormat_FontFamilies(this.nativePtr);
	}
	
	public void SetFontStyleName(libqt_string styleName)
	{
		CQt.QTextCharFormat_SetFontStyleName(this.nativePtr, styleName);
	}
	
	public void FontStyleName()
	{
		CQt.QTextCharFormat_FontStyleName(this.nativePtr);
	}
	
	public void SetFontPointSize(double size)
	{
		CQt.QTextCharFormat_SetFontPointSize(this.nativePtr, size);
	}
	
	public double FontPointSize()
	{
		return CQt.QTextCharFormat_FontPointSize(this.nativePtr);
	}
	
	public void SetFontWeight(int32 weight)
	{
		CQt.QTextCharFormat_SetFontWeight(this.nativePtr, weight);
	}
	
	public int32 FontWeight()
	{
		return CQt.QTextCharFormat_FontWeight(this.nativePtr);
	}
	
	public void SetFontItalic(bool italic)
	{
		CQt.QTextCharFormat_SetFontItalic(this.nativePtr, italic);
	}
	
	public bool FontItalic()
	{
		return CQt.QTextCharFormat_FontItalic(this.nativePtr);
	}
	
	public void SetFontCapitalization(int64 capitalization)
	{
		CQt.QTextCharFormat_SetFontCapitalization(this.nativePtr, capitalization);
	}
	
	public int64 FontCapitalization()
	{
		return CQt.QTextCharFormat_FontCapitalization(this.nativePtr);
	}
	
	public void SetFontLetterSpacingType(int64 letterSpacingType)
	{
		CQt.QTextCharFormat_SetFontLetterSpacingType(this.nativePtr, letterSpacingType);
	}
	
	public int64 FontLetterSpacingType()
	{
		return CQt.QTextCharFormat_FontLetterSpacingType(this.nativePtr);
	}
	
	public void SetFontLetterSpacing(double spacing)
	{
		CQt.QTextCharFormat_SetFontLetterSpacing(this.nativePtr, spacing);
	}
	
	public double FontLetterSpacing()
	{
		return CQt.QTextCharFormat_FontLetterSpacing(this.nativePtr);
	}
	
	public void SetFontWordSpacing(double spacing)
	{
		CQt.QTextCharFormat_SetFontWordSpacing(this.nativePtr, spacing);
	}
	
	public double FontWordSpacing()
	{
		return CQt.QTextCharFormat_FontWordSpacing(this.nativePtr);
	}
	
	public void SetFontUnderline(bool underline)
	{
		CQt.QTextCharFormat_SetFontUnderline(this.nativePtr, underline);
	}
	
	public bool FontUnderline()
	{
		return CQt.QTextCharFormat_FontUnderline(this.nativePtr);
	}
	
	public void SetFontOverline(bool overline)
	{
		CQt.QTextCharFormat_SetFontOverline(this.nativePtr, overline);
	}
	
	public bool FontOverline()
	{
		return CQt.QTextCharFormat_FontOverline(this.nativePtr);
	}
	
	public void SetFontStrikeOut(bool strikeOut)
	{
		CQt.QTextCharFormat_SetFontStrikeOut(this.nativePtr, strikeOut);
	}
	
	public bool FontStrikeOut()
	{
		return CQt.QTextCharFormat_FontStrikeOut(this.nativePtr);
	}
	
	public void SetUnderlineColor(void* color)
	{
		CQt.QTextCharFormat_SetUnderlineColor(this.nativePtr, color);
	}
	
	public void UnderlineColor()
	{
		CQt.QTextCharFormat_UnderlineColor(this.nativePtr);
	}
	
	public void SetFontFixedPitch(bool fixedPitch)
	{
		CQt.QTextCharFormat_SetFontFixedPitch(this.nativePtr, fixedPitch);
	}
	
	public bool FontFixedPitch()
	{
		return CQt.QTextCharFormat_FontFixedPitch(this.nativePtr);
	}
	
	public void SetFontStretch(int32 factor)
	{
		CQt.QTextCharFormat_SetFontStretch(this.nativePtr, factor);
	}
	
	public int32 FontStretch()
	{
		return CQt.QTextCharFormat_FontStretch(this.nativePtr);
	}
	
	public void SetFontStyleHint(int64 hint)
	{
		CQt.QTextCharFormat_SetFontStyleHint(this.nativePtr, hint);
	}
	
	public void SetFontStyleStrategy(int64 strategy)
	{
		CQt.QTextCharFormat_SetFontStyleStrategy(this.nativePtr, strategy);
	}
	
	public int64 FontStyleHint()
	{
		return CQt.QTextCharFormat_FontStyleHint(this.nativePtr);
	}
	
	public int64 FontStyleStrategy()
	{
		return CQt.QTextCharFormat_FontStyleStrategy(this.nativePtr);
	}
	
	public void SetFontHintingPreference(int64 hintingPreference)
	{
		CQt.QTextCharFormat_SetFontHintingPreference(this.nativePtr, hintingPreference);
	}
	
	public int64 FontHintingPreference()
	{
		return CQt.QTextCharFormat_FontHintingPreference(this.nativePtr);
	}
	
	public void SetFontKerning(bool enable)
	{
		CQt.QTextCharFormat_SetFontKerning(this.nativePtr, enable);
	}
	
	public bool FontKerning()
	{
		return CQt.QTextCharFormat_FontKerning(this.nativePtr);
	}
	
	public void SetUnderlineStyle(int64 style)
	{
		CQt.QTextCharFormat_SetUnderlineStyle(this.nativePtr, style);
	}
	
	public int64 UnderlineStyle()
	{
		return CQt.QTextCharFormat_UnderlineStyle(this.nativePtr);
	}
	
	public void SetVerticalAlignment(int64 alignment)
	{
		CQt.QTextCharFormat_SetVerticalAlignment(this.nativePtr, alignment);
	}
	
	public int64 VerticalAlignment()
	{
		return CQt.QTextCharFormat_VerticalAlignment(this.nativePtr);
	}
	
	public void SetTextOutline(void* pen)
	{
		CQt.QTextCharFormat_SetTextOutline(this.nativePtr, pen);
	}
	
	public void TextOutline()
	{
		CQt.QTextCharFormat_TextOutline(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string tip)
	{
		CQt.QTextCharFormat_SetToolTip(this.nativePtr, tip);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QTextCharFormat_ToolTip(this.nativePtr);
	}
	
	public void SetSuperScriptBaseline(double baseline)
	{
		CQt.QTextCharFormat_SetSuperScriptBaseline(this.nativePtr, baseline);
	}
	
	public double SuperScriptBaseline()
	{
		return CQt.QTextCharFormat_SuperScriptBaseline(this.nativePtr);
	}
	
	public void SetSubScriptBaseline(double baseline)
	{
		CQt.QTextCharFormat_SetSubScriptBaseline(this.nativePtr, baseline);
	}
	
	public double SubScriptBaseline()
	{
		return CQt.QTextCharFormat_SubScriptBaseline(this.nativePtr);
	}
	
	public void SetBaselineOffset(double baseline)
	{
		CQt.QTextCharFormat_SetBaselineOffset(this.nativePtr, baseline);
	}
	
	public double BaselineOffset()
	{
		return CQt.QTextCharFormat_BaselineOffset(this.nativePtr);
	}
	
	public void SetAnchor(bool anchor)
	{
		CQt.QTextCharFormat_SetAnchor(this.nativePtr, anchor);
	}
	
	public bool IsAnchor()
	{
		return CQt.QTextCharFormat_IsAnchor(this.nativePtr);
	}
	
	public void SetAnchorHref(libqt_string value)
	{
		CQt.QTextCharFormat_SetAnchorHref(this.nativePtr, value);
	}
	
	public libqt_string AnchorHref()
	{
		return CQt.QTextCharFormat_AnchorHref(this.nativePtr);
	}
	
	public void SetAnchorNames(libqt_string[] names)
	{
		CQt.QTextCharFormat_SetAnchorNames(this.nativePtr, names);
	}
	
	public libqt_string[] AnchorNames()
	{
		return CQt.QTextCharFormat_AnchorNames(this.nativePtr);
	}
	
	public void SetTableCellRowSpan(int32 tableCellRowSpan)
	{
		CQt.QTextCharFormat_SetTableCellRowSpan(this.nativePtr, tableCellRowSpan);
	}
	
	public int32 TableCellRowSpan()
	{
		return CQt.QTextCharFormat_TableCellRowSpan(this.nativePtr);
	}
	
	public void SetTableCellColumnSpan(int32 tableCellColumnSpan)
	{
		CQt.QTextCharFormat_SetTableCellColumnSpan(this.nativePtr, tableCellColumnSpan);
	}
	
	public int32 TableCellColumnSpan()
	{
		return CQt.QTextCharFormat_TableCellColumnSpan(this.nativePtr);
	}
	
	public void SetFont2(void* font, int64 behavior)
	{
		CQt.QTextCharFormat_SetFont2(this.nativePtr, font, behavior);
	}
	
	public void SetFontStyleHint2(int64 hint, int64 strategy)
	{
		CQt.QTextCharFormat_SetFontStyleHint2(this.nativePtr, hint, strategy);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextFormat_OperatorAssign(this.nativePtr, rhs);
	}
	
	public void Swap(void* other)
	{
		CQt.QTextFormat_Swap(this.nativePtr, other);
	}
	
	public void Merge(void* other)
	{
		CQt.QTextFormat_Merge(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextFormat_IsEmpty(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTextFormat_Type(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextFormat_ObjectIndex(this.nativePtr);
	}
	
	public void SetObjectIndex(int32 object)
	{
		CQt.QTextFormat_SetObjectIndex(this.nativePtr, object);
	}
	
	public void Property(int32 propertyId)
	{
		CQt.QTextFormat_Property(this.nativePtr, propertyId);
	}
	
	public void SetProperty(int32 propertyId, void* value)
	{
		CQt.QTextFormat_SetProperty(this.nativePtr, propertyId, value);
	}
	
	public void ClearProperty(int32 propertyId)
	{
		CQt.QTextFormat_ClearProperty(this.nativePtr, propertyId);
	}
	
	public bool HasProperty(int32 propertyId)
	{
		return CQt.QTextFormat_HasProperty(this.nativePtr, propertyId);
	}
	
	public bool BoolProperty(int32 propertyId)
	{
		return CQt.QTextFormat_BoolProperty(this.nativePtr, propertyId);
	}
	
	public int32 IntProperty(int32 propertyId)
	{
		return CQt.QTextFormat_IntProperty(this.nativePtr, propertyId);
	}
	
	public double DoubleProperty(int32 propertyId)
	{
		return CQt.QTextFormat_DoubleProperty(this.nativePtr, propertyId);
	}
	
	public libqt_string StringProperty(int32 propertyId)
	{
		return CQt.QTextFormat_StringProperty(this.nativePtr, propertyId);
	}
	
	public void ColorProperty(int32 propertyId)
	{
		CQt.QTextFormat_ColorProperty(this.nativePtr, propertyId);
	}
	
	public void PenProperty(int32 propertyId)
	{
		CQt.QTextFormat_PenProperty(this.nativePtr, propertyId);
	}
	
	public void BrushProperty(int32 propertyId)
	{
		CQt.QTextFormat_BrushProperty(this.nativePtr, propertyId);
	}
	
	public void LengthProperty(int32 propertyId)
	{
		CQt.QTextFormat_LengthProperty(this.nativePtr, propertyId);
	}
	
	public void[] LengthVectorProperty(int32 propertyId)
	{
		return CQt.QTextFormat_LengthVectorProperty(this.nativePtr, propertyId);
	}
	
	public void SetProperty2(int32 propertyId, void[] lengths)
	{
		CQt.QTextFormat_SetProperty2(this.nativePtr, propertyId, lengths);
	}
	
	public void* Properties()
	{
		return CQt.QTextFormat_Properties(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QTextFormat_PropertyCount(this.nativePtr);
	}
	
	public void SetObjectType(int32 typeVal)
	{
		CQt.QTextFormat_SetObjectType(this.nativePtr, typeVal);
	}
	
	public int32 ObjectType()
	{
		return CQt.QTextFormat_ObjectType(this.nativePtr);
	}
	
	public bool IsCharFormat()
	{
		return CQt.QTextFormat_IsCharFormat(this.nativePtr);
	}
	
	public bool IsBlockFormat()
	{
		return CQt.QTextFormat_IsBlockFormat(this.nativePtr);
	}
	
	public bool IsListFormat()
	{
		return CQt.QTextFormat_IsListFormat(this.nativePtr);
	}
	
	public bool IsFrameFormat()
	{
		return CQt.QTextFormat_IsFrameFormat(this.nativePtr);
	}
	
	public bool IsImageFormat()
	{
		return CQt.QTextFormat_IsImageFormat(this.nativePtr);
	}
	
	public bool IsTableFormat()
	{
		return CQt.QTextFormat_IsTableFormat(this.nativePtr);
	}
	
	public bool IsTableCellFormat()
	{
		return CQt.QTextFormat_IsTableCellFormat(this.nativePtr);
	}
	
	public void ToBlockFormat()
	{
		CQt.QTextFormat_ToBlockFormat(this.nativePtr);
	}
	
	public void ToCharFormat()
	{
		CQt.QTextFormat_ToCharFormat(this.nativePtr);
	}
	
	public void ToListFormat()
	{
		CQt.QTextFormat_ToListFormat(this.nativePtr);
	}
	
	public void ToTableFormat()
	{
		CQt.QTextFormat_ToTableFormat(this.nativePtr);
	}
	
	public void ToFrameFormat()
	{
		CQt.QTextFormat_ToFrameFormat(this.nativePtr);
	}
	
	public void ToImageFormat()
	{
		CQt.QTextFormat_ToImageFormat(this.nativePtr);
	}
	
	public void ToTableCellFormat()
	{
		CQt.QTextFormat_ToTableCellFormat(this.nativePtr);
	}
	
	public bool OperatorEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorEqual(this.nativePtr, rhs);
	}
	
	public bool OperatorNotEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorNotEqual(this.nativePtr, rhs);
	}
	
	public void ToQVariant()
	{
		CQt.QTextFormat_ToQVariant(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QTextFormat_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QTextFormat_LayoutDirection(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTextFormat_SetBackground(this.nativePtr, brush);
	}
	
	public void Background()
	{
		CQt.QTextFormat_Background(this.nativePtr);
	}
	
	public void ClearBackground()
	{
		CQt.QTextFormat_ClearBackground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTextFormat_SetForeground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTextFormat_Foreground(this.nativePtr);
	}
	
	public void ClearForeground()
	{
		CQt.QTextFormat_ClearForeground(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextImageFormat_new")]
	public static extern void* QTextImageFormat_new();
	[LinkName("QTextImageFormat_IsValid")]
	public static extern bool QTextImageFormat_IsValid(void* c_this);
	[LinkName("QTextImageFormat_SetName")]
	public static extern void QTextImageFormat_SetName(void* c_this, libqt_string name);
	[LinkName("QTextImageFormat_Name")]
	public static extern libqt_string QTextImageFormat_Name(void* c_this);
	[LinkName("QTextImageFormat_SetWidth")]
	public static extern void QTextImageFormat_SetWidth(void* c_this, double width);
	[LinkName("QTextImageFormat_Width")]
	public static extern double QTextImageFormat_Width(void* c_this);
	[LinkName("QTextImageFormat_SetHeight")]
	public static extern void QTextImageFormat_SetHeight(void* c_this, double height);
	[LinkName("QTextImageFormat_Height")]
	public static extern double QTextImageFormat_Height(void* c_this);
	[LinkName("QTextImageFormat_SetQuality")]
	public static extern void QTextImageFormat_SetQuality(void* c_this, int32 quality);
	[LinkName("QTextImageFormat_SetQuality2")]
	public static extern void QTextImageFormat_SetQuality2(void* c_this);
	[LinkName("QTextImageFormat_Quality")]
	public static extern int32 QTextImageFormat_Quality(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextImageFormat_Delete")]
	public static extern void QTextImageFormat_Delete(void* self);
}
public class QTextFrameFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextFrameFormat_new();
	}
	
	public ~this()
	{
		CQt.QTextFrameFormat_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextFrameFormat_IsValid(this.nativePtr);
	}
	
	public void SetPosition(int64 f)
	{
		CQt.QTextFrameFormat_SetPosition(this.nativePtr, f);
	}
	
	public int64 Position()
	{
		return CQt.QTextFrameFormat_Position(this.nativePtr);
	}
	
	public void SetBorder(double border)
	{
		CQt.QTextFrameFormat_SetBorder(this.nativePtr, border);
	}
	
	public double Border()
	{
		return CQt.QTextFrameFormat_Border(this.nativePtr);
	}
	
	public void SetBorderBrush(void* brush)
	{
		CQt.QTextFrameFormat_SetBorderBrush(this.nativePtr, brush);
	}
	
	public void BorderBrush()
	{
		CQt.QTextFrameFormat_BorderBrush(this.nativePtr);
	}
	
	public void SetBorderStyle(int64 style)
	{
		CQt.QTextFrameFormat_SetBorderStyle(this.nativePtr, style);
	}
	
	public int64 BorderStyle()
	{
		return CQt.QTextFrameFormat_BorderStyle(this.nativePtr);
	}
	
	public void SetMargin(double margin)
	{
		CQt.QTextFrameFormat_SetMargin(this.nativePtr, margin);
	}
	
	public double Margin()
	{
		return CQt.QTextFrameFormat_Margin(this.nativePtr);
	}
	
	public void SetTopMargin(double margin)
	{
		CQt.QTextFrameFormat_SetTopMargin(this.nativePtr, margin);
	}
	
	public double TopMargin()
	{
		return CQt.QTextFrameFormat_TopMargin(this.nativePtr);
	}
	
	public void SetBottomMargin(double margin)
	{
		CQt.QTextFrameFormat_SetBottomMargin(this.nativePtr, margin);
	}
	
	public double BottomMargin()
	{
		return CQt.QTextFrameFormat_BottomMargin(this.nativePtr);
	}
	
	public void SetLeftMargin(double margin)
	{
		CQt.QTextFrameFormat_SetLeftMargin(this.nativePtr, margin);
	}
	
	public double LeftMargin()
	{
		return CQt.QTextFrameFormat_LeftMargin(this.nativePtr);
	}
	
	public void SetRightMargin(double margin)
	{
		CQt.QTextFrameFormat_SetRightMargin(this.nativePtr, margin);
	}
	
	public double RightMargin()
	{
		return CQt.QTextFrameFormat_RightMargin(this.nativePtr);
	}
	
	public void SetPadding(double padding)
	{
		CQt.QTextFrameFormat_SetPadding(this.nativePtr, padding);
	}
	
	public double Padding()
	{
		return CQt.QTextFrameFormat_Padding(this.nativePtr);
	}
	
	public void SetWidth(double width)
	{
		CQt.QTextFrameFormat_SetWidth(this.nativePtr, width);
	}
	
	public void SetWidthWithLength(void* length)
	{
		CQt.QTextFrameFormat_SetWidthWithLength(this.nativePtr, length);
	}
	
	public void Width()
	{
		CQt.QTextFrameFormat_Width(this.nativePtr);
	}
	
	public void SetHeight(double height)
	{
		CQt.QTextFrameFormat_SetHeight(this.nativePtr, height);
	}
	
	public void SetHeightWithHeight(void* height)
	{
		CQt.QTextFrameFormat_SetHeightWithHeight(this.nativePtr, height);
	}
	
	public void Height()
	{
		CQt.QTextFrameFormat_Height(this.nativePtr);
	}
	
	public void SetPageBreakPolicy(int64 flags)
	{
		CQt.QTextFrameFormat_SetPageBreakPolicy(this.nativePtr, flags);
	}
	
	public int64 PageBreakPolicy()
	{
		return CQt.QTextFrameFormat_PageBreakPolicy(this.nativePtr);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextFormat_OperatorAssign(this.nativePtr, rhs);
	}
	
	public void Swap(void* other)
	{
		CQt.QTextFormat_Swap(this.nativePtr, other);
	}
	
	public void Merge(void* other)
	{
		CQt.QTextFormat_Merge(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextFormat_IsEmpty(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTextFormat_Type(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextFormat_ObjectIndex(this.nativePtr);
	}
	
	public void SetObjectIndex(int32 object)
	{
		CQt.QTextFormat_SetObjectIndex(this.nativePtr, object);
	}
	
	public void Property(int32 propertyId)
	{
		CQt.QTextFormat_Property(this.nativePtr, propertyId);
	}
	
	public void SetProperty(int32 propertyId, void* value)
	{
		CQt.QTextFormat_SetProperty(this.nativePtr, propertyId, value);
	}
	
	public void ClearProperty(int32 propertyId)
	{
		CQt.QTextFormat_ClearProperty(this.nativePtr, propertyId);
	}
	
	public bool HasProperty(int32 propertyId)
	{
		return CQt.QTextFormat_HasProperty(this.nativePtr, propertyId);
	}
	
	public bool BoolProperty(int32 propertyId)
	{
		return CQt.QTextFormat_BoolProperty(this.nativePtr, propertyId);
	}
	
	public int32 IntProperty(int32 propertyId)
	{
		return CQt.QTextFormat_IntProperty(this.nativePtr, propertyId);
	}
	
	public double DoubleProperty(int32 propertyId)
	{
		return CQt.QTextFormat_DoubleProperty(this.nativePtr, propertyId);
	}
	
	public libqt_string StringProperty(int32 propertyId)
	{
		return CQt.QTextFormat_StringProperty(this.nativePtr, propertyId);
	}
	
	public void ColorProperty(int32 propertyId)
	{
		CQt.QTextFormat_ColorProperty(this.nativePtr, propertyId);
	}
	
	public void PenProperty(int32 propertyId)
	{
		CQt.QTextFormat_PenProperty(this.nativePtr, propertyId);
	}
	
	public void BrushProperty(int32 propertyId)
	{
		CQt.QTextFormat_BrushProperty(this.nativePtr, propertyId);
	}
	
	public void LengthProperty(int32 propertyId)
	{
		CQt.QTextFormat_LengthProperty(this.nativePtr, propertyId);
	}
	
	public void[] LengthVectorProperty(int32 propertyId)
	{
		return CQt.QTextFormat_LengthVectorProperty(this.nativePtr, propertyId);
	}
	
	public void SetProperty2(int32 propertyId, void[] lengths)
	{
		CQt.QTextFormat_SetProperty2(this.nativePtr, propertyId, lengths);
	}
	
	public void* Properties()
	{
		return CQt.QTextFormat_Properties(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QTextFormat_PropertyCount(this.nativePtr);
	}
	
	public void SetObjectType(int32 typeVal)
	{
		CQt.QTextFormat_SetObjectType(this.nativePtr, typeVal);
	}
	
	public int32 ObjectType()
	{
		return CQt.QTextFormat_ObjectType(this.nativePtr);
	}
	
	public bool IsCharFormat()
	{
		return CQt.QTextFormat_IsCharFormat(this.nativePtr);
	}
	
	public bool IsBlockFormat()
	{
		return CQt.QTextFormat_IsBlockFormat(this.nativePtr);
	}
	
	public bool IsListFormat()
	{
		return CQt.QTextFormat_IsListFormat(this.nativePtr);
	}
	
	public bool IsFrameFormat()
	{
		return CQt.QTextFormat_IsFrameFormat(this.nativePtr);
	}
	
	public bool IsImageFormat()
	{
		return CQt.QTextFormat_IsImageFormat(this.nativePtr);
	}
	
	public bool IsTableFormat()
	{
		return CQt.QTextFormat_IsTableFormat(this.nativePtr);
	}
	
	public bool IsTableCellFormat()
	{
		return CQt.QTextFormat_IsTableCellFormat(this.nativePtr);
	}
	
	public void ToBlockFormat()
	{
		CQt.QTextFormat_ToBlockFormat(this.nativePtr);
	}
	
	public void ToCharFormat()
	{
		CQt.QTextFormat_ToCharFormat(this.nativePtr);
	}
	
	public void ToListFormat()
	{
		CQt.QTextFormat_ToListFormat(this.nativePtr);
	}
	
	public void ToTableFormat()
	{
		CQt.QTextFormat_ToTableFormat(this.nativePtr);
	}
	
	public void ToFrameFormat()
	{
		CQt.QTextFormat_ToFrameFormat(this.nativePtr);
	}
	
	public void ToImageFormat()
	{
		CQt.QTextFormat_ToImageFormat(this.nativePtr);
	}
	
	public void ToTableCellFormat()
	{
		CQt.QTextFormat_ToTableCellFormat(this.nativePtr);
	}
	
	public bool OperatorEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorEqual(this.nativePtr, rhs);
	}
	
	public bool OperatorNotEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorNotEqual(this.nativePtr, rhs);
	}
	
	public void ToQVariant()
	{
		CQt.QTextFormat_ToQVariant(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QTextFormat_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QTextFormat_LayoutDirection(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTextFormat_SetBackground(this.nativePtr, brush);
	}
	
	public void Background()
	{
		CQt.QTextFormat_Background(this.nativePtr);
	}
	
	public void ClearBackground()
	{
		CQt.QTextFormat_ClearBackground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTextFormat_SetForeground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTextFormat_Foreground(this.nativePtr);
	}
	
	public void ClearForeground()
	{
		CQt.QTextFormat_ClearForeground(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextFrameFormat_new")]
	public static extern void* QTextFrameFormat_new();
	[LinkName("QTextFrameFormat_new2")]
	public static extern void* QTextFrameFormat_new2(void* param1);
	[LinkName("QTextFrameFormat_IsValid")]
	public static extern bool QTextFrameFormat_IsValid(void* c_this);
	[LinkName("QTextFrameFormat_SetPosition")]
	public static extern void QTextFrameFormat_SetPosition(void* c_this, int64 f);
	[LinkName("QTextFrameFormat_Position")]
	public static extern int64 QTextFrameFormat_Position(void* c_this);
	[LinkName("QTextFrameFormat_SetBorder")]
	public static extern void QTextFrameFormat_SetBorder(void* c_this, double border);
	[LinkName("QTextFrameFormat_Border")]
	public static extern double QTextFrameFormat_Border(void* c_this);
	[LinkName("QTextFrameFormat_SetBorderBrush")]
	public static extern void QTextFrameFormat_SetBorderBrush(void* c_this, void* brush);
	[LinkName("QTextFrameFormat_BorderBrush")]
	public static extern void QTextFrameFormat_BorderBrush(void* c_this);
	[LinkName("QTextFrameFormat_SetBorderStyle")]
	public static extern void QTextFrameFormat_SetBorderStyle(void* c_this, int64 style);
	[LinkName("QTextFrameFormat_BorderStyle")]
	public static extern int64 QTextFrameFormat_BorderStyle(void* c_this);
	[LinkName("QTextFrameFormat_SetMargin")]
	public static extern void QTextFrameFormat_SetMargin(void* c_this, double margin);
	[LinkName("QTextFrameFormat_Margin")]
	public static extern double QTextFrameFormat_Margin(void* c_this);
	[LinkName("QTextFrameFormat_SetTopMargin")]
	public static extern void QTextFrameFormat_SetTopMargin(void* c_this, double margin);
	[LinkName("QTextFrameFormat_TopMargin")]
	public static extern double QTextFrameFormat_TopMargin(void* c_this);
	[LinkName("QTextFrameFormat_SetBottomMargin")]
	public static extern void QTextFrameFormat_SetBottomMargin(void* c_this, double margin);
	[LinkName("QTextFrameFormat_BottomMargin")]
	public static extern double QTextFrameFormat_BottomMargin(void* c_this);
	[LinkName("QTextFrameFormat_SetLeftMargin")]
	public static extern void QTextFrameFormat_SetLeftMargin(void* c_this, double margin);
	[LinkName("QTextFrameFormat_LeftMargin")]
	public static extern double QTextFrameFormat_LeftMargin(void* c_this);
	[LinkName("QTextFrameFormat_SetRightMargin")]
	public static extern void QTextFrameFormat_SetRightMargin(void* c_this, double margin);
	[LinkName("QTextFrameFormat_RightMargin")]
	public static extern double QTextFrameFormat_RightMargin(void* c_this);
	[LinkName("QTextFrameFormat_SetPadding")]
	public static extern void QTextFrameFormat_SetPadding(void* c_this, double padding);
	[LinkName("QTextFrameFormat_Padding")]
	public static extern double QTextFrameFormat_Padding(void* c_this);
	[LinkName("QTextFrameFormat_SetWidth")]
	public static extern void QTextFrameFormat_SetWidth(void* c_this, double width);
	[LinkName("QTextFrameFormat_SetWidthWithLength")]
	public static extern void QTextFrameFormat_SetWidthWithLength(void* c_this, void* length);
	[LinkName("QTextFrameFormat_Width")]
	public static extern void QTextFrameFormat_Width(void* c_this);
	[LinkName("QTextFrameFormat_SetHeight")]
	public static extern void QTextFrameFormat_SetHeight(void* c_this, double height);
	[LinkName("QTextFrameFormat_SetHeightWithHeight")]
	public static extern void QTextFrameFormat_SetHeightWithHeight(void* c_this, void* height);
	[LinkName("QTextFrameFormat_Height")]
	public static extern void QTextFrameFormat_Height(void* c_this);
	[LinkName("QTextFrameFormat_SetPageBreakPolicy")]
	public static extern void QTextFrameFormat_SetPageBreakPolicy(void* c_this, int64 flags);
	[LinkName("QTextFrameFormat_PageBreakPolicy")]
	public static extern int64 QTextFrameFormat_PageBreakPolicy(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextFrameFormat_Delete")]
	public static extern void QTextFrameFormat_Delete(void* self);
}
public class QTextTableFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextTableFormat_new();
	}
	
	public ~this()
	{
		CQt.QTextTableFormat_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextTableFormat_IsValid(this.nativePtr);
	}
	
	public int32 Columns()
	{
		return CQt.QTextTableFormat_Columns(this.nativePtr);
	}
	
	public void SetColumns(int32 columns)
	{
		CQt.QTextTableFormat_SetColumns(this.nativePtr, columns);
	}
	
	public void SetColumnWidthConstraints(void[] constraints)
	{
		CQt.QTextTableFormat_SetColumnWidthConstraints(this.nativePtr, constraints);
	}
	
	public void[] ColumnWidthConstraints()
	{
		return CQt.QTextTableFormat_ColumnWidthConstraints(this.nativePtr);
	}
	
	public void ClearColumnWidthConstraints()
	{
		CQt.QTextTableFormat_ClearColumnWidthConstraints(this.nativePtr);
	}
	
	public double CellSpacing()
	{
		return CQt.QTextTableFormat_CellSpacing(this.nativePtr);
	}
	
	public void SetCellSpacing(double spacing)
	{
		CQt.QTextTableFormat_SetCellSpacing(this.nativePtr, spacing);
	}
	
	public double CellPadding()
	{
		return CQt.QTextTableFormat_CellPadding(this.nativePtr);
	}
	
	public void SetCellPadding(double padding)
	{
		CQt.QTextTableFormat_SetCellPadding(this.nativePtr, padding);
	}
	
	public void SetAlignment(int64 alignment)
	{
		CQt.QTextTableFormat_SetAlignment(this.nativePtr, alignment);
	}
	
	public int64 Alignment()
	{
		return CQt.QTextTableFormat_Alignment(this.nativePtr);
	}
	
	public void SetHeaderRowCount(int32 count)
	{
		CQt.QTextTableFormat_SetHeaderRowCount(this.nativePtr, count);
	}
	
	public int32 HeaderRowCount()
	{
		return CQt.QTextTableFormat_HeaderRowCount(this.nativePtr);
	}
	
	public void SetBorderCollapse(bool borderCollapse)
	{
		CQt.QTextTableFormat_SetBorderCollapse(this.nativePtr, borderCollapse);
	}
	
	public bool BorderCollapse()
	{
		return CQt.QTextTableFormat_BorderCollapse(this.nativePtr);
	}
	
	public void SetPosition(int64 f)
	{
		CQt.QTextFrameFormat_SetPosition(this.nativePtr, f);
	}
	
	public int64 Position()
	{
		return CQt.QTextFrameFormat_Position(this.nativePtr);
	}
	
	public void SetBorder(double border)
	{
		CQt.QTextFrameFormat_SetBorder(this.nativePtr, border);
	}
	
	public double Border()
	{
		return CQt.QTextFrameFormat_Border(this.nativePtr);
	}
	
	public void SetBorderBrush(void* brush)
	{
		CQt.QTextFrameFormat_SetBorderBrush(this.nativePtr, brush);
	}
	
	public void BorderBrush()
	{
		CQt.QTextFrameFormat_BorderBrush(this.nativePtr);
	}
	
	public void SetBorderStyle(int64 style)
	{
		CQt.QTextFrameFormat_SetBorderStyle(this.nativePtr, style);
	}
	
	public int64 BorderStyle()
	{
		return CQt.QTextFrameFormat_BorderStyle(this.nativePtr);
	}
	
	public void SetMargin(double margin)
	{
		CQt.QTextFrameFormat_SetMargin(this.nativePtr, margin);
	}
	
	public double Margin()
	{
		return CQt.QTextFrameFormat_Margin(this.nativePtr);
	}
	
	public void SetTopMargin(double margin)
	{
		CQt.QTextFrameFormat_SetTopMargin(this.nativePtr, margin);
	}
	
	public double TopMargin()
	{
		return CQt.QTextFrameFormat_TopMargin(this.nativePtr);
	}
	
	public void SetBottomMargin(double margin)
	{
		CQt.QTextFrameFormat_SetBottomMargin(this.nativePtr, margin);
	}
	
	public double BottomMargin()
	{
		return CQt.QTextFrameFormat_BottomMargin(this.nativePtr);
	}
	
	public void SetLeftMargin(double margin)
	{
		CQt.QTextFrameFormat_SetLeftMargin(this.nativePtr, margin);
	}
	
	public double LeftMargin()
	{
		return CQt.QTextFrameFormat_LeftMargin(this.nativePtr);
	}
	
	public void SetRightMargin(double margin)
	{
		CQt.QTextFrameFormat_SetRightMargin(this.nativePtr, margin);
	}
	
	public double RightMargin()
	{
		return CQt.QTextFrameFormat_RightMargin(this.nativePtr);
	}
	
	public void SetPadding(double padding)
	{
		CQt.QTextFrameFormat_SetPadding(this.nativePtr, padding);
	}
	
	public double Padding()
	{
		return CQt.QTextFrameFormat_Padding(this.nativePtr);
	}
	
	public void SetWidth(double width)
	{
		CQt.QTextFrameFormat_SetWidth(this.nativePtr, width);
	}
	
	public void SetWidthWithLength(void* length)
	{
		CQt.QTextFrameFormat_SetWidthWithLength(this.nativePtr, length);
	}
	
	public void Width()
	{
		CQt.QTextFrameFormat_Width(this.nativePtr);
	}
	
	public void SetHeight(double height)
	{
		CQt.QTextFrameFormat_SetHeight(this.nativePtr, height);
	}
	
	public void SetHeightWithHeight(void* height)
	{
		CQt.QTextFrameFormat_SetHeightWithHeight(this.nativePtr, height);
	}
	
	public void Height()
	{
		CQt.QTextFrameFormat_Height(this.nativePtr);
	}
	
	public void SetPageBreakPolicy(int64 flags)
	{
		CQt.QTextFrameFormat_SetPageBreakPolicy(this.nativePtr, flags);
	}
	
	public int64 PageBreakPolicy()
	{
		return CQt.QTextFrameFormat_PageBreakPolicy(this.nativePtr);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextFormat_OperatorAssign(this.nativePtr, rhs);
	}
	
	public void Swap(void* other)
	{
		CQt.QTextFormat_Swap(this.nativePtr, other);
	}
	
	public void Merge(void* other)
	{
		CQt.QTextFormat_Merge(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextFormat_IsEmpty(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTextFormat_Type(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextFormat_ObjectIndex(this.nativePtr);
	}
	
	public void SetObjectIndex(int32 object)
	{
		CQt.QTextFormat_SetObjectIndex(this.nativePtr, object);
	}
	
	public void Property(int32 propertyId)
	{
		CQt.QTextFormat_Property(this.nativePtr, propertyId);
	}
	
	public void SetProperty(int32 propertyId, void* value)
	{
		CQt.QTextFormat_SetProperty(this.nativePtr, propertyId, value);
	}
	
	public void ClearProperty(int32 propertyId)
	{
		CQt.QTextFormat_ClearProperty(this.nativePtr, propertyId);
	}
	
	public bool HasProperty(int32 propertyId)
	{
		return CQt.QTextFormat_HasProperty(this.nativePtr, propertyId);
	}
	
	public bool BoolProperty(int32 propertyId)
	{
		return CQt.QTextFormat_BoolProperty(this.nativePtr, propertyId);
	}
	
	public int32 IntProperty(int32 propertyId)
	{
		return CQt.QTextFormat_IntProperty(this.nativePtr, propertyId);
	}
	
	public double DoubleProperty(int32 propertyId)
	{
		return CQt.QTextFormat_DoubleProperty(this.nativePtr, propertyId);
	}
	
	public libqt_string StringProperty(int32 propertyId)
	{
		return CQt.QTextFormat_StringProperty(this.nativePtr, propertyId);
	}
	
	public void ColorProperty(int32 propertyId)
	{
		CQt.QTextFormat_ColorProperty(this.nativePtr, propertyId);
	}
	
	public void PenProperty(int32 propertyId)
	{
		CQt.QTextFormat_PenProperty(this.nativePtr, propertyId);
	}
	
	public void BrushProperty(int32 propertyId)
	{
		CQt.QTextFormat_BrushProperty(this.nativePtr, propertyId);
	}
	
	public void LengthProperty(int32 propertyId)
	{
		CQt.QTextFormat_LengthProperty(this.nativePtr, propertyId);
	}
	
	public void[] LengthVectorProperty(int32 propertyId)
	{
		return CQt.QTextFormat_LengthVectorProperty(this.nativePtr, propertyId);
	}
	
	public void SetProperty2(int32 propertyId, void[] lengths)
	{
		CQt.QTextFormat_SetProperty2(this.nativePtr, propertyId, lengths);
	}
	
	public void* Properties()
	{
		return CQt.QTextFormat_Properties(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QTextFormat_PropertyCount(this.nativePtr);
	}
	
	public void SetObjectType(int32 typeVal)
	{
		CQt.QTextFormat_SetObjectType(this.nativePtr, typeVal);
	}
	
	public int32 ObjectType()
	{
		return CQt.QTextFormat_ObjectType(this.nativePtr);
	}
	
	public bool IsCharFormat()
	{
		return CQt.QTextFormat_IsCharFormat(this.nativePtr);
	}
	
	public bool IsBlockFormat()
	{
		return CQt.QTextFormat_IsBlockFormat(this.nativePtr);
	}
	
	public bool IsListFormat()
	{
		return CQt.QTextFormat_IsListFormat(this.nativePtr);
	}
	
	public bool IsFrameFormat()
	{
		return CQt.QTextFormat_IsFrameFormat(this.nativePtr);
	}
	
	public bool IsImageFormat()
	{
		return CQt.QTextFormat_IsImageFormat(this.nativePtr);
	}
	
	public bool IsTableFormat()
	{
		return CQt.QTextFormat_IsTableFormat(this.nativePtr);
	}
	
	public bool IsTableCellFormat()
	{
		return CQt.QTextFormat_IsTableCellFormat(this.nativePtr);
	}
	
	public void ToBlockFormat()
	{
		CQt.QTextFormat_ToBlockFormat(this.nativePtr);
	}
	
	public void ToCharFormat()
	{
		CQt.QTextFormat_ToCharFormat(this.nativePtr);
	}
	
	public void ToListFormat()
	{
		CQt.QTextFormat_ToListFormat(this.nativePtr);
	}
	
	public void ToTableFormat()
	{
		CQt.QTextFormat_ToTableFormat(this.nativePtr);
	}
	
	public void ToFrameFormat()
	{
		CQt.QTextFormat_ToFrameFormat(this.nativePtr);
	}
	
	public void ToImageFormat()
	{
		CQt.QTextFormat_ToImageFormat(this.nativePtr);
	}
	
	public void ToTableCellFormat()
	{
		CQt.QTextFormat_ToTableCellFormat(this.nativePtr);
	}
	
	public bool OperatorEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorEqual(this.nativePtr, rhs);
	}
	
	public bool OperatorNotEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorNotEqual(this.nativePtr, rhs);
	}
	
	public void ToQVariant()
	{
		CQt.QTextFormat_ToQVariant(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QTextFormat_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QTextFormat_LayoutDirection(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTextFormat_SetBackground(this.nativePtr, brush);
	}
	
	public void Background()
	{
		CQt.QTextFormat_Background(this.nativePtr);
	}
	
	public void ClearBackground()
	{
		CQt.QTextFormat_ClearBackground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTextFormat_SetForeground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTextFormat_Foreground(this.nativePtr);
	}
	
	public void ClearForeground()
	{
		CQt.QTextFormat_ClearForeground(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextTableFormat_new")]
	public static extern void* QTextTableFormat_new();
	[LinkName("QTextTableFormat_IsValid")]
	public static extern bool QTextTableFormat_IsValid(void* c_this);
	[LinkName("QTextTableFormat_Columns")]
	public static extern int32 QTextTableFormat_Columns(void* c_this);
	[LinkName("QTextTableFormat_SetColumns")]
	public static extern void QTextTableFormat_SetColumns(void* c_this, int32 columns);
	[LinkName("QTextTableFormat_SetColumnWidthConstraints")]
	public static extern void QTextTableFormat_SetColumnWidthConstraints(void* c_this, void[] constraints);
	[LinkName("QTextTableFormat_ColumnWidthConstraints")]
	public static extern void[] QTextTableFormat_ColumnWidthConstraints(void* c_this);
	[LinkName("QTextTableFormat_ClearColumnWidthConstraints")]
	public static extern void QTextTableFormat_ClearColumnWidthConstraints(void* c_this);
	[LinkName("QTextTableFormat_CellSpacing")]
	public static extern double QTextTableFormat_CellSpacing(void* c_this);
	[LinkName("QTextTableFormat_SetCellSpacing")]
	public static extern void QTextTableFormat_SetCellSpacing(void* c_this, double spacing);
	[LinkName("QTextTableFormat_CellPadding")]
	public static extern double QTextTableFormat_CellPadding(void* c_this);
	[LinkName("QTextTableFormat_SetCellPadding")]
	public static extern void QTextTableFormat_SetCellPadding(void* c_this, double padding);
	[LinkName("QTextTableFormat_SetAlignment")]
	public static extern void QTextTableFormat_SetAlignment(void* c_this, int64 alignment);
	[LinkName("QTextTableFormat_Alignment")]
	public static extern int64 QTextTableFormat_Alignment(void* c_this);
	[LinkName("QTextTableFormat_SetHeaderRowCount")]
	public static extern void QTextTableFormat_SetHeaderRowCount(void* c_this, int32 count);
	[LinkName("QTextTableFormat_HeaderRowCount")]
	public static extern int32 QTextTableFormat_HeaderRowCount(void* c_this);
	[LinkName("QTextTableFormat_SetBorderCollapse")]
	public static extern void QTextTableFormat_SetBorderCollapse(void* c_this, bool borderCollapse);
	[LinkName("QTextTableFormat_BorderCollapse")]
	public static extern bool QTextTableFormat_BorderCollapse(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextTableFormat_Delete")]
	public static extern void QTextTableFormat_Delete(void* self);
}
public class QTextTableCellFormat
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextTableCellFormat_new();
	}
	
	public ~this()
	{
		CQt.QTextTableCellFormat_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextTableCellFormat_IsValid(this.nativePtr);
	}
	
	public void SetTopPadding(double padding)
	{
		CQt.QTextTableCellFormat_SetTopPadding(this.nativePtr, padding);
	}
	
	public double TopPadding()
	{
		return CQt.QTextTableCellFormat_TopPadding(this.nativePtr);
	}
	
	public void SetBottomPadding(double padding)
	{
		CQt.QTextTableCellFormat_SetBottomPadding(this.nativePtr, padding);
	}
	
	public double BottomPadding()
	{
		return CQt.QTextTableCellFormat_BottomPadding(this.nativePtr);
	}
	
	public void SetLeftPadding(double padding)
	{
		CQt.QTextTableCellFormat_SetLeftPadding(this.nativePtr, padding);
	}
	
	public double LeftPadding()
	{
		return CQt.QTextTableCellFormat_LeftPadding(this.nativePtr);
	}
	
	public void SetRightPadding(double padding)
	{
		CQt.QTextTableCellFormat_SetRightPadding(this.nativePtr, padding);
	}
	
	public double RightPadding()
	{
		return CQt.QTextTableCellFormat_RightPadding(this.nativePtr);
	}
	
	public void SetPadding(double padding)
	{
		CQt.QTextTableCellFormat_SetPadding(this.nativePtr, padding);
	}
	
	public void SetTopBorder(double width)
	{
		CQt.QTextTableCellFormat_SetTopBorder(this.nativePtr, width);
	}
	
	public double TopBorder()
	{
		return CQt.QTextTableCellFormat_TopBorder(this.nativePtr);
	}
	
	public void SetBottomBorder(double width)
	{
		CQt.QTextTableCellFormat_SetBottomBorder(this.nativePtr, width);
	}
	
	public double BottomBorder()
	{
		return CQt.QTextTableCellFormat_BottomBorder(this.nativePtr);
	}
	
	public void SetLeftBorder(double width)
	{
		CQt.QTextTableCellFormat_SetLeftBorder(this.nativePtr, width);
	}
	
	public double LeftBorder()
	{
		return CQt.QTextTableCellFormat_LeftBorder(this.nativePtr);
	}
	
	public void SetRightBorder(double width)
	{
		CQt.QTextTableCellFormat_SetRightBorder(this.nativePtr, width);
	}
	
	public double RightBorder()
	{
		return CQt.QTextTableCellFormat_RightBorder(this.nativePtr);
	}
	
	public void SetBorder(double width)
	{
		CQt.QTextTableCellFormat_SetBorder(this.nativePtr, width);
	}
	
	public void SetTopBorderStyle(int64 style)
	{
		CQt.QTextTableCellFormat_SetTopBorderStyle(this.nativePtr, style);
	}
	
	public int64 TopBorderStyle()
	{
		return CQt.QTextTableCellFormat_TopBorderStyle(this.nativePtr);
	}
	
	public void SetBottomBorderStyle(int64 style)
	{
		CQt.QTextTableCellFormat_SetBottomBorderStyle(this.nativePtr, style);
	}
	
	public int64 BottomBorderStyle()
	{
		return CQt.QTextTableCellFormat_BottomBorderStyle(this.nativePtr);
	}
	
	public void SetLeftBorderStyle(int64 style)
	{
		CQt.QTextTableCellFormat_SetLeftBorderStyle(this.nativePtr, style);
	}
	
	public int64 LeftBorderStyle()
	{
		return CQt.QTextTableCellFormat_LeftBorderStyle(this.nativePtr);
	}
	
	public void SetRightBorderStyle(int64 style)
	{
		CQt.QTextTableCellFormat_SetRightBorderStyle(this.nativePtr, style);
	}
	
	public int64 RightBorderStyle()
	{
		return CQt.QTextTableCellFormat_RightBorderStyle(this.nativePtr);
	}
	
	public void SetBorderStyle(int64 style)
	{
		CQt.QTextTableCellFormat_SetBorderStyle(this.nativePtr, style);
	}
	
	public void SetTopBorderBrush(void* brush)
	{
		CQt.QTextTableCellFormat_SetTopBorderBrush(this.nativePtr, brush);
	}
	
	public void TopBorderBrush()
	{
		CQt.QTextTableCellFormat_TopBorderBrush(this.nativePtr);
	}
	
	public void SetBottomBorderBrush(void* brush)
	{
		CQt.QTextTableCellFormat_SetBottomBorderBrush(this.nativePtr, brush);
	}
	
	public void BottomBorderBrush()
	{
		CQt.QTextTableCellFormat_BottomBorderBrush(this.nativePtr);
	}
	
	public void SetLeftBorderBrush(void* brush)
	{
		CQt.QTextTableCellFormat_SetLeftBorderBrush(this.nativePtr, brush);
	}
	
	public void LeftBorderBrush()
	{
		CQt.QTextTableCellFormat_LeftBorderBrush(this.nativePtr);
	}
	
	public void SetRightBorderBrush(void* brush)
	{
		CQt.QTextTableCellFormat_SetRightBorderBrush(this.nativePtr, brush);
	}
	
	public void RightBorderBrush()
	{
		CQt.QTextTableCellFormat_RightBorderBrush(this.nativePtr);
	}
	
	public void SetBorderBrush(void* brush)
	{
		CQt.QTextTableCellFormat_SetBorderBrush(this.nativePtr, brush);
	}
	
	public void SetFont(void* font)
	{
		CQt.QTextCharFormat_SetFont(this.nativePtr, font);
	}
	
	public void Font()
	{
		CQt.QTextCharFormat_Font(this.nativePtr);
	}
	
	public void SetFontFamily(libqt_string family)
	{
		CQt.QTextCharFormat_SetFontFamily(this.nativePtr, family);
	}
	
	public libqt_string FontFamily()
	{
		return CQt.QTextCharFormat_FontFamily(this.nativePtr);
	}
	
	public void SetFontFamilies(libqt_string[] families)
	{
		CQt.QTextCharFormat_SetFontFamilies(this.nativePtr, families);
	}
	
	public void FontFamilies()
	{
		CQt.QTextCharFormat_FontFamilies(this.nativePtr);
	}
	
	public void SetFontStyleName(libqt_string styleName)
	{
		CQt.QTextCharFormat_SetFontStyleName(this.nativePtr, styleName);
	}
	
	public void FontStyleName()
	{
		CQt.QTextCharFormat_FontStyleName(this.nativePtr);
	}
	
	public void SetFontPointSize(double size)
	{
		CQt.QTextCharFormat_SetFontPointSize(this.nativePtr, size);
	}
	
	public double FontPointSize()
	{
		return CQt.QTextCharFormat_FontPointSize(this.nativePtr);
	}
	
	public void SetFontWeight(int32 weight)
	{
		CQt.QTextCharFormat_SetFontWeight(this.nativePtr, weight);
	}
	
	public int32 FontWeight()
	{
		return CQt.QTextCharFormat_FontWeight(this.nativePtr);
	}
	
	public void SetFontItalic(bool italic)
	{
		CQt.QTextCharFormat_SetFontItalic(this.nativePtr, italic);
	}
	
	public bool FontItalic()
	{
		return CQt.QTextCharFormat_FontItalic(this.nativePtr);
	}
	
	public void SetFontCapitalization(int64 capitalization)
	{
		CQt.QTextCharFormat_SetFontCapitalization(this.nativePtr, capitalization);
	}
	
	public int64 FontCapitalization()
	{
		return CQt.QTextCharFormat_FontCapitalization(this.nativePtr);
	}
	
	public void SetFontLetterSpacingType(int64 letterSpacingType)
	{
		CQt.QTextCharFormat_SetFontLetterSpacingType(this.nativePtr, letterSpacingType);
	}
	
	public int64 FontLetterSpacingType()
	{
		return CQt.QTextCharFormat_FontLetterSpacingType(this.nativePtr);
	}
	
	public void SetFontLetterSpacing(double spacing)
	{
		CQt.QTextCharFormat_SetFontLetterSpacing(this.nativePtr, spacing);
	}
	
	public double FontLetterSpacing()
	{
		return CQt.QTextCharFormat_FontLetterSpacing(this.nativePtr);
	}
	
	public void SetFontWordSpacing(double spacing)
	{
		CQt.QTextCharFormat_SetFontWordSpacing(this.nativePtr, spacing);
	}
	
	public double FontWordSpacing()
	{
		return CQt.QTextCharFormat_FontWordSpacing(this.nativePtr);
	}
	
	public void SetFontUnderline(bool underline)
	{
		CQt.QTextCharFormat_SetFontUnderline(this.nativePtr, underline);
	}
	
	public bool FontUnderline()
	{
		return CQt.QTextCharFormat_FontUnderline(this.nativePtr);
	}
	
	public void SetFontOverline(bool overline)
	{
		CQt.QTextCharFormat_SetFontOverline(this.nativePtr, overline);
	}
	
	public bool FontOverline()
	{
		return CQt.QTextCharFormat_FontOverline(this.nativePtr);
	}
	
	public void SetFontStrikeOut(bool strikeOut)
	{
		CQt.QTextCharFormat_SetFontStrikeOut(this.nativePtr, strikeOut);
	}
	
	public bool FontStrikeOut()
	{
		return CQt.QTextCharFormat_FontStrikeOut(this.nativePtr);
	}
	
	public void SetUnderlineColor(void* color)
	{
		CQt.QTextCharFormat_SetUnderlineColor(this.nativePtr, color);
	}
	
	public void UnderlineColor()
	{
		CQt.QTextCharFormat_UnderlineColor(this.nativePtr);
	}
	
	public void SetFontFixedPitch(bool fixedPitch)
	{
		CQt.QTextCharFormat_SetFontFixedPitch(this.nativePtr, fixedPitch);
	}
	
	public bool FontFixedPitch()
	{
		return CQt.QTextCharFormat_FontFixedPitch(this.nativePtr);
	}
	
	public void SetFontStretch(int32 factor)
	{
		CQt.QTextCharFormat_SetFontStretch(this.nativePtr, factor);
	}
	
	public int32 FontStretch()
	{
		return CQt.QTextCharFormat_FontStretch(this.nativePtr);
	}
	
	public void SetFontStyleHint(int64 hint)
	{
		CQt.QTextCharFormat_SetFontStyleHint(this.nativePtr, hint);
	}
	
	public void SetFontStyleStrategy(int64 strategy)
	{
		CQt.QTextCharFormat_SetFontStyleStrategy(this.nativePtr, strategy);
	}
	
	public int64 FontStyleHint()
	{
		return CQt.QTextCharFormat_FontStyleHint(this.nativePtr);
	}
	
	public int64 FontStyleStrategy()
	{
		return CQt.QTextCharFormat_FontStyleStrategy(this.nativePtr);
	}
	
	public void SetFontHintingPreference(int64 hintingPreference)
	{
		CQt.QTextCharFormat_SetFontHintingPreference(this.nativePtr, hintingPreference);
	}
	
	public int64 FontHintingPreference()
	{
		return CQt.QTextCharFormat_FontHintingPreference(this.nativePtr);
	}
	
	public void SetFontKerning(bool enable)
	{
		CQt.QTextCharFormat_SetFontKerning(this.nativePtr, enable);
	}
	
	public bool FontKerning()
	{
		return CQt.QTextCharFormat_FontKerning(this.nativePtr);
	}
	
	public void SetUnderlineStyle(int64 style)
	{
		CQt.QTextCharFormat_SetUnderlineStyle(this.nativePtr, style);
	}
	
	public int64 UnderlineStyle()
	{
		return CQt.QTextCharFormat_UnderlineStyle(this.nativePtr);
	}
	
	public void SetVerticalAlignment(int64 alignment)
	{
		CQt.QTextCharFormat_SetVerticalAlignment(this.nativePtr, alignment);
	}
	
	public int64 VerticalAlignment()
	{
		return CQt.QTextCharFormat_VerticalAlignment(this.nativePtr);
	}
	
	public void SetTextOutline(void* pen)
	{
		CQt.QTextCharFormat_SetTextOutline(this.nativePtr, pen);
	}
	
	public void TextOutline()
	{
		CQt.QTextCharFormat_TextOutline(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string tip)
	{
		CQt.QTextCharFormat_SetToolTip(this.nativePtr, tip);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QTextCharFormat_ToolTip(this.nativePtr);
	}
	
	public void SetSuperScriptBaseline(double baseline)
	{
		CQt.QTextCharFormat_SetSuperScriptBaseline(this.nativePtr, baseline);
	}
	
	public double SuperScriptBaseline()
	{
		return CQt.QTextCharFormat_SuperScriptBaseline(this.nativePtr);
	}
	
	public void SetSubScriptBaseline(double baseline)
	{
		CQt.QTextCharFormat_SetSubScriptBaseline(this.nativePtr, baseline);
	}
	
	public double SubScriptBaseline()
	{
		return CQt.QTextCharFormat_SubScriptBaseline(this.nativePtr);
	}
	
	public void SetBaselineOffset(double baseline)
	{
		CQt.QTextCharFormat_SetBaselineOffset(this.nativePtr, baseline);
	}
	
	public double BaselineOffset()
	{
		return CQt.QTextCharFormat_BaselineOffset(this.nativePtr);
	}
	
	public void SetAnchor(bool anchor)
	{
		CQt.QTextCharFormat_SetAnchor(this.nativePtr, anchor);
	}
	
	public bool IsAnchor()
	{
		return CQt.QTextCharFormat_IsAnchor(this.nativePtr);
	}
	
	public void SetAnchorHref(libqt_string value)
	{
		CQt.QTextCharFormat_SetAnchorHref(this.nativePtr, value);
	}
	
	public libqt_string AnchorHref()
	{
		return CQt.QTextCharFormat_AnchorHref(this.nativePtr);
	}
	
	public void SetAnchorNames(libqt_string[] names)
	{
		CQt.QTextCharFormat_SetAnchorNames(this.nativePtr, names);
	}
	
	public libqt_string[] AnchorNames()
	{
		return CQt.QTextCharFormat_AnchorNames(this.nativePtr);
	}
	
	public void SetTableCellRowSpan(int32 tableCellRowSpan)
	{
		CQt.QTextCharFormat_SetTableCellRowSpan(this.nativePtr, tableCellRowSpan);
	}
	
	public int32 TableCellRowSpan()
	{
		return CQt.QTextCharFormat_TableCellRowSpan(this.nativePtr);
	}
	
	public void SetTableCellColumnSpan(int32 tableCellColumnSpan)
	{
		CQt.QTextCharFormat_SetTableCellColumnSpan(this.nativePtr, tableCellColumnSpan);
	}
	
	public int32 TableCellColumnSpan()
	{
		return CQt.QTextCharFormat_TableCellColumnSpan(this.nativePtr);
	}
	
	public void SetFont2(void* font, int64 behavior)
	{
		CQt.QTextCharFormat_SetFont2(this.nativePtr, font, behavior);
	}
	
	public void SetFontStyleHint2(int64 hint, int64 strategy)
	{
		CQt.QTextCharFormat_SetFontStyleHint2(this.nativePtr, hint, strategy);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextFormat_OperatorAssign(this.nativePtr, rhs);
	}
	
	public void Swap(void* other)
	{
		CQt.QTextFormat_Swap(this.nativePtr, other);
	}
	
	public void Merge(void* other)
	{
		CQt.QTextFormat_Merge(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextFormat_IsEmpty(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTextFormat_Type(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextFormat_ObjectIndex(this.nativePtr);
	}
	
	public void SetObjectIndex(int32 object)
	{
		CQt.QTextFormat_SetObjectIndex(this.nativePtr, object);
	}
	
	public void Property(int32 propertyId)
	{
		CQt.QTextFormat_Property(this.nativePtr, propertyId);
	}
	
	public void SetProperty(int32 propertyId, void* value)
	{
		CQt.QTextFormat_SetProperty(this.nativePtr, propertyId, value);
	}
	
	public void ClearProperty(int32 propertyId)
	{
		CQt.QTextFormat_ClearProperty(this.nativePtr, propertyId);
	}
	
	public bool HasProperty(int32 propertyId)
	{
		return CQt.QTextFormat_HasProperty(this.nativePtr, propertyId);
	}
	
	public bool BoolProperty(int32 propertyId)
	{
		return CQt.QTextFormat_BoolProperty(this.nativePtr, propertyId);
	}
	
	public int32 IntProperty(int32 propertyId)
	{
		return CQt.QTextFormat_IntProperty(this.nativePtr, propertyId);
	}
	
	public double DoubleProperty(int32 propertyId)
	{
		return CQt.QTextFormat_DoubleProperty(this.nativePtr, propertyId);
	}
	
	public libqt_string StringProperty(int32 propertyId)
	{
		return CQt.QTextFormat_StringProperty(this.nativePtr, propertyId);
	}
	
	public void ColorProperty(int32 propertyId)
	{
		CQt.QTextFormat_ColorProperty(this.nativePtr, propertyId);
	}
	
	public void PenProperty(int32 propertyId)
	{
		CQt.QTextFormat_PenProperty(this.nativePtr, propertyId);
	}
	
	public void BrushProperty(int32 propertyId)
	{
		CQt.QTextFormat_BrushProperty(this.nativePtr, propertyId);
	}
	
	public void LengthProperty(int32 propertyId)
	{
		CQt.QTextFormat_LengthProperty(this.nativePtr, propertyId);
	}
	
	public void[] LengthVectorProperty(int32 propertyId)
	{
		return CQt.QTextFormat_LengthVectorProperty(this.nativePtr, propertyId);
	}
	
	public void SetProperty2(int32 propertyId, void[] lengths)
	{
		CQt.QTextFormat_SetProperty2(this.nativePtr, propertyId, lengths);
	}
	
	public void* Properties()
	{
		return CQt.QTextFormat_Properties(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QTextFormat_PropertyCount(this.nativePtr);
	}
	
	public void SetObjectType(int32 typeVal)
	{
		CQt.QTextFormat_SetObjectType(this.nativePtr, typeVal);
	}
	
	public int32 ObjectType()
	{
		return CQt.QTextFormat_ObjectType(this.nativePtr);
	}
	
	public bool IsCharFormat()
	{
		return CQt.QTextFormat_IsCharFormat(this.nativePtr);
	}
	
	public bool IsBlockFormat()
	{
		return CQt.QTextFormat_IsBlockFormat(this.nativePtr);
	}
	
	public bool IsListFormat()
	{
		return CQt.QTextFormat_IsListFormat(this.nativePtr);
	}
	
	public bool IsFrameFormat()
	{
		return CQt.QTextFormat_IsFrameFormat(this.nativePtr);
	}
	
	public bool IsImageFormat()
	{
		return CQt.QTextFormat_IsImageFormat(this.nativePtr);
	}
	
	public bool IsTableFormat()
	{
		return CQt.QTextFormat_IsTableFormat(this.nativePtr);
	}
	
	public bool IsTableCellFormat()
	{
		return CQt.QTextFormat_IsTableCellFormat(this.nativePtr);
	}
	
	public void ToBlockFormat()
	{
		CQt.QTextFormat_ToBlockFormat(this.nativePtr);
	}
	
	public void ToCharFormat()
	{
		CQt.QTextFormat_ToCharFormat(this.nativePtr);
	}
	
	public void ToListFormat()
	{
		CQt.QTextFormat_ToListFormat(this.nativePtr);
	}
	
	public void ToTableFormat()
	{
		CQt.QTextFormat_ToTableFormat(this.nativePtr);
	}
	
	public void ToFrameFormat()
	{
		CQt.QTextFormat_ToFrameFormat(this.nativePtr);
	}
	
	public void ToImageFormat()
	{
		CQt.QTextFormat_ToImageFormat(this.nativePtr);
	}
	
	public void ToTableCellFormat()
	{
		CQt.QTextFormat_ToTableCellFormat(this.nativePtr);
	}
	
	public bool OperatorEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorEqual(this.nativePtr, rhs);
	}
	
	public bool OperatorNotEqual(void* rhs)
	{
		return CQt.QTextFormat_OperatorNotEqual(this.nativePtr, rhs);
	}
	
	public void ToQVariant()
	{
		CQt.QTextFormat_ToQVariant(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QTextFormat_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QTextFormat_LayoutDirection(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTextFormat_SetBackground(this.nativePtr, brush);
	}
	
	public void Background()
	{
		CQt.QTextFormat_Background(this.nativePtr);
	}
	
	public void ClearBackground()
	{
		CQt.QTextFormat_ClearBackground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTextFormat_SetForeground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTextFormat_Foreground(this.nativePtr);
	}
	
	public void ClearForeground()
	{
		CQt.QTextFormat_ClearForeground(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextTableCellFormat_new")]
	public static extern void* QTextTableCellFormat_new();
	[LinkName("QTextTableCellFormat_IsValid")]
	public static extern bool QTextTableCellFormat_IsValid(void* c_this);
	[LinkName("QTextTableCellFormat_SetTopPadding")]
	public static extern void QTextTableCellFormat_SetTopPadding(void* c_this, double padding);
	[LinkName("QTextTableCellFormat_TopPadding")]
	public static extern double QTextTableCellFormat_TopPadding(void* c_this);
	[LinkName("QTextTableCellFormat_SetBottomPadding")]
	public static extern void QTextTableCellFormat_SetBottomPadding(void* c_this, double padding);
	[LinkName("QTextTableCellFormat_BottomPadding")]
	public static extern double QTextTableCellFormat_BottomPadding(void* c_this);
	[LinkName("QTextTableCellFormat_SetLeftPadding")]
	public static extern void QTextTableCellFormat_SetLeftPadding(void* c_this, double padding);
	[LinkName("QTextTableCellFormat_LeftPadding")]
	public static extern double QTextTableCellFormat_LeftPadding(void* c_this);
	[LinkName("QTextTableCellFormat_SetRightPadding")]
	public static extern void QTextTableCellFormat_SetRightPadding(void* c_this, double padding);
	[LinkName("QTextTableCellFormat_RightPadding")]
	public static extern double QTextTableCellFormat_RightPadding(void* c_this);
	[LinkName("QTextTableCellFormat_SetPadding")]
	public static extern void QTextTableCellFormat_SetPadding(void* c_this, double padding);
	[LinkName("QTextTableCellFormat_SetTopBorder")]
	public static extern void QTextTableCellFormat_SetTopBorder(void* c_this, double width);
	[LinkName("QTextTableCellFormat_TopBorder")]
	public static extern double QTextTableCellFormat_TopBorder(void* c_this);
	[LinkName("QTextTableCellFormat_SetBottomBorder")]
	public static extern void QTextTableCellFormat_SetBottomBorder(void* c_this, double width);
	[LinkName("QTextTableCellFormat_BottomBorder")]
	public static extern double QTextTableCellFormat_BottomBorder(void* c_this);
	[LinkName("QTextTableCellFormat_SetLeftBorder")]
	public static extern void QTextTableCellFormat_SetLeftBorder(void* c_this, double width);
	[LinkName("QTextTableCellFormat_LeftBorder")]
	public static extern double QTextTableCellFormat_LeftBorder(void* c_this);
	[LinkName("QTextTableCellFormat_SetRightBorder")]
	public static extern void QTextTableCellFormat_SetRightBorder(void* c_this, double width);
	[LinkName("QTextTableCellFormat_RightBorder")]
	public static extern double QTextTableCellFormat_RightBorder(void* c_this);
	[LinkName("QTextTableCellFormat_SetBorder")]
	public static extern void QTextTableCellFormat_SetBorder(void* c_this, double width);
	[LinkName("QTextTableCellFormat_SetTopBorderStyle")]
	public static extern void QTextTableCellFormat_SetTopBorderStyle(void* c_this, int64 style);
	[LinkName("QTextTableCellFormat_TopBorderStyle")]
	public static extern int64 QTextTableCellFormat_TopBorderStyle(void* c_this);
	[LinkName("QTextTableCellFormat_SetBottomBorderStyle")]
	public static extern void QTextTableCellFormat_SetBottomBorderStyle(void* c_this, int64 style);
	[LinkName("QTextTableCellFormat_BottomBorderStyle")]
	public static extern int64 QTextTableCellFormat_BottomBorderStyle(void* c_this);
	[LinkName("QTextTableCellFormat_SetLeftBorderStyle")]
	public static extern void QTextTableCellFormat_SetLeftBorderStyle(void* c_this, int64 style);
	[LinkName("QTextTableCellFormat_LeftBorderStyle")]
	public static extern int64 QTextTableCellFormat_LeftBorderStyle(void* c_this);
	[LinkName("QTextTableCellFormat_SetRightBorderStyle")]
	public static extern void QTextTableCellFormat_SetRightBorderStyle(void* c_this, int64 style);
	[LinkName("QTextTableCellFormat_RightBorderStyle")]
	public static extern int64 QTextTableCellFormat_RightBorderStyle(void* c_this);
	[LinkName("QTextTableCellFormat_SetBorderStyle")]
	public static extern void QTextTableCellFormat_SetBorderStyle(void* c_this, int64 style);
	[LinkName("QTextTableCellFormat_SetTopBorderBrush")]
	public static extern void QTextTableCellFormat_SetTopBorderBrush(void* c_this, void* brush);
	[LinkName("QTextTableCellFormat_TopBorderBrush")]
	public static extern void QTextTableCellFormat_TopBorderBrush(void* c_this);
	[LinkName("QTextTableCellFormat_SetBottomBorderBrush")]
	public static extern void QTextTableCellFormat_SetBottomBorderBrush(void* c_this, void* brush);
	[LinkName("QTextTableCellFormat_BottomBorderBrush")]
	public static extern void QTextTableCellFormat_BottomBorderBrush(void* c_this);
	[LinkName("QTextTableCellFormat_SetLeftBorderBrush")]
	public static extern void QTextTableCellFormat_SetLeftBorderBrush(void* c_this, void* brush);
	[LinkName("QTextTableCellFormat_LeftBorderBrush")]
	public static extern void QTextTableCellFormat_LeftBorderBrush(void* c_this);
	[LinkName("QTextTableCellFormat_SetRightBorderBrush")]
	public static extern void QTextTableCellFormat_SetRightBorderBrush(void* c_this, void* brush);
	[LinkName("QTextTableCellFormat_RightBorderBrush")]
	public static extern void QTextTableCellFormat_RightBorderBrush(void* c_this);
	[LinkName("QTextTableCellFormat_SetBorderBrush")]
	public static extern void QTextTableCellFormat_SetBorderBrush(void* c_this, void* brush);
	/// Delete this object from C++ memory
	[LinkName("QTextTableCellFormat_Delete")]
	public static extern void QTextTableCellFormat_Delete(void* self);
}