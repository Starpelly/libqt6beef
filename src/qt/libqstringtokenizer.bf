using System;
using System.Interop;
namespace Qt;

public interface IQStringTokenizerBaseBase
{
	void* NativePtr { get; }
}
public struct QStringTokenizerBaseBasePtr : IQStringTokenizerBaseBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQStringTokenizerBaseBase other)
	{
		return .(CQt.QStringTokenizerBaseBase_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
}
public class QStringTokenizerBaseBase
{
	public QStringTokenizerBaseBasePtr handle;
	
	public static implicit operator QStringTokenizerBaseBasePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQStringTokenizerBaseBase other)
	{
		this.handle = QStringTokenizerBaseBasePtr.New(other);
	}
}
extension CQt
{
	[LinkName("QStringTokenizerBaseBase_new")]
	public static extern void* QStringTokenizerBaseBase_new(void* other);
	[LinkName("QStringTokenizerBaseBase_new2")]
	public static extern void* QStringTokenizerBaseBase_new2(void* param1);
}