using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLibraryInfo__LibraryPath
{
	PrefixPath = 0,
	DocumentationPath = 1,
	HeadersPath = 2,
	LibrariesPath = 3,
	LibraryExecutablesPath = 4,
	BinariesPath = 5,
	PluginsPath = 6,
	QmlImportsPath = 7,
	Qml2ImportsPath = 7,
	ArchDataPath = 8,
	DataPath = 9,
	TranslationsPath = 10,
	ExamplesPath = 11,
	TestsPath = 12,
	SettingsPath = 100,
}
public struct QLibraryInfo
{
	[LinkName("QLibraryInfo_new")]
	public static extern QLibraryInfo* QLibraryInfo_new(QLibraryInfo* other);
	[LinkName("QLibraryInfo_new2")]
	public static extern QLibraryInfo* QLibraryInfo_new2(QLibraryInfo* other);
	[LinkName("QLibraryInfo_Build")]
	public static extern char8[] QLibraryInfo_Build();
	[LinkName("QLibraryInfo_IsDebugBuild")]
	public static extern bool QLibraryInfo_IsDebugBuild();
	[LinkName("QLibraryInfo_Version")]
	public static extern QVersionNumber QLibraryInfo_Version();
	[LinkName("QLibraryInfo_Path")]
	public static extern libqt_string QLibraryInfo_Path(int64 p);
	[LinkName("QLibraryInfo_Location")]
	public static extern libqt_string QLibraryInfo_Location(int64 location);
	[LinkName("QLibraryInfo_PlatformPluginArguments")]
	public static extern libqt_string[] QLibraryInfo_PlatformPluginArguments(libqt_string platformName);
}