using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QIconEngine__IconEngineHook
{
	IsNullHook = 3,
	ScaledPixmapHook = 4,
}
public class QIconEngine
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QIconEngine_new();
	}
	
	public ~this()
	{
		CQt.QIconEngine_Delete(this.nativePtr);
	}
	
	public virtual void Paint(void* painter, void* rect, int64 mode, int64 state)
	{
		CQt.QIconEngine_Paint(this.nativePtr, painter, rect, mode, state);
	}
	
	public virtual void ActualSize(void* size, int64 mode, int64 state)
	{
		CQt.QIconEngine_ActualSize(this.nativePtr, size, mode, state);
	}
	
	public virtual void Pixmap(void* size, int64 mode, int64 state)
	{
		CQt.QIconEngine_Pixmap(this.nativePtr, size, mode, state);
	}
	
	public virtual void AddPixmap(void* pixmap, int64 mode, int64 state)
	{
		CQt.QIconEngine_AddPixmap(this.nativePtr, pixmap, mode, state);
	}
	
	public virtual void AddFile(libqt_string fileName, void* size, int64 mode, int64 state)
	{
		CQt.QIconEngine_AddFile(this.nativePtr, fileName, size, mode, state);
	}
	
	public virtual libqt_string Key()
	{
		return CQt.QIconEngine_Key(this.nativePtr);
	}
	
	public virtual void* Clone()
	{
		return CQt.QIconEngine_Clone(this.nativePtr);
	}
	
	public virtual bool Read(void* _in)
	{
		return CQt.QIconEngine_Read(this.nativePtr, _in);
	}
	
	public virtual bool Write(void* _out)
	{
		return CQt.QIconEngine_Write(this.nativePtr, _out);
	}
	
	public virtual void[] AvailableSizes(int64 mode, int64 state)
	{
		return CQt.QIconEngine_AvailableSizes(this.nativePtr, mode, state);
	}
	
	public virtual libqt_string IconName()
	{
		return CQt.QIconEngine_IconName(this.nativePtr);
	}
	
	public virtual bool IsNull()
	{
		return CQt.QIconEngine_IsNull(this.nativePtr);
	}
	
	public virtual void ScaledPixmap(void* size, int64 mode, int64 state, double scale)
	{
		CQt.QIconEngine_ScaledPixmap(this.nativePtr, size, mode, state, scale);
	}
	
	public virtual void VirtualHook(int32 id, void* data)
	{
		CQt.QIconEngine_VirtualHook(this.nativePtr, id, data);
	}
	
}
extension CQt
{
	[LinkName("QIconEngine_new")]
	public static extern void* QIconEngine_new();
	[LinkName("QIconEngine_Paint")]
	public static extern void QIconEngine_Paint(void* c_this, void* painter, void* rect, int64 mode, int64 state);
	[LinkName("QIconEngine_ActualSize")]
	public static extern void QIconEngine_ActualSize(void* c_this, void* size, int64 mode, int64 state);
	[LinkName("QIconEngine_Pixmap")]
	public static extern void QIconEngine_Pixmap(void* c_this, void* size, int64 mode, int64 state);
	[LinkName("QIconEngine_AddPixmap")]
	public static extern void QIconEngine_AddPixmap(void* c_this, void* pixmap, int64 mode, int64 state);
	[LinkName("QIconEngine_AddFile")]
	public static extern void QIconEngine_AddFile(void* c_this, libqt_string fileName, void* size, int64 mode, int64 state);
	[LinkName("QIconEngine_Key")]
	public static extern libqt_string QIconEngine_Key(void* c_this);
	[LinkName("QIconEngine_Clone")]
	public static extern void* QIconEngine_Clone(void* c_this);
	[LinkName("QIconEngine_Read")]
	public static extern bool QIconEngine_Read(void* c_this, void* _in);
	[LinkName("QIconEngine_Write")]
	public static extern bool QIconEngine_Write(void* c_this, void* _out);
	[LinkName("QIconEngine_AvailableSizes")]
	public static extern void[] QIconEngine_AvailableSizes(void* c_this, int64 mode, int64 state);
	[LinkName("QIconEngine_IconName")]
	public static extern libqt_string QIconEngine_IconName(void* c_this);
	[LinkName("QIconEngine_IsNull")]
	public static extern bool QIconEngine_IsNull(void* c_this);
	[LinkName("QIconEngine_ScaledPixmap")]
	public static extern void QIconEngine_ScaledPixmap(void* c_this, void* size, int64 mode, int64 state, double scale);
	[LinkName("QIconEngine_VirtualHook")]
	public static extern void QIconEngine_VirtualHook(void* c_this, int32 id, void* data);
	/// Delete this object from C++ memory
	[LinkName("QIconEngine_Delete")]
	public static extern void QIconEngine_Delete(void* self);
}
public class QIconEngine__ScaledPixmapArgument
{
	protected void* nativePtr;
	
	public this(QIconEngine__ScaledPixmapArgument* param1)
	{
		this.nativePtr = CQt.QIconEngine__ScaledPixmapArgument_new(param1);
	}
	
	public ~this()
	{
		CQt.QIconEngine__ScaledPixmapArgument_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QIconEngine__ScaledPixmapArgument* param1)
	{
		CQt.QIconEngine__ScaledPixmapArgument_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QIconEngine__ScaledPixmapArgument_new")]
	public static extern void* QIconEngine__ScaledPixmapArgument_new(QIconEngine__ScaledPixmapArgument* param1);
	[LinkName("QIconEngine__ScaledPixmapArgument_OperatorAssign")]
	public static extern void QIconEngine__ScaledPixmapArgument_OperatorAssign(void* c_this, QIconEngine__ScaledPixmapArgument* param1);
	/// Delete this object from C++ memory
	[LinkName("QIconEngine__ScaledPixmapArgument_Delete")]
	public static extern void QIconEngine__ScaledPixmapArgument_Delete(void* self);
}