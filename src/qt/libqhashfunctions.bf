using System;
using System.Interop;
namespace Qt;

public struct QHashSeed
{
	[LinkName("QHashSeed_new")]
	public static extern QHashSeed* QHashSeed_new(QHashSeed* other);
	[LinkName("QHashSeed_new2")]
	public static extern QHashSeed* QHashSeed_new2(QHashSeed* other);
	[LinkName("QHashSeed_new3")]
	public static extern QHashSeed* QHashSeed_new3();
	[LinkName("QHashSeed_new4")]
	public static extern QHashSeed* QHashSeed_new4(uint32 d);
	[LinkName("QHashSeed_ToUnsignedLong")]
	public static extern uint32 QHashSeed_ToUnsignedLong(Self* c_this);
	[LinkName("QHashSeed_GlobalSeed")]
	public static extern QHashSeed QHashSeed_GlobalSeed();
	[LinkName("QHashSeed_SetDeterministicGlobalSeed")]
	public static extern void QHashSeed_SetDeterministicGlobalSeed();
	[LinkName("QHashSeed_ResetRandomGlobalSeed")]
	public static extern void QHashSeed_ResetRandomGlobalSeed();
}