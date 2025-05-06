using System;
using System.Interop;
namespace Qt;

public struct QFactoryInterface
{
	[LinkName("QFactoryInterface_Keys")]
	public static extern char8[][] QFactoryInterface_Keys(void* c_this);
}