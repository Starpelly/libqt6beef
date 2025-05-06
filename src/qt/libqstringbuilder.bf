using System;
using System.Interop;
namespace Qt;

public struct QAbstractConcatenable
{
	[LinkName("QAbstractConcatenable_new")]
	public static extern QAbstractConcatenable* QAbstractConcatenable_new(QAbstractConcatenable* other);
	[LinkName("QAbstractConcatenable_new2")]
	public static extern QAbstractConcatenable* QAbstractConcatenable_new2(QAbstractConcatenable* other);
}