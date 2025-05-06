using System;
using System.Interop;
namespace Qt;

public struct QPen
{
	[LinkName("QPen_new")]
	public static extern void* QPen_new();
	[LinkName("QPen_new2")]
	public static extern void* QPen_new2(int64 param1);
	[LinkName("QPen_new3")]
	public static extern void* QPen_new3(QColor color);
	[LinkName("QPen_new4")]
	public static extern void* QPen_new4(QBrush brush, double width);
	[LinkName("QPen_new5")]
	public static extern void* QPen_new5(QPen pen);
	[LinkName("QPen_new6")]
	public static extern void* QPen_new6(QBrush brush, double width, int64 s);
	[LinkName("QPen_new7")]
	public static extern void* QPen_new7(QBrush brush, double width, int64 s, int64 c);
	[LinkName("QPen_new8")]
	public static extern void* QPen_new8(QBrush brush, double width, int64 s, int64 c, int64 j);
	[LinkName("QPen_OperatorAssign")]
	public static extern void QPen_OperatorAssign(void* c_this, QPen pen);
	[LinkName("QPen_Swap")]
	public static extern void QPen_Swap(void* c_this, QPen other);
	[LinkName("QPen_Style")]
	public static extern int64 QPen_Style(void* c_this);
	[LinkName("QPen_SetStyle")]
	public static extern void QPen_SetStyle(void* c_this, int64 style);
	[LinkName("QPen_DashPattern")]
	public static extern double[] QPen_DashPattern(void* c_this);
	[LinkName("QPen_SetDashPattern")]
	public static extern void QPen_SetDashPattern(void* c_this, double[] pattern);
	[LinkName("QPen_DashOffset")]
	public static extern double QPen_DashOffset(void* c_this);
	[LinkName("QPen_SetDashOffset")]
	public static extern void QPen_SetDashOffset(void* c_this, double doffset);
	[LinkName("QPen_MiterLimit")]
	public static extern double QPen_MiterLimit(void* c_this);
	[LinkName("QPen_SetMiterLimit")]
	public static extern void QPen_SetMiterLimit(void* c_this, double limit);
	[LinkName("QPen_WidthF")]
	public static extern double QPen_WidthF(void* c_this);
	[LinkName("QPen_SetWidthF")]
	public static extern void QPen_SetWidthF(void* c_this, double width);
	[LinkName("QPen_Width")]
	public static extern int32 QPen_Width(void* c_this);
	[LinkName("QPen_SetWidth")]
	public static extern void QPen_SetWidth(void* c_this, int32 width);
	[LinkName("QPen_Color")]
	public static extern QColor QPen_Color(void* c_this);
	[LinkName("QPen_SetColor")]
	public static extern void QPen_SetColor(void* c_this, QColor color);
	[LinkName("QPen_Brush")]
	public static extern QBrush QPen_Brush(void* c_this);
	[LinkName("QPen_SetBrush")]
	public static extern void QPen_SetBrush(void* c_this, QBrush brush);
	[LinkName("QPen_IsSolid")]
	public static extern bool QPen_IsSolid(void* c_this);
	[LinkName("QPen_CapStyle")]
	public static extern int64 QPen_CapStyle(void* c_this);
	[LinkName("QPen_SetCapStyle")]
	public static extern void QPen_SetCapStyle(void* c_this, int64 pcs);
	[LinkName("QPen_JoinStyle")]
	public static extern int64 QPen_JoinStyle(void* c_this);
	[LinkName("QPen_SetJoinStyle")]
	public static extern void QPen_SetJoinStyle(void* c_this, int64 pcs);
	[LinkName("QPen_IsCosmetic")]
	public static extern bool QPen_IsCosmetic(void* c_this);
	[LinkName("QPen_SetCosmetic")]
	public static extern void QPen_SetCosmetic(void* c_this, bool cosmetic);
	[LinkName("QPen_OperatorEqual")]
	public static extern bool QPen_OperatorEqual(void* c_this, QPen p);
	[LinkName("QPen_OperatorNotEqual")]
	public static extern bool QPen_OperatorNotEqual(void* c_this, QPen p);
	[LinkName("QPen_ToQVariant")]
	public static extern QVariant QPen_ToQVariant(void* c_this);
	[LinkName("QPen_IsDetached")]
	public static extern bool QPen_IsDetached(void* c_this);
}