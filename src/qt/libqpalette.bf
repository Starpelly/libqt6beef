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
public interface IQPalette
{
	void* NativePtr { get; }
}
public struct QPalettePtr : IQPalette, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPalette_new());
	}
	
	public void Dispose()
	{
		CQt.QPalette_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQPalette palette)
	{
		CQt.QPalette_OperatorAssign(this.nativePtr, (palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public void Swap(IQPalette other)
	{
		CQt.QPalette_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QPalette_ToQVariant(this.nativePtr);
	}
	
	public int64 CurrentColorGroup()
	{
		return CQt.QPalette_CurrentColorGroup(this.nativePtr);
	}
	
	public void SetCurrentColorGroup(int64 cg)
	{
		CQt.QPalette_SetCurrentColorGroup(this.nativePtr, (int64)cg);
	}
	
	public void* Color(int64 cg, int64 cr)
	{
		return CQt.QPalette_Color(this.nativePtr, (int64)cg, (int64)cr);
	}
	
	public void* Brush(int64 cg, int64 cr)
	{
		return CQt.QPalette_Brush(this.nativePtr, (int64)cg, (int64)cr);
	}
	
	public void SetColor(int64 cg, int64 cr, IQColor color)
	{
		CQt.QPalette_SetColor(this.nativePtr, (int64)cg, (int64)cr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void SetColor2(int64 cr, IQColor color)
	{
		CQt.QPalette_SetColor2(this.nativePtr, (int64)cr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void SetBrush(int64 cr, IQBrush brush)
	{
		CQt.QPalette_SetBrush(this.nativePtr, (int64)cr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public bool IsBrushSet(int64 cg, int64 cr)
	{
		return CQt.QPalette_IsBrushSet(this.nativePtr, (int64)cg, (int64)cr);
	}
	
	public void SetBrush2(int64 cg, int64 cr, IQBrush brush)
	{
		CQt.QPalette_SetBrush2(this.nativePtr, (int64)cg, (int64)cr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void SetColorGroup(int64 cr, IQBrush windowText, IQBrush button, IQBrush light, IQBrush dark, IQBrush mid, IQBrush text, IQBrush bright_text, IQBrush _base, IQBrush window)
	{
		CQt.QPalette_SetColorGroup(this.nativePtr, (int64)cr, (windowText == default || windowText.NativePtr == default) ? default : windowText.NativePtr, (button == default || button.NativePtr == default) ? default : button.NativePtr, (light == default || light.NativePtr == default) ? default : light.NativePtr, (dark == default || dark.NativePtr == default) ? default : dark.NativePtr, (mid == default || mid.NativePtr == default) ? default : mid.NativePtr, (text == default || text.NativePtr == default) ? default : text.NativePtr, (bright_text == default || bright_text.NativePtr == default) ? default : bright_text.NativePtr, (_base == default || _base.NativePtr == default) ? default : _base.NativePtr, (window == default || window.NativePtr == default) ? default : window.NativePtr);
	}
	
	public bool IsEqual(int64 cr1, int64 cr2)
	{
		return CQt.QPalette_IsEqual(this.nativePtr, (int64)cr1, (int64)cr2);
	}
	
	public void* ColorWithCr(int64 cr)
	{
		return CQt.QPalette_ColorWithCr(this.nativePtr, (int64)cr);
	}
	
	public void* BrushWithCr(int64 cr)
	{
		return CQt.QPalette_BrushWithCr(this.nativePtr, (int64)cr);
	}
	
	public void* WindowText()
	{
		return CQt.QPalette_WindowText(this.nativePtr);
	}
	
	public void* Button()
	{
		return CQt.QPalette_Button(this.nativePtr);
	}
	
	public void* Light()
	{
		return CQt.QPalette_Light(this.nativePtr);
	}
	
	public void* Dark()
	{
		return CQt.QPalette_Dark(this.nativePtr);
	}
	
	public void* Mid()
	{
		return CQt.QPalette_Mid(this.nativePtr);
	}
	
	public void* Text()
	{
		return CQt.QPalette_Text(this.nativePtr);
	}
	
	public void* Base()
	{
		return CQt.QPalette_Base(this.nativePtr);
	}
	
	public void* AlternateBase()
	{
		return CQt.QPalette_AlternateBase(this.nativePtr);
	}
	
	public void* ToolTipBase()
	{
		return CQt.QPalette_ToolTipBase(this.nativePtr);
	}
	
	public void* ToolTipText()
	{
		return CQt.QPalette_ToolTipText(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QPalette_Window(this.nativePtr);
	}
	
	public void* Midlight()
	{
		return CQt.QPalette_Midlight(this.nativePtr);
	}
	
	public void* BrightText()
	{
		return CQt.QPalette_BrightText(this.nativePtr);
	}
	
	public void* ButtonText()
	{
		return CQt.QPalette_ButtonText(this.nativePtr);
	}
	
	public void* Shadow()
	{
		return CQt.QPalette_Shadow(this.nativePtr);
	}
	
	public void* Highlight()
	{
		return CQt.QPalette_Highlight(this.nativePtr);
	}
	
	public void* HighlightedText()
	{
		return CQt.QPalette_HighlightedText(this.nativePtr);
	}
	
	public void* Link()
	{
		return CQt.QPalette_Link(this.nativePtr);
	}
	
	public void* LinkVisited()
	{
		return CQt.QPalette_LinkVisited(this.nativePtr);
	}
	
	public void* PlaceholderText()
	{
		return CQt.QPalette_PlaceholderText(this.nativePtr);
	}
	
	public bool OperatorEqual(IQPalette p)
	{
		return CQt.QPalette_OperatorEqual(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public bool OperatorNotEqual(IQPalette p)
	{
		return CQt.QPalette_OperatorNotEqual(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public bool IsCopyOf(IQPalette p)
	{
		return CQt.QPalette_IsCopyOf(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public int64 CacheKey()
	{
		return CQt.QPalette_CacheKey(this.nativePtr);
	}
	
	public void Resolve(IQPalette other)
	{
		CQt.QPalette_Resolve(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public uint64 ResolveMask()
	{
		return CQt.QPalette_ResolveMask(this.nativePtr);
	}
	
	public void SetResolveMask(uint64 mask)
	{
		CQt.QPalette_SetResolveMask(this.nativePtr, mask);
	}
	
}
public class QPalette
{
	public QPalettePtr handle;
	
	public static implicit operator QPalettePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPalettePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQPalette palette)
	{
		this.handle.OperatorAssign(palette);
	}
	
	public void Swap(IQPalette other)
	{
		this.handle.Swap(other);
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public int64 CurrentColorGroup()
	{
		return this.handle.CurrentColorGroup();
	}
	
	public void SetCurrentColorGroup(int64 cg)
	{
		this.handle.SetCurrentColorGroup(cg);
	}
	
	public void* Color(int64 cg, int64 cr)
	{
		return this.handle.Color(cg, cr);
	}
	
	public void* Brush(int64 cg, int64 cr)
	{
		return this.handle.Brush(cg, cr);
	}
	
	public void SetColor(int64 cg, int64 cr, IQColor color)
	{
		this.handle.SetColor(cg, cr, color);
	}
	
	public void SetColor2(int64 cr, IQColor color)
	{
		this.handle.SetColor2(cr, color);
	}
	
	public void SetBrush(int64 cr, IQBrush brush)
	{
		this.handle.SetBrush(cr, brush);
	}
	
	public bool IsBrushSet(int64 cg, int64 cr)
	{
		return this.handle.IsBrushSet(cg, cr);
	}
	
	public void SetBrush2(int64 cg, int64 cr, IQBrush brush)
	{
		this.handle.SetBrush2(cg, cr, brush);
	}
	
	public void SetColorGroup(int64 cr, IQBrush windowText, IQBrush button, IQBrush light, IQBrush dark, IQBrush mid, IQBrush text, IQBrush bright_text, IQBrush _base, IQBrush window)
	{
		this.handle.SetColorGroup(cr, windowText, button, light, dark, mid, text, bright_text, _base, window);
	}
	
	public bool IsEqual(int64 cr1, int64 cr2)
	{
		return this.handle.IsEqual(cr1, cr2);
	}
	
	public void* ColorWithCr(int64 cr)
	{
		return this.handle.ColorWithCr(cr);
	}
	
	public void* BrushWithCr(int64 cr)
	{
		return this.handle.BrushWithCr(cr);
	}
	
	public void* WindowText()
	{
		return this.handle.WindowText();
	}
	
	public void* Button()
	{
		return this.handle.Button();
	}
	
	public void* Light()
	{
		return this.handle.Light();
	}
	
	public void* Dark()
	{
		return this.handle.Dark();
	}
	
	public void* Mid()
	{
		return this.handle.Mid();
	}
	
	public void* Text()
	{
		return this.handle.Text();
	}
	
	public void* Base()
	{
		return this.handle.Base();
	}
	
	public void* AlternateBase()
	{
		return this.handle.AlternateBase();
	}
	
	public void* ToolTipBase()
	{
		return this.handle.ToolTipBase();
	}
	
	public void* ToolTipText()
	{
		return this.handle.ToolTipText();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Midlight()
	{
		return this.handle.Midlight();
	}
	
	public void* BrightText()
	{
		return this.handle.BrightText();
	}
	
	public void* ButtonText()
	{
		return this.handle.ButtonText();
	}
	
	public void* Shadow()
	{
		return this.handle.Shadow();
	}
	
	public void* Highlight()
	{
		return this.handle.Highlight();
	}
	
	public void* HighlightedText()
	{
		return this.handle.HighlightedText();
	}
	
	public void* Link()
	{
		return this.handle.Link();
	}
	
	public void* LinkVisited()
	{
		return this.handle.LinkVisited();
	}
	
	public void* PlaceholderText()
	{
		return this.handle.PlaceholderText();
	}
	
	public bool OperatorEqual(IQPalette p)
	{
		return this.handle.OperatorEqual(p);
	}
	
	public bool OperatorNotEqual(IQPalette p)
	{
		return this.handle.OperatorNotEqual(p);
	}
	
	public bool IsCopyOf(IQPalette p)
	{
		return this.handle.IsCopyOf(p);
	}
	
	public int64 CacheKey()
	{
		return this.handle.CacheKey();
	}
	
	public void Resolve(IQPalette other)
	{
		this.handle.Resolve(other);
	}
	
	public uint64 ResolveMask()
	{
		return this.handle.ResolveMask();
	}
	
	public void SetResolveMask(uint64 mask)
	{
		this.handle.SetResolveMask(mask);
	}
	
}
extension CQt
{
	[LinkName("QPalette_new")]
	public static extern void* QPalette_new();
	[LinkName("QPalette_new2")]
	public static extern void* QPalette_new2(void* button);
	[LinkName("QPalette_new3")]
	public static extern void* QPalette_new3(int64 button);
	[LinkName("QPalette_new4")]
	public static extern void* QPalette_new4(void* button, void* window);
	[LinkName("QPalette_new5")]
	public static extern void* QPalette_new5(void* windowText, void* button, void* light, void* dark, void* mid, void* text, void* bright_text, void* _base, void* window);
	[LinkName("QPalette_new6")]
	public static extern void* QPalette_new6(void* windowText, void* window, void* light, void* dark, void* mid, void* text, void* _base);
	[LinkName("QPalette_new7")]
	public static extern void* QPalette_new7(void* palette);
	[LinkName("QPalette_OperatorAssign")]
	public static extern void QPalette_OperatorAssign(void* c_this, void* palette);
	[LinkName("QPalette_Swap")]
	public static extern void QPalette_Swap(void* c_this, void* other);
	[LinkName("QPalette_ToQVariant")]
	public static extern void QPalette_ToQVariant(void* c_this);
	[LinkName("QPalette_CurrentColorGroup")]
	public static extern int64 QPalette_CurrentColorGroup(void* c_this);
	[LinkName("QPalette_SetCurrentColorGroup")]
	public static extern void QPalette_SetCurrentColorGroup(void* c_this, int64 cg);
	[LinkName("QPalette_Color")]
	public static extern void* QPalette_Color(void* c_this, int64 cg, int64 cr);
	[LinkName("QPalette_Brush")]
	public static extern void* QPalette_Brush(void* c_this, int64 cg, int64 cr);
	[LinkName("QPalette_SetColor")]
	public static extern void QPalette_SetColor(void* c_this, int64 cg, int64 cr, void* color);
	[LinkName("QPalette_SetColor2")]
	public static extern void QPalette_SetColor2(void* c_this, int64 cr, void* color);
	[LinkName("QPalette_SetBrush")]
	public static extern void QPalette_SetBrush(void* c_this, int64 cr, void* brush);
	[LinkName("QPalette_IsBrushSet")]
	public static extern bool QPalette_IsBrushSet(void* c_this, int64 cg, int64 cr);
	[LinkName("QPalette_SetBrush2")]
	public static extern void QPalette_SetBrush2(void* c_this, int64 cg, int64 cr, void* brush);
	[LinkName("QPalette_SetColorGroup")]
	public static extern void QPalette_SetColorGroup(void* c_this, int64 cr, void* windowText, void* button, void* light, void* dark, void* mid, void* text, void* bright_text, void* _base, void* window);
	[LinkName("QPalette_IsEqual")]
	public static extern bool QPalette_IsEqual(void* c_this, int64 cr1, int64 cr2);
	[LinkName("QPalette_ColorWithCr")]
	public static extern void* QPalette_ColorWithCr(void* c_this, int64 cr);
	[LinkName("QPalette_BrushWithCr")]
	public static extern void* QPalette_BrushWithCr(void* c_this, int64 cr);
	[LinkName("QPalette_WindowText")]
	public static extern void* QPalette_WindowText(void* c_this);
	[LinkName("QPalette_Button")]
	public static extern void* QPalette_Button(void* c_this);
	[LinkName("QPalette_Light")]
	public static extern void* QPalette_Light(void* c_this);
	[LinkName("QPalette_Dark")]
	public static extern void* QPalette_Dark(void* c_this);
	[LinkName("QPalette_Mid")]
	public static extern void* QPalette_Mid(void* c_this);
	[LinkName("QPalette_Text")]
	public static extern void* QPalette_Text(void* c_this);
	[LinkName("QPalette_Base")]
	public static extern void* QPalette_Base(void* c_this);
	[LinkName("QPalette_AlternateBase")]
	public static extern void* QPalette_AlternateBase(void* c_this);
	[LinkName("QPalette_ToolTipBase")]
	public static extern void* QPalette_ToolTipBase(void* c_this);
	[LinkName("QPalette_ToolTipText")]
	public static extern void* QPalette_ToolTipText(void* c_this);
	[LinkName("QPalette_Window")]
	public static extern void* QPalette_Window(void* c_this);
	[LinkName("QPalette_Midlight")]
	public static extern void* QPalette_Midlight(void* c_this);
	[LinkName("QPalette_BrightText")]
	public static extern void* QPalette_BrightText(void* c_this);
	[LinkName("QPalette_ButtonText")]
	public static extern void* QPalette_ButtonText(void* c_this);
	[LinkName("QPalette_Shadow")]
	public static extern void* QPalette_Shadow(void* c_this);
	[LinkName("QPalette_Highlight")]
	public static extern void* QPalette_Highlight(void* c_this);
	[LinkName("QPalette_HighlightedText")]
	public static extern void* QPalette_HighlightedText(void* c_this);
	[LinkName("QPalette_Link")]
	public static extern void* QPalette_Link(void* c_this);
	[LinkName("QPalette_LinkVisited")]
	public static extern void* QPalette_LinkVisited(void* c_this);
	[LinkName("QPalette_PlaceholderText")]
	public static extern void* QPalette_PlaceholderText(void* c_this);
	[LinkName("QPalette_OperatorEqual")]
	public static extern bool QPalette_OperatorEqual(void* c_this, void* p);
	[LinkName("QPalette_OperatorNotEqual")]
	public static extern bool QPalette_OperatorNotEqual(void* c_this, void* p);
	[LinkName("QPalette_IsCopyOf")]
	public static extern bool QPalette_IsCopyOf(void* c_this, void* p);
	[LinkName("QPalette_CacheKey")]
	public static extern int64 QPalette_CacheKey(void* c_this);
	[LinkName("QPalette_Resolve")]
	public static extern void QPalette_Resolve(void* c_this, void* other);
	[LinkName("QPalette_ResolveMask")]
	public static extern uint64 QPalette_ResolveMask(void* c_this);
	[LinkName("QPalette_SetResolveMask")]
	public static extern void QPalette_SetResolveMask(void* c_this, uint64 mask);
	/// Delete this object from C++ memory
	[LinkName("QPalette_Delete")]
	public static extern void QPalette_Delete(void* self);
}