using System;
using System.Interop;
namespace Qt;

public class QPluginMetaData
{
	protected void* nativePtr;
	
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
public class QStaticPlugin
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QStaticPlugin_new(other);
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
public class QPluginMetaData__Header
{
	protected void* nativePtr;
	
	public this(QPluginMetaData__Header* other)
	{
		this.nativePtr = CQt.QPluginMetaData__Header_new(other);
	}
	public ~this()
	{
		CQt.QPluginMetaData__Header_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QPluginMetaData__Header_new")]
	public static extern void* QPluginMetaData__Header_new(QPluginMetaData__Header* other);
	[LinkName("QPluginMetaData__Header_new2")]
	public static extern void* QPluginMetaData__Header_new2(QPluginMetaData__Header* other);
	[LinkName("QPluginMetaData__Header_new3")]
	public static extern void* QPluginMetaData__Header_new3(QPluginMetaData__Header* param1);
	/// Delete this object from C++ memory
	[LinkName("QPluginMetaData__Header_Delete")]
	public static extern void QPluginMetaData__Header_Delete(void* self);
}
public class QPluginMetaData__MagicHeader
{
	protected void* nativePtr;
	
	public this(QPluginMetaData__MagicHeader* other)
	{
		this.nativePtr = CQt.QPluginMetaData__MagicHeader_new(other);
	}
	public ~this()
	{
		CQt.QPluginMetaData__MagicHeader_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QPluginMetaData__MagicHeader_new")]
	public static extern void* QPluginMetaData__MagicHeader_new(QPluginMetaData__MagicHeader* other);
	[LinkName("QPluginMetaData__MagicHeader_new2")]
	public static extern void* QPluginMetaData__MagicHeader_new2(QPluginMetaData__MagicHeader* other);
	[LinkName("QPluginMetaData__MagicHeader_new3")]
	public static extern void* QPluginMetaData__MagicHeader_new3();
	/// Delete this object from C++ memory
	[LinkName("QPluginMetaData__MagicHeader_Delete")]
	public static extern void QPluginMetaData__MagicHeader_Delete(void* self);
}
public class QPluginMetaData__ElfNoteHeader
{
	protected void* nativePtr;
	
	public this(QPluginMetaData__ElfNoteHeader* other)
	{
		this.nativePtr = CQt.QPluginMetaData__ElfNoteHeader_new(other);
	}
	public ~this()
	{
		CQt.QPluginMetaData__ElfNoteHeader_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QPluginMetaData__ElfNoteHeader_new")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new(QPluginMetaData__ElfNoteHeader* other);
	[LinkName("QPluginMetaData__ElfNoteHeader_new2")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new2(QPluginMetaData__ElfNoteHeader* other);
	[LinkName("QPluginMetaData__ElfNoteHeader_new3")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new3(uint32 payloadSize);
	[LinkName("QPluginMetaData__ElfNoteHeader_new4")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new4(QPluginMetaData__ElfNoteHeader* param1);
	/// Delete this object from C++ memory
	[LinkName("QPluginMetaData__ElfNoteHeader_Delete")]
	public static extern void QPluginMetaData__ElfNoteHeader_Delete(void* self);
}