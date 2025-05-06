using System;
using System.Interop;
namespace Qt;

public struct QPicture
{
	[LinkName("QPicture_new")]
	public static extern void* QPicture_new();
	[LinkName("QPicture_new2")]
	public static extern void* QPicture_new2(QPicture param1);
	[LinkName("QPicture_new3")]
	public static extern void* QPicture_new3(int32 formatVersion);
	[LinkName("QPicture_IsNull")]
	public static extern bool QPicture_IsNull(void* c_this);
	[LinkName("QPicture_DevType")]
	public static extern int32 QPicture_DevType(void* c_this);
	[LinkName("QPicture_Size")]
	public static extern uint32 QPicture_Size(void* c_this);
	[LinkName("QPicture_Data")]
	public static extern char8[] QPicture_Data(void* c_this);
	[LinkName("QPicture_SetData")]
	public static extern void QPicture_SetData(void* c_this, char8[] data, uint32 size);
	[LinkName("QPicture_Play")]
	public static extern bool QPicture_Play(void* c_this, QPainter p);
	[LinkName("QPicture_Load")]
	public static extern bool QPicture_Load(void* c_this, QIODevice dev);
	[LinkName("QPicture_LoadWithFileName")]
	public static extern bool QPicture_LoadWithFileName(void* c_this, char8[] fileName);
	[LinkName("QPicture_Save")]
	public static extern bool QPicture_Save(void* c_this, QIODevice dev);
	[LinkName("QPicture_SaveWithFileName")]
	public static extern bool QPicture_SaveWithFileName(void* c_this, char8[] fileName);
	[LinkName("QPicture_BoundingRect")]
	public static extern QRect QPicture_BoundingRect(void* c_this);
	[LinkName("QPicture_SetBoundingRect")]
	public static extern void QPicture_SetBoundingRect(void* c_this, QRect r);
	[LinkName("QPicture_OperatorAssign")]
	public static extern void QPicture_OperatorAssign(void* c_this, QPicture p);
	[LinkName("QPicture_Swap")]
	public static extern void QPicture_Swap(void* c_this, QPicture other);
	[LinkName("QPicture_Detach")]
	public static extern void QPicture_Detach(void* c_this);
	[LinkName("QPicture_IsDetached")]
	public static extern bool QPicture_IsDetached(void* c_this);
	[LinkName("QPicture_PaintEngine")]
	public static extern QPaintEngine QPicture_PaintEngine(void* c_this);
	[LinkName("QPicture_Metric")]
	public static extern int32 QPicture_Metric(void* c_this, int64 m);
}