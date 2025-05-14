using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QIconEngine__IconEngineHook
{
	IsNullHook = 3,
	ScaledPixmapHook = 4,
}
public interface IQIconEngine
{
	void* NativePtr { get; }
}
public struct QIconEnginePtr : IQIconEngine, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QIconEngine_new());
	}
	
	public void Dispose()
	{
		CQt.QIconEngine_Delete(this.nativePtr);
	}
	
	public void Paint(IQPainter painter, IQRect rect, int64 mode, int64 state)
	{
		CQt.QIconEngine_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (int64)mode, (int64)state);
	}
	
	public void ActualSize(IQSize size, int64 mode, int64 state)
	{
		CQt.QIconEngine_ActualSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state);
	}
	
	public void Pixmap(IQSize size, int64 mode, int64 state)
	{
		CQt.QIconEngine_Pixmap(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state);
	}
	
	public void AddPixmap(IQPixmap pixmap, int64 mode, int64 state)
	{
		CQt.QIconEngine_AddPixmap(this.nativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (int64)mode, (int64)state);
	}
	
	public void AddFile(String fileName, IQSize size, int64 mode, int64 state)
	{
		CQt.QIconEngine_AddFile(this.nativePtr, libqt_string(fileName), (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state);
	}
	
	public libqt_string Key()
	{
		return CQt.QIconEngine_Key(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QIconEngine_Clone(this.nativePtr);
	}
	
	public bool Read(IQDataStream _in)
	{
		return CQt.QIconEngine_Read(this.nativePtr, (_in == default || _in.NativePtr == default) ? default : _in.NativePtr);
	}
	
	public bool Write(IQDataStream _out)
	{
		return CQt.QIconEngine_Write(this.nativePtr, (_out == default || _out.NativePtr == default) ? default : _out.NativePtr);
	}
	
	public void[] AvailableSizes(int64 mode, int64 state)
	{
		return CQt.QIconEngine_AvailableSizes(this.nativePtr, (int64)mode, (int64)state);
	}
	
	public libqt_string IconName()
	{
		return CQt.QIconEngine_IconName(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QIconEngine_IsNull(this.nativePtr);
	}
	
	public void ScaledPixmap(IQSize size, int64 mode, int64 state, double scale)
	{
		CQt.QIconEngine_ScaledPixmap(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (int64)mode, (int64)state, scale);
	}
	
	public void VirtualHook(int32 id, void* data)
	{
		CQt.QIconEngine_VirtualHook(this.nativePtr, id, data);
	}
	
}
public class QIconEngine
{
	public QIconEnginePtr handle;
	
	public static implicit operator QIconEnginePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QIconEnginePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void Paint(IQPainter painter, IQRect rect, int64 mode, int64 state)
	{
		this.handle.Paint(painter, rect, mode, state);
	}
	
	public virtual void ActualSize(IQSize size, int64 mode, int64 state)
	{
		this.handle.ActualSize(size, mode, state);
	}
	
	public virtual void Pixmap(IQSize size, int64 mode, int64 state)
	{
		this.handle.Pixmap(size, mode, state);
	}
	
	public virtual void AddPixmap(IQPixmap pixmap, int64 mode, int64 state)
	{
		this.handle.AddPixmap(pixmap, mode, state);
	}
	
	public virtual void AddFile(String fileName, IQSize size, int64 mode, int64 state)
	{
		this.handle.AddFile(fileName, size, mode, state);
	}
	
	public virtual libqt_string Key()
	{
		return this.handle.Key();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public virtual bool Read(IQDataStream _in)
	{
		return this.handle.Read(_in);
	}
	
	public virtual bool Write(IQDataStream _out)
	{
		return this.handle.Write(_out);
	}
	
	public virtual void[] AvailableSizes(int64 mode, int64 state)
	{
		return this.handle.AvailableSizes(mode, state);
	}
	
	public virtual libqt_string IconName()
	{
		return this.handle.IconName();
	}
	
	public virtual bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public virtual void ScaledPixmap(IQSize size, int64 mode, int64 state, double scale)
	{
		this.handle.ScaledPixmap(size, mode, state, scale);
	}
	
	public virtual void VirtualHook(int32 id, void* data)
	{
		this.handle.VirtualHook(id, data);
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
public interface IQIconEngine__ScaledPixmapArgument
{
	void* NativePtr { get; }
}
public struct QIconEngine__ScaledPixmapArgumentPtr : IQIconEngine__ScaledPixmapArgument, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QIconEngine__ScaledPixmapArgumentPtr param1)
	{
		return .(CQt.QIconEngine__ScaledPixmapArgument_new((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QIconEngine__ScaledPixmapArgument_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QIconEngine__ScaledPixmapArgumentPtr param1)
	{
		CQt.QIconEngine__ScaledPixmapArgument_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QIconEngine__ScaledPixmapArgument
{
	public QIconEngine__ScaledPixmapArgumentPtr handle;
	
	public static implicit operator QIconEngine__ScaledPixmapArgumentPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QIconEngine__ScaledPixmapArgumentPtr param1)
	{
		this.handle = QIconEngine__ScaledPixmapArgumentPtr.New(param1);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QIconEngine__ScaledPixmapArgumentPtr param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
}
extension CQt
{
	[LinkName("QIconEngine__ScaledPixmapArgument_new")]
	public static extern void* QIconEngine__ScaledPixmapArgument_new(void* param1);
	[LinkName("QIconEngine__ScaledPixmapArgument_OperatorAssign")]
	public static extern void QIconEngine__ScaledPixmapArgument_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QIconEngine__ScaledPixmapArgument_Delete")]
	public static extern void QIconEngine__ScaledPixmapArgument_Delete(void* self);
}