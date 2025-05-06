using System;
using System.Interop;
namespace Qt;

public struct QFileSelector : QObject
{
	[LinkName("QFileSelector_new")]
	public static extern QFileSelector* QFileSelector_new();
	[LinkName("QFileSelector_new2")]
	public static extern QFileSelector* QFileSelector_new2(QObject* parent);
	[LinkName("QFileSelector_MetaObject")]
	public static extern QMetaObject* QFileSelector_MetaObject(Self* c_this);
	[LinkName("QFileSelector_Metacast")]
	public static extern void* QFileSelector_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFileSelector_Metacall")]
	public static extern int32 QFileSelector_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFileSelector_Tr")]
	public static extern libqt_string QFileSelector_Tr(char8[] s);
	[LinkName("QFileSelector_Select")]
	public static extern libqt_string QFileSelector_Select(Self* c_this, libqt_string filePath);
	[LinkName("QFileSelector_SelectWithFilePath")]
	public static extern QUrl QFileSelector_SelectWithFilePath(Self* c_this, QUrl* filePath);
	[LinkName("QFileSelector_ExtraSelectors")]
	public static extern libqt_string[] QFileSelector_ExtraSelectors(Self* c_this);
	[LinkName("QFileSelector_SetExtraSelectors")]
	public static extern void QFileSelector_SetExtraSelectors(Self* c_this, libqt_string[] list);
	[LinkName("QFileSelector_AllSelectors")]
	public static extern libqt_string[] QFileSelector_AllSelectors(Self* c_this);
	[LinkName("QFileSelector_Tr2")]
	public static extern libqt_string QFileSelector_Tr2(char8[] s, char8[] c);
	[LinkName("QFileSelector_Tr3")]
	public static extern libqt_string QFileSelector_Tr3(char8[] s, char8[] c, int32 n);
}