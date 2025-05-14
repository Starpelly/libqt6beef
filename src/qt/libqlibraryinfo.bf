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
public interface IQLibraryInfo
{
	void* NativePtr { get; }
}
public struct QLibraryInfoPtr : IQLibraryInfo, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQLibraryInfo other)
	{
		return .(CQt.QLibraryInfo_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QLibraryInfo_Delete(this.nativePtr);
	}
	
	public static char8* Build()
	{
		return CQt.QLibraryInfo_Build();
	}
	
	public static bool IsDebugBuild()
	{
		return CQt.QLibraryInfo_IsDebugBuild();
	}
	
	public static void Version()
	{
		CQt.QLibraryInfo_Version();
	}
	
	public static libqt_string Path(int64 p)
	{
		return CQt.QLibraryInfo_Path((int64)p);
	}
	
	public static libqt_string Location(int64 location)
	{
		return CQt.QLibraryInfo_Location((int64)location);
	}
	
	public static libqt_string[] PlatformPluginArguments(String platformName)
	{
		return CQt.QLibraryInfo_PlatformPluginArguments(libqt_string(platformName));
	}
	
}
public class QLibraryInfo
{
	public QLibraryInfoPtr handle;
	
	public static implicit operator QLibraryInfoPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQLibraryInfo other)
	{
		this.handle = QLibraryInfoPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static char8* Build()
	{
		return QLibraryInfoPtr.Build();
	}
	
	public static bool IsDebugBuild()
	{
		return QLibraryInfoPtr.IsDebugBuild();
	}
	
	public static void Version()
	{
		QLibraryInfoPtr.Version();
	}
	
	public static libqt_string Path(int64 p)
	{
		return QLibraryInfoPtr.Path(p);
	}
	
	public static libqt_string Location(int64 location)
	{
		return QLibraryInfoPtr.Location(location);
	}
	
	public static libqt_string[] PlatformPluginArguments(String platformName)
	{
		return QLibraryInfoPtr.PlatformPluginArguments(platformName);
	}
	
}
extension CQt
{
	[LinkName("QLibraryInfo_new")]
	public static extern void* QLibraryInfo_new(void* other);
	[LinkName("QLibraryInfo_new2")]
	public static extern void* QLibraryInfo_new2(void* other);
	[LinkName("QLibraryInfo_Build")]
	public static extern char8* QLibraryInfo_Build();
	[LinkName("QLibraryInfo_IsDebugBuild")]
	public static extern bool QLibraryInfo_IsDebugBuild();
	[LinkName("QLibraryInfo_Version")]
	public static extern void QLibraryInfo_Version();
	[LinkName("QLibraryInfo_Path")]
	public static extern libqt_string QLibraryInfo_Path(int64 p);
	[LinkName("QLibraryInfo_Location")]
	public static extern libqt_string QLibraryInfo_Location(int64 location);
	[LinkName("QLibraryInfo_PlatformPluginArguments")]
	public static extern libqt_string[] QLibraryInfo_PlatformPluginArguments(libqt_string platformName);
	/// Delete this object from C++ memory
	[LinkName("QLibraryInfo_Delete")]
	public static extern void QLibraryInfo_Delete(void* self);
}