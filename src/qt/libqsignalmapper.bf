using System;
using System.Interop;
namespace Qt;

public struct QSignalMapper : QObject
{
	[LinkName("QSignalMapper_new")]
	public static extern QSignalMapper* QSignalMapper_new();
	[LinkName("QSignalMapper_new2")]
	public static extern QSignalMapper* QSignalMapper_new2(QObject* parent);
	[LinkName("QSignalMapper_MetaObject")]
	public static extern QMetaObject* QSignalMapper_MetaObject(Self* c_this);
	[LinkName("QSignalMapper_Metacast")]
	public static extern void* QSignalMapper_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSignalMapper_Metacall")]
	public static extern int32 QSignalMapper_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSignalMapper_Tr")]
	public static extern libqt_string QSignalMapper_Tr(char8[] s);
	[LinkName("QSignalMapper_SetMapping")]
	public static extern void QSignalMapper_SetMapping(Self* c_this, QObject* sender, int32 id);
	[LinkName("QSignalMapper_SetMapping2")]
	public static extern void QSignalMapper_SetMapping2(Self* c_this, QObject* sender, libqt_string text);
	[LinkName("QSignalMapper_SetMapping3")]
	public static extern void QSignalMapper_SetMapping3(Self* c_this, QObject* sender, QObject* object);
	[LinkName("QSignalMapper_RemoveMappings")]
	public static extern void QSignalMapper_RemoveMappings(Self* c_this, QObject* sender);
	[LinkName("QSignalMapper_Mapping")]
	public static extern QObject* QSignalMapper_Mapping(Self* c_this, int32 id);
	[LinkName("QSignalMapper_MappingWithText")]
	public static extern QObject* QSignalMapper_MappingWithText(Self* c_this, libqt_string text);
	[LinkName("QSignalMapper_MappingWithObject")]
	public static extern QObject* QSignalMapper_MappingWithObject(Self* c_this, QObject* object);
	[LinkName("QSignalMapper_Connect_MappedInt")]
	public static extern void QSignalMapper_Connect_MappedInt(Self* c_this, c_intptr slot);
	[LinkName("QSignalMapper_Connect_MappedString")]
	public static extern void QSignalMapper_Connect_MappedString(Self* c_this, c_intptr slot);
	[LinkName("QSignalMapper_Connect_MappedObject")]
	public static extern void QSignalMapper_Connect_MappedObject(Self* c_this, c_intptr slot);
	[LinkName("QSignalMapper_Map")]
	public static extern void QSignalMapper_Map(Self* c_this);
	[LinkName("QSignalMapper_MapWithSender")]
	public static extern void QSignalMapper_MapWithSender(Self* c_this, QObject* sender);
	[LinkName("QSignalMapper_Tr2")]
	public static extern libqt_string QSignalMapper_Tr2(char8[] s, char8[] c);
	[LinkName("QSignalMapper_Tr3")]
	public static extern libqt_string QSignalMapper_Tr3(char8[] s, char8[] c, int32 n);
}