using System;
using System.Interop;
namespace Qt;

public class QStringTokenizerBaseBase
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QStringTokenizerBaseBase_new(other);
	}
}
extension CQt
{
	[LinkName("QStringTokenizerBaseBase_new")]
	public static extern void* QStringTokenizerBaseBase_new(void* other);
	[LinkName("QStringTokenizerBaseBase_new2")]
	public static extern void* QStringTokenizerBaseBase_new2(void* param1);
}