using System;
using System.Interop;
namespace Qt;

public struct qfloat16
{
	[LinkName("qfloat16_new")]
	public static extern qfloat16* qfloat16_new();
	[LinkName("qfloat16_new2")]
	public static extern qfloat16* qfloat16_new2(int64 param1);
	[LinkName("qfloat16_new3")]
	public static extern qfloat16* qfloat16_new3(float f);
	[LinkName("qfloat16_ToFloat")]
	public static extern float qfloat16_ToFloat(Self* c_this);
	[LinkName("qfloat16_IsInf")]
	public static extern bool qfloat16_IsInf(Self* c_this);
	[LinkName("qfloat16_IsNaN")]
	public static extern bool qfloat16_IsNaN(Self* c_this);
	[LinkName("qfloat16_IsFinite")]
	public static extern bool qfloat16_IsFinite(Self* c_this);
	[LinkName("qfloat16_FpClassify")]
	public static extern int32 qfloat16_FpClassify(Self* c_this);
	[LinkName("qfloat16_IsNormal")]
	public static extern bool qfloat16_IsNormal(Self* c_this);
}