using System;
using System.Interop;
namespace Qt;

public struct QStyleFactory
{
	[LinkName("QStyleFactory_new")]
	public static extern QStyleFactory* QStyleFactory_new(QStyleFactory* other);
	[LinkName("QStyleFactory_new2")]
	public static extern QStyleFactory* QStyleFactory_new2(QStyleFactory* other);
	[LinkName("QStyleFactory_Keys")]
	public static extern libqt_string[] QStyleFactory_Keys();
	[LinkName("QStyleFactory_Create")]
	public static extern QStyle* QStyleFactory_Create(libqt_string param1);
}