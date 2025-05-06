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
public struct QFileDialog : QDialog
{
	[LinkName("QFileDialog_new")]
	public static extern QFileDialog* QFileDialog_new(QWidget* parent);
	[LinkName("QFileDialog_new2")]
	public static extern QFileDialog* QFileDialog_new2(QWidget* parent, int64 f);
	[LinkName("QFileDialog_new3")]
	public static extern QFileDialog* QFileDialog_new3();
	[LinkName("QFileDialog_new4")]
	public static extern QFileDialog* QFileDialog_new4(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_new5")]
	public static extern QFileDialog* QFileDialog_new5(QWidget* parent, libqt_string caption, libqt_string directory);
	[LinkName("QFileDialog_new6")]
	public static extern QFileDialog* QFileDialog_new6(QWidget* parent, libqt_string caption, libqt_string directory, libqt_string filter);
	[LinkName("QFileDialog_MetaObject")]
	public static extern QMetaObject* QFileDialog_MetaObject(Self* c_this);
	[LinkName("QFileDialog_Metacast")]
	public static extern void* QFileDialog_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFileDialog_Metacall")]
	public static extern int32 QFileDialog_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFileDialog_Tr")]
	public static extern libqt_string QFileDialog_Tr(char8[] s);
	[LinkName("QFileDialog_SetDirectory")]
	public static extern void QFileDialog_SetDirectory(Self* c_this, libqt_string directory);
	[LinkName("QFileDialog_SetDirectoryWithDirectory")]
	public static extern void QFileDialog_SetDirectoryWithDirectory(Self* c_this, QDir* directory);
	[LinkName("QFileDialog_Directory")]
	public static extern QDir QFileDialog_Directory(Self* c_this);
	[LinkName("QFileDialog_SetDirectoryUrl")]
	public static extern void QFileDialog_SetDirectoryUrl(Self* c_this, QUrl* directory);
	[LinkName("QFileDialog_DirectoryUrl")]
	public static extern QUrl QFileDialog_DirectoryUrl(Self* c_this);
	[LinkName("QFileDialog_SelectFile")]
	public static extern void QFileDialog_SelectFile(Self* c_this, libqt_string filename);
	[LinkName("QFileDialog_SelectedFiles")]
	public static extern libqt_string[] QFileDialog_SelectedFiles(Self* c_this);
	[LinkName("QFileDialog_SelectUrl")]
	public static extern void QFileDialog_SelectUrl(Self* c_this, QUrl* url);
	[LinkName("QFileDialog_SelectedUrls")]
	public static extern QUrl[] QFileDialog_SelectedUrls(Self* c_this);
	[LinkName("QFileDialog_SetNameFilter")]
	public static extern void QFileDialog_SetNameFilter(Self* c_this, libqt_string filter);
	[LinkName("QFileDialog_SetNameFilters")]
	public static extern void QFileDialog_SetNameFilters(Self* c_this, libqt_string[] filters);
	[LinkName("QFileDialog_NameFilters")]
	public static extern libqt_string[] QFileDialog_NameFilters(Self* c_this);
	[LinkName("QFileDialog_SelectNameFilter")]
	public static extern void QFileDialog_SelectNameFilter(Self* c_this, libqt_string filter);
	[LinkName("QFileDialog_SelectedMimeTypeFilter")]
	public static extern libqt_string QFileDialog_SelectedMimeTypeFilter(Self* c_this);
	[LinkName("QFileDialog_SelectedNameFilter")]
	public static extern libqt_string QFileDialog_SelectedNameFilter(Self* c_this);
	[LinkName("QFileDialog_SetMimeTypeFilters")]
	public static extern void QFileDialog_SetMimeTypeFilters(Self* c_this, libqt_string[] filters);
	[LinkName("QFileDialog_MimeTypeFilters")]
	public static extern libqt_string[] QFileDialog_MimeTypeFilters(Self* c_this);
	[LinkName("QFileDialog_SelectMimeTypeFilter")]
	public static extern void QFileDialog_SelectMimeTypeFilter(Self* c_this, libqt_string filter);
	[LinkName("QFileDialog_Filter")]
	public static extern int64 QFileDialog_Filter(Self* c_this);
	[LinkName("QFileDialog_SetFilter")]
	public static extern void QFileDialog_SetFilter(Self* c_this, int64 filters);
	[LinkName("QFileDialog_SetViewMode")]
	public static extern void QFileDialog_SetViewMode(Self* c_this, int64 mode);
	[LinkName("QFileDialog_ViewMode")]
	public static extern int64 QFileDialog_ViewMode(Self* c_this);
	[LinkName("QFileDialog_SetFileMode")]
	public static extern void QFileDialog_SetFileMode(Self* c_this, int64 mode);
	[LinkName("QFileDialog_FileMode")]
	public static extern int64 QFileDialog_FileMode(Self* c_this);
	[LinkName("QFileDialog_SetAcceptMode")]
	public static extern void QFileDialog_SetAcceptMode(Self* c_this, int64 mode);
	[LinkName("QFileDialog_AcceptMode")]
	public static extern int64 QFileDialog_AcceptMode(Self* c_this);
	[LinkName("QFileDialog_SetSidebarUrls")]
	public static extern void QFileDialog_SetSidebarUrls(Self* c_this, QUrl[] urls);
	[LinkName("QFileDialog_SidebarUrls")]
	public static extern QUrl[] QFileDialog_SidebarUrls(Self* c_this);
	[LinkName("QFileDialog_SaveState")]
	public static extern libqt_string QFileDialog_SaveState(Self* c_this);
	[LinkName("QFileDialog_RestoreState")]
	public static extern bool QFileDialog_RestoreState(Self* c_this, libqt_string state);
	[LinkName("QFileDialog_SetDefaultSuffix")]
	public static extern void QFileDialog_SetDefaultSuffix(Self* c_this, libqt_string suffix);
	[LinkName("QFileDialog_DefaultSuffix")]
	public static extern libqt_string QFileDialog_DefaultSuffix(Self* c_this);
	[LinkName("QFileDialog_SetHistory")]
	public static extern void QFileDialog_SetHistory(Self* c_this, libqt_string[] paths);
	[LinkName("QFileDialog_History")]
	public static extern libqt_string[] QFileDialog_History(Self* c_this);
	[LinkName("QFileDialog_SetItemDelegate")]
	public static extern void QFileDialog_SetItemDelegate(Self* c_this, QAbstractItemDelegate* _delegate);
	[LinkName("QFileDialog_ItemDelegate")]
	public static extern QAbstractItemDelegate* QFileDialog_ItemDelegate(Self* c_this);
	[LinkName("QFileDialog_SetIconProvider")]
	public static extern void QFileDialog_SetIconProvider(Self* c_this, QAbstractFileIconProvider* provider);
	[LinkName("QFileDialog_IconProvider")]
	public static extern QAbstractFileIconProvider* QFileDialog_IconProvider(Self* c_this);
	[LinkName("QFileDialog_SetLabelText")]
	public static extern void QFileDialog_SetLabelText(Self* c_this, int64 label, libqt_string text);
	[LinkName("QFileDialog_LabelText")]
	public static extern libqt_string QFileDialog_LabelText(Self* c_this, int64 label);
	[LinkName("QFileDialog_SetSupportedSchemes")]
	public static extern void QFileDialog_SetSupportedSchemes(Self* c_this, libqt_string[] schemes);
	[LinkName("QFileDialog_SupportedSchemes")]
	public static extern libqt_string[] QFileDialog_SupportedSchemes(Self* c_this);
	[LinkName("QFileDialog_SetProxyModel")]
	public static extern void QFileDialog_SetProxyModel(Self* c_this, QAbstractProxyModel* model);
	[LinkName("QFileDialog_ProxyModel")]
	public static extern QAbstractProxyModel* QFileDialog_ProxyModel(Self* c_this);
	[LinkName("QFileDialog_SetOption")]
	public static extern void QFileDialog_SetOption(Self* c_this, int64 option);
	[LinkName("QFileDialog_TestOption")]
	public static extern bool QFileDialog_TestOption(Self* c_this, int64 option);
	[LinkName("QFileDialog_SetOptions")]
	public static extern void QFileDialog_SetOptions(Self* c_this, int64 options);
	[LinkName("QFileDialog_Options")]
	public static extern int64 QFileDialog_Options(Self* c_this);
	[LinkName("QFileDialog_SetVisible")]
	public static extern void QFileDialog_SetVisible(Self* c_this, bool visible);
	[LinkName("QFileDialog_Connect_FileSelected")]
	public static extern void QFileDialog_Connect_FileSelected(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_FilesSelected")]
	public static extern void QFileDialog_Connect_FilesSelected(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_CurrentChanged")]
	public static extern void QFileDialog_Connect_CurrentChanged(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_DirectoryEntered")]
	public static extern void QFileDialog_Connect_DirectoryEntered(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_UrlSelected")]
	public static extern void QFileDialog_Connect_UrlSelected(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_UrlsSelected")]
	public static extern void QFileDialog_Connect_UrlsSelected(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_CurrentUrlChanged")]
	public static extern void QFileDialog_Connect_CurrentUrlChanged(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_DirectoryUrlEntered")]
	public static extern void QFileDialog_Connect_DirectoryUrlEntered(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_FilterSelected")]
	public static extern void QFileDialog_Connect_FilterSelected(Self* c_this, c_intptr slot);
	[LinkName("QFileDialog_GetOpenFileName")]
	public static extern libqt_string QFileDialog_GetOpenFileName();
	[LinkName("QFileDialog_GetOpenFileUrl")]
	public static extern QUrl QFileDialog_GetOpenFileUrl();
	[LinkName("QFileDialog_GetSaveFileName")]
	public static extern libqt_string QFileDialog_GetSaveFileName();
	[LinkName("QFileDialog_GetSaveFileUrl")]
	public static extern QUrl QFileDialog_GetSaveFileUrl();
	[LinkName("QFileDialog_GetExistingDirectory")]
	public static extern libqt_string QFileDialog_GetExistingDirectory();
	[LinkName("QFileDialog_GetExistingDirectoryUrl")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl();
	[LinkName("QFileDialog_GetOpenFileNames")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames();
	[LinkName("QFileDialog_GetOpenFileUrls")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls();
	[LinkName("QFileDialog_SaveFileContent")]
	public static extern void QFileDialog_SaveFileContent(libqt_string fileContent, libqt_string fileNameHint);
	[LinkName("QFileDialog_Done")]
	public static extern void QFileDialog_Done(Self* c_this, int32 result);
	[LinkName("QFileDialog_Accept")]
	public static extern void QFileDialog_Accept(Self* c_this);
	[LinkName("QFileDialog_ChangeEvent")]
	public static extern void QFileDialog_ChangeEvent(Self* c_this, QEvent* e);
	[LinkName("QFileDialog_Tr2")]
	public static extern libqt_string QFileDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QFileDialog_Tr3")]
	public static extern libqt_string QFileDialog_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFileDialog_SetOption2")]
	public static extern void QFileDialog_SetOption2(Self* c_this, int64 option, bool on);
	[LinkName("QFileDialog_GetOpenFileName1")]
	public static extern libqt_string QFileDialog_GetOpenFileName1(QWidget* parent);
	[LinkName("QFileDialog_GetOpenFileName2")]
	public static extern libqt_string QFileDialog_GetOpenFileName2(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_GetOpenFileName3")]
	public static extern libqt_string QFileDialog_GetOpenFileName3(QWidget* parent, libqt_string caption, libqt_string dir);
	[LinkName("QFileDialog_GetOpenFileName4")]
	public static extern libqt_string QFileDialog_GetOpenFileName4(QWidget* parent, libqt_string caption, libqt_string dir, libqt_string filter);
	[LinkName("QFileDialog_GetOpenFileUrl1")]
	public static extern QUrl QFileDialog_GetOpenFileUrl1(QWidget* parent);
	[LinkName("QFileDialog_GetOpenFileUrl2")]
	public static extern QUrl QFileDialog_GetOpenFileUrl2(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_GetOpenFileUrl3")]
	public static extern QUrl QFileDialog_GetOpenFileUrl3(QWidget* parent, libqt_string caption, QUrl* dir);
	[LinkName("QFileDialog_GetOpenFileUrl4")]
	public static extern QUrl QFileDialog_GetOpenFileUrl4(QWidget* parent, libqt_string caption, QUrl* dir, libqt_string filter);
	[LinkName("QFileDialog_GetSaveFileName1")]
	public static extern libqt_string QFileDialog_GetSaveFileName1(QWidget* parent);
	[LinkName("QFileDialog_GetSaveFileName2")]
	public static extern libqt_string QFileDialog_GetSaveFileName2(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_GetSaveFileName3")]
	public static extern libqt_string QFileDialog_GetSaveFileName3(QWidget* parent, libqt_string caption, libqt_string dir);
	[LinkName("QFileDialog_GetSaveFileName4")]
	public static extern libqt_string QFileDialog_GetSaveFileName4(QWidget* parent, libqt_string caption, libqt_string dir, libqt_string filter);
	[LinkName("QFileDialog_GetSaveFileUrl1")]
	public static extern QUrl QFileDialog_GetSaveFileUrl1(QWidget* parent);
	[LinkName("QFileDialog_GetSaveFileUrl2")]
	public static extern QUrl QFileDialog_GetSaveFileUrl2(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_GetSaveFileUrl3")]
	public static extern QUrl QFileDialog_GetSaveFileUrl3(QWidget* parent, libqt_string caption, QUrl* dir);
	[LinkName("QFileDialog_GetSaveFileUrl4")]
	public static extern QUrl QFileDialog_GetSaveFileUrl4(QWidget* parent, libqt_string caption, QUrl* dir, libqt_string filter);
	[LinkName("QFileDialog_GetExistingDirectory1")]
	public static extern libqt_string QFileDialog_GetExistingDirectory1(QWidget* parent);
	[LinkName("QFileDialog_GetExistingDirectory2")]
	public static extern libqt_string QFileDialog_GetExistingDirectory2(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_GetExistingDirectory3")]
	public static extern libqt_string QFileDialog_GetExistingDirectory3(QWidget* parent, libqt_string caption, libqt_string dir);
	[LinkName("QFileDialog_GetExistingDirectory4")]
	public static extern libqt_string QFileDialog_GetExistingDirectory4(QWidget* parent, libqt_string caption, libqt_string dir, int64 options);
	[LinkName("QFileDialog_GetExistingDirectoryUrl1")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl1(QWidget* parent);
	[LinkName("QFileDialog_GetExistingDirectoryUrl2")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl2(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_GetExistingDirectoryUrl3")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl3(QWidget* parent, libqt_string caption, QUrl* dir);
	[LinkName("QFileDialog_GetExistingDirectoryUrl4")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl4(QWidget* parent, libqt_string caption, QUrl* dir, int64 options);
	[LinkName("QFileDialog_GetExistingDirectoryUrl5")]
	public static extern QUrl QFileDialog_GetExistingDirectoryUrl5(QWidget* parent, libqt_string caption, QUrl* dir, int64 options, libqt_string[] supportedSchemes);
	[LinkName("QFileDialog_GetOpenFileNames1")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames1(QWidget* parent);
	[LinkName("QFileDialog_GetOpenFileNames2")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames2(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_GetOpenFileNames3")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames3(QWidget* parent, libqt_string caption, libqt_string dir);
	[LinkName("QFileDialog_GetOpenFileNames4")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames4(QWidget* parent, libqt_string caption, libqt_string dir, libqt_string filter);
	[LinkName("QFileDialog_GetOpenFileUrls1")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls1(QWidget* parent);
	[LinkName("QFileDialog_GetOpenFileUrls2")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls2(QWidget* parent, libqt_string caption);
	[LinkName("QFileDialog_GetOpenFileUrls3")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls3(QWidget* parent, libqt_string caption, QUrl* dir);
	[LinkName("QFileDialog_GetOpenFileUrls4")]
	public static extern QUrl[] QFileDialog_GetOpenFileUrls4(QWidget* parent, libqt_string caption, QUrl* dir, libqt_string filter);
}