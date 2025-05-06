using System;
using System.Interop;
namespace Qt;

public struct QVLABaseBase
{
	[LinkName("QVLABaseBase_Capacity")]
	public static extern int32 QVLABaseBase_Capacity(void* c_this);
	[LinkName("QVLABaseBase_Size")]
	public static extern int32 QVLABaseBase_Size(void* c_this);
	[LinkName("QVLABaseBase_Empty")]
	public static extern bool QVLABaseBase_Empty(void* c_this);
}