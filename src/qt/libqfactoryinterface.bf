using System;
using System.Interop;
namespace Qt;

public struct QFactoryInterface
{
	[LinkName("QFactoryInterface_Keys")]
	public static extern libqt_string[] QFactoryInterface_Keys(Self* c_this);
}