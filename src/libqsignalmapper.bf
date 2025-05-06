using System;
using System.Interop;
namespace Qt;

public struct QSignalMapper
{
	[LinkName("QSignalMapper_new")]
	public static extern void* QSignalMapper_new();
	[LinkName("QSignalMapper_new2")]
	public static extern void* QSignalMapper_new2(QObject parent);
	[LinkName("QSignalMapper_MetaObject")]
	public static extern QMetaObject QSignalMapper_MetaObject(void* c_this);
	[LinkName("QSignalMapper_Metacast")]
	public static extern void QSignalMapper_Metacast(void* c_this, char8[] param1);
	[LinkName("QSignalMapper_Metacall")]
	public static extern int32 QSignalMapper_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSignalMapper_Tr")]
	public static extern char8[] QSignalMapper_Tr(char8[] s);
	[LinkName("QSignalMapper_SetMapping")]
	public static extern void QSignalMapper_SetMapping(void* c_this, QObject sender, int32 id);
	[LinkName("QSignalMapper_SetMapping2")]
	public static extern void QSignalMapper_SetMapping2(void* c_this, QObject sender, char8[] text);
	[LinkName("QSignalMapper_SetMapping3")]
	public static extern void QSignalMapper_SetMapping3(void* c_this, QObject sender, QObject object);
	[LinkName("QSignalMapper_RemoveMappings")]
	public static extern void QSignalMapper_RemoveMappings(void* c_this, QObject sender);
	[LinkName("QSignalMapper_Mapping")]
	public static extern QObject QSignalMapper_Mapping(void* c_this, int32 id);
	[LinkName("QSignalMapper_MappingWithText")]
	public static extern QObject QSignalMapper_MappingWithText(void* c_this, char8[] text);
	[LinkName("QSignalMapper_MappingWithObject")]
	public static extern QObject QSignalMapper_MappingWithObject(void* c_this, QObject object);
	[LinkName("QSignalMapper_MappedInt")]
	public static extern void QSignalMapper_MappedInt(void* c_this, int32 param1);
	[LinkName("QSignalMapper_MappedString")]
	public static extern void QSignalMapper_MappedString(void* c_this, char8[] param1);
	[LinkName("QSignalMapper_MappedObject")]
	public static extern void QSignalMapper_MappedObject(void* c_this, QObject param1);
	[LinkName("QSignalMapper_Map")]
	public static extern void QSignalMapper_Map(void* c_this);
	[LinkName("QSignalMapper_MapWithSender")]
	public static extern void QSignalMapper_MapWithSender(void* c_this, QObject sender);
	[LinkName("QSignalMapper_Tr2")]
	public static extern char8[] QSignalMapper_Tr2(char8[] s, char8[] c);
	[LinkName("QSignalMapper_Tr3")]
	public static extern char8[] QSignalMapper_Tr3(char8[] s, char8[] c, int32 n);
}