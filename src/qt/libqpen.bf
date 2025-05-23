using System;
using System.Interop;
namespace Qt;

public interface IQPen
{
	void* NativePtr { get; }
}
public struct QPenPtr : IQPen, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPen_new());
	}
	
	public void Dispose()
	{
		CQt.QPen_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQPen pen)
	{
		CQt.QPen_OperatorAssign(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void Swap(IQPen other)
	{
		CQt.QPen_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int64 Style()
	{
		return CQt.QPen_Style(this.nativePtr);
	}
	
	public void SetStyle(int64 style)
	{
		CQt.QPen_SetStyle(this.nativePtr, (int64)style);
	}
	
	public double[] DashPattern()
	{
		return CQt.QPen_DashPattern(this.nativePtr);
	}
	
	public void SetDashPattern(double[] pattern)
	{
		CQt.QPen_SetDashPattern(this.nativePtr, null);
	}
	
	public double DashOffset()
	{
		return CQt.QPen_DashOffset(this.nativePtr);
	}
	
	public void SetDashOffset(double doffset)
	{
		CQt.QPen_SetDashOffset(this.nativePtr, doffset);
	}
	
	public double MiterLimit()
	{
		return CQt.QPen_MiterLimit(this.nativePtr);
	}
	
	public void SetMiterLimit(double limit)
	{
		CQt.QPen_SetMiterLimit(this.nativePtr, limit);
	}
	
	public double WidthF()
	{
		return CQt.QPen_WidthF(this.nativePtr);
	}
	
	public void SetWidthF(double width)
	{
		CQt.QPen_SetWidthF(this.nativePtr, width);
	}
	
	public int32 Width()
	{
		return CQt.QPen_Width(this.nativePtr);
	}
	
	public void SetWidth(int32 width)
	{
		CQt.QPen_SetWidth(this.nativePtr, width);
	}
	
	public void Color()
	{
		CQt.QPen_Color(this.nativePtr);
	}
	
	public void SetColor(IQColor color)
	{
		CQt.QPen_SetColor(this.nativePtr, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void Brush()
	{
		CQt.QPen_Brush(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QPen_SetBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public bool IsSolid()
	{
		return CQt.QPen_IsSolid(this.nativePtr);
	}
	
	public int64 CapStyle()
	{
		return CQt.QPen_CapStyle(this.nativePtr);
	}
	
	public void SetCapStyle(int64 pcs)
	{
		CQt.QPen_SetCapStyle(this.nativePtr, (int64)pcs);
	}
	
	public int64 JoinStyle()
	{
		return CQt.QPen_JoinStyle(this.nativePtr);
	}
	
	public void SetJoinStyle(int64 pcs)
	{
		CQt.QPen_SetJoinStyle(this.nativePtr, (int64)pcs);
	}
	
	public bool IsCosmetic()
	{
		return CQt.QPen_IsCosmetic(this.nativePtr);
	}
	
	public void SetCosmetic(bool cosmetic)
	{
		CQt.QPen_SetCosmetic(this.nativePtr, cosmetic);
	}
	
	public bool OperatorEqual(IQPen p)
	{
		return CQt.QPen_OperatorEqual(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public bool OperatorNotEqual(IQPen p)
	{
		return CQt.QPen_OperatorNotEqual(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QPen_ToQVariant(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QPen_IsDetached(this.nativePtr);
	}
	
}
public class QPen
{
	public QPenPtr handle;
	
	public static implicit operator QPenPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPenPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQPen pen)
	{
		this.handle.OperatorAssign(pen);
	}
	
	public void Swap(IQPen other)
	{
		this.handle.Swap(other);
	}
	
	public int64 Style()
	{
		return this.handle.Style();
	}
	
	public void SetStyle(int64 style)
	{
		this.handle.SetStyle(style);
	}
	
	public double[] DashPattern()
	{
		return this.handle.DashPattern();
	}
	
	public void SetDashPattern(double[] pattern)
	{
		this.handle.SetDashPattern(null);
	}
	
	public double DashOffset()
	{
		return this.handle.DashOffset();
	}
	
	public void SetDashOffset(double doffset)
	{
		this.handle.SetDashOffset(doffset);
	}
	
	public double MiterLimit()
	{
		return this.handle.MiterLimit();
	}
	
	public void SetMiterLimit(double limit)
	{
		this.handle.SetMiterLimit(limit);
	}
	
	public double WidthF()
	{
		return this.handle.WidthF();
	}
	
	public void SetWidthF(double width)
	{
		this.handle.SetWidthF(width);
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public void SetWidth(int32 width)
	{
		this.handle.SetWidth(width);
	}
	
	public void Color()
	{
		this.handle.Color();
	}
	
	public void SetColor(IQColor color)
	{
		this.handle.SetColor(color);
	}
	
	public void Brush()
	{
		this.handle.Brush();
	}
	
	public void SetBrush(IQBrush brush)
	{
		this.handle.SetBrush(brush);
	}
	
	public bool IsSolid()
	{
		return this.handle.IsSolid();
	}
	
	public int64 CapStyle()
	{
		return this.handle.CapStyle();
	}
	
	public void SetCapStyle(int64 pcs)
	{
		this.handle.SetCapStyle(pcs);
	}
	
	public int64 JoinStyle()
	{
		return this.handle.JoinStyle();
	}
	
	public void SetJoinStyle(int64 pcs)
	{
		this.handle.SetJoinStyle(pcs);
	}
	
	public bool IsCosmetic()
	{
		return this.handle.IsCosmetic();
	}
	
	public void SetCosmetic(bool cosmetic)
	{
		this.handle.SetCosmetic(cosmetic);
	}
	
	public bool OperatorEqual(IQPen p)
	{
		return this.handle.OperatorEqual(p);
	}
	
	public bool OperatorNotEqual(IQPen p)
	{
		return this.handle.OperatorNotEqual(p);
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public bool IsDetached()
	{
		return this.handle.IsDetached();
	}
	
}
extension CQt
{
	[LinkName("QPen_new")]
	public static extern void* QPen_new();
	[LinkName("QPen_new2")]
	public static extern void* QPen_new2(int64 param1);
	[LinkName("QPen_new3")]
	public static extern void* QPen_new3(void* color);
	[LinkName("QPen_new4")]
	public static extern void* QPen_new4(void* brush, double width);
	[LinkName("QPen_new5")]
	public static extern void* QPen_new5(void* pen);
	[LinkName("QPen_new6")]
	public static extern void* QPen_new6(void* brush, double width, int64 s);
	[LinkName("QPen_new7")]
	public static extern void* QPen_new7(void* brush, double width, int64 s, int64 c);
	[LinkName("QPen_new8")]
	public static extern void* QPen_new8(void* brush, double width, int64 s, int64 c, int64 j);
	[LinkName("QPen_OperatorAssign")]
	public static extern void QPen_OperatorAssign(void* c_this, void* pen);
	[LinkName("QPen_Swap")]
	public static extern void QPen_Swap(void* c_this, void* other);
	[LinkName("QPen_Style")]
	public static extern int64 QPen_Style(void* c_this);
	[LinkName("QPen_SetStyle")]
	public static extern void QPen_SetStyle(void* c_this, int64 style);
	[LinkName("QPen_DashPattern")]
	public static extern double[] QPen_DashPattern(void* c_this);
	[LinkName("QPen_SetDashPattern")]
	public static extern void QPen_SetDashPattern(void* c_this, double[] pattern);
	[LinkName("QPen_DashOffset")]
	public static extern double QPen_DashOffset(void* c_this);
	[LinkName("QPen_SetDashOffset")]
	public static extern void QPen_SetDashOffset(void* c_this, double doffset);
	[LinkName("QPen_MiterLimit")]
	public static extern double QPen_MiterLimit(void* c_this);
	[LinkName("QPen_SetMiterLimit")]
	public static extern void QPen_SetMiterLimit(void* c_this, double limit);
	[LinkName("QPen_WidthF")]
	public static extern double QPen_WidthF(void* c_this);
	[LinkName("QPen_SetWidthF")]
	public static extern void QPen_SetWidthF(void* c_this, double width);
	[LinkName("QPen_Width")]
	public static extern int32 QPen_Width(void* c_this);
	[LinkName("QPen_SetWidth")]
	public static extern void QPen_SetWidth(void* c_this, int32 width);
	[LinkName("QPen_Color")]
	public static extern void QPen_Color(void* c_this);
	[LinkName("QPen_SetColor")]
	public static extern void QPen_SetColor(void* c_this, void* color);
	[LinkName("QPen_Brush")]
	public static extern void QPen_Brush(void* c_this);
	[LinkName("QPen_SetBrush")]
	public static extern void QPen_SetBrush(void* c_this, void* brush);
	[LinkName("QPen_IsSolid")]
	public static extern bool QPen_IsSolid(void* c_this);
	[LinkName("QPen_CapStyle")]
	public static extern int64 QPen_CapStyle(void* c_this);
	[LinkName("QPen_SetCapStyle")]
	public static extern void QPen_SetCapStyle(void* c_this, int64 pcs);
	[LinkName("QPen_JoinStyle")]
	public static extern int64 QPen_JoinStyle(void* c_this);
	[LinkName("QPen_SetJoinStyle")]
	public static extern void QPen_SetJoinStyle(void* c_this, int64 pcs);
	[LinkName("QPen_IsCosmetic")]
	public static extern bool QPen_IsCosmetic(void* c_this);
	[LinkName("QPen_SetCosmetic")]
	public static extern void QPen_SetCosmetic(void* c_this, bool cosmetic);
	[LinkName("QPen_OperatorEqual")]
	public static extern bool QPen_OperatorEqual(void* c_this, void* p);
	[LinkName("QPen_OperatorNotEqual")]
	public static extern bool QPen_OperatorNotEqual(void* c_this, void* p);
	[LinkName("QPen_ToQVariant")]
	public static extern void QPen_ToQVariant(void* c_this);
	[LinkName("QPen_IsDetached")]
	public static extern bool QPen_IsDetached(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPen_Delete")]
	public static extern void QPen_Delete(void* self);
}