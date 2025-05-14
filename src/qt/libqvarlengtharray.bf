using System;
using System.Interop;
namespace Qt;

public interface IQVLABaseBase
{
	void* NativePtr { get; }
}
public struct QVLABaseBasePtr : IQVLABaseBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
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
public class QVLABaseBase
{
	public QVLABaseBasePtr handle;
	
	public static implicit operator QVLABaseBasePtr(Self self)
	{
		return self.handle;
	}
	
	public int32 Capacity()
	{
		return this.handle.Capacity();
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public bool Empty()
	{
		return this.handle.Empty();
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