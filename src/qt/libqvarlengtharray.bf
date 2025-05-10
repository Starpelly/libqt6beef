using System;
using System.Interop;
namespace Qt;

public class QVLABaseBase
{
	protected void* nativePtr;
	
	public int32 Capacity()
	{
		return CQt.QVLABaseBase_Capacity(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QVLABaseBase_Size(this.nativePtr);
	}
	
	public bool Empty()
	{
		return CQt.QVLABaseBase_Empty(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QVLABaseBase_Capacity")]
	public static extern int32 QVLABaseBase_Capacity(void* c_this);
	[LinkName("QVLABaseBase_Size")]
	public static extern int32 QVLABaseBase_Size(void* c_this);
	[LinkName("QVLABaseBase_Empty")]
	public static extern bool QVLABaseBase_Empty(void* c_this);
}