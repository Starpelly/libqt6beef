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
public struct QTextLength
{
	[LinkName("QTextLength_new")]
	public static extern QTextLength* QTextLength_new(QTextLength* other);
	[LinkName("QTextLength_new2")]
	public static extern QTextLength* QTextLength_new2(QTextLength* other);
	[LinkName("QTextLength_new3")]
	public static extern QTextLength* QTextLength_new3();
	[LinkName("QTextLength_new4")]
	public static extern QTextLength* QTextLength_new4(int64 typeVal, double value);
	[LinkName("QTextLength_new5")]
	public static extern QTextLength* QTextLength_new5(QTextLength* param1);
	[LinkName("QTextLength_Type")]
	public static extern int64 QTextLength_Type(Self* c_this);
	[LinkName("QTextLength_Value")]
	public static extern double QTextLength_Value(Self* c_this, double maximumLength);
	[LinkName("QTextLength_RawValue")]
	public static extern double QTextLength_RawValue(Self* c_this);
	[LinkName("QTextLength_OperatorEqual")]
	public static extern bool QTextLength_OperatorEqual(Self* c_this, QTextLength* other);
	[LinkName("QTextLength_OperatorNotEqual")]
	public static extern bool QTextLength_OperatorNotEqual(Self* c_this, QTextLength* other);
	[LinkName("QTextLength_ToQVariant")]
	public static extern QVariant QTextLength_ToQVariant(Self* c_this);
}
public struct QTextFormat
{
	[LinkName("QTextFormat_new")]
	public static extern QTextFormat* QTextFormat_new();
	[LinkName("QTextFormat_new2")]
	public static extern QTextFormat* QTextFormat_new2(int32 typeVal);
	[LinkName("QTextFormat_new3")]
	public static extern QTextFormat* QTextFormat_new3(QTextFormat* rhs);
	[LinkName("QTextFormat_OperatorAssign")]
	public static extern void QTextFormat_OperatorAssign(Self* c_this, QTextFormat* rhs);
	[LinkName("QTextFormat_Swap")]
	public static extern void QTextFormat_Swap(Self* c_this, QTextFormat* other);
	[LinkName("QTextFormat_Merge")]
	public static extern void QTextFormat_Merge(Self* c_this, QTextFormat* other);
	[LinkName("QTextFormat_IsValid")]
	public static extern bool QTextFormat_IsValid(Self* c_this);
	[LinkName("QTextFormat_IsEmpty")]
	public static extern bool QTextFormat_IsEmpty(Self* c_this);
	[LinkName("QTextFormat_Type")]
	public static extern int32 QTextFormat_Type(Self* c_this);
	[LinkName("QTextFormat_ObjectIndex")]
	public static extern int32 QTextFormat_ObjectIndex(Self* c_this);
	[LinkName("QTextFormat_SetObjectIndex")]
	public static extern void QTextFormat_SetObjectIndex(Self* c_this, int32 object);
	[LinkName("QTextFormat_Property")]
	public static extern QVariant QTextFormat_Property(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_SetProperty")]
	public static extern void QTextFormat_SetProperty(Self* c_this, int32 propertyId, QVariant* value);
	[LinkName("QTextFormat_ClearProperty")]
	public static extern void QTextFormat_ClearProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_HasProperty")]
	public static extern bool QTextFormat_HasProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_BoolProperty")]
	public static extern bool QTextFormat_BoolProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_IntProperty")]
	public static extern int32 QTextFormat_IntProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_DoubleProperty")]
	public static extern double QTextFormat_DoubleProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_StringProperty")]
	public static extern libqt_string QTextFormat_StringProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_ColorProperty")]
	public static extern QColor QTextFormat_ColorProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_PenProperty")]
	public static extern QPen QTextFormat_PenProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_BrushProperty")]
	public static extern QBrush QTextFormat_BrushProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_LengthProperty")]
	public static extern QTextLength QTextFormat_LengthProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_LengthVectorProperty")]
	public static extern QTextLength[] QTextFormat_LengthVectorProperty(Self* c_this, int32 propertyId);
	[LinkName("QTextFormat_SetProperty2")]
	public static extern void QTextFormat_SetProperty2(Self* c_this, int32 propertyId, QTextLength[] lengths);
	[LinkName("QTextFormat_Properties")]
	public static extern void* QTextFormat_Properties(Self* c_this);
	[LinkName("QTextFormat_PropertyCount")]
	public static extern int32 QTextFormat_PropertyCount(Self* c_this);
	[LinkName("QTextFormat_SetObjectType")]
	public static extern void QTextFormat_SetObjectType(Self* c_this, int32 typeVal);
	[LinkName("QTextFormat_ObjectType")]
	public static extern int32 QTextFormat_ObjectType(Self* c_this);
	[LinkName("QTextFormat_IsCharFormat")]
	public static extern bool QTextFormat_IsCharFormat(Self* c_this);
	[LinkName("QTextFormat_IsBlockFormat")]
	public static extern bool QTextFormat_IsBlockFormat(Self* c_this);
	[LinkName("QTextFormat_IsListFormat")]
	public static extern bool QTextFormat_IsListFormat(Self* c_this);
	[LinkName("QTextFormat_IsFrameFormat")]
	public static extern bool QTextFormat_IsFrameFormat(Self* c_this);
	[LinkName("QTextFormat_IsImageFormat")]
	public static extern bool QTextFormat_IsImageFormat(Self* c_this);
	[LinkName("QTextFormat_IsTableFormat")]
	public static extern bool QTextFormat_IsTableFormat(Self* c_this);
	[LinkName("QTextFormat_IsTableCellFormat")]
	public static extern bool QTextFormat_IsTableCellFormat(Self* c_this);
	[LinkName("QTextFormat_ToBlockFormat")]
	public static extern QTextBlockFormat QTextFormat_ToBlockFormat(Self* c_this);
	[LinkName("QTextFormat_ToCharFormat")]
	public static extern QTextCharFormat QTextFormat_ToCharFormat(Self* c_this);
	[LinkName("QTextFormat_ToListFormat")]
	public static extern QTextListFormat QTextFormat_ToListFormat(Self* c_this);
	[LinkName("QTextFormat_ToTableFormat")]
	public static extern QTextTableFormat QTextFormat_ToTableFormat(Self* c_this);
	[LinkName("QTextFormat_ToFrameFormat")]
	public static extern QTextFrameFormat QTextFormat_ToFrameFormat(Self* c_this);
	[LinkName("QTextFormat_ToImageFormat")]
	public static extern QTextImageFormat QTextFormat_ToImageFormat(Self* c_this);
	[LinkName("QTextFormat_ToTableCellFormat")]
	public static extern QTextTableCellFormat QTextFormat_ToTableCellFormat(Self* c_this);
	[LinkName("QTextFormat_OperatorEqual")]
	public static extern bool QTextFormat_OperatorEqual(Self* c_this, QTextFormat* rhs);
	[LinkName("QTextFormat_OperatorNotEqual")]
	public static extern bool QTextFormat_OperatorNotEqual(Self* c_this, QTextFormat* rhs);
	[LinkName("QTextFormat_ToQVariant")]
	public static extern QVariant QTextFormat_ToQVariant(Self* c_this);
	[LinkName("QTextFormat_SetLayoutDirection")]
	public static extern void QTextFormat_SetLayoutDirection(Self* c_this, int64 direction);
	[LinkName("QTextFormat_LayoutDirection")]
	public static extern int64 QTextFormat_LayoutDirection(Self* c_this);
	[LinkName("QTextFormat_SetBackground")]
	public static extern void QTextFormat_SetBackground(Self* c_this, QBrush* brush);
	[LinkName("QTextFormat_Background")]
	public static extern QBrush QTextFormat_Background(Self* c_this);
	[LinkName("QTextFormat_ClearBackground")]
	public static extern void QTextFormat_ClearBackground(Self* c_this);
	[LinkName("QTextFormat_SetForeground")]
	public static extern void QTextFormat_SetForeground(Self* c_this, QBrush* brush);
	[LinkName("QTextFormat_Foreground")]
	public static extern QBrush QTextFormat_Foreground(Self* c_this);
	[LinkName("QTextFormat_ClearForeground")]
	public static extern void QTextFormat_ClearForeground(Self* c_this);
}
public struct QTextCharFormat : QTextFormat
{
	[LinkName("QTextCharFormat_new")]
	public static extern QTextCharFormat* QTextCharFormat_new();
	[LinkName("QTextCharFormat_new2")]
	public static extern QTextCharFormat* QTextCharFormat_new2(QTextCharFormat* param1);
	[LinkName("QTextCharFormat_IsValid")]
	public static extern bool QTextCharFormat_IsValid(Self* c_this);
	[LinkName("QTextCharFormat_SetFont")]
	public static extern void QTextCharFormat_SetFont(Self* c_this, QFont* font);
	[LinkName("QTextCharFormat_Font")]
	public static extern QFont QTextCharFormat_Font(Self* c_this);
	[LinkName("QTextCharFormat_SetFontFamily")]
	public static extern void QTextCharFormat_SetFontFamily(Self* c_this, libqt_string family);
	[LinkName("QTextCharFormat_FontFamily")]
	public static extern libqt_string QTextCharFormat_FontFamily(Self* c_this);
	[LinkName("QTextCharFormat_SetFontFamilies")]
	public static extern void QTextCharFormat_SetFontFamilies(Self* c_this, libqt_string[] families);
	[LinkName("QTextCharFormat_FontFamilies")]
	public static extern QVariant QTextCharFormat_FontFamilies(Self* c_this);
	[LinkName("QTextCharFormat_SetFontStyleName")]
	public static extern void QTextCharFormat_SetFontStyleName(Self* c_this, libqt_string styleName);
	[LinkName("QTextCharFormat_FontStyleName")]
	public static extern QVariant QTextCharFormat_FontStyleName(Self* c_this);
	[LinkName("QTextCharFormat_SetFontPointSize")]
	public static extern void QTextCharFormat_SetFontPointSize(Self* c_this, double size);
	[LinkName("QTextCharFormat_FontPointSize")]
	public static extern double QTextCharFormat_FontPointSize(Self* c_this);
	[LinkName("QTextCharFormat_SetFontWeight")]
	public static extern void QTextCharFormat_SetFontWeight(Self* c_this, int32 weight);
	[LinkName("QTextCharFormat_FontWeight")]
	public static extern int32 QTextCharFormat_FontWeight(Self* c_this);
	[LinkName("QTextCharFormat_SetFontItalic")]
	public static extern void QTextCharFormat_SetFontItalic(Self* c_this, bool italic);
	[LinkName("QTextCharFormat_FontItalic")]
	public static extern bool QTextCharFormat_FontItalic(Self* c_this);
	[LinkName("QTextCharFormat_SetFontCapitalization")]
	public static extern void QTextCharFormat_SetFontCapitalization(Self* c_this, int64 capitalization);
	[LinkName("QTextCharFormat_FontCapitalization")]
	public static extern int64 QTextCharFormat_FontCapitalization(Self* c_this);
	[LinkName("QTextCharFormat_SetFontLetterSpacingType")]
	public static extern void QTextCharFormat_SetFontLetterSpacingType(Self* c_this, int64 letterSpacingType);
	[LinkName("QTextCharFormat_FontLetterSpacingType")]
	public static extern int64 QTextCharFormat_FontLetterSpacingType(Self* c_this);
	[LinkName("QTextCharFormat_SetFontLetterSpacing")]
	public static extern void QTextCharFormat_SetFontLetterSpacing(Self* c_this, double spacing);
	[LinkName("QTextCharFormat_FontLetterSpacing")]
	public static extern double QTextCharFormat_FontLetterSpacing(Self* c_this);
	[LinkName("QTextCharFormat_SetFontWordSpacing")]
	public static extern void QTextCharFormat_SetFontWordSpacing(Self* c_this, double spacing);
	[LinkName("QTextCharFormat_FontWordSpacing")]
	public static extern double QTextCharFormat_FontWordSpacing(Self* c_this);
	[LinkName("QTextCharFormat_SetFontUnderline")]
	public static extern void QTextCharFormat_SetFontUnderline(Self* c_this, bool underline);
	[LinkName("QTextCharFormat_FontUnderline")]
	public static extern bool QTextCharFormat_FontUnderline(Self* c_this);
	[LinkName("QTextCharFormat_SetFontOverline")]
	public static extern void QTextCharFormat_SetFontOverline(Self* c_this, bool overline);
	[LinkName("QTextCharFormat_FontOverline")]
	public static extern bool QTextCharFormat_FontOverline(Self* c_this);
	[LinkName("QTextCharFormat_SetFontStrikeOut")]
	public static extern void QTextCharFormat_SetFontStrikeOut(Self* c_this, bool strikeOut);
	[LinkName("QTextCharFormat_FontStrikeOut")]
	public static extern bool QTextCharFormat_FontStrikeOut(Self* c_this);
	[LinkName("QTextCharFormat_SetUnderlineColor")]
	public static extern void QTextCharFormat_SetUnderlineColor(Self* c_this, QColor* color);
	[LinkName("QTextCharFormat_UnderlineColor")]
	public static extern QColor QTextCharFormat_UnderlineColor(Self* c_this);
	[LinkName("QTextCharFormat_SetFontFixedPitch")]
	public static extern void QTextCharFormat_SetFontFixedPitch(Self* c_this, bool fixedPitch);
	[LinkName("QTextCharFormat_FontFixedPitch")]
	public static extern bool QTextCharFormat_FontFixedPitch(Self* c_this);
	[LinkName("QTextCharFormat_SetFontStretch")]
	public static extern void QTextCharFormat_SetFontStretch(Self* c_this, int32 factor);
	[LinkName("QTextCharFormat_FontStretch")]
	public static extern int32 QTextCharFormat_FontStretch(Self* c_this);
	[LinkName("QTextCharFormat_SetFontStyleHint")]
	public static extern void QTextCharFormat_SetFontStyleHint(Self* c_this, int64 hint);
	[LinkName("QTextCharFormat_SetFontStyleStrategy")]
	public static extern void QTextCharFormat_SetFontStyleStrategy(Self* c_this, int64 strategy);
	[LinkName("QTextCharFormat_FontStyleHint")]
	public static extern int64 QTextCharFormat_FontStyleHint(Self* c_this);
	[LinkName("QTextCharFormat_FontStyleStrategy")]
	public static extern int64 QTextCharFormat_FontStyleStrategy(Self* c_this);
	[LinkName("QTextCharFormat_SetFontHintingPreference")]
	public static extern void QTextCharFormat_SetFontHintingPreference(Self* c_this, int64 hintingPreference);
	[LinkName("QTextCharFormat_FontHintingPreference")]
	public static extern int64 QTextCharFormat_FontHintingPreference(Self* c_this);
	[LinkName("QTextCharFormat_SetFontKerning")]
	public static extern void QTextCharFormat_SetFontKerning(Self* c_this, bool enable);
	[LinkName("QTextCharFormat_FontKerning")]
	public static extern bool QTextCharFormat_FontKerning(Self* c_this);
	[LinkName("QTextCharFormat_SetUnderlineStyle")]
	public static extern void QTextCharFormat_SetUnderlineStyle(Self* c_this, int64 style);
	[LinkName("QTextCharFormat_UnderlineStyle")]
	public static extern int64 QTextCharFormat_UnderlineStyle(Self* c_this);
	[LinkName("QTextCharFormat_SetVerticalAlignment")]
	public static extern void QTextCharFormat_SetVerticalAlignment(Self* c_this, int64 alignment);
	[LinkName("QTextCharFormat_VerticalAlignment")]
	public static extern int64 QTextCharFormat_VerticalAlignment(Self* c_this);
	[LinkName("QTextCharFormat_SetTextOutline")]
	public static extern void QTextCharFormat_SetTextOutline(Self* c_this, QPen* pen);
	[LinkName("QTextCharFormat_TextOutline")]
	public static extern QPen QTextCharFormat_TextOutline(Self* c_this);
	[LinkName("QTextCharFormat_SetToolTip")]
	public static extern void QTextCharFormat_SetToolTip(Self* c_this, libqt_string tip);
	[LinkName("QTextCharFormat_ToolTip")]
	public static extern libqt_string QTextCharFormat_ToolTip(Self* c_this);
	[LinkName("QTextCharFormat_SetSuperScriptBaseline")]
	public static extern void QTextCharFormat_SetSuperScriptBaseline(Self* c_this, double baseline);
	[LinkName("QTextCharFormat_SuperScriptBaseline")]
	public static extern double QTextCharFormat_SuperScriptBaseline(Self* c_this);
	[LinkName("QTextCharFormat_SetSubScriptBaseline")]
	public static extern void QTextCharFormat_SetSubScriptBaseline(Self* c_this, double baseline);
	[LinkName("QTextCharFormat_SubScriptBaseline")]
	public static extern double QTextCharFormat_SubScriptBaseline(Self* c_this);
	[LinkName("QTextCharFormat_SetBaselineOffset")]
	public static extern void QTextCharFormat_SetBaselineOffset(Self* c_this, double baseline);
	[LinkName("QTextCharFormat_BaselineOffset")]
	public static extern double QTextCharFormat_BaselineOffset(Self* c_this);
	[LinkName("QTextCharFormat_SetAnchor")]
	public static extern void QTextCharFormat_SetAnchor(Self* c_this, bool anchor);
	[LinkName("QTextCharFormat_IsAnchor")]
	public static extern bool QTextCharFormat_IsAnchor(Self* c_this);
	[LinkName("QTextCharFormat_SetAnchorHref")]
	public static extern void QTextCharFormat_SetAnchorHref(Self* c_this, libqt_string value);
	[LinkName("QTextCharFormat_AnchorHref")]
	public static extern libqt_string QTextCharFormat_AnchorHref(Self* c_this);
	[LinkName("QTextCharFormat_SetAnchorNames")]
	public static extern void QTextCharFormat_SetAnchorNames(Self* c_this, libqt_string[] names);
	[LinkName("QTextCharFormat_AnchorNames")]
	public static extern libqt_string[] QTextCharFormat_AnchorNames(Self* c_this);
	[LinkName("QTextCharFormat_SetTableCellRowSpan")]
	public static extern void QTextCharFormat_SetTableCellRowSpan(Self* c_this, int32 tableCellRowSpan);
	[LinkName("QTextCharFormat_TableCellRowSpan")]
	public static extern int32 QTextCharFormat_TableCellRowSpan(Self* c_this);
	[LinkName("QTextCharFormat_SetTableCellColumnSpan")]
	public static extern void QTextCharFormat_SetTableCellColumnSpan(Self* c_this, int32 tableCellColumnSpan);
	[LinkName("QTextCharFormat_TableCellColumnSpan")]
	public static extern int32 QTextCharFormat_TableCellColumnSpan(Self* c_this);
	[LinkName("QTextCharFormat_SetFont2")]
	public static extern void QTextCharFormat_SetFont2(Self* c_this, QFont* font, int64 behavior);
	[LinkName("QTextCharFormat_SetFontStyleHint2")]
	public static extern void QTextCharFormat_SetFontStyleHint2(Self* c_this, int64 hint, int64 strategy);
}
public struct QTextBlockFormat : QTextFormat
{
	[LinkName("QTextBlockFormat_new")]
	public static extern QTextBlockFormat* QTextBlockFormat_new();
	[LinkName("QTextBlockFormat_new2")]
	public static extern QTextBlockFormat* QTextBlockFormat_new2(QTextBlockFormat* param1);
	[LinkName("QTextBlockFormat_IsValid")]
	public static extern bool QTextBlockFormat_IsValid(Self* c_this);
	[LinkName("QTextBlockFormat_SetAlignment")]
	public static extern void QTextBlockFormat_SetAlignment(Self* c_this, int64 alignment);
	[LinkName("QTextBlockFormat_Alignment")]
	public static extern int64 QTextBlockFormat_Alignment(Self* c_this);
	[LinkName("QTextBlockFormat_SetTopMargin")]
	public static extern void QTextBlockFormat_SetTopMargin(Self* c_this, double margin);
	[LinkName("QTextBlockFormat_TopMargin")]
	public static extern double QTextBlockFormat_TopMargin(Self* c_this);
	[LinkName("QTextBlockFormat_SetBottomMargin")]
	public static extern void QTextBlockFormat_SetBottomMargin(Self* c_this, double margin);
	[LinkName("QTextBlockFormat_BottomMargin")]
	public static extern double QTextBlockFormat_BottomMargin(Self* c_this);
	[LinkName("QTextBlockFormat_SetLeftMargin")]
	public static extern void QTextBlockFormat_SetLeftMargin(Self* c_this, double margin);
	[LinkName("QTextBlockFormat_LeftMargin")]
	public static extern double QTextBlockFormat_LeftMargin(Self* c_this);
	[LinkName("QTextBlockFormat_SetRightMargin")]
	public static extern void QTextBlockFormat_SetRightMargin(Self* c_this, double margin);
	[LinkName("QTextBlockFormat_RightMargin")]
	public static extern double QTextBlockFormat_RightMargin(Self* c_this);
	[LinkName("QTextBlockFormat_SetTextIndent")]
	public static extern void QTextBlockFormat_SetTextIndent(Self* c_this, double aindent);
	[LinkName("QTextBlockFormat_TextIndent")]
	public static extern double QTextBlockFormat_TextIndent(Self* c_this);
	[LinkName("QTextBlockFormat_SetIndent")]
	public static extern void QTextBlockFormat_SetIndent(Self* c_this, int32 indent);
	[LinkName("QTextBlockFormat_Indent")]
	public static extern int32 QTextBlockFormat_Indent(Self* c_this);
	[LinkName("QTextBlockFormat_SetHeadingLevel")]
	public static extern void QTextBlockFormat_SetHeadingLevel(Self* c_this, int32 alevel);
	[LinkName("QTextBlockFormat_HeadingLevel")]
	public static extern int32 QTextBlockFormat_HeadingLevel(Self* c_this);
	[LinkName("QTextBlockFormat_SetLineHeight")]
	public static extern void QTextBlockFormat_SetLineHeight(Self* c_this, double height, int32 heightType);
	[LinkName("QTextBlockFormat_LineHeight")]
	public static extern double QTextBlockFormat_LineHeight(Self* c_this, double scriptLineHeight, double scaling);
	[LinkName("QTextBlockFormat_LineHeight2")]
	public static extern double QTextBlockFormat_LineHeight2(Self* c_this);
	[LinkName("QTextBlockFormat_LineHeightType")]
	public static extern int32 QTextBlockFormat_LineHeightType(Self* c_this);
	[LinkName("QTextBlockFormat_SetNonBreakableLines")]
	public static extern void QTextBlockFormat_SetNonBreakableLines(Self* c_this, bool b);
	[LinkName("QTextBlockFormat_NonBreakableLines")]
	public static extern bool QTextBlockFormat_NonBreakableLines(Self* c_this);
	[LinkName("QTextBlockFormat_SetPageBreakPolicy")]
	public static extern void QTextBlockFormat_SetPageBreakPolicy(Self* c_this, int64 flags);
	[LinkName("QTextBlockFormat_PageBreakPolicy")]
	public static extern int64 QTextBlockFormat_PageBreakPolicy(Self* c_this);
	[LinkName("QTextBlockFormat_SetTabPositions")]
	public static extern void QTextBlockFormat_SetTabPositions(Self* c_this, QTextOption__Tab[] tabs);
	[LinkName("QTextBlockFormat_TabPositions")]
	public static extern QTextOption__Tab[] QTextBlockFormat_TabPositions(Self* c_this);
	[LinkName("QTextBlockFormat_SetMarker")]
	public static extern void QTextBlockFormat_SetMarker(Self* c_this, int64 marker);
	[LinkName("QTextBlockFormat_Marker")]
	public static extern int64 QTextBlockFormat_Marker(Self* c_this);
}
public struct QTextListFormat : QTextFormat
{
	[LinkName("QTextListFormat_new")]
	public static extern QTextListFormat* QTextListFormat_new();
	[LinkName("QTextListFormat_new2")]
	public static extern QTextListFormat* QTextListFormat_new2(QTextListFormat* param1);
	[LinkName("QTextListFormat_IsValid")]
	public static extern bool QTextListFormat_IsValid(Self* c_this);
	[LinkName("QTextListFormat_SetStyle")]
	public static extern void QTextListFormat_SetStyle(Self* c_this, int64 style);
	[LinkName("QTextListFormat_Style")]
	public static extern int64 QTextListFormat_Style(Self* c_this);
	[LinkName("QTextListFormat_SetIndent")]
	public static extern void QTextListFormat_SetIndent(Self* c_this, int32 indent);
	[LinkName("QTextListFormat_Indent")]
	public static extern int32 QTextListFormat_Indent(Self* c_this);
	[LinkName("QTextListFormat_SetNumberPrefix")]
	public static extern void QTextListFormat_SetNumberPrefix(Self* c_this, libqt_string numberPrefix);
	[LinkName("QTextListFormat_NumberPrefix")]
	public static extern libqt_string QTextListFormat_NumberPrefix(Self* c_this);
	[LinkName("QTextListFormat_SetNumberSuffix")]
	public static extern void QTextListFormat_SetNumberSuffix(Self* c_this, libqt_string numberSuffix);
	[LinkName("QTextListFormat_NumberSuffix")]
	public static extern libqt_string QTextListFormat_NumberSuffix(Self* c_this);
}
public struct QTextImageFormat : QTextCharFormat
{
	[LinkName("QTextImageFormat_new")]
	public static extern QTextImageFormat* QTextImageFormat_new();
	[LinkName("QTextImageFormat_IsValid")]
	public static extern bool QTextImageFormat_IsValid(Self* c_this);
	[LinkName("QTextImageFormat_SetName")]
	public static extern void QTextImageFormat_SetName(Self* c_this, libqt_string name);
	[LinkName("QTextImageFormat_Name")]
	public static extern libqt_string QTextImageFormat_Name(Self* c_this);
	[LinkName("QTextImageFormat_SetWidth")]
	public static extern void QTextImageFormat_SetWidth(Self* c_this, double width);
	[LinkName("QTextImageFormat_Width")]
	public static extern double QTextImageFormat_Width(Self* c_this);
	[LinkName("QTextImageFormat_SetHeight")]
	public static extern void QTextImageFormat_SetHeight(Self* c_this, double height);
	[LinkName("QTextImageFormat_Height")]
	public static extern double QTextImageFormat_Height(Self* c_this);
	[LinkName("QTextImageFormat_SetQuality")]
	public static extern void QTextImageFormat_SetQuality(Self* c_this, int32 quality);
	[LinkName("QTextImageFormat_SetQuality2")]
	public static extern void QTextImageFormat_SetQuality2(Self* c_this);
	[LinkName("QTextImageFormat_Quality")]
	public static extern int32 QTextImageFormat_Quality(Self* c_this);
}
public struct QTextFrameFormat : QTextFormat
{
	[LinkName("QTextFrameFormat_new")]
	public static extern QTextFrameFormat* QTextFrameFormat_new();
	[LinkName("QTextFrameFormat_new2")]
	public static extern QTextFrameFormat* QTextFrameFormat_new2(QTextFrameFormat* param1);
	[LinkName("QTextFrameFormat_IsValid")]
	public static extern bool QTextFrameFormat_IsValid(Self* c_this);
	[LinkName("QTextFrameFormat_SetPosition")]
	public static extern void QTextFrameFormat_SetPosition(Self* c_this, int64 f);
	[LinkName("QTextFrameFormat_Position")]
	public static extern int64 QTextFrameFormat_Position(Self* c_this);
	[LinkName("QTextFrameFormat_SetBorder")]
	public static extern void QTextFrameFormat_SetBorder(Self* c_this, double border);
	[LinkName("QTextFrameFormat_Border")]
	public static extern double QTextFrameFormat_Border(Self* c_this);
	[LinkName("QTextFrameFormat_SetBorderBrush")]
	public static extern void QTextFrameFormat_SetBorderBrush(Self* c_this, QBrush* brush);
	[LinkName("QTextFrameFormat_BorderBrush")]
	public static extern QBrush QTextFrameFormat_BorderBrush(Self* c_this);
	[LinkName("QTextFrameFormat_SetBorderStyle")]
	public static extern void QTextFrameFormat_SetBorderStyle(Self* c_this, int64 style);
	[LinkName("QTextFrameFormat_BorderStyle")]
	public static extern int64 QTextFrameFormat_BorderStyle(Self* c_this);
	[LinkName("QTextFrameFormat_SetMargin")]
	public static extern void QTextFrameFormat_SetMargin(Self* c_this, double margin);
	[LinkName("QTextFrameFormat_Margin")]
	public static extern double QTextFrameFormat_Margin(Self* c_this);
	[LinkName("QTextFrameFormat_SetTopMargin")]
	public static extern void QTextFrameFormat_SetTopMargin(Self* c_this, double margin);
	[LinkName("QTextFrameFormat_TopMargin")]
	public static extern double QTextFrameFormat_TopMargin(Self* c_this);
	[LinkName("QTextFrameFormat_SetBottomMargin")]
	public static extern void QTextFrameFormat_SetBottomMargin(Self* c_this, double margin);
	[LinkName("QTextFrameFormat_BottomMargin")]
	public static extern double QTextFrameFormat_BottomMargin(Self* c_this);
	[LinkName("QTextFrameFormat_SetLeftMargin")]
	public static extern void QTextFrameFormat_SetLeftMargin(Self* c_this, double margin);
	[LinkName("QTextFrameFormat_LeftMargin")]
	public static extern double QTextFrameFormat_LeftMargin(Self* c_this);
	[LinkName("QTextFrameFormat_SetRightMargin")]
	public static extern void QTextFrameFormat_SetRightMargin(Self* c_this, double margin);
	[LinkName("QTextFrameFormat_RightMargin")]
	public static extern double QTextFrameFormat_RightMargin(Self* c_this);
	[LinkName("QTextFrameFormat_SetPadding")]
	public static extern void QTextFrameFormat_SetPadding(Self* c_this, double padding);
	[LinkName("QTextFrameFormat_Padding")]
	public static extern double QTextFrameFormat_Padding(Self* c_this);
	[LinkName("QTextFrameFormat_SetWidth")]
	public static extern void QTextFrameFormat_SetWidth(Self* c_this, double width);
	[LinkName("QTextFrameFormat_SetWidthWithLength")]
	public static extern void QTextFrameFormat_SetWidthWithLength(Self* c_this, QTextLength* length);
	[LinkName("QTextFrameFormat_Width")]
	public static extern QTextLength QTextFrameFormat_Width(Self* c_this);
	[LinkName("QTextFrameFormat_SetHeight")]
	public static extern void QTextFrameFormat_SetHeight(Self* c_this, double height);
	[LinkName("QTextFrameFormat_SetHeightWithHeight")]
	public static extern void QTextFrameFormat_SetHeightWithHeight(Self* c_this, QTextLength* height);
	[LinkName("QTextFrameFormat_Height")]
	public static extern QTextLength QTextFrameFormat_Height(Self* c_this);
	[LinkName("QTextFrameFormat_SetPageBreakPolicy")]
	public static extern void QTextFrameFormat_SetPageBreakPolicy(Self* c_this, int64 flags);
	[LinkName("QTextFrameFormat_PageBreakPolicy")]
	public static extern int64 QTextFrameFormat_PageBreakPolicy(Self* c_this);
}
public struct QTextTableFormat : QTextFrameFormat
{
	[LinkName("QTextTableFormat_new")]
	public static extern QTextTableFormat* QTextTableFormat_new();
	[LinkName("QTextTableFormat_IsValid")]
	public static extern bool QTextTableFormat_IsValid(Self* c_this);
	[LinkName("QTextTableFormat_Columns")]
	public static extern int32 QTextTableFormat_Columns(Self* c_this);
	[LinkName("QTextTableFormat_SetColumns")]
	public static extern void QTextTableFormat_SetColumns(Self* c_this, int32 columns);
	[LinkName("QTextTableFormat_SetColumnWidthConstraints")]
	public static extern void QTextTableFormat_SetColumnWidthConstraints(Self* c_this, QTextLength[] constraints);
	[LinkName("QTextTableFormat_ColumnWidthConstraints")]
	public static extern QTextLength[] QTextTableFormat_ColumnWidthConstraints(Self* c_this);
	[LinkName("QTextTableFormat_ClearColumnWidthConstraints")]
	public static extern void QTextTableFormat_ClearColumnWidthConstraints(Self* c_this);
	[LinkName("QTextTableFormat_CellSpacing")]
	public static extern double QTextTableFormat_CellSpacing(Self* c_this);
	[LinkName("QTextTableFormat_SetCellSpacing")]
	public static extern void QTextTableFormat_SetCellSpacing(Self* c_this, double spacing);
	[LinkName("QTextTableFormat_CellPadding")]
	public static extern double QTextTableFormat_CellPadding(Self* c_this);
	[LinkName("QTextTableFormat_SetCellPadding")]
	public static extern void QTextTableFormat_SetCellPadding(Self* c_this, double padding);
	[LinkName("QTextTableFormat_SetAlignment")]
	public static extern void QTextTableFormat_SetAlignment(Self* c_this, int64 alignment);
	[LinkName("QTextTableFormat_Alignment")]
	public static extern int64 QTextTableFormat_Alignment(Self* c_this);
	[LinkName("QTextTableFormat_SetHeaderRowCount")]
	public static extern void QTextTableFormat_SetHeaderRowCount(Self* c_this, int32 count);
	[LinkName("QTextTableFormat_HeaderRowCount")]
	public static extern int32 QTextTableFormat_HeaderRowCount(Self* c_this);
	[LinkName("QTextTableFormat_SetBorderCollapse")]
	public static extern void QTextTableFormat_SetBorderCollapse(Self* c_this, bool borderCollapse);
	[LinkName("QTextTableFormat_BorderCollapse")]
	public static extern bool QTextTableFormat_BorderCollapse(Self* c_this);
}
public struct QTextTableCellFormat : QTextCharFormat
{
	[LinkName("QTextTableCellFormat_new")]
	public static extern QTextTableCellFormat* QTextTableCellFormat_new();
	[LinkName("QTextTableCellFormat_IsValid")]
	public static extern bool QTextTableCellFormat_IsValid(Self* c_this);
	[LinkName("QTextTableCellFormat_SetTopPadding")]
	public static extern void QTextTableCellFormat_SetTopPadding(Self* c_this, double padding);
	[LinkName("QTextTableCellFormat_TopPadding")]
	public static extern double QTextTableCellFormat_TopPadding(Self* c_this);
	[LinkName("QTextTableCellFormat_SetBottomPadding")]
	public static extern void QTextTableCellFormat_SetBottomPadding(Self* c_this, double padding);
	[LinkName("QTextTableCellFormat_BottomPadding")]
	public static extern double QTextTableCellFormat_BottomPadding(Self* c_this);
	[LinkName("QTextTableCellFormat_SetLeftPadding")]
	public static extern void QTextTableCellFormat_SetLeftPadding(Self* c_this, double padding);
	[LinkName("QTextTableCellFormat_LeftPadding")]
	public static extern double QTextTableCellFormat_LeftPadding(Self* c_this);
	[LinkName("QTextTableCellFormat_SetRightPadding")]
	public static extern void QTextTableCellFormat_SetRightPadding(Self* c_this, double padding);
	[LinkName("QTextTableCellFormat_RightPadding")]
	public static extern double QTextTableCellFormat_RightPadding(Self* c_this);
	[LinkName("QTextTableCellFormat_SetPadding")]
	public static extern void QTextTableCellFormat_SetPadding(Self* c_this, double padding);
	[LinkName("QTextTableCellFormat_SetTopBorder")]
	public static extern void QTextTableCellFormat_SetTopBorder(Self* c_this, double width);
	[LinkName("QTextTableCellFormat_TopBorder")]
	public static extern double QTextTableCellFormat_TopBorder(Self* c_this);
	[LinkName("QTextTableCellFormat_SetBottomBorder")]
	public static extern void QTextTableCellFormat_SetBottomBorder(Self* c_this, double width);
	[LinkName("QTextTableCellFormat_BottomBorder")]
	public static extern double QTextTableCellFormat_BottomBorder(Self* c_this);
	[LinkName("QTextTableCellFormat_SetLeftBorder")]
	public static extern void QTextTableCellFormat_SetLeftBorder(Self* c_this, double width);
	[LinkName("QTextTableCellFormat_LeftBorder")]
	public static extern double QTextTableCellFormat_LeftBorder(Self* c_this);
	[LinkName("QTextTableCellFormat_SetRightBorder")]
	public static extern void QTextTableCellFormat_SetRightBorder(Self* c_this, double width);
	[LinkName("QTextTableCellFormat_RightBorder")]
	public static extern double QTextTableCellFormat_RightBorder(Self* c_this);
	[LinkName("QTextTableCellFormat_SetBorder")]
	public static extern void QTextTableCellFormat_SetBorder(Self* c_this, double width);
	[LinkName("QTextTableCellFormat_SetTopBorderStyle")]
	public static extern void QTextTableCellFormat_SetTopBorderStyle(Self* c_this, int64 style);
	[LinkName("QTextTableCellFormat_TopBorderStyle")]
	public static extern int64 QTextTableCellFormat_TopBorderStyle(Self* c_this);
	[LinkName("QTextTableCellFormat_SetBottomBorderStyle")]
	public static extern void QTextTableCellFormat_SetBottomBorderStyle(Self* c_this, int64 style);
	[LinkName("QTextTableCellFormat_BottomBorderStyle")]
	public static extern int64 QTextTableCellFormat_BottomBorderStyle(Self* c_this);
	[LinkName("QTextTableCellFormat_SetLeftBorderStyle")]
	public static extern void QTextTableCellFormat_SetLeftBorderStyle(Self* c_this, int64 style);
	[LinkName("QTextTableCellFormat_LeftBorderStyle")]
	public static extern int64 QTextTableCellFormat_LeftBorderStyle(Self* c_this);
	[LinkName("QTextTableCellFormat_SetRightBorderStyle")]
	public static extern void QTextTableCellFormat_SetRightBorderStyle(Self* c_this, int64 style);
	[LinkName("QTextTableCellFormat_RightBorderStyle")]
	public static extern int64 QTextTableCellFormat_RightBorderStyle(Self* c_this);
	[LinkName("QTextTableCellFormat_SetBorderStyle")]
	public static extern void QTextTableCellFormat_SetBorderStyle(Self* c_this, int64 style);
	[LinkName("QTextTableCellFormat_SetTopBorderBrush")]
	public static extern void QTextTableCellFormat_SetTopBorderBrush(Self* c_this, QBrush* brush);
	[LinkName("QTextTableCellFormat_TopBorderBrush")]
	public static extern QBrush QTextTableCellFormat_TopBorderBrush(Self* c_this);
	[LinkName("QTextTableCellFormat_SetBottomBorderBrush")]
	public static extern void QTextTableCellFormat_SetBottomBorderBrush(Self* c_this, QBrush* brush);
	[LinkName("QTextTableCellFormat_BottomBorderBrush")]
	public static extern QBrush QTextTableCellFormat_BottomBorderBrush(Self* c_this);
	[LinkName("QTextTableCellFormat_SetLeftBorderBrush")]
	public static extern void QTextTableCellFormat_SetLeftBorderBrush(Self* c_this, QBrush* brush);
	[LinkName("QTextTableCellFormat_LeftBorderBrush")]
	public static extern QBrush QTextTableCellFormat_LeftBorderBrush(Self* c_this);
	[LinkName("QTextTableCellFormat_SetRightBorderBrush")]
	public static extern void QTextTableCellFormat_SetRightBorderBrush(Self* c_this, QBrush* brush);
	[LinkName("QTextTableCellFormat_RightBorderBrush")]
	public static extern QBrush QTextTableCellFormat_RightBorderBrush(Self* c_this);
	[LinkName("QTextTableCellFormat_SetBorderBrush")]
	public static extern void QTextTableCellFormat_SetBorderBrush(Self* c_this, QBrush* brush);
}