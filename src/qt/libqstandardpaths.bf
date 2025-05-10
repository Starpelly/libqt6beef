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
public interface IQStandardPaths
{
	void* NativePtr { get; }
}
public class QStandardPaths : IQStandardPaths
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public static libqt_string WritableLocation(int64 typeVal)
	{
		return CQt.QStandardPaths_WritableLocation(typeVal);
	}
	
	public static libqt_string[] StandardLocations(int64 typeVal)
	{
		return CQt.QStandardPaths_StandardLocations(typeVal);
	}
	
	public static libqt_string Locate(int64 typeVal, String fileName)
	{
		return CQt.QStandardPaths_Locate(typeVal, libqt_string(fileName));
	}
	
	public static libqt_string[] LocateAll(int64 typeVal, String fileName)
	{
		return CQt.QStandardPaths_LocateAll(typeVal, libqt_string(fileName));
	}
	
	public static libqt_string DisplayName(int64 typeVal)
	{
		return CQt.QStandardPaths_DisplayName(typeVal);
	}
	
	public static libqt_string FindExecutable(String executableName)
	{
		return CQt.QStandardPaths_FindExecutable(libqt_string(executableName));
	}
	
	public static void SetTestModeEnabled(bool testMode)
	{
		CQt.QStandardPaths_SetTestModeEnabled(testMode);
	}
	
	public static bool IsTestModeEnabled()
	{
		return CQt.QStandardPaths_IsTestModeEnabled();
	}
	
	public static libqt_string Locate3(int64 typeVal, String fileName, int64 options)
	{
		return CQt.QStandardPaths_Locate3(typeVal, libqt_string(fileName), options);
	}
	
	public static libqt_string[] LocateAll3(int64 typeVal, String fileName, int64 options)
	{
		return CQt.QStandardPaths_LocateAll3(typeVal, libqt_string(fileName), options);
	}
	
	public static libqt_string FindExecutable2(String executableName, String[] paths)
	{
		return CQt.QStandardPaths_FindExecutable2(libqt_string(executableName), null);
	}
	
}
extension CQt
{
	[LinkName("QStandardPaths_WritableLocation")]
	public static extern libqt_string QStandardPaths_WritableLocation(int64 typeVal);
	[LinkName("QStandardPaths_StandardLocations")]
	public static extern libqt_string[] QStandardPaths_StandardLocations(int64 typeVal);
	[LinkName("QStandardPaths_Locate")]
	public static extern libqt_string QStandardPaths_Locate(int64 typeVal, libqt_string fileName);
	[LinkName("QStandardPaths_LocateAll")]
	public static extern libqt_string[] QStandardPaths_LocateAll(int64 typeVal, libqt_string fileName);
	[LinkName("QStandardPaths_DisplayName")]
	public static extern libqt_string QStandardPaths_DisplayName(int64 typeVal);
	[LinkName("QStandardPaths_FindExecutable")]
	public static extern libqt_string QStandardPaths_FindExecutable(libqt_string executableName);
	[LinkName("QStandardPaths_SetTestModeEnabled")]
	public static extern void QStandardPaths_SetTestModeEnabled(bool testMode);
	[LinkName("QStandardPaths_IsTestModeEnabled")]
	public static extern bool QStandardPaths_IsTestModeEnabled();
	[LinkName("QStandardPaths_Locate3")]
	public static extern libqt_string QStandardPaths_Locate3(int64 typeVal, libqt_string fileName, int64 options);
	[LinkName("QStandardPaths_LocateAll3")]
	public static extern libqt_string[] QStandardPaths_LocateAll3(int64 typeVal, libqt_string fileName, int64 options);
	[LinkName("QStandardPaths_FindExecutable2")]
	public static extern libqt_string QStandardPaths_FindExecutable2(libqt_string executableName, libqt_string[] paths);
}