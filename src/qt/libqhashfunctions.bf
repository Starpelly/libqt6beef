using System;
using System.Interop;
namespace Qt;

public interface IQHashSeed
{
	void* NativePtr { get; }
}
public struct QHashSeedPtr : IQHashSeed, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQHashSeed other)
	{
		return .(CQt.QHashSeed_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
public class QHashSeed
{
	public QHashSeedPtr handle;
	
	public static implicit operator QHashSeedPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQHashSeed other)
	{
		this.handle = QHashSeedPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public uint32 ToUnsignedLong()
	{
		return this.handle.ToUnsignedLong();
	}
	
	public static void GlobalSeed()
	{
		QHashSeedPtr.GlobalSeed();
	}
	
	public static void SetDeterministicGlobalSeed()
	{
		QHashSeedPtr.SetDeterministicGlobalSeed();
	}
	
	public static void ResetRandomGlobalSeed()
	{
		QHashSeedPtr.ResetRandomGlobalSeed();
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