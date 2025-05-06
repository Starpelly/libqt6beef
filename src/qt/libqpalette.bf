using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPalette__ColorGroup
{
	Active = 0,
	Disabled = 1,
	Inactive = 2,
	NColorGroups = 3,
	Current = 4,
	All = 5,
	Normal = 0,
}
[AllowDuplicates]
public enum QPalette__ColorRole
{
	WindowText = 0,
	Button = 1,
	Light = 2,
	Midlight = 3,
	Dark = 4,
	Mid = 5,
	Text = 6,
	BrightText = 7,
	ButtonText = 8,
	Base = 9,
	Window = 10,
	Shadow = 11,
	Highlight = 12,
	HighlightedText = 13,
	Link = 14,
	LinkVisited = 15,
	AlternateBase = 16,
	NoRole = 17,
	ToolTipBase = 18,
	ToolTipText = 19,
	PlaceholderText = 20,
	NColorRoles = 21,
}
public struct QPalette
{
	[LinkName("QPalette_new")]
	public static extern QPalette* QPalette_new();
	[LinkName("QPalette_new2")]
	public static extern QPalette* QPalette_new2(QColor* button);
	[LinkName("QPalette_new3")]
	public static extern QPalette* QPalette_new3(int64 button);
	[LinkName("QPalette_new4")]
	public static extern QPalette* QPalette_new4(QColor* button, QColor* window);
	[LinkName("QPalette_new5")]
	public static extern QPalette* QPalette_new5(QBrush* windowText, QBrush* button, QBrush* light, QBrush* dark, QBrush* mid, QBrush* text, QBrush* bright_text, QBrush* _base, QBrush* window);
	[LinkName("QPalette_new6")]
	public static extern QPalette* QPalette_new6(QColor* windowText, QColor* window, QColor* light, QColor* dark, QColor* mid, QColor* text, QColor* _base);
	[LinkName("QPalette_new7")]
	public static extern QPalette* QPalette_new7(QPalette* palette);
	[LinkName("QPalette_OperatorAssign")]
	public static extern void QPalette_OperatorAssign(Self* c_this, QPalette* palette);
	[LinkName("QPalette_Swap")]
	public static extern void QPalette_Swap(Self* c_this, QPalette* other);
	[LinkName("QPalette_ToQVariant")]
	public static extern QVariant QPalette_ToQVariant(Self* c_this);
	[LinkName("QPalette_CurrentColorGroup")]
	public static extern int64 QPalette_CurrentColorGroup(Self* c_this);
	[LinkName("QPalette_SetCurrentColorGroup")]
	public static extern void QPalette_SetCurrentColorGroup(Self* c_this, int64 cg);
	[LinkName("QPalette_Color")]
	public static extern QColor* QPalette_Color(Self* c_this, int64 cg, int64 cr);
	[LinkName("QPalette_Brush")]
	public static extern QBrush* QPalette_Brush(Self* c_this, int64 cg, int64 cr);
	[LinkName("QPalette_SetColor")]
	public static extern void QPalette_SetColor(Self* c_this, int64 cg, int64 cr, QColor* color);
	[LinkName("QPalette_SetColor2")]
	public static extern void QPalette_SetColor2(Self* c_this, int64 cr, QColor* color);
	[LinkName("QPalette_SetBrush")]
	public static extern void QPalette_SetBrush(Self* c_this, int64 cr, QBrush* brush);
	[LinkName("QPalette_IsBrushSet")]
	public static extern bool QPalette_IsBrushSet(Self* c_this, int64 cg, int64 cr);
	[LinkName("QPalette_SetBrush2")]
	public static extern void QPalette_SetBrush2(Self* c_this, int64 cg, int64 cr, QBrush* brush);
	[LinkName("QPalette_SetColorGroup")]
	public static extern void QPalette_SetColorGroup(Self* c_this, int64 cr, QBrush* windowText, QBrush* button, QBrush* light, QBrush* dark, QBrush* mid, QBrush* text, QBrush* bright_text, QBrush* _base, QBrush* window);
	[LinkName("QPalette_IsEqual")]
	public static extern bool QPalette_IsEqual(Self* c_this, int64 cr1, int64 cr2);
	[LinkName("QPalette_ColorWithCr")]
	public static extern QColor* QPalette_ColorWithCr(Self* c_this, int64 cr);
	[LinkName("QPalette_BrushWithCr")]
	public static extern QBrush* QPalette_BrushWithCr(Self* c_this, int64 cr);
	[LinkName("QPalette_WindowText")]
	public static extern QBrush* QPalette_WindowText(Self* c_this);
	[LinkName("QPalette_Button")]
	public static extern QBrush* QPalette_Button(Self* c_this);
	[LinkName("QPalette_Light")]
	public static extern QBrush* QPalette_Light(Self* c_this);
	[LinkName("QPalette_Dark")]
	public static extern QBrush* QPalette_Dark(Self* c_this);
	[LinkName("QPalette_Mid")]
	public static extern QBrush* QPalette_Mid(Self* c_this);
	[LinkName("QPalette_Text")]
	public static extern QBrush* QPalette_Text(Self* c_this);
	[LinkName("QPalette_Base")]
	public static extern QBrush* QPalette_Base(Self* c_this);
	[LinkName("QPalette_AlternateBase")]
	public static extern QBrush* QPalette_AlternateBase(Self* c_this);
	[LinkName("QPalette_ToolTipBase")]
	public static extern QBrush* QPalette_ToolTipBase(Self* c_this);
	[LinkName("QPalette_ToolTipText")]
	public static extern QBrush* QPalette_ToolTipText(Self* c_this);
	[LinkName("QPalette_Window")]
	public static extern QBrush* QPalette_Window(Self* c_this);
	[LinkName("QPalette_Midlight")]
	public static extern QBrush* QPalette_Midlight(Self* c_this);
	[LinkName("QPalette_BrightText")]
	public static extern QBrush* QPalette_BrightText(Self* c_this);
	[LinkName("QPalette_ButtonText")]
	public static extern QBrush* QPalette_ButtonText(Self* c_this);
	[LinkName("QPalette_Shadow")]
	public static extern QBrush* QPalette_Shadow(Self* c_this);
	[LinkName("QPalette_Highlight")]
	public static extern QBrush* QPalette_Highlight(Self* c_this);
	[LinkName("QPalette_HighlightedText")]
	public static extern QBrush* QPalette_HighlightedText(Self* c_this);
	[LinkName("QPalette_Link")]
	public static extern QBrush* QPalette_Link(Self* c_this);
	[LinkName("QPalette_LinkVisited")]
	public static extern QBrush* QPalette_LinkVisited(Self* c_this);
	[LinkName("QPalette_PlaceholderText")]
	public static extern QBrush* QPalette_PlaceholderText(Self* c_this);
	[LinkName("QPalette_OperatorEqual")]
	public static extern bool QPalette_OperatorEqual(Self* c_this, QPalette* p);
	[LinkName("QPalette_OperatorNotEqual")]
	public static extern bool QPalette_OperatorNotEqual(Self* c_this, QPalette* p);
	[LinkName("QPalette_IsCopyOf")]
	public static extern bool QPalette_IsCopyOf(Self* c_this, QPalette* p);
	[LinkName("QPalette_CacheKey")]
	public static extern int64 QPalette_CacheKey(Self* c_this);
	[LinkName("QPalette_Resolve")]
	public static extern QPalette QPalette_Resolve(Self* c_this, QPalette* other);
	[LinkName("QPalette_ResolveMask")]
	public static extern uint64 QPalette_ResolveMask(Self* c_this);
	[LinkName("QPalette_SetResolveMask")]
	public static extern void QPalette_SetResolveMask(Self* c_this, uint64 mask);
}