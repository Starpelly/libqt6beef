using System;
using System.Interop;
namespace Qt;

public class QPicture
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPicture_new();
	}
	
	public ~this()
	{
		CQt.QPicture_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QPicture_IsNull(this.nativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QPicture_DevType(this.nativePtr);
	}
	
	public uint32 Size()
	{
		return CQt.QPicture_Size(this.nativePtr);
	}
	
	public char8[] Data()
	{
		return CQt.QPicture_Data(this.nativePtr);
	}
	
	public virtual void SetData(char8[] data, uint32 size)
	{
		CQt.QPicture_SetData(this.nativePtr, data, size);
	}
	
	public bool Play(void* p)
	{
		return CQt.QPicture_Play(this.nativePtr, p);
	}
	
	public bool Load(void* dev)
	{
		return CQt.QPicture_Load(this.nativePtr, dev);
	}
	
	public bool LoadWithFileName(libqt_string fileName)
	{
		return CQt.QPicture_LoadWithFileName(this.nativePtr, fileName);
	}
	
	public bool Save(void* dev)
	{
		return CQt.QPicture_Save(this.nativePtr, dev);
	}
	
	public bool SaveWithFileName(libqt_string fileName)
	{
		return CQt.QPicture_SaveWithFileName(this.nativePtr, fileName);
	}
	
	public void BoundingRect()
	{
		CQt.QPicture_BoundingRect(this.nativePtr);
	}
	
	public void SetBoundingRect(void* r)
	{
		CQt.QPicture_SetBoundingRect(this.nativePtr, r);
	}
	
	public void OperatorAssign(void* p)
	{
		CQt.QPicture_OperatorAssign(this.nativePtr, p);
	}
	
	public void Swap(void* other)
	{
		CQt.QPicture_Swap(this.nativePtr, other);
	}
	
	public void Detach()
	{
		CQt.QPicture_Detach(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QPicture_IsDetached(this.nativePtr);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QPicture_PaintEngine(this.nativePtr);
	}
	
	public virtual int32 Metric(int64 m)
	{
		return CQt.QPicture_Metric(this.nativePtr, m);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QPaintDevice_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QPaintDevice_Height(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QPicture_new")]
	public static extern void* QPicture_new();
	[LinkName("QPicture_new2")]
	public static extern void* QPicture_new2(void* param1);
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
	public static extern bool QPicture_Play(void* c_this, void* p);
	[LinkName("QPicture_Load")]
	public static extern bool QPicture_Load(void* c_this, void* dev);
	[LinkName("QPicture_LoadWithFileName")]
	public static extern bool QPicture_LoadWithFileName(void* c_this, libqt_string fileName);
	[LinkName("QPicture_Save")]
	public static extern bool QPicture_Save(void* c_this, void* dev);
	[LinkName("QPicture_SaveWithFileName")]
	public static extern bool QPicture_SaveWithFileName(void* c_this, libqt_string fileName);
	[LinkName("QPicture_BoundingRect")]
	public static extern void QPicture_BoundingRect(void* c_this);
	[LinkName("QPicture_SetBoundingRect")]
	public static extern void QPicture_SetBoundingRect(void* c_this, void* r);
	[LinkName("QPicture_OperatorAssign")]
	public static extern void QPicture_OperatorAssign(void* c_this, void* p);
	[LinkName("QPicture_Swap")]
	public static extern void QPicture_Swap(void* c_this, void* other);
	[LinkName("QPicture_Detach")]
	public static extern void QPicture_Detach(void* c_this);
	[LinkName("QPicture_IsDetached")]
	public static extern bool QPicture_IsDetached(void* c_this);
	[LinkName("QPicture_PaintEngine")]
	public static extern void* QPicture_PaintEngine(void* c_this);
	[LinkName("QPicture_Metric")]
	public static extern int32 QPicture_Metric(void* c_this, int64 m);
	/// Delete this object from C++ memory
	[LinkName("QPicture_Delete")]
	public static extern void QPicture_Delete(void* self);
}