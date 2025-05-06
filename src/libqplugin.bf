using System;
using System.Interop;
namespace Qt;

public struct QPluginMetaData
{
	[LinkName("QPluginMetaData_ArchRequirements")]
	public static extern uint8 QPluginMetaData_ArchRequirements();
}
public struct QStaticPlugin
{
	[LinkName("QStaticPlugin_new")]
	public static extern void* QStaticPlugin_new(QStaticPlugin other);
	[LinkName("QStaticPlugin_new2")]
	public static extern void* QStaticPlugin_new2(QStaticPlugin other);
	[LinkName("QStaticPlugin_MetaData")]
	public static extern QJsonObject QStaticPlugin_MetaData(void* c_this);
}
public struct QPluginMetaData__Header
{
	[LinkName("QPluginMetaData__Header_new")]
	public static extern void* QPluginMetaData__Header_new(QPluginMetaData__Header other);
	[LinkName("QPluginMetaData__Header_new2")]
	public static extern void* QPluginMetaData__Header_new2(QPluginMetaData__Header other);
	[LinkName("QPluginMetaData__Header_new3")]
	public static extern void* QPluginMetaData__Header_new3(QPluginMetaData__Header param1);
}
public struct QPluginMetaData__MagicHeader
{
	[LinkName("QPluginMetaData__MagicHeader_new")]
	public static extern void* QPluginMetaData__MagicHeader_new(QPluginMetaData__MagicHeader other);
	[LinkName("QPluginMetaData__MagicHeader_new2")]
	public static extern void* QPluginMetaData__MagicHeader_new2(QPluginMetaData__MagicHeader other);
	[LinkName("QPluginMetaData__MagicHeader_new3")]
	public static extern void* QPluginMetaData__MagicHeader_new3();
}
public struct QPluginMetaData__ElfNoteHeader
{
	[LinkName("QPluginMetaData__ElfNoteHeader_new")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new(QPluginMetaData__ElfNoteHeader other);
	[LinkName("QPluginMetaData__ElfNoteHeader_new2")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new2(QPluginMetaData__ElfNoteHeader other);
	[LinkName("QPluginMetaData__ElfNoteHeader_new3")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new3(uint32 payloadSize);
	[LinkName("QPluginMetaData__ElfNoteHeader_new4")]
	public static extern void* QPluginMetaData__ElfNoteHeader_new4(QPluginMetaData__ElfNoteHeader param1);
}