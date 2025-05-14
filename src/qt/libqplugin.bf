using System;
using System.Interop;
namespace Qt;

public interface IQPluginMetaData
{
	void* NativePtr { get; }
}
public struct QPluginMetaDataPtr : IQPluginMetaData, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QPluginMetaData_Delete(this.nativePtr);
	}
	
	public static uint8 ArchRequirements()
	{
		return CQt.QPluginMetaData_ArchRequirements();
	}
	
}
public class QPluginMetaData
{
	public QPluginMetaDataPtr handle;
	
	public static implicit operator QPluginMetaDataPtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static uint8 ArchRequirements()
	{
		return QPluginMetaDataPtr.ArchRequirements();
	}
	
}
extension CQt
{
	[LinkName("QPluginMetaData_ArchRequirements")]
	public static extern uint8 QPluginMetaData_ArchRequirements();
	/// Delete this object from C++ memory
	[LinkName("QPluginMetaData_Delete")]
	public static extern void QPluginMetaData_Delete(void* self);
}
public interface IQStaticPlugin
{
	void* NativePtr { get; }
}
public struct QStaticPluginPtr : IQStaticPlugin, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQStaticPlugin other)
	{
		return .(CQt.QStaticPlugin_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QStaticPlugin_Delete(this.nativePtr);
	}
	
	public void MetaData()
	{
		CQt.QStaticPlugin_MetaData(this.nativePtr);
	}
	
}
public class QStaticPlugin
{
	public QStaticPluginPtr handle;
	
	public static implicit operator QStaticPluginPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQStaticPlugin other)
	{
		this.handle = QStaticPluginPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void MetaData()
	{
		this.handle.MetaData();
	}
	
}
extension CQt
{
	[LinkName("QStaticPlugin_new")]
	public static extern void* QStaticPlugin_new(void* other);
	[LinkName("QStaticPlugin_new2")]
	public static extern void* QStaticPlugin_new2(void* other);
	[LinkName("QStaticPlugin_MetaData")]
	public static extern void QStaticPlugin_MetaData(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QStaticPlugin_Delete")]
	public static extern void QStaticPlugin_Delete(void* self);
}
public interface IQPluginMetaData__Header
{
	void* NativePtr { get; }
}
public struct QPluginMetaData__HeaderPtr : IQPluginMetaData__Header, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QPluginMetaData__HeaderPtr other)
	{
		return .(CQt.QPluginMetaData__Header_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QPluginMetaData__Header_Delete(this.nativePtr);
	}
}
public class QPluginMetaData__Header
{
	public QPluginMetaData__HeaderPtr handle;
	
	public static implicit operator QPluginMetaData__HeaderPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QPluginMetaData__HeaderPtr other)
	{
		this.handle = QPluginMetaData__HeaderPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QPluginMetaData__Header_new")]
	public static extern void* QPluginMetaData__Header_new(void* other);
	[LinkName("QPluginMetaData__Header_new2")]
	public static extern void* QPluginMetaData__Header_new2(void* other);
	[LinkName("QPluginMetaData__Header_new3")]
	public static extern void* QPluginMetaData__Header_new3(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QPluginMetaData__Header_Delete")]
	public static extern void QPluginMetaData__Header_Delete(void* self);
}
public interface IQPluginMetaData__MagicHeader
{
	void* NativePtr { get; }
}
public struct QPluginMetaData__MagicHeaderPtr : IQPluginMetaData__MagicHeader, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QPluginMetaData__MagicHeaderPtr other)
	{
		return .(CQt.QPluginMetaData__MagicHeader_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QPluginMetaData__MagicHeader_Delete(this.nativePtr);
	}
}
public class QPluginMetaData__MagicHeader
{
	public QPluginMetaData__MagicHeaderPtr handle;
	
	public static implicit operator QPluginMetaData__MagicHeaderPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QPluginMetaData__MagicHeaderPtr other)
	{
		this.handle = QPluginMetaData__MagicHeaderPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QPluginMetaData__MagicHeader_new")]
	public static extern void* QPluginMetaData__MagicHeader_new(void* other);
	[LinkName("QPluginMetaData__MagicHeader_new2")]
	public static extern void* QPluginMetaData__MagicHeader_new2(void* other);
	[LinkName("QPluginMetaData__MagicHeader_new3")]
	public static extern void* QPluginMetaData__MagicHeader_new3();
	/// Delete this object from C++ memory
	[LinkName("QPluginMetaData__MagicHeader_Delete")]
	public static extern void QPluginMetaData__MagicHeader_Delete(void* self);
}
public interface IQPluginMetaData__ElfNoteHeader
{
	void* NativePtr { get; }
}
public struct QPluginMetaData__ElfNoteHeaderPtr : IQPluginMetaData__ElfNoteHeader, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QPluginMetaData__ElfNoteHeaderPtr other)
	{
		return .(CQt.QPluginMetaData__ElfNoteHeader_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QPluginMetaData__ElfNoteHeader_Delete(this.nativePtr);
	}
}
public class QPluginMetaData__ElfNoteHeader
{
	public QPluginMetaData__ElfNoteHeaderPtr handle;
	
	public static implicit operator QPluginMetaData__ElfNoteHeaderPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QPluginMetaData__ElfNoteHeaderPtr other)
	{
		this.handle = QPluginMetaData__ElfNoteHeaderPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QPluginMetaData__ElfNoteHeader_new")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new(void* other);
	[LinkName("QPluginMetaData__ElfNoteHeader_new2")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new2(void* other);
	[LinkName("QPluginMetaData__ElfNoteHeader_new3")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new3(uint32 payloadSize);
	[LinkName("QPluginMetaData__ElfNoteHeader_new4")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new4(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QPluginMetaData__ElfNoteHeader_Delete")]
	public static extern void QPluginMetaData__ElfNoteHeader_Delete(void* self);
}