using System;
using System.Interop;
namespace Qt;

public interface IQPluginMetaData
{
	void* NativePtr { get; }
}
public class QPluginMetaData : IQPluginMetaData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QPluginMetaData_Delete(this.nativePtr);
	}
	
	public static uint8 ArchRequirements()
	{
		return CQt.QPluginMetaData_ArchRequirements();
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
public class QStaticPlugin : IQStaticPlugin
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQStaticPlugin other)
	{
		this.nativePtr = CQt.QStaticPlugin_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QStaticPlugin_Delete(this.nativePtr);
	}
	
	public void MetaData()
	{
		CQt.QStaticPlugin_MetaData(this.nativePtr);
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
public class QPluginMetaData__Header : IQPluginMetaData__Header
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QPluginMetaData__Header other)
	{
		this.nativePtr = CQt.QPluginMetaData__Header_new((other == default) ? default : (void*)other.NativePtr);
	}
	public ~this()
	{
		CQt.QPluginMetaData__Header_Delete(this.nativePtr);
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
public class QPluginMetaData__MagicHeader : IQPluginMetaData__MagicHeader
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QPluginMetaData__MagicHeader other)
	{
		this.nativePtr = CQt.QPluginMetaData__MagicHeader_new((other == default) ? default : (void*)other.NativePtr);
	}
	public ~this()
	{
		CQt.QPluginMetaData__MagicHeader_Delete(this.nativePtr);
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
public class QPluginMetaData__ElfNoteHeader : IQPluginMetaData__ElfNoteHeader
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QPluginMetaData__ElfNoteHeader other)
	{
		this.nativePtr = CQt.QPluginMetaData__ElfNoteHeader_new((other == default) ? default : (void*)other.NativePtr);
	}
	public ~this()
	{
		CQt.QPluginMetaData__ElfNoteHeader_Delete(this.nativePtr);
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