using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStandardPaths__StandardLocation
{
	DesktopLocation = 0,
	DocumentsLocation = 1,
	FontsLocation = 2,
	ApplicationsLocation = 3,
	MusicLocation = 4,
	MoviesLocation = 5,
	PicturesLocation = 6,
	TempLocation = 7,
	HomeLocation = 8,
	AppLocalDataLocation = 9,
	CacheLocation = 10,
	GenericDataLocation = 11,
	RuntimeLocation = 12,
	ConfigLocation = 13,
	DownloadLocation = 14,
	GenericCacheLocation = 15,
	GenericConfigLocation = 16,
	AppDataLocation = 17,
	AppConfigLocation = 18,
	PublicShareLocation = 19,
	TemplatesLocation = 20,
}
[AllowDuplicates]
public enum QStandardPaths__LocateOption
{
	LocateFile = 0,
	LocateDirectory = 1,
}
public struct QStandardPaths
{
	[LinkName("QStandardPaths_WritableLocation")]
	public static extern char8[] QStandardPaths_WritableLocation(int64 typeVal);
	[LinkName("QStandardPaths_StandardLocations")]
	public static extern char8[][] QStandardPaths_StandardLocations(int64 typeVal);
	[LinkName("QStandardPaths_Locate")]
	public static extern char8[] QStandardPaths_Locate(int64 typeVal, char8[] fileName);
	[LinkName("QStandardPaths_LocateAll")]
	public static extern char8[][] QStandardPaths_LocateAll(int64 typeVal, char8[] fileName);
	[LinkName("QStandardPaths_DisplayName")]
	public static extern char8[] QStandardPaths_DisplayName(int64 typeVal);
	[LinkName("QStandardPaths_FindExecutable")]
	public static extern char8[] QStandardPaths_FindExecutable(char8[] executableName);
	[LinkName("QStandardPaths_SetTestModeEnabled")]
	public static extern void QStandardPaths_SetTestModeEnabled(bool testMode);
	[LinkName("QStandardPaths_IsTestModeEnabled")]
	public static extern bool QStandardPaths_IsTestModeEnabled();
	[LinkName("QStandardPaths_Locate3")]
	public static extern char8[] QStandardPaths_Locate3(int64 typeVal, char8[] fileName, int64 options);
	[LinkName("QStandardPaths_LocateAll3")]
	public static extern char8[][] QStandardPaths_LocateAll3(int64 typeVal, char8[] fileName, int64 options);
	[LinkName("QStandardPaths_FindExecutable2")]
	public static extern char8[] QStandardPaths_FindExecutable2(char8[] executableName, char8[][] paths);
}