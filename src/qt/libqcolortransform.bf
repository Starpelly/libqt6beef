using System;
using System.Interop;
namespace Qt;

public class QColorTransform
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QColorTransform_new();
	}
	
	public ~this()
	{
		CQt.QColorTransform_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QColorTransform_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QColorTransform_Swap(this.nativePtr, other);
	}
	
	public bool IsIdentity()
	{
		return CQt.QColorTransform_IsIdentity(this.nativePtr);
	}
	
	public uint32 Map(uint32 argb)
	{
		return CQt.QColorTransform_Map(this.nativePtr, argb);
	}
	
	public void MapWithRgba64(void rgba64)
	{
		CQt.QColorTransform_MapWithRgba64(this.nativePtr, rgba64);
	}
	
	public void MapWithColor(void* color)
	{
		CQt.QColorTransform_MapWithColor(this.nativePtr, color);
	}
	
}
extension CQt
{
	[LinkName("QColorTransform_new")]
	public static extern void* QColorTransform_new();
	[LinkName("QColorTransform_new2")]
	public static extern void* QColorTransform_new2(void* colorTransform);
	[LinkName("QColorTransform_OperatorAssign")]
	public static extern void QColorTransform_OperatorAssign(void* c_this, void* other);
	[LinkName("QColorTransform_Swap")]
	public static extern void QColorTransform_Swap(void* c_this, void* other);
	[LinkName("QColorTransform_IsIdentity")]
	public static extern bool QColorTransform_IsIdentity(void* c_this);
	[LinkName("QColorTransform_Map")]
	public static extern uint32 QColorTransform_Map(void* c_this, uint32 argb);
	[LinkName("QColorTransform_MapWithRgba64")]
	public static extern void QColorTransform_MapWithRgba64(void* c_this, void rgba64);
	[LinkName("QColorTransform_MapWithColor")]
	public static extern void QColorTransform_MapWithColor(void* c_this, void* color);
	/// Delete this object from C++ memory
	[LinkName("QColorTransform_Delete")]
	public static extern void QColorTransform_Delete(void* self);
}