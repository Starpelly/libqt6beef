using System;
using System.Interop;
namespace Qt;

public interface IQStringTokenizerBaseBase
{
	void* NativePtr { get; }
}
public class QStringTokenizerBaseBase : IQStringTokenizerBaseBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQStringTokenizerBaseBase other)
	{
		this.nativePtr = CQt.QStringTokenizerBaseBase_new((other == default) ? default : (void*)other.NativePtr);
	}
}
extension CQt
{
	[LinkName("QStringTokenizerBaseBase_new")]
	public static extern void* QStringTokenizerBaseBase_new(void* other);
	[LinkName("QStringTokenizerBaseBase_new2")]
	public static extern void* QStringTokenizerBaseBase_new2(void* param1);
}