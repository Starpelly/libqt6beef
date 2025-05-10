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
public class QFileDialog
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QFileDialog_new(parent);
	}
	
	public ~this()
	{
		CQt.QFileDialog_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QFileDialog_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QFileDialog_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QFileDialog_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QFileDialog_Tr(s);
	}
	
	public void SetDirectory(libqt_string directory)
	{
		CQt.QFileDialog_SetDirectory(this.nativePtr, directory);
	}
	
	public void SetDirectoryWithDirectory(void* directory)
	{
		CQt.QFileDialog_SetDirectoryWithDirectory(this.nativePtr, directory);
	}
	
	public void Directory()
	{
		CQt.QFileDialog_Directory(this.nativePtr);
	}
	
	public void SetDirectoryUrl(void* directory)
	{
		CQt.QFileDialog_SetDirectoryUrl(this.nativePtr, directory);
	}
	
	public void DirectoryUrl()
	{
		CQt.QFileDialog_DirectoryUrl(this.nativePtr);
	}
	
	public void SelectFile(libqt_string filename)
	{
		CQt.QFileDialog_SelectFile(this.nativePtr, filename);
	}
	
	public libqt_string[] SelectedFiles()
	{
		return CQt.QFileDialog_SelectedFiles(this.nativePtr);
	}
	
	public void SelectUrl(void* url)
	{
		CQt.QFileDialog_SelectUrl(this.nativePtr, url);
	}
	
	public void[] SelectedUrls()
	{
		return CQt.QFileDialog_SelectedUrls(this.nativePtr);
	}
	
	public void SetNameFilter(libqt_string filter)
	{
		CQt.QFileDialog_SetNameFilter(this.nativePtr, filter);
	}
	
	public void SetNameFilters(libqt_string[] filters)
	{
		CQt.QFileDialog_SetNameFilters(this.nativePtr, filters);
	}
	
	public libqt_string[] NameFilters()
	{
		return CQt.QFileDialog_NameFilters(this.nativePtr);
	}
	
	public void SelectNameFilter(libqt_string filter)
	{
		CQt.QFileDialog_SelectNameFilter(this.nativePtr, filter);
	}
	
	public libqt_string SelectedMimeTypeFilter()
	{
		return CQt.QFileDialog_SelectedMimeTypeFilter(this.nativePtr);
	}
	
	public libqt_string SelectedNameFilter()
	{
		return CQt.QFileDialog_SelectedNameFilter(this.nativePtr);
	}
	
	public void SetMimeTypeFilters(libqt_string[] filters)
	{
		CQt.QFileDialog_SetMimeTypeFilters(this.nativePtr, filters);
	}
	
	public libqt_string[] MimeTypeFilters()
	{
		return CQt.QFileDialog_MimeTypeFilters(this.nativePtr);
	}
	
	public void SelectMimeTypeFilter(libqt_string filter)
	{
		CQt.QFileDialog_SelectMimeTypeFilter(this.nativePtr, filter);
	}
	
	public int64 Filter()
	{
		return CQt.QFileDialog_Filter(this.nativePtr);
	}
	
	public void SetFilter(int64 filters)
	{
		CQt.QFileDialog_SetFilter(this.nativePtr, filters);
	}
	
	public void SetViewMode(int64 mode)
	{
		CQt.QFileDialog_SetViewMode(this.nativePtr, mode);
	}
	
	public int64 ViewMode()
	{
		return CQt.QFileDialog_ViewMode(this.nativePtr);
	}
	
	public void SetFileMode(int64 mode)
	{
		CQt.QFileDialog_SetFileMode(this.nativePtr, mode);
	}
	
	public int64 FileMode()
	{
		return CQt.QFileDialog_FileMode(this.nativePtr);
	}
	
	public void SetAcceptMode(int64 mode)
	{
		CQt.QFileDialog_SetAcceptMode(this.nativePtr, mode);
	}
	
	public int64 AcceptMode()
	{
		return CQt.QFileDialog_AcceptMode(this.nativePtr);
	}
	
	public void SetSidebarUrls(void[] urls)
	{
		CQt.QFileDialog_SetSidebarUrls(this.nativePtr, urls);
	}
	
	public void[] SidebarUrls()
	{
		return CQt.QFileDialog_SidebarUrls(this.nativePtr);
	}
	
	public libqt_string SaveState()
	{
		return CQt.QFileDialog_SaveState(this.nativePtr);
	}
	
	public bool RestoreState(libqt_string state)
	{
		return CQt.QFileDialog_RestoreState(this.nativePtr, state);
	}
	
	public void SetDefaultSuffix(libqt_string suffix)
	{
		CQt.QFileDialog_SetDefaultSuffix(this.nativePtr, suffix);
	}
	
	public libqt_string DefaultSuffix()
	{
		return CQt.QFileDialog_DefaultSuffix(this.nativePtr);
	}
	
	public void SetHistory(libqt_string[] paths)
	{
		CQt.QFileDialog_SetHistory(this.nativePtr, paths);
	}
	
	public libqt_string[] History()
	{
		return CQt.QFileDialog_History(this.nativePtr);
	}
	
	public void SetItemDelegate(void* _delegate)
	{
		CQt.QFileDialog_SetItemDelegate(this.nativePtr, _delegate);
	}
	
	public void* ItemDelegate()
	{
		return CQt.QFileDialog_ItemDelegate(this.nativePtr);
	}
	
	public void SetIconProvider(void* provider)
	{
		CQt.QFileDialog_SetIconProvider(this.nativePtr, provider);
	}
	
	public void* IconProvider()
	{
		return CQt.QFileDialog_IconProvider(this.nativePtr);
	}
	
	public void SetLabelText(int64 label, libqt_string text)
	{
		CQt.QFileDialog_SetLabelText(this.nativePtr, label, text);
	}
	
	public libqt_string LabelText(int64 label)
	{
		return CQt.QFileDialog_LabelText(this.nativePtr, label);
	}
	
	public void SetSupportedSchemes(libqt_string[] schemes)
	{
		CQt.QFileDialog_SetSupportedSchemes(this.nativePtr, schemes);
	}
	
	public libqt_string[] SupportedSchemes()
	{
		return CQt.QFileDialog_SupportedSchemes(this.nativePtr);
	}
	
	public void SetProxyModel(void* model)
	{
		CQt.QFileDialog_SetProxyModel(this.nativePtr, model);
	}
	
	public void* ProxyModel()
	{
		return CQt.QFileDialog_ProxyModel(this.nativePtr);
	}
	
	public void SetOption(int64 option)
	{
		CQt.QFileDialog_SetOption(this.nativePtr, option);
	}
	
	public bool TestOption(int64 option)
	{
		return CQt.QFileDialog_TestOption(this.nativePtr, option);
	}
	
	public void SetOptions(int64 options)
	{
		CQt.QFileDialog_SetOptions(this.nativePtr, options);
	}
	
	public int64 Options()
	{
		return CQt.QFileDialog_Options(this.nativePtr);
	}
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QFileDialog_SetVisible(this.nativePtr, visible);
	}
	
	public static libqt_string GetOpenFileName()
	{
		return CQt.QFileDialog_GetOpenFileName();
	}
	
	public static void GetOpenFileUrl()
	{
		CQt.QFileDialog_GetOpenFileUrl();
	}
	
	public static libqt_string GetSaveFileName()
	{
		return CQt.QFileDialog_GetSaveFileName();
	}
	
	public static void GetSaveFileUrl()
	{
		CQt.QFileDialog_GetSaveFileUrl();
	}
	
	public static libqt_string GetExistingDirectory()
	{
		return CQt.QFileDialog_GetExistingDirectory();
	}
	
	public static void GetExistingDirectoryUrl()
	{
		CQt.QFileDialog_GetExistingDirectoryUrl();
	}
	
	public static libqt_string[] GetOpenFileNames()
	{
		return CQt.QFileDialog_GetOpenFileNames();
	}
	
	public static void[] GetOpenFileUrls()
	{
		return CQt.QFileDialog_GetOpenFileUrls();
	}
	
	public static void SaveFileContent(libqt_string fileContent, libqt_string fileNameHint)
	{
		CQt.QFileDialog_SaveFileContent(fileContent, fileNameHint);
	}
	
	public virtual void Done(int32 result)
	{
		CQt.QFileDialog_Done(this.nativePtr, result);
	}
	
	public virtual void Accept()
	{
		CQt.QFileDialog_Accept(this.nativePtr);
	}
	
	public virtual void ChangeEvent(void* e)
	{
		CQt.QFileDialog_ChangeEvent(this.nativePtr, e);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QFileDialog_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QFileDialog_Tr3(s, c, n);
	}
	
	public void SetOption2(int64 option, bool on)
	{
		CQt.QFileDialog_SetOption2(this.nativePtr, option, on);
	}
	
	public static libqt_string GetOpenFileName1(void* parent)
	{
		return CQt.QFileDialog_GetOpenFileName1(parent);
	}
	
	public static libqt_string GetOpenFileName2(void* parent, libqt_string caption)
	{
		return CQt.QFileDialog_GetOpenFileName2(parent, caption);
	}
	
	public static libqt_string GetOpenFileName3(void* parent, libqt_string caption, libqt_string dir)
	{
		return CQt.QFileDialog_GetOpenFileName3(parent, caption, dir);
	}
	
	public static libqt_string GetOpenFileName4(void* parent, libqt_string caption, libqt_string dir, libqt_string filter)
	{
		return CQt.QFileDialog_GetOpenFileName4(parent, caption, dir, filter);
	}
	
	public static void GetOpenFileUrl1(void* parent)
	{
		CQt.QFileDialog_GetOpenFileUrl1(parent);
	}
	
	public static void GetOpenFileUrl2(void* parent, libqt_string caption)
	{
		CQt.QFileDialog_GetOpenFileUrl2(parent, caption);
	}
	
	public static void GetOpenFileUrl3(void* parent, libqt_string caption, void* dir)
	{
		CQt.QFileDialog_GetOpenFileUrl3(parent, caption, dir);
	}
	
	public static void GetOpenFileUrl4(void* parent, libqt_string caption, void* dir, libqt_string filter)
	{
		CQt.QFileDialog_GetOpenFileUrl4(parent, caption, dir, filter);
	}
	
	public static libqt_string GetSaveFileName1(void* parent)
	{
		return CQt.QFileDialog_GetSaveFileName1(parent);
	}
	
	public static libqt_string GetSaveFileName2(void* parent, libqt_string caption)
	{
		return CQt.QFileDialog_GetSaveFileName2(parent, caption);
	}
	
	public static libqt_string GetSaveFileName3(void* parent, libqt_string caption, libqt_string dir)
	{
		return CQt.QFileDialog_GetSaveFileName3(parent, caption, dir);
	}
	
	public static libqt_string GetSaveFileName4(void* parent, libqt_string caption, libqt_string dir, libqt_string filter)
	{
		return CQt.QFileDialog_GetSaveFileName4(parent, caption, dir, filter);
	}
	
	public static void GetSaveFileUrl1(void* parent)
	{
		CQt.QFileDialog_GetSaveFileUrl1(parent);
	}
	
	public static void GetSaveFileUrl2(void* parent, libqt_string caption)
	{
		CQt.QFileDialog_GetSaveFileUrl2(parent, caption);
	}
	
	public static void GetSaveFileUrl3(void* parent, libqt_string caption, void* dir)
	{
		CQt.QFileDialog_GetSaveFileUrl3(parent, caption, dir);
	}
	
	public static void GetSaveFileUrl4(void* parent, libqt_string caption, void* dir, libqt_string filter)
	{
		CQt.QFileDialog_GetSaveFileUrl4(parent, caption, dir, filter);
	}
	
	public static libqt_string GetExistingDirectory1(void* parent)
	{
		return CQt.QFileDialog_GetExistingDirectory1(parent);
	}
	
	public static libqt_string GetExistingDirectory2(void* parent, libqt_string caption)
	{
		return CQt.QFileDialog_GetExistingDirectory2(parent, caption);
	}
	
	public static libqt_string GetExistingDirectory3(void* parent, libqt_string caption, libqt_string dir)
	{
		return CQt.QFileDialog_GetExistingDirectory3(parent, caption, dir);
	}
	
	public static libqt_string GetExistingDirectory4(void* parent, libqt_string caption, libqt_string dir, int64 options)
	{
		return CQt.QFileDialog_GetExistingDirectory4(parent, caption, dir, options);
	}
	
	public static void GetExistingDirectoryUrl1(void* parent)
	{
		CQt.QFileDialog_GetExistingDirectoryUrl1(parent);
	}
	
	public static void GetExistingDirectoryUrl2(void* parent, libqt_string caption)
	{
		CQt.QFileDialog_GetExistingDirectoryUrl2(parent, caption);
	}
	
	public static void GetExistingDirectoryUrl3(void* parent, libqt_string caption, void* dir)
	{
		CQt.QFileDialog_GetExistingDirectoryUrl3(parent, caption, dir);
	}
	
	public static void GetExistingDirectoryUrl4(void* parent, libqt_string caption, void* dir, int64 options)
	{
		CQt.QFileDialog_GetExistingDirectoryUrl4(parent, caption, dir, options);
	}
	
	public static void GetExistingDirectoryUrl5(void* parent, libqt_string caption, void* dir, int64 options, libqt_string[] supportedSchemes)
	{
		CQt.QFileDialog_GetExistingDirectoryUrl5(parent, caption, dir, options, supportedSchemes);
	}
	
	public static libqt_string[] GetOpenFileNames1(void* parent)
	{
		return CQt.QFileDialog_GetOpenFileNames1(parent);
	}
	
	public static libqt_string[] GetOpenFileNames2(void* parent, libqt_string caption)
	{
		return CQt.QFileDialog_GetOpenFileNames2(parent, caption);
	}
	
	public static libqt_string[] GetOpenFileNames3(void* parent, libqt_string caption, libqt_string dir)
	{
		return CQt.QFileDialog_GetOpenFileNames3(parent, caption, dir);
	}
	
	public static libqt_string[] GetOpenFileNames4(void* parent, libqt_string caption, libqt_string dir, libqt_string filter)
	{
		return CQt.QFileDialog_GetOpenFileNames4(parent, caption, dir, filter);
	}
	
	public static void[] GetOpenFileUrls1(void* parent)
	{
		return CQt.QFileDialog_GetOpenFileUrls1(parent);
	}
	
	public static void[] GetOpenFileUrls2(void* parent, libqt_string caption)
	{
		return CQt.QFileDialog_GetOpenFileUrls2(parent, caption);
	}
	
	public static void[] GetOpenFileUrls3(void* parent, libqt_string caption, void* dir)
	{
		return CQt.QFileDialog_GetOpenFileUrls3(parent, caption, dir);
	}
	
	public static void[] GetOpenFileUrls4(void* parent, libqt_string caption, void* dir, libqt_string filter)
	{
		return CQt.QFileDialog_GetOpenFileUrls4(parent, caption, dir, filter);
	}
	
	public int32 Result()
	{
		return CQt.QDialog_Result(this.nativePtr);
	}
	
	public virtual void SizeHint()
	{
		CQt.QDialog_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QDialog_MinimumSizeHint(this.nativePtr);
	}
	
	public void SetSizeGripEnabled(bool sizeGripEnabled)
	{
		CQt.QDialog_SetSizeGripEnabled(this.nativePtr, sizeGripEnabled);
	}
	
	public bool IsSizeGripEnabled()
	{
		return CQt.QDialog_IsSizeGripEnabled(this.nativePtr);
	}
	
	public void SetModal(bool modal)
	{
		CQt.QDialog_SetModal(this.nativePtr, modal);
	}
	
	public void SetResult(int32 r)
	{
		CQt.QDialog_SetResult(this.nativePtr, r);
	}
	
	public virtual void Open()
	{
		CQt.QDialog_Open(this.nativePtr);
	}
	
	public virtual int32 Exec()
	{
		return CQt.QDialog_Exec(this.nativePtr);
	}
	
	public virtual void Reject()
	{
		CQt.QDialog_Reject(this.nativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(void* style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, style);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QWidget_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(void* param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, param1);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(void* minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(void* maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, maximumSize);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(void* sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(void* baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(void* fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, fixedSize);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(void* param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, param1);
	}
	
	public void MapToGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromGlobal(void* param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, param1);
	}
	
	public void MapFromGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapToParent(void* param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, param1);
	}
	
	public void MapToParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromParent(void* param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, param1);
	}
	
	public void MapFromParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapTo(void* param1, void* param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, param1, param2);
	}
	
	public void MapTo2(void* param1, void* param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, param1, param2);
	}
	
	public void MapFrom(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, param1, param2);
	}
	
	public void MapFrom2(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, param1, param2);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(void* palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, palette);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QWidget_SetFont(this.nativePtr, font);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(void* cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, cursor);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(void* mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, mask);
	}
	
	public void SetMaskWithMask(void* mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, mask);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(void* target)
	{
		CQt.QWidget_Render(this.nativePtr, target);
	}
	
	public void RenderWithPainter(void* painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, painter);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(void* effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(libqt_string windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, windowTitle);
	}
	
	public void SetStyleSheet(libqt_string styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(void* icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, icon);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(libqt_string windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(libqt_string windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(libqt_string filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, filePath);
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, toolTip);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(libqt_string statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(libqt_string name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(libqt_string description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, description);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, locale);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(void* param1, void* param2)
	{
		CQt.QWidget_SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(void* focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, focusProxy);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(void* param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, param1);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(void* key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, key);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Update()
	{
		CQt.QWidget_Update(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(void* param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, param1);
	}
	
	public void UpdateWithQRegion(void* param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(void* param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, param1);
	}
	
	public void RepaintWithQRegion(void* param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, param1);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(void* param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(void* param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(void* param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(void* geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(libqt_string geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, geometry);
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(void* param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, param1);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(void sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, sizePolicy);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(void* margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, margins);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(void* layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, layout);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, parent);
	}
	
	public void SetParent2(void* parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, void* param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, param3);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(void* action)
	{
		CQt.QWidget_AddAction(this.nativePtr, action);
	}
	
	public void AddActions(void*[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, actions);
	}
	
	public void InsertActions(void* before, void*[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, before, actions);
	}
	
	public void InsertAction(void* before, void* action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, before, action);
	}
	
	public void RemoveAction(void* action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, action);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(libqt_string text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, text);
	}
	
	public void* AddAction2(void* icon, libqt_string text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, icon, text);
	}
	
	public void* AddAction3(libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, text, shortcut);
	}
	
	public void* AddAction4(void* icon, libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, icon, text, shortcut);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(void* p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, p);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(void* child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, child);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(void* screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, screen);
	}
	
	public static void* CreateWindowContainer(void* window)
	{
		return CQt.QWidget_CreateWindowContainer(window);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		CQt.QWidget_InputMethodQuery(this.nativePtr, param1);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(void* target, void* targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, target, targetOffset);
	}
	
	public void Render3(void* target, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, target, targetOffset, sourceRegion);
	}
	
	public void Render4(void* target, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, target, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Render22(void* painter, void* targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, painter, targetOffset);
	}
	
	public void Render32(void* painter, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, painter, targetOffset, sourceRegion);
	}
	
	public void Render42(void* painter, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(void* rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(void* key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, key, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(void* window, void* parent)
	{
		return CQt.QWidget_CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(void* window, void* parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3(window, parent, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QFileDialog_new")]
	public static extern void* QFileDialog_new(void* parent);
	[LinkName("QFileDialog_new2")]
	public static extern void* QFileDialog_new2(void* parent, int64 f);
	[LinkName("QFileDialog_new3")]
	public static extern void* QFileDialog_new3();
	[LinkName("QFileDialog_new4")]
	public static extern void* QFileDialog_new4(void* parent, libqt_string caption);
	[LinkName("QFileDialog_new5")]
	public static extern void* QFileDialog_new5(void* parent, libqt_string caption, libqt_string directory);
	[LinkName("QFileDialog_new6")]
	public static extern void* QFileDialog_new6(void* parent, libqt_string caption, libqt_string directory, libqt_string filter);
	[LinkName("QFileDialog_MetaObject")]
	public static extern void* QFileDialog_MetaObject(void* c_this);
	[LinkName("QFileDialog_Metacast")]
	public static extern void* QFileDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QFileDialog_Metacall")]
	public static extern int32 QFileDialog_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFileDialog_Tr")]
	public static extern libqt_string QFileDialog_Tr(char8[] s);
	[LinkName("QFileDialog_SetDirectory")]
	public static extern void QFileDialog_SetDirectory(void* c_this, libqt_string directory);
	[LinkName("QFileDialog_SetDirectoryWithDirectory")]
	public static extern void QFileDialog_SetDirectoryWithDirectory(void* c_this, void* directory);
	[LinkName("QFileDialog_Directory")]
	public static extern void QFileDialog_Directory(void* c_this);
	[LinkName("QFileDialog_SetDirectoryUrl")]
	public static extern void QFileDialog_SetDirectoryUrl(void* c_this, void* directory);
	[LinkName("QFileDialog_DirectoryUrl")]
	public static extern void QFileDialog_DirectoryUrl(void* c_this);
	[LinkName("QFileDialog_SelectFile")]
	public static extern void QFileDialog_SelectFile(void* c_this, libqt_string filename);
	[LinkName("QFileDialog_SelectedFiles")]
	public static extern libqt_string[] QFileDialog_SelectedFiles(void* c_this);
	[LinkName("QFileDialog_SelectUrl")]
	public static extern void QFileDialog_SelectUrl(void* c_this, void* url);
	[LinkName("QFileDialog_SelectedUrls")]
	public static extern void[] QFileDialog_SelectedUrls(void* c_this);
	[LinkName("QFileDialog_SetNameFilter")]
	public static extern void QFileDialog_SetNameFilter(void* c_this, libqt_string filter);
	[LinkName("QFileDialog_SetNameFilters")]
	public static extern void QFileDialog_SetNameFilters(void* c_this, libqt_string[] filters);
	[LinkName("QFileDialog_NameFilters")]
	public static extern libqt_string[] QFileDialog_NameFilters(void* c_this);
	[LinkName("QFileDialog_SelectNameFilter")]
	public static extern void QFileDialog_SelectNameFilter(void* c_this, libqt_string filter);
	[LinkName("QFileDialog_SelectedMimeTypeFilter")]
	public static extern libqt_string QFileDialog_SelectedMimeTypeFilter(void* c_this);
	[LinkName("QFileDialog_SelectedNameFilter")]
	public static extern libqt_string QFileDialog_SelectedNameFilter(void* c_this);
	[LinkName("QFileDialog_SetMimeTypeFilters")]
	public static extern void QFileDialog_SetMimeTypeFilters(void* c_this, libqt_string[] filters);
	[LinkName("QFileDialog_MimeTypeFilters")]
	public static extern libqt_string[] QFileDialog_MimeTypeFilters(void* c_this);
	[LinkName("QFileDialog_SelectMimeTypeFilter")]
	public static extern void QFileDialog_SelectMimeTypeFilter(void* c_this, libqt_string filter);
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
	public static extern void QFileDialog_SetSidebarUrls(void* c_this, void[] urls);
	[LinkName("QFileDialog_SidebarUrls")]
	public static extern void[] QFileDialog_SidebarUrls(void* c_this);
	[LinkName("QFileDialog_SaveState")]
	public static extern libqt_string QFileDialog_SaveState(void* c_this);
	[LinkName("QFileDialog_RestoreState")]
	public static extern bool QFileDialog_RestoreState(void* c_this, libqt_string state);
	[LinkName("QFileDialog_SetDefaultSuffix")]
	public static extern void QFileDialog_SetDefaultSuffix(void* c_this, libqt_string suffix);
	[LinkName("QFileDialog_DefaultSuffix")]
	public static extern libqt_string QFileDialog_DefaultSuffix(void* c_this);
	[LinkName("QFileDialog_SetHistory")]
	public static extern void QFileDialog_SetHistory(void* c_this, libqt_string[] paths);
	[LinkName("QFileDialog_History")]
	public static extern libqt_string[] QFileDialog_History(void* c_this);
	[LinkName("QFileDialog_SetItemDelegate")]
	public static extern void QFileDialog_SetItemDelegate(void* c_this, void* _delegate);
	[LinkName("QFileDialog_ItemDelegate")]
	public static extern void* QFileDialog_ItemDelegate(void* c_this);
	[LinkName("QFileDialog_SetIconProvider")]
	public static extern void QFileDialog_SetIconProvider(void* c_this, void* provider);
	[LinkName("QFileDialog_IconProvider")]
	public static extern void* QFileDialog_IconProvider(void* c_this);
	[LinkName("QFileDialog_SetLabelText")]
	public static extern void QFileDialog_SetLabelText(void* c_this, int64 label, libqt_string text);
	[LinkName("QFileDialog_LabelText")]
	public static extern libqt_string QFileDialog_LabelText(void* c_this, int64 label);
	[LinkName("QFileDialog_SetSupportedSchemes")]
	public static extern void QFileDialog_SetSupportedSchemes(void* c_this, libqt_string[] schemes);
	[LinkName("QFileDialog_SupportedSchemes")]
	public static extern libqt_string[] QFileDialog_SupportedSchemes(void* c_this);
	[LinkName("QFileDialog_SetProxyModel")]
	public static extern void QFileDialog_SetProxyModel(void* c_this, void* model);
	[LinkName("QFileDialog_ProxyModel")]
	public static extern void* QFileDialog_ProxyModel(void* c_this);
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
	[LinkName("QFileDialog_Connect_FileSelected")]
	public static extern void QFileDialog_Connect_FileSelected(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_FilesSelected")]
	public static extern void QFileDialog_Connect_FilesSelected(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_CurrentChanged")]
	public static extern void QFileDialog_Connect_CurrentChanged(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_DirectoryEntered")]
	public static extern void QFileDialog_Connect_DirectoryEntered(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_UrlSelected")]
	public static extern void QFileDialog_Connect_UrlSelected(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_UrlsSelected")]
	public static extern void QFileDialog_Connect_UrlsSelected(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_CurrentUrlChanged")]
	public static extern void QFileDialog_Connect_CurrentUrlChanged(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_DirectoryUrlEntered")]
	public static extern void QFileDialog_Connect_DirectoryUrlEntered(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_Connect_FilterSelected")]
	public static extern void QFileDialog_Connect_FilterSelected(void* c_this, c_intptr slot);
	[LinkName("QFileDialog_GetOpenFileName")]
	public static extern libqt_string QFileDialog_GetOpenFileName();
	[LinkName("QFileDialog_GetOpenFileUrl")]
	public static extern void QFileDialog_GetOpenFileUrl();
	[LinkName("QFileDialog_GetSaveFileName")]
	public static extern libqt_string QFileDialog_GetSaveFileName();
	[LinkName("QFileDialog_GetSaveFileUrl")]
	public static extern void QFileDialog_GetSaveFileUrl();
	[LinkName("QFileDialog_GetExistingDirectory")]
	public static extern libqt_string QFileDialog_GetExistingDirectory();
	[LinkName("QFileDialog_GetExistingDirectoryUrl")]
	public static extern void QFileDialog_GetExistingDirectoryUrl();
	[LinkName("QFileDialog_GetOpenFileNames")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames();
	[LinkName("QFileDialog_GetOpenFileUrls")]
	public static extern void[] QFileDialog_GetOpenFileUrls();
	[LinkName("QFileDialog_SaveFileContent")]
	public static extern void QFileDialog_SaveFileContent(libqt_string fileContent, libqt_string fileNameHint);
	[LinkName("QFileDialog_Done")]
	public static extern void QFileDialog_Done(void* c_this, int32 result);
	[LinkName("QFileDialog_Accept")]
	public static extern void QFileDialog_Accept(void* c_this);
	[LinkName("QFileDialog_ChangeEvent")]
	public static extern void QFileDialog_ChangeEvent(void* c_this, void* e);
	[LinkName("QFileDialog_Tr2")]
	public static extern libqt_string QFileDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QFileDialog_Tr3")]
	public static extern libqt_string QFileDialog_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFileDialog_SetOption2")]
	public static extern void QFileDialog_SetOption2(void* c_this, int64 option, bool on);
	[LinkName("QFileDialog_GetOpenFileName1")]
	public static extern libqt_string QFileDialog_GetOpenFileName1(void* parent);
	[LinkName("QFileDialog_GetOpenFileName2")]
	public static extern libqt_string QFileDialog_GetOpenFileName2(void* parent, libqt_string caption);
	[LinkName("QFileDialog_GetOpenFileName3")]
	public static extern libqt_string QFileDialog_GetOpenFileName3(void* parent, libqt_string caption, libqt_string dir);
	[LinkName("QFileDialog_GetOpenFileName4")]
	public static extern libqt_string QFileDialog_GetOpenFileName4(void* parent, libqt_string caption, libqt_string dir, libqt_string filter);
	[LinkName("QFileDialog_GetOpenFileUrl1")]
	public static extern void QFileDialog_GetOpenFileUrl1(void* parent);
	[LinkName("QFileDialog_GetOpenFileUrl2")]
	public static extern void QFileDialog_GetOpenFileUrl2(void* parent, libqt_string caption);
	[LinkName("QFileDialog_GetOpenFileUrl3")]
	public static extern void QFileDialog_GetOpenFileUrl3(void* parent, libqt_string caption, void* dir);
	[LinkName("QFileDialog_GetOpenFileUrl4")]
	public static extern void QFileDialog_GetOpenFileUrl4(void* parent, libqt_string caption, void* dir, libqt_string filter);
	[LinkName("QFileDialog_GetSaveFileName1")]
	public static extern libqt_string QFileDialog_GetSaveFileName1(void* parent);
	[LinkName("QFileDialog_GetSaveFileName2")]
	public static extern libqt_string QFileDialog_GetSaveFileName2(void* parent, libqt_string caption);
	[LinkName("QFileDialog_GetSaveFileName3")]
	public static extern libqt_string QFileDialog_GetSaveFileName3(void* parent, libqt_string caption, libqt_string dir);
	[LinkName("QFileDialog_GetSaveFileName4")]
	public static extern libqt_string QFileDialog_GetSaveFileName4(void* parent, libqt_string caption, libqt_string dir, libqt_string filter);
	[LinkName("QFileDialog_GetSaveFileUrl1")]
	public static extern void QFileDialog_GetSaveFileUrl1(void* parent);
	[LinkName("QFileDialog_GetSaveFileUrl2")]
	public static extern void QFileDialog_GetSaveFileUrl2(void* parent, libqt_string caption);
	[LinkName("QFileDialog_GetSaveFileUrl3")]
	public static extern void QFileDialog_GetSaveFileUrl3(void* parent, libqt_string caption, void* dir);
	[LinkName("QFileDialog_GetSaveFileUrl4")]
	public static extern void QFileDialog_GetSaveFileUrl4(void* parent, libqt_string caption, void* dir, libqt_string filter);
	[LinkName("QFileDialog_GetExistingDirectory1")]
	public static extern libqt_string QFileDialog_GetExistingDirectory1(void* parent);
	[LinkName("QFileDialog_GetExistingDirectory2")]
	public static extern libqt_string QFileDialog_GetExistingDirectory2(void* parent, libqt_string caption);
	[LinkName("QFileDialog_GetExistingDirectory3")]
	public static extern libqt_string QFileDialog_GetExistingDirectory3(void* parent, libqt_string caption, libqt_string dir);
	[LinkName("QFileDialog_GetExistingDirectory4")]
	public static extern libqt_string QFileDialog_GetExistingDirectory4(void* parent, libqt_string caption, libqt_string dir, int64 options);
	[LinkName("QFileDialog_GetExistingDirectoryUrl1")]
	public static extern void QFileDialog_GetExistingDirectoryUrl1(void* parent);
	[LinkName("QFileDialog_GetExistingDirectoryUrl2")]
	public static extern void QFileDialog_GetExistingDirectoryUrl2(void* parent, libqt_string caption);
	[LinkName("QFileDialog_GetExistingDirectoryUrl3")]
	public static extern void QFileDialog_GetExistingDirectoryUrl3(void* parent, libqt_string caption, void* dir);
	[LinkName("QFileDialog_GetExistingDirectoryUrl4")]
	public static extern void QFileDialog_GetExistingDirectoryUrl4(void* parent, libqt_string caption, void* dir, int64 options);
	[LinkName("QFileDialog_GetExistingDirectoryUrl5")]
	public static extern void QFileDialog_GetExistingDirectoryUrl5(void* parent, libqt_string caption, void* dir, int64 options, libqt_string[] supportedSchemes);
	[LinkName("QFileDialog_GetOpenFileNames1")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames1(void* parent);
	[LinkName("QFileDialog_GetOpenFileNames2")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames2(void* parent, libqt_string caption);
	[LinkName("QFileDialog_GetOpenFileNames3")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames3(void* parent, libqt_string caption, libqt_string dir);
	[LinkName("QFileDialog_GetOpenFileNames4")]
	public static extern libqt_string[] QFileDialog_GetOpenFileNames4(void* parent, libqt_string caption, libqt_string dir, libqt_string filter);
	[LinkName("QFileDialog_GetOpenFileUrls1")]
	public static extern void[] QFileDialog_GetOpenFileUrls1(void* parent);
	[LinkName("QFileDialog_GetOpenFileUrls2")]
	public static extern void[] QFileDialog_GetOpenFileUrls2(void* parent, libqt_string caption);
	[LinkName("QFileDialog_GetOpenFileUrls3")]
	public static extern void[] QFileDialog_GetOpenFileUrls3(void* parent, libqt_string caption, void* dir);
	[LinkName("QFileDialog_GetOpenFileUrls4")]
	public static extern void[] QFileDialog_GetOpenFileUrls4(void* parent, libqt_string caption, void* dir, libqt_string filter);
	/// Delete this object from C++ memory
	[LinkName("QFileDialog_Delete")]
	public static extern void QFileDialog_Delete(void* self);
}