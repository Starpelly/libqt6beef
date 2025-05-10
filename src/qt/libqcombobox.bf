using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QComboBox__InsertPolicy
{
	NoInsert = 0,
	InsertAtTop = 1,
	InsertAtCurrent = 2,
	InsertAtBottom = 3,
	InsertAfterCurrent = 4,
	InsertBeforeCurrent = 5,
	InsertAlphabetically = 6,
}
[AllowDuplicates]
public enum QComboBox__SizeAdjustPolicy
{
	AdjustToContents = 0,
	AdjustToContentsOnFirstShow = 1,
	AdjustToMinimumContentsLengthWithIcon = 2,
}
public class QComboBox
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QComboBox_new(parent);
	}
	
	public ~this()
	{
		CQt.QComboBox_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QComboBox_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QComboBox_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QComboBox_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QComboBox_Tr(s);
	}
	
	public int32 MaxVisibleItems()
	{
		return CQt.QComboBox_MaxVisibleItems(this.nativePtr);
	}
	
	public void SetMaxVisibleItems(int32 maxItems)
	{
		CQt.QComboBox_SetMaxVisibleItems(this.nativePtr, maxItems);
	}
	
	public int32 Count()
	{
		return CQt.QComboBox_Count(this.nativePtr);
	}
	
	public void SetMaxCount(int32 max)
	{
		CQt.QComboBox_SetMaxCount(this.nativePtr, max);
	}
	
	public int32 MaxCount()
	{
		return CQt.QComboBox_MaxCount(this.nativePtr);
	}
	
	public bool DuplicatesEnabled()
	{
		return CQt.QComboBox_DuplicatesEnabled(this.nativePtr);
	}
	
	public void SetDuplicatesEnabled(bool enable)
	{
		CQt.QComboBox_SetDuplicatesEnabled(this.nativePtr, enable);
	}
	
	public void SetFrame(bool frame)
	{
		CQt.QComboBox_SetFrame(this.nativePtr, frame);
	}
	
	public bool HasFrame()
	{
		return CQt.QComboBox_HasFrame(this.nativePtr);
	}
	
	public int32 FindText(libqt_string text)
	{
		return CQt.QComboBox_FindText(this.nativePtr, text);
	}
	
	public int32 FindData(void* data)
	{
		return CQt.QComboBox_FindData(this.nativePtr, data);
	}
	
	public int64 InsertPolicy()
	{
		return CQt.QComboBox_InsertPolicy(this.nativePtr);
	}
	
	public void SetInsertPolicy(int64 policy)
	{
		CQt.QComboBox_SetInsertPolicy(this.nativePtr, policy);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return CQt.QComboBox_SizeAdjustPolicy(this.nativePtr);
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		CQt.QComboBox_SetSizeAdjustPolicy(this.nativePtr, policy);
	}
	
	public int32 MinimumContentsLength()
	{
		return CQt.QComboBox_MinimumContentsLength(this.nativePtr);
	}
	
	public void SetMinimumContentsLength(int32 characters)
	{
		CQt.QComboBox_SetMinimumContentsLength(this.nativePtr, characters);
	}
	
	public void IconSize()
	{
		CQt.QComboBox_IconSize(this.nativePtr);
	}
	
	public void SetIconSize(void* size)
	{
		CQt.QComboBox_SetIconSize(this.nativePtr, size);
	}
	
	public void SetPlaceholderText(libqt_string placeholderText)
	{
		CQt.QComboBox_SetPlaceholderText(this.nativePtr, placeholderText);
	}
	
	public libqt_string PlaceholderText()
	{
		return CQt.QComboBox_PlaceholderText(this.nativePtr);
	}
	
	public bool IsEditable()
	{
		return CQt.QComboBox_IsEditable(this.nativePtr);
	}
	
	public void SetEditable(bool editable)
	{
		CQt.QComboBox_SetEditable(this.nativePtr, editable);
	}
	
	public void SetLineEdit(void* edit)
	{
		CQt.QComboBox_SetLineEdit(this.nativePtr, edit);
	}
	
	public void* LineEdit()
	{
		return CQt.QComboBox_LineEdit(this.nativePtr);
	}
	
	public void SetValidator(void* v)
	{
		CQt.QComboBox_SetValidator(this.nativePtr, v);
	}
	
	public void* Validator()
	{
		return CQt.QComboBox_Validator(this.nativePtr);
	}
	
	public void SetCompleter(void* c)
	{
		CQt.QComboBox_SetCompleter(this.nativePtr, c);
	}
	
	public void* Completer()
	{
		return CQt.QComboBox_Completer(this.nativePtr);
	}
	
	public void* ItemDelegate()
	{
		return CQt.QComboBox_ItemDelegate(this.nativePtr);
	}
	
	public void SetItemDelegate(void* _delegate)
	{
		CQt.QComboBox_SetItemDelegate(this.nativePtr, _delegate);
	}
	
	public void* Model()
	{
		return CQt.QComboBox_Model(this.nativePtr);
	}
	
	public virtual void SetModel(void* model)
	{
		CQt.QComboBox_SetModel(this.nativePtr, model);
	}
	
	public void RootModelIndex()
	{
		CQt.QComboBox_RootModelIndex(this.nativePtr);
	}
	
	public void SetRootModelIndex(void* index)
	{
		CQt.QComboBox_SetRootModelIndex(this.nativePtr, index);
	}
	
	public int32 ModelColumn()
	{
		return CQt.QComboBox_ModelColumn(this.nativePtr);
	}
	
	public void SetModelColumn(int32 visibleColumn)
	{
		CQt.QComboBox_SetModelColumn(this.nativePtr, visibleColumn);
	}
	
	public int32 CurrentIndex()
	{
		return CQt.QComboBox_CurrentIndex(this.nativePtr);
	}
	
	public libqt_string CurrentText()
	{
		return CQt.QComboBox_CurrentText(this.nativePtr);
	}
	
	public void CurrentData()
	{
		CQt.QComboBox_CurrentData(this.nativePtr);
	}
	
	public libqt_string ItemText(int32 index)
	{
		return CQt.QComboBox_ItemText(this.nativePtr, index);
	}
	
	public void ItemIcon(int32 index)
	{
		CQt.QComboBox_ItemIcon(this.nativePtr, index);
	}
	
	public void ItemData(int32 index)
	{
		CQt.QComboBox_ItemData(this.nativePtr, index);
	}
	
	public void AddItem(libqt_string text)
	{
		CQt.QComboBox_AddItem(this.nativePtr, text);
	}
	
	public void AddItem2(void* icon, libqt_string text)
	{
		CQt.QComboBox_AddItem2(this.nativePtr, icon, text);
	}
	
	public void AddItems(libqt_string[] texts)
	{
		CQt.QComboBox_AddItems(this.nativePtr, texts);
	}
	
	public void InsertItem(int32 index, libqt_string text)
	{
		CQt.QComboBox_InsertItem(this.nativePtr, index, text);
	}
	
	public void InsertItem2(int32 index, void* icon, libqt_string text)
	{
		CQt.QComboBox_InsertItem2(this.nativePtr, index, icon, text);
	}
	
	public void InsertItems(int32 index, libqt_string[] texts)
	{
		CQt.QComboBox_InsertItems(this.nativePtr, index, texts);
	}
	
	public void InsertSeparator(int32 index)
	{
		CQt.QComboBox_InsertSeparator(this.nativePtr, index);
	}
	
	public void RemoveItem(int32 index)
	{
		CQt.QComboBox_RemoveItem(this.nativePtr, index);
	}
	
	public void SetItemText(int32 index, libqt_string text)
	{
		CQt.QComboBox_SetItemText(this.nativePtr, index, text);
	}
	
	public void SetItemIcon(int32 index, void* icon)
	{
		CQt.QComboBox_SetItemIcon(this.nativePtr, index, icon);
	}
	
	public void SetItemData(int32 index, void* value)
	{
		CQt.QComboBox_SetItemData(this.nativePtr, index, value);
	}
	
	public void* View()
	{
		return CQt.QComboBox_View(this.nativePtr);
	}
	
	public void SetView(void* itemView)
	{
		CQt.QComboBox_SetView(this.nativePtr, itemView);
	}
	
	public virtual void SizeHint()
	{
		CQt.QComboBox_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QComboBox_MinimumSizeHint(this.nativePtr);
	}
	
	public virtual void ShowPopup()
	{
		CQt.QComboBox_ShowPopup(this.nativePtr);
	}
	
	public virtual void HidePopup()
	{
		CQt.QComboBox_HidePopup(this.nativePtr);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QComboBox_Event(this.nativePtr, event);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		CQt.QComboBox_InputMethodQuery(this.nativePtr, param1);
	}
	
	public void InputMethodQuery2(int64 query, void* argument)
	{
		CQt.QComboBox_InputMethodQuery2(this.nativePtr, query, argument);
	}
	
	public void Clear()
	{
		CQt.QComboBox_Clear(this.nativePtr);
	}
	
	public void ClearEditText()
	{
		CQt.QComboBox_ClearEditText(this.nativePtr);
	}
	
	public void SetEditText(libqt_string text)
	{
		CQt.QComboBox_SetEditText(this.nativePtr, text);
	}
	
	public void SetCurrentIndex(int32 index)
	{
		CQt.QComboBox_SetCurrentIndex(this.nativePtr, index);
	}
	
	public void SetCurrentText(libqt_string text)
	{
		CQt.QComboBox_SetCurrentText(this.nativePtr, text);
	}
	
	public virtual void FocusInEvent(void* e)
	{
		CQt.QComboBox_FocusInEvent(this.nativePtr, e);
	}
	
	public virtual void FocusOutEvent(void* e)
	{
		CQt.QComboBox_FocusOutEvent(this.nativePtr, e);
	}
	
	public virtual void ChangeEvent(void* e)
	{
		CQt.QComboBox_ChangeEvent(this.nativePtr, e);
	}
	
	public virtual void ResizeEvent(void* e)
	{
		CQt.QComboBox_ResizeEvent(this.nativePtr, e);
	}
	
	public virtual void PaintEvent(void* e)
	{
		CQt.QComboBox_PaintEvent(this.nativePtr, e);
	}
	
	public virtual void ShowEvent(void* e)
	{
		CQt.QComboBox_ShowEvent(this.nativePtr, e);
	}
	
	public virtual void HideEvent(void* e)
	{
		CQt.QComboBox_HideEvent(this.nativePtr, e);
	}
	
	public virtual void MousePressEvent(void* e)
	{
		CQt.QComboBox_MousePressEvent(this.nativePtr, e);
	}
	
	public virtual void MouseReleaseEvent(void* e)
	{
		CQt.QComboBox_MouseReleaseEvent(this.nativePtr, e);
	}
	
	public virtual void KeyPressEvent(void* e)
	{
		CQt.QComboBox_KeyPressEvent(this.nativePtr, e);
	}
	
	public virtual void KeyReleaseEvent(void* e)
	{
		CQt.QComboBox_KeyReleaseEvent(this.nativePtr, e);
	}
	
	public virtual void WheelEvent(void* e)
	{
		CQt.QComboBox_WheelEvent(this.nativePtr, e);
	}
	
	public virtual void ContextMenuEvent(void* e)
	{
		CQt.QComboBox_ContextMenuEvent(this.nativePtr, e);
	}
	
	public virtual void InputMethodEvent(void* param1)
	{
		CQt.QComboBox_InputMethodEvent(this.nativePtr, param1);
	}
	
	public virtual void InitStyleOption(void* option)
	{
		CQt.QComboBox_InitStyleOption(this.nativePtr, option);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QComboBox_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QComboBox_Tr3(s, c, n);
	}
	
	public int32 FindText2(libqt_string text, int64 flags)
	{
		return CQt.QComboBox_FindText2(this.nativePtr, text, flags);
	}
	
	public int32 FindData2(void* data, int32 role)
	{
		return CQt.QComboBox_FindData2(this.nativePtr, data, role);
	}
	
	public int32 FindData3(void* data, int32 role, int64 flags)
	{
		return CQt.QComboBox_FindData3(this.nativePtr, data, role, flags);
	}
	
	public void CurrentData1(int32 role)
	{
		CQt.QComboBox_CurrentData1(this.nativePtr, role);
	}
	
	public void ItemData2(int32 index, int32 role)
	{
		CQt.QComboBox_ItemData2(this.nativePtr, index, role);
	}
	
	public void AddItem22(libqt_string text, void* userData)
	{
		CQt.QComboBox_AddItem22(this.nativePtr, text, userData);
	}
	
	public void AddItem3(void* icon, libqt_string text, void* userData)
	{
		CQt.QComboBox_AddItem3(this.nativePtr, icon, text, userData);
	}
	
	public void InsertItem3(int32 index, libqt_string text, void* userData)
	{
		CQt.QComboBox_InsertItem3(this.nativePtr, index, text, userData);
	}
	
	public void InsertItem4(int32 index, void* icon, libqt_string text, void* userData)
	{
		CQt.QComboBox_InsertItem4(this.nativePtr, index, icon, text, userData);
	}
	
	public void SetItemData3(int32 index, void* value, int32 role)
	{
		CQt.QComboBox_SetItemData3(this.nativePtr, index, value, role);
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
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QWidget_SetVisible(this.nativePtr, visible);
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
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
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
	[LinkName("QComboBox_new")]
	public static extern void* QComboBox_new(void* parent);
	[LinkName("QComboBox_new2")]
	public static extern void* QComboBox_new2();
	[LinkName("QComboBox_MetaObject")]
	public static extern void* QComboBox_MetaObject(void* c_this);
	[LinkName("QComboBox_Metacast")]
	public static extern void* QComboBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QComboBox_Metacall")]
	public static extern int32 QComboBox_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QComboBox_Tr")]
	public static extern libqt_string QComboBox_Tr(char8[] s);
	[LinkName("QComboBox_MaxVisibleItems")]
	public static extern int32 QComboBox_MaxVisibleItems(void* c_this);
	[LinkName("QComboBox_SetMaxVisibleItems")]
	public static extern void QComboBox_SetMaxVisibleItems(void* c_this, int32 maxItems);
	[LinkName("QComboBox_Count")]
	public static extern int32 QComboBox_Count(void* c_this);
	[LinkName("QComboBox_SetMaxCount")]
	public static extern void QComboBox_SetMaxCount(void* c_this, int32 max);
	[LinkName("QComboBox_MaxCount")]
	public static extern int32 QComboBox_MaxCount(void* c_this);
	[LinkName("QComboBox_DuplicatesEnabled")]
	public static extern bool QComboBox_DuplicatesEnabled(void* c_this);
	[LinkName("QComboBox_SetDuplicatesEnabled")]
	public static extern void QComboBox_SetDuplicatesEnabled(void* c_this, bool enable);
	[LinkName("QComboBox_SetFrame")]
	public static extern void QComboBox_SetFrame(void* c_this, bool frame);
	[LinkName("QComboBox_HasFrame")]
	public static extern bool QComboBox_HasFrame(void* c_this);
	[LinkName("QComboBox_FindText")]
	public static extern int32 QComboBox_FindText(void* c_this, libqt_string text);
	[LinkName("QComboBox_FindData")]
	public static extern int32 QComboBox_FindData(void* c_this, void* data);
	[LinkName("QComboBox_InsertPolicy")]
	public static extern int64 QComboBox_InsertPolicy(void* c_this);
	[LinkName("QComboBox_SetInsertPolicy")]
	public static extern void QComboBox_SetInsertPolicy(void* c_this, int64 policy);
	[LinkName("QComboBox_SizeAdjustPolicy")]
	public static extern int64 QComboBox_SizeAdjustPolicy(void* c_this);
	[LinkName("QComboBox_SetSizeAdjustPolicy")]
	public static extern void QComboBox_SetSizeAdjustPolicy(void* c_this, int64 policy);
	[LinkName("QComboBox_MinimumContentsLength")]
	public static extern int32 QComboBox_MinimumContentsLength(void* c_this);
	[LinkName("QComboBox_SetMinimumContentsLength")]
	public static extern void QComboBox_SetMinimumContentsLength(void* c_this, int32 characters);
	[LinkName("QComboBox_IconSize")]
	public static extern void QComboBox_IconSize(void* c_this);
	[LinkName("QComboBox_SetIconSize")]
	public static extern void QComboBox_SetIconSize(void* c_this, void* size);
	[LinkName("QComboBox_SetPlaceholderText")]
	public static extern void QComboBox_SetPlaceholderText(void* c_this, libqt_string placeholderText);
	[LinkName("QComboBox_PlaceholderText")]
	public static extern libqt_string QComboBox_PlaceholderText(void* c_this);
	[LinkName("QComboBox_IsEditable")]
	public static extern bool QComboBox_IsEditable(void* c_this);
	[LinkName("QComboBox_SetEditable")]
	public static extern void QComboBox_SetEditable(void* c_this, bool editable);
	[LinkName("QComboBox_SetLineEdit")]
	public static extern void QComboBox_SetLineEdit(void* c_this, void* edit);
	[LinkName("QComboBox_LineEdit")]
	public static extern void* QComboBox_LineEdit(void* c_this);
	[LinkName("QComboBox_SetValidator")]
	public static extern void QComboBox_SetValidator(void* c_this, void* v);
	[LinkName("QComboBox_Validator")]
	public static extern void* QComboBox_Validator(void* c_this);
	[LinkName("QComboBox_SetCompleter")]
	public static extern void QComboBox_SetCompleter(void* c_this, void* c);
	[LinkName("QComboBox_Completer")]
	public static extern void* QComboBox_Completer(void* c_this);
	[LinkName("QComboBox_ItemDelegate")]
	public static extern void* QComboBox_ItemDelegate(void* c_this);
	[LinkName("QComboBox_SetItemDelegate")]
	public static extern void QComboBox_SetItemDelegate(void* c_this, void* _delegate);
	[LinkName("QComboBox_Model")]
	public static extern void* QComboBox_Model(void* c_this);
	[LinkName("QComboBox_SetModel")]
	public static extern void QComboBox_SetModel(void* c_this, void* model);
	[LinkName("QComboBox_RootModelIndex")]
	public static extern void QComboBox_RootModelIndex(void* c_this);
	[LinkName("QComboBox_SetRootModelIndex")]
	public static extern void QComboBox_SetRootModelIndex(void* c_this, void* index);
	[LinkName("QComboBox_ModelColumn")]
	public static extern int32 QComboBox_ModelColumn(void* c_this);
	[LinkName("QComboBox_SetModelColumn")]
	public static extern void QComboBox_SetModelColumn(void* c_this, int32 visibleColumn);
	[LinkName("QComboBox_CurrentIndex")]
	public static extern int32 QComboBox_CurrentIndex(void* c_this);
	[LinkName("QComboBox_CurrentText")]
	public static extern libqt_string QComboBox_CurrentText(void* c_this);
	[LinkName("QComboBox_CurrentData")]
	public static extern void QComboBox_CurrentData(void* c_this);
	[LinkName("QComboBox_ItemText")]
	public static extern libqt_string QComboBox_ItemText(void* c_this, int32 index);
	[LinkName("QComboBox_ItemIcon")]
	public static extern void QComboBox_ItemIcon(void* c_this, int32 index);
	[LinkName("QComboBox_ItemData")]
	public static extern void QComboBox_ItemData(void* c_this, int32 index);
	[LinkName("QComboBox_AddItem")]
	public static extern void QComboBox_AddItem(void* c_this, libqt_string text);
	[LinkName("QComboBox_AddItem2")]
	public static extern void QComboBox_AddItem2(void* c_this, void* icon, libqt_string text);
	[LinkName("QComboBox_AddItems")]
	public static extern void QComboBox_AddItems(void* c_this, libqt_string[] texts);
	[LinkName("QComboBox_InsertItem")]
	public static extern void QComboBox_InsertItem(void* c_this, int32 index, libqt_string text);
	[LinkName("QComboBox_InsertItem2")]
	public static extern void QComboBox_InsertItem2(void* c_this, int32 index, void* icon, libqt_string text);
	[LinkName("QComboBox_InsertItems")]
	public static extern void QComboBox_InsertItems(void* c_this, int32 index, libqt_string[] texts);
	[LinkName("QComboBox_InsertSeparator")]
	public static extern void QComboBox_InsertSeparator(void* c_this, int32 index);
	[LinkName("QComboBox_RemoveItem")]
	public static extern void QComboBox_RemoveItem(void* c_this, int32 index);
	[LinkName("QComboBox_SetItemText")]
	public static extern void QComboBox_SetItemText(void* c_this, int32 index, libqt_string text);
	[LinkName("QComboBox_SetItemIcon")]
	public static extern void QComboBox_SetItemIcon(void* c_this, int32 index, void* icon);
	[LinkName("QComboBox_SetItemData")]
	public static extern void QComboBox_SetItemData(void* c_this, int32 index, void* value);
	[LinkName("QComboBox_View")]
	public static extern void* QComboBox_View(void* c_this);
	[LinkName("QComboBox_SetView")]
	public static extern void QComboBox_SetView(void* c_this, void* itemView);
	[LinkName("QComboBox_SizeHint")]
	public static extern void QComboBox_SizeHint(void* c_this);
	[LinkName("QComboBox_MinimumSizeHint")]
	public static extern void QComboBox_MinimumSizeHint(void* c_this);
	[LinkName("QComboBox_ShowPopup")]
	public static extern void QComboBox_ShowPopup(void* c_this);
	[LinkName("QComboBox_HidePopup")]
	public static extern void QComboBox_HidePopup(void* c_this);
	[LinkName("QComboBox_Event")]
	public static extern bool QComboBox_Event(void* c_this, void* event);
	[LinkName("QComboBox_InputMethodQuery")]
	public static extern void QComboBox_InputMethodQuery(void* c_this, int64 param1);
	[LinkName("QComboBox_InputMethodQuery2")]
	public static extern void QComboBox_InputMethodQuery2(void* c_this, int64 query, void* argument);
	[LinkName("QComboBox_Clear")]
	public static extern void QComboBox_Clear(void* c_this);
	[LinkName("QComboBox_ClearEditText")]
	public static extern void QComboBox_ClearEditText(void* c_this);
	[LinkName("QComboBox_SetEditText")]
	public static extern void QComboBox_SetEditText(void* c_this, libqt_string text);
	[LinkName("QComboBox_SetCurrentIndex")]
	public static extern void QComboBox_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QComboBox_SetCurrentText")]
	public static extern void QComboBox_SetCurrentText(void* c_this, libqt_string text);
	[LinkName("QComboBox_Connect_EditTextChanged")]
	public static extern void QComboBox_Connect_EditTextChanged(void* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_Activated")]
	public static extern void QComboBox_Connect_Activated(void* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_TextActivated")]
	public static extern void QComboBox_Connect_TextActivated(void* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_Highlighted")]
	public static extern void QComboBox_Connect_Highlighted(void* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_TextHighlighted")]
	public static extern void QComboBox_Connect_TextHighlighted(void* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_CurrentIndexChanged")]
	public static extern void QComboBox_Connect_CurrentIndexChanged(void* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_CurrentTextChanged")]
	public static extern void QComboBox_Connect_CurrentTextChanged(void* c_this, c_intptr slot);
	[LinkName("QComboBox_FocusInEvent")]
	public static extern void QComboBox_FocusInEvent(void* c_this, void* e);
	[LinkName("QComboBox_FocusOutEvent")]
	public static extern void QComboBox_FocusOutEvent(void* c_this, void* e);
	[LinkName("QComboBox_ChangeEvent")]
	public static extern void QComboBox_ChangeEvent(void* c_this, void* e);
	[LinkName("QComboBox_ResizeEvent")]
	public static extern void QComboBox_ResizeEvent(void* c_this, void* e);
	[LinkName("QComboBox_PaintEvent")]
	public static extern void QComboBox_PaintEvent(void* c_this, void* e);
	[LinkName("QComboBox_ShowEvent")]
	public static extern void QComboBox_ShowEvent(void* c_this, void* e);
	[LinkName("QComboBox_HideEvent")]
	public static extern void QComboBox_HideEvent(void* c_this, void* e);
	[LinkName("QComboBox_MousePressEvent")]
	public static extern void QComboBox_MousePressEvent(void* c_this, void* e);
	[LinkName("QComboBox_MouseReleaseEvent")]
	public static extern void QComboBox_MouseReleaseEvent(void* c_this, void* e);
	[LinkName("QComboBox_KeyPressEvent")]
	public static extern void QComboBox_KeyPressEvent(void* c_this, void* e);
	[LinkName("QComboBox_KeyReleaseEvent")]
	public static extern void QComboBox_KeyReleaseEvent(void* c_this, void* e);
	[LinkName("QComboBox_WheelEvent")]
	public static extern void QComboBox_WheelEvent(void* c_this, void* e);
	[LinkName("QComboBox_ContextMenuEvent")]
	public static extern void QComboBox_ContextMenuEvent(void* c_this, void* e);
	[LinkName("QComboBox_InputMethodEvent")]
	public static extern void QComboBox_InputMethodEvent(void* c_this, void* param1);
	[LinkName("QComboBox_InitStyleOption")]
	public static extern void QComboBox_InitStyleOption(void* c_this, void* option);
	[LinkName("QComboBox_Tr2")]
	public static extern libqt_string QComboBox_Tr2(char8[] s, char8[] c);
	[LinkName("QComboBox_Tr3")]
	public static extern libqt_string QComboBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QComboBox_FindText2")]
	public static extern int32 QComboBox_FindText2(void* c_this, libqt_string text, int64 flags);
	[LinkName("QComboBox_FindData2")]
	public static extern int32 QComboBox_FindData2(void* c_this, void* data, int32 role);
	[LinkName("QComboBox_FindData3")]
	public static extern int32 QComboBox_FindData3(void* c_this, void* data, int32 role, int64 flags);
	[LinkName("QComboBox_CurrentData1")]
	public static extern void QComboBox_CurrentData1(void* c_this, int32 role);
	[LinkName("QComboBox_ItemData2")]
	public static extern void QComboBox_ItemData2(void* c_this, int32 index, int32 role);
	[LinkName("QComboBox_AddItem22")]
	public static extern void QComboBox_AddItem22(void* c_this, libqt_string text, void* userData);
	[LinkName("QComboBox_AddItem3")]
	public static extern void QComboBox_AddItem3(void* c_this, void* icon, libqt_string text, void* userData);
	[LinkName("QComboBox_InsertItem3")]
	public static extern void QComboBox_InsertItem3(void* c_this, int32 index, libqt_string text, void* userData);
	[LinkName("QComboBox_InsertItem4")]
	public static extern void QComboBox_InsertItem4(void* c_this, int32 index, void* icon, libqt_string text, void* userData);
	[LinkName("QComboBox_SetItemData3")]
	public static extern void QComboBox_SetItemData3(void* c_this, int32 index, void* value, int32 role);
	/// Delete this object from C++ memory
	[LinkName("QComboBox_Delete")]
	public static extern void QComboBox_Delete(void* self);
}