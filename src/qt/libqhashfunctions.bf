using System;
using System.Interop;
namespace Qt;

public class QHashSeed
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QHashSeed_new(other);
	}
	
	public ~this()
	{
		CQt.QHashSeed_Delete(this.nativePtr);
	}
	
	public uint32 ToUnsignedLong()
	{
		return CQt.QHashSeed_ToUnsignedLong(this.nativePtr);
	}
	
	public static void GlobalSeed()
	{
		CQt.QHashSeed_GlobalSeed();
	}
	
	public static void SetDeterministicGlobalSeed()
	{
		CQt.QHashSeed_SetDeterministicGlobalSeed();
	}
	
	public static void ResetRandomGlobalSeed()
	{
		CQt.QHashSeed_ResetRandomGlobalSeed();
	}
	
}
extension CQt
{
	[LinkName("QHashSeed_new")]
	public static extern void* QHashSeed_new(void* other);
	[LinkName("QHashSeed_new2")]
	public static extern void* QHashSeed_new2(void* other);
	[LinkName("QHashSeed_new3")]
	public static extern void* QHashSeed_new3();
	[LinkName("QHashSeed_new4")]
	public static extern void* QHashSeed_new4(uint32 d);
	[LinkName("QHashSeed_ToUnsignedLong")]
	public static extern uint32 QHashSeed_ToUnsignedLong(void* c_this);
	[LinkName("QHashSeed_GlobalSeed")]
	public static extern void QHashSeed_GlobalSeed();
	[LinkName("QHashSeed_SetDeterministicGlobalSeed")]
	public static extern void QHashSeed_SetDeterministicGlobalSeed();
	[LinkName("QHashSeed_ResetRandomGlobalSeed")]
	public static extern void QHashSeed_ResetRandomGlobalSeed();
	/// Delete this object from C++ memory
	[LinkName("QHashSeed_Delete")]
	public static extern void QHashSeed_Delete(void* self);
}