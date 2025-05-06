using System;
using System.Interop;
namespace Qt;

public struct QFileSelector
{
	[LinkName("QFileSelector_new")]
	public static extern void* QFileSelector_new();
	[LinkName("QFileSelector_new2")]
	public static extern void* QFileSelector_new2(QObject parent);
	[LinkName("QFileSelector_MetaObject")]
	public static extern QMetaObject QFileSelector_MetaObject(void* c_this);
	[LinkName("QFileSelector_Metacast")]
	public static extern void QFileSelector_Metacast(void* c_this, char8[] param1);
	[LinkName("QFileSelector_Metacall")]
	public static extern int32 QFileSelector_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFileSelector_Tr")]
	public static extern char8[] QFileSelector_Tr(char8[] s);
	[LinkName("QFileSelector_Select")]
	public static extern char8[] QFileSelector_Select(void* c_this, char8[] filePath);
	[LinkName("QFileSelector_SelectWithFilePath")]
	public static extern QUrl QFileSelector_SelectWithFilePath(void* c_this, QUrl filePath);
	[LinkName("QFileSelector_ExtraSelectors")]
	public static extern char8[][] QFileSelector_ExtraSelectors(void* c_this);
	[LinkName("QFileSelector_SetExtraSelectors")]
	public static extern void QFileSelector_SetExtraSelectors(void* c_this, char8[][] list);
	[LinkName("QFileSelector_AllSelectors")]
	public static extern char8[][] QFileSelector_AllSelectors(void* c_this);
	[LinkName("QFileSelector_Tr2")]
	public static extern char8[] QFileSelector_Tr2(char8[] s, char8[] c);
	[LinkName("QFileSelector_Tr3")]
	public static extern char8[] QFileSelector_Tr3(char8[] s, char8[] c, int32 n);
}