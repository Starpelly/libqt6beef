using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFileDialog__ViewMode
{
	Detail = 0,
	List = 1,
}
[AllowDuplicates]
public enum QFileDialog__FileMode
{
	AnyFile = 0,
	ExistingFile = 1,
	Directory = 2,
	ExistingFiles = 3,
}
[AllowDuplicates]
public enum QFileDialog__AcceptMode
{
	AcceptOpen = 0,
	AcceptSave = 1,
}
[AllowDuplicates]
public enum QFileDialog__DialogLabel
{
	LookIn = 0,
	FileName = 1,
	FileType = 2,
	Accept = 3,
	Reject = 4,
}
[AllowDuplicates]
public enum QFileDialog__Option
{
	ShowDirsOnly = 1,
	DontResolveSymlinks = 2,
	DontConfirmOverwrite = 4,
	DontUseNativeDialog = 8,
	ReadOnly = 16,
	HideNameFilterDetails = 32,
	DontUseCustomDirectoryIcons = 64,
}
public struct QFileDialog
{
	[LinkName("QFileDialog_new")]
	public static extern void* QFileDialog_new(QWidget parent);
	[LinkName("QFileDialog_new2")]
	public static extern void* QFileDialog_new2(QWidget parent, int64 f);
	[LinkName("QFileDialog_new3")]
	public static extern void* QFileDialog_new3();
	[LinkName("QFileDialog_new4")]
	public static extern void* QFileDialog_new4(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_new5")]
	public static extern void* QFileDialog_new5(QWidget parent, char8[] caption, char8[] directory);
	[LinkName("QFileDialog_new6")]
	public static extern void* QFileDialog_new6(QWidget parent, char8[] caption, char8[] directory, char8[] filter);
	[LinkName("QFileDialog_MetaObject")]
	public static extern QMetaObject QFileDialog_MetaObject(void* c_this);
	[LinkName("QFileDialog_Metacast")]
	public static extern void QFileDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QFileDialog_Metacall")]
	public static extern int32 QFileDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFileDialog_Tr")]
	public static extern char8[] QFileDialog_Tr(char8[] s);
	[LinkName("QFileDialog_SetDirectory")]
	public static extern void QFileDialog_SetDirectory(void* c_this, char8[] directory);
	[LinkName("QFileDialog_SetDirectoryWithDirectory")]
	public static extern void QFileDialog_SetDirectoryWithDirectory(void* c_this, QDir directory);
	[LinkName("QFileDialog_Directory")]
	public static extern QDir QFileDialog_Directory(void* c_this);
	[LinkName("QFileDialog_SetDirectoryUrl")]
	public static extern void QFileDialog_SetDirectoryUrl(void* c_this, QUrl directory);
	[LinkName("QFileDialog_DirectoryUrl")]
	public static extern QUrl QFileDialog_DirectoryUrl(void* c_this);
	[LinkName("QFileDialog_SelectFile")]
	public static extern void QFileDialog_SelectFile(void* c_this, char8[] filename);
	[LinkName("QFileDialog_SelectedFiles")]
	public static extern char8[][] QFileDialog_SelectedFiles(void* c_this);
	[LinkName("QFileDialog_SelectUrl")]
	public static extern void QFileDialog_SelectUrl(void* c_this, QUrl url);
	[LinkName("QFileDialog_SelectedUrls")]
	public static extern QUrl[] QFileDialog_SelectedUrls(void* c_this);
	[LinkName("QFileDialog_SetNameFilter")]
	public static extern void QFileDialog_SetNameFilter(void* c_this, char8[] filter);
	[LinkName("QFileDialog_SetNameFilters")]
	public static extern void QFileDialog_SetNameFilters(void* c_this, char8[][] filters);
	[LinkName("QFileDialog_NameFilters")]
	public static extern char8[][] QFileDialog_NameFilters(void* c_this);
	[LinkName("QFileDialog_SelectNameFilter")]
	public static extern void QFileDialog_SelectNameFilter(void* c_this, char8[] filter);
	[LinkName("QFileDialog_SelectedMimeTypeFilter")]
	public static extern char8[] QFileDialog_SelectedMimeTypeFilter(void* c_this);
	[LinkName("QFileDialog_SelectedNameFilter")]
	public static extern char8[] QFileDialog_SelectedNameFilter(void* c_this);
	[LinkName("QFileDialog_SetMimeTypeFilters")]
	public static extern void QFileDialog_SetMimeTypeFilters(void* c_this, char8[][] filters);
	[LinkName("QFileDialog_MimeTypeFilters")]
	public static extern char8[][] QFileDialog_MimeTypeFilters(void* c_this);
	[LinkName("QFileDialog_SelectMimeTypeFilter")]
	public static extern void QFileDialog_SelectMimeTypeFilter(void* c_this, char8[] filter);
	[LinkName("QFileDialog_Filter")]
	public static extern int64 QFileDialog_Filter(void* c_this);
	[LinkName("QFileDialog_SetFilter")]
	public static extern void QFileDialog_SetFilter(void* c_this, int64 filters);
	[LinkName("QFileDialog_SetViewMode")]
	public static extern void QFileDialog_SetViewMode(void* c_this, int64 mode);
	[LinkName("QFileDialog_ViewMode")]
	public static extern int64 QFileDialog_ViewMode(void* c_this);
	[LinkName("QFileDialog_SetFileMode")]
	public static extern void QFileDialog_SetFileMode(void* c_this, int64 mode);
	[LinkName("QFileDialog_FileMode")]
	public static extern int64 QFileDialog_FileMode(void* c_this);
	[LinkName("QFileDialog_SetAcceptMode")]
	public static extern void QFileDialog_SetAcceptMode(void* c_this, int64 mode);
	[LinkName("QFileDialog_AcceptMode")]
	public static extern int64 QFileDialog_AcceptMode(void* c_this);
	[LinkName("QFileDialog_SetSidebarUrls")]
	public static extern void QFileDialog_SetSidebarUrls(void* c_this, QUrl[] urls);
	[LinkName("QFileDialog_SidebarUrls")]
	public static extern QUrl[] QFileDialog_SidebarUrls(void* c_this);
	[LinkName("QFileDialog_SaveState")]
	public static extern uint8[] QFileDialog_SaveState(void* c_this);
	[LinkName("QFileDialog_RestoreState")]
	public static extern bool QFileDialog_RestoreState(void* c_this, uint8[] state);
	[LinkName("QFileDialog_SetDefaultSuffix")]
	public static extern void QFileDialog_SetDefaultSuffix(void* c_this, char8[] suffix);
	[LinkName("QFileDialog_DefaultSuffix")]
	public static extern char8[] QFileDialog_DefaultSuffix(void* c_this);
	[LinkName("QFileDialog_SetHistory")]
	public static extern void QFileDialog_SetHistory(void* c_this, char8[][] paths);
	[LinkName("QFileDialog_History")]
	public static extern char8[][] QFileDialog_History(void* c_this);
	[LinkName("QFileDialog_SetItemDelegate")]
	public static extern void QFileDialog_SetItemDelegate(void* c_this, QAbstractItemDelegate _delegate);
	[LinkName("QFileDialog_ItemDelegate")]
	public static extern QAbstractItemDelegate QFileDialog_ItemDelegate(void* c_this);
	[LinkName("QFileDialog_SetIconProvider")]
	public static extern void QFileDialog_SetIconProvider(void* c_this, QAbstractFileIconProvider provider);
	[LinkName("QFileDialog_IconProvider")]
	public static extern QAbstractFileIconProvider QFileDialog_IconProvider(void* c_this);
	[LinkName("QFileDialog_SetLabelText")]
	public static extern void QFileDialog_SetLabelText(void* c_this, int64 label, char8[] text);
	[LinkName("QFileDialog_LabelText")]
	public static extern char8[] QFileDialog_LabelText(void* c_this, int64 label);
	[LinkName("QFileDialog_SetSupportedSchemes")]
	public static extern void QFileDialog_SetSupportedSchemes(void* c_this, char8[][] schemes);
	[LinkName("QFileDialog_SupportedSchemes")]
	public static extern char8[][] QFileDialog_SupportedSchemes(void* c_this);
	[LinkName("QFileDialog_SetProxyModel")]
	public static extern void QFileDialog_SetProxyModel(void* c_this, QAbstractProxyModel model);
	[LinkName("QFileDialog_ProxyModel")]
	public static extern QAbstractProxyModel QFileDialog_ProxyModel(void* c_this);
	[LinkName("QFileDialog_SetOption")]
	public static extern void QFileDialog_SetOption(void* c_this, int64 option);
	[LinkName("QFileDialog_TestOption")]
	public static extern bool QFileDialog_TestOption(void* c_this, int64 option);
	[LinkName("QFileDialog_SetOptions")]
	public static extern void QFileDialog_SetOptions(void* c_this, int64 options);
	[LinkName("QFileDialog_Options")]
	public static extern int64 QFileDialog_Options(void* c_this);
	[LinkName("QFileDialog_SetVisible")]
	public static extern void QFileDialog_SetVisible(void* c_this, bool visible);
	[LinkName("QFileDialog_FileSelected")]
	public static extern void QFileDialog_FileSelected(void* c_this, char8[] file);
	[LinkName("QFileDialog_FilesSelected")]
	public static extern void QFileDialog_FilesSelected(void* c_this, char8[][] files);
	[LinkName("QFileDialog_CurrentChanged")]
	public static extern void QFileDialog_CurrentChanged(void* c_this, char8[] path);
	[LinkName("QFileDialog_DirectoryEntered")]
	public static extern void QFileDialog_DirectoryEntered(void* c_this, char8[] directory);
	[LinkName("QFileDialog_UrlSelected")]
	public static extern void QFileDialog_UrlSelected(void* c_this, QUrl url);
	[LinkName("QFileDialog_UrlsSelected")]
	public static extern void QFileDialog_UrlsSelected(void* c_this, QUrl[] urls);
	[LinkName("QFileDialog_CurrentUrlChanged")]
	public static extern void QFileDialog_CurrentUrlChanged(void* c_this, QUrl url);
	[LinkName("QFileDialog_DirectoryUrlEntered")]
	public static extern void QFileDialog_DirectoryUrlEntered(void* c_this, QUrl directory);
	[LinkName("QFileDialog_FilterSelected")]
	public static extern void QFileDialog_FilterSelected(void* c_this, char8[] filter);
	[LinkName("QFileDialog_GetOpenFileName")]
	public static extern char8[] QFileDialog_GetOpenFileName();
	[LinkName("QFileDialog_GetOpenFileUrl")]
	public static extern QUrl QFileDialog_GetOpenFileUrl();
	[LinkName("QFileDialog_GetSaveFileName")]
	public static extern char8[] QFileDialog_GetSaveFileName();
	[LinkName("QFileDialog_GetSaveFileUrl")]
	public static extern QUrl QFileDialog_GetSaveFileUrl();
	[LinkName("QFileDialog_GetExistingDirectory")]
	public static extern char8[] QFileDialog_GetExistingDirectory();
	[LinkName("QFileDialog_GetExistingDirectoryUrl")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl();
	[LinkName("QFileDialog_GetOpenFileNames")]
	public static extern char8[][] QFileDialog_GetOpenFileNames();
	[LinkName("QFileDialog_GetOpenFileUrls")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls();
	[LinkName("QFileDialog_SaveFileContent")]
	public static extern void QFileDialog_SaveFileContent(uint8[] fileContent, char8[] fileNameHint);
	[LinkName("QFileDialog_Done")]
	public static extern void QFileDialog_Done(void* c_this, int32 result);
	[LinkName("QFileDialog_Accept")]
	public static extern void QFileDialog_Accept(void* c_this);
	[LinkName("QFileDialog_ChangeEvent")]
	public static extern void QFileDialog_ChangeEvent(void* c_this, QEvent e);
	[LinkName("QFileDialog_Tr2")]
	public static extern char8[] QFileDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QFileDialog_Tr3")]
	public static extern char8[] QFileDialog_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFileDialog_SetOption2")]
	public static extern void QFileDialog_SetOption2(void* c_this, int64 option, bool on);
	[LinkName("QFileDialog_GetOpenFileName1")]
	public static extern char8[] QFileDialog_GetOpenFileName1(QWidget parent);
	[LinkName("QFileDialog_GetOpenFileName2")]
	public static extern char8[] QFileDialog_GetOpenFileName2(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_GetOpenFileName3")]
	public static extern char8[] QFileDialog_GetOpenFileName3(QWidget parent, char8[] caption, char8[] dir);
	[LinkName("QFileDialog_GetOpenFileName4")]
	public static extern char8[] QFileDialog_GetOpenFileName4(QWidget parent, char8[] caption, char8[] dir, char8[] filter);
	[LinkName("QFileDialog_GetOpenFileUrl1")]
	public static extern QUrl QFileDialog_GetOpenFileUrl1(QWidget parent);
	[LinkName("QFileDialog_GetOpenFileUrl2")]
	public static extern QUrl QFileDialog_GetOpenFileUrl2(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_GetOpenFileUrl3")]
	public static extern QUrl QFileDialog_GetOpenFileUrl3(QWidget parent, char8[] caption, QUrl dir);
	[LinkName("QFileDialog_GetOpenFileUrl4")]
	public static extern QUrl QFileDialog_GetOpenFileUrl4(QWidget parent, char8[] caption, QUrl dir, char8[] filter);
	[LinkName("QFileDialog_GetSaveFileName1")]
	public static extern char8[] QFileDialog_GetSaveFileName1(QWidget parent);
	[LinkName("QFileDialog_GetSaveFileName2")]
	public static extern char8[] QFileDialog_GetSaveFileName2(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_GetSaveFileName3")]
	public static extern char8[] QFileDialog_GetSaveFileName3(QWidget parent, char8[] caption, char8[] dir);
	[LinkName("QFileDialog_GetSaveFileName4")]
	public static extern char8[] QFileDialog_GetSaveFileName4(QWidget parent, char8[] caption, char8[] dir, char8[] filter);
	[LinkName("QFileDialog_GetSaveFileUrl1")]
	public static extern QUrl QFileDialog_GetSaveFileUrl1(QWidget parent);
	[LinkName("QFileDialog_GetSaveFileUrl2")]
	public static extern QUrl QFileDialog_GetSaveFileUrl2(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_GetSaveFileUrl3")]
	public static extern QUrl QFileDialog_GetSaveFileUrl3(QWidget parent, char8[] caption, QUrl dir);
	[LinkName("QFileDialog_GetSaveFileUrl4")]
	public static extern QUrl QFileDialog_GetSaveFileUrl4(QWidget parent, char8[] caption, QUrl dir, char8[] filter);
	[LinkName("QFileDialog_GetExistingDirectory1")]
	public static extern char8[] QFileDialog_GetExistingDirectory1(QWidget parent);
	[LinkName("QFileDialog_GetExistingDirectory2")]
	public static extern char8[] QFileDialog_GetExistingDirectory2(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_GetExistingDirectory3")]
	public static extern char8[] QFileDialog_GetExistingDirectory3(QWidget parent, char8[] caption, char8[] dir);
	[LinkName("QFileDialog_GetExistingDirectory4")]
	public static extern char8[] QFileDialog_GetExistingDirectory4(QWidget parent, char8[] caption, char8[] dir, int64 options);
	[LinkName("QFileDialog_GetExistingDirectoryUrl1")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl1(QWidget parent);
	[LinkName("QFileDialog_GetExistingDirectoryUrl2")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl2(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_GetExistingDirectoryUrl3")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl3(QWidget parent, char8[] caption, QUrl dir);
	[LinkName("QFileDialog_GetExistingDirectoryUrl4")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl4(QWidget parent, char8[] caption, QUrl dir, int64 options);
	[LinkName("QFileDialog_GetExistingDirectoryUrl5")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl5(QWidget parent, char8[] caption, QUrl dir, int64 options, char8[][] supportedSchemes);
	[LinkName("QFileDialog_GetOpenFileNames1")]
	public static extern char8[][] QFileDialog_GetOpenFileNames1(QWidget parent);
	[LinkName("QFileDialog_GetOpenFileNames2")]
	public static extern char8[][] QFileDialog_GetOpenFileNames2(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_GetOpenFileNames3")]
	public static extern char8[][] QFileDialog_GetOpenFileNames3(QWidget parent, char8[] caption, char8[] dir);
	[LinkName("QFileDialog_GetOpenFileNames4")]
	public static extern char8[][] QFileDialog_GetOpenFileNames4(QWidget parent, char8[] caption, char8[] dir, char8[] filter);
	[LinkName("QFileDialog_GetOpenFileUrls1")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls1(QWidget parent);
	[LinkName("QFileDialog_GetOpenFileUrls2")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls2(QWidget parent, char8[] caption);
	[LinkName("QFileDialog_GetOpenFileUrls3")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls3(QWidget parent, char8[] caption, QUrl dir);
	[LinkName("QFileDialog_GetOpenFileUrls4")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls4(QWidget parent, char8[] caption, QUrl dir, char8[] filter);
}