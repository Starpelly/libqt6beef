using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLineEdit__ActionPosition
{
	LeadingPosition = 0,
	TrailingPosition = 1,
}
[AllowDuplicates]
public enum QLineEdit__EchoMode
{
	Normal = 0,
	NoEcho = 1,
	Password = 2,
	PasswordEchoOnEdit = 3,
}
public interface IQLineEdit
{
	void* NativePtr { get; }
}
public class QLineEdit : IQLineEdit, IQWidget
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget parent)
	{
		this.nativePtr = CQt.QLineEdit_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QLineEdit_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QLineEdit_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QLineEdit_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QLineEdit_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QLineEdit_Tr(s);
	}
	
	public libqt_string Text()
	{
		return CQt.QLineEdit_Text(this.nativePtr);
	}
	
	public libqt_string DisplayText()
	{
		return CQt.QLineEdit_DisplayText(this.nativePtr);
	}
	
	public libqt_string PlaceholderText()
	{
		return CQt.QLineEdit_PlaceholderText(this.nativePtr);
	}
	
	public void SetPlaceholderText(String placeholderText)
	{
		CQt.QLineEdit_SetPlaceholderText(this.nativePtr, libqt_string(placeholderText));
	}
	
	public int32 MaxLength()
	{
		return CQt.QLineEdit_MaxLength(this.nativePtr);
	}
	
	public void SetMaxLength(int32 maxLength)
	{
		CQt.QLineEdit_SetMaxLength(this.nativePtr, maxLength);
	}
	
	public void SetFrame(bool frame)
	{
		CQt.QLineEdit_SetFrame(this.nativePtr, frame);
	}
	
	public bool HasFrame()
	{
		return CQt.QLineEdit_HasFrame(this.nativePtr);
	}
	
	public void SetClearButtonEnabled(bool enable)
	{
		CQt.QLineEdit_SetClearButtonEnabled(this.nativePtr, enable);
	}
	
	public bool IsClearButtonEnabled()
	{
		return CQt.QLineEdit_IsClearButtonEnabled(this.nativePtr);
	}
	
	public int64 EchoMode()
	{
		return CQt.QLineEdit_EchoMode(this.nativePtr);
	}
	
	public void SetEchoMode(int64 echoMode)
	{
		CQt.QLineEdit_SetEchoMode(this.nativePtr, echoMode);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QLineEdit_IsReadOnly(this.nativePtr);
	}
	
	public void SetReadOnly(bool readOnly)
	{
		CQt.QLineEdit_SetReadOnly(this.nativePtr, readOnly);
	}
	
	public void SetValidator(IQValidator validator)
	{
		CQt.QLineEdit_SetValidator(this.nativePtr, (validator == null) ? null : (void*)validator.NativePtr);
	}
	
	public void* Validator()
	{
		return CQt.QLineEdit_Validator(this.nativePtr);
	}
	
	public void SetCompleter(IQCompleter completer)
	{
		CQt.QLineEdit_SetCompleter(this.nativePtr, (completer == null) ? null : (void*)completer.NativePtr);
	}
	
	public void* Completer()
	{
		return CQt.QLineEdit_Completer(this.nativePtr);
	}
	
	public virtual void SizeHint()
	{
		CQt.QLineEdit_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QLineEdit_MinimumSizeHint(this.nativePtr);
	}
	
	public int32 CursorPosition()
	{
		return CQt.QLineEdit_CursorPosition(this.nativePtr);
	}
	
	public void SetCursorPosition(int32 cursorPosition)
	{
		CQt.QLineEdit_SetCursorPosition(this.nativePtr, cursorPosition);
	}
	
	public int32 CursorPositionAt(IQPoint pos)
	{
		return CQt.QLineEdit_CursorPositionAt(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
	}
	
	public void SetAlignment(int64 flag)
	{
		CQt.QLineEdit_SetAlignment(this.nativePtr, flag);
	}
	
	public int64 Alignment()
	{
		return CQt.QLineEdit_Alignment(this.nativePtr);
	}
	
	public void CursorForward(bool mark)
	{
		CQt.QLineEdit_CursorForward(this.nativePtr, mark);
	}
	
	public void CursorBackward(bool mark)
	{
		CQt.QLineEdit_CursorBackward(this.nativePtr, mark);
	}
	
	public void CursorWordForward(bool mark)
	{
		CQt.QLineEdit_CursorWordForward(this.nativePtr, mark);
	}
	
	public void CursorWordBackward(bool mark)
	{
		CQt.QLineEdit_CursorWordBackward(this.nativePtr, mark);
	}
	
	public void Backspace()
	{
		CQt.QLineEdit_Backspace(this.nativePtr);
	}
	
	public void Del()
	{
		CQt.QLineEdit_Del(this.nativePtr);
	}
	
	public void Home(bool mark)
	{
		CQt.QLineEdit_Home(this.nativePtr, mark);
	}
	
	public void End(bool mark)
	{
		CQt.QLineEdit_End(this.nativePtr, mark);
	}
	
	public bool IsModified()
	{
		return CQt.QLineEdit_IsModified(this.nativePtr);
	}
	
	public void SetModified(bool modified)
	{
		CQt.QLineEdit_SetModified(this.nativePtr, modified);
	}
	
	public void SetSelection(int32 param1, int32 param2)
	{
		CQt.QLineEdit_SetSelection(this.nativePtr, param1, param2);
	}
	
	public bool HasSelectedText()
	{
		return CQt.QLineEdit_HasSelectedText(this.nativePtr);
	}
	
	public libqt_string SelectedText()
	{
		return CQt.QLineEdit_SelectedText(this.nativePtr);
	}
	
	public int32 SelectionStart()
	{
		return CQt.QLineEdit_SelectionStart(this.nativePtr);
	}
	
	public int32 SelectionEnd()
	{
		return CQt.QLineEdit_SelectionEnd(this.nativePtr);
	}
	
	public int32 SelectionLength()
	{
		return CQt.QLineEdit_SelectionLength(this.nativePtr);
	}
	
	public bool IsUndoAvailable()
	{
		return CQt.QLineEdit_IsUndoAvailable(this.nativePtr);
	}
	
	public bool IsRedoAvailable()
	{
		return CQt.QLineEdit_IsRedoAvailable(this.nativePtr);
	}
	
	public void SetDragEnabled(bool b)
	{
		CQt.QLineEdit_SetDragEnabled(this.nativePtr, b);
	}
	
	public bool DragEnabled()
	{
		return CQt.QLineEdit_DragEnabled(this.nativePtr);
	}
	
	public void SetCursorMoveStyle(int64 style)
	{
		CQt.QLineEdit_SetCursorMoveStyle(this.nativePtr, style);
	}
	
	public int64 CursorMoveStyle()
	{
		return CQt.QLineEdit_CursorMoveStyle(this.nativePtr);
	}
	
	public libqt_string InputMask()
	{
		return CQt.QLineEdit_InputMask(this.nativePtr);
	}
	
	public void SetInputMask(String inputMask)
	{
		CQt.QLineEdit_SetInputMask(this.nativePtr, libqt_string(inputMask));
	}
	
	public bool HasAcceptableInput()
	{
		return CQt.QLineEdit_HasAcceptableInput(this.nativePtr);
	}
	
	public void SetTextMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QLineEdit_SetTextMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetTextMarginsWithMargins(IQMargins margins)
	{
		CQt.QLineEdit_SetTextMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void TextMargins()
	{
		CQt.QLineEdit_TextMargins(this.nativePtr);
	}
	
	public void AddAction(IQAction action, int64 position)
	{
		CQt.QLineEdit_AddAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr, position);
	}
	
	public void* AddAction2(IQIcon icon, int64 position)
	{
		return CQt.QLineEdit_AddAction2(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, position);
	}
	
	public void SetText(String text)
	{
		CQt.QLineEdit_SetText(this.nativePtr, libqt_string(text));
	}
	
	public void Clear()
	{
		CQt.QLineEdit_Clear(this.nativePtr);
	}
	
	public void SelectAll()
	{
		CQt.QLineEdit_SelectAll(this.nativePtr);
	}
	
	public void Undo()
	{
		CQt.QLineEdit_Undo(this.nativePtr);
	}
	
	public void Redo()
	{
		CQt.QLineEdit_Redo(this.nativePtr);
	}
	
	public void Cut()
	{
		CQt.QLineEdit_Cut(this.nativePtr);
	}
	
	public void Copy()
	{
		CQt.QLineEdit_Copy(this.nativePtr);
	}
	
	public void Paste()
	{
		CQt.QLineEdit_Paste(this.nativePtr);
	}
	
	public void Deselect()
	{
		CQt.QLineEdit_Deselect(this.nativePtr);
	}
	
	public void Insert(String param1)
	{
		CQt.QLineEdit_Insert(this.nativePtr, libqt_string(param1));
	}
	
	public void* CreateStandardContextMenu()
	{
		return CQt.QLineEdit_CreateStandardContextMenu(this.nativePtr);
	}
	
	public virtual void MousePressEvent(IQMouseEvent param1)
	{
		CQt.QLineEdit_MousePressEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void MouseMoveEvent(IQMouseEvent param1)
	{
		CQt.QLineEdit_MouseMoveEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void MouseReleaseEvent(IQMouseEvent param1)
	{
		CQt.QLineEdit_MouseReleaseEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void MouseDoubleClickEvent(IQMouseEvent param1)
	{
		CQt.QLineEdit_MouseDoubleClickEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void KeyPressEvent(IQKeyEvent param1)
	{
		CQt.QLineEdit_KeyPressEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void KeyReleaseEvent(IQKeyEvent param1)
	{
		CQt.QLineEdit_KeyReleaseEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void FocusInEvent(IQFocusEvent param1)
	{
		CQt.QLineEdit_FocusInEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void FocusOutEvent(IQFocusEvent param1)
	{
		CQt.QLineEdit_FocusOutEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void PaintEvent(IQPaintEvent param1)
	{
		CQt.QLineEdit_PaintEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void DragEnterEvent(IQDragEnterEvent param1)
	{
		CQt.QLineEdit_DragEnterEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void DragMoveEvent(IQDragMoveEvent e)
	{
		CQt.QLineEdit_DragMoveEvent(this.nativePtr, (e == null) ? null : (void*)e.NativePtr);
	}
	
	public virtual void DragLeaveEvent(IQDragLeaveEvent e)
	{
		CQt.QLineEdit_DragLeaveEvent(this.nativePtr, (e == null) ? null : (void*)e.NativePtr);
	}
	
	public virtual void DropEvent(IQDropEvent param1)
	{
		CQt.QLineEdit_DropEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void ChangeEvent(IQEvent param1)
	{
		CQt.QLineEdit_ChangeEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void ContextMenuEvent(IQContextMenuEvent param1)
	{
		CQt.QLineEdit_ContextMenuEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void InputMethodEvent(IQInputMethodEvent param1)
	{
		CQt.QLineEdit_InputMethodEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void InitStyleOption(IQStyleOptionFrame option)
	{
		CQt.QLineEdit_InitStyleOption(this.nativePtr, (option == null) ? null : (void*)option.NativePtr);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		CQt.QLineEdit_InputMethodQuery(this.nativePtr, param1);
	}
	
	public void InputMethodQuery2(int64 property, IQVariant argument)
	{
		CQt.QLineEdit_InputMethodQuery2(this.nativePtr, property, (argument == default) ? default : (void)argument.NativePtr);
	}
	
	public virtual void TimerEvent(IQTimerEvent param1)
	{
		CQt.QLineEdit_TimerEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual bool Event(IQEvent param1)
	{
		return CQt.QLineEdit_Event(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void CursorRect()
	{
		CQt.QLineEdit_CursorRect(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QLineEdit_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QLineEdit_Tr3(s, c, n);
	}
	
	public void CursorForward2(bool mark, int32 steps)
	{
		CQt.QLineEdit_CursorForward2(this.nativePtr, mark, steps);
	}
	
	public void CursorBackward2(bool mark, int32 steps)
	{
		CQt.QLineEdit_CursorBackward2(this.nativePtr, mark, steps);
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
	
	public void SetStyle(IQStyle style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, (style == null) ? null : (void*)style.NativePtr);
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
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
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
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default) ? default : (void*)minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default) ? default : (void*)maximumSize.NativePtr);
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
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default) ? default : (void*)sizeIncrement.NativePtr);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default) ? default : (void*)baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default) ? default : (void*)fixedSize.NativePtr);
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
	
	public void MapToGlobal(IQPointF param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
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
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default) ? default : (void*)palette.NativePtr);
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
	
	public void SetFont(IQFont font)
	{
		CQt.QWidget_SetFont(this.nativePtr, (font == default) ? default : (void*)font.NativePtr);
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
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr);
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
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(IQPaintDevice target)
	{
		CQt.QWidget_Render(this.nativePtr, (target == null) ? null : (void*)target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == null) ? null : (void*)effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, libqt_string(windowTitle));
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, libqt_string(styleSheet));
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, libqt_string(windowIconText));
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(String windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, libqt_string(windowRole));
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(String filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, libqt_string(filePath));
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
	
	public void SetToolTip(String toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, libqt_string(toolTip));
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
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(String name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, libqt_string(description));
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
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr);
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
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == null) ? null : (void*)param1.NativePtr, (param2 == null) ? null : (void*)param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == null) ? null : (void*)focusProxy.NativePtr);
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
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
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
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
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
	
	public void UpdateWithQRect(IQRect param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
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
	
	public void StackUnder(IQWidget param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default) ? default : (void*)geometry.NativePtr);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, libqt_string(geometry));
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
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
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, (sizePolicy == default) ? default : (void)sizePolicy.NativePtr);
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
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
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
	
	public void SetLayout(IQLayout layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, (layout == null) ? null : (void*)layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default) ? default : (void*)param3.NativePtr);
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
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
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
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
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
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
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
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, (screen == null) ? null : (void*)screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == null) ? null : (void*)window.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default) ? default : (void*)rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default) ? default : (void*)key.NativePtr, context);
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
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr, flags);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
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
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
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
	
	public bool Inherits(char8* classname)
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
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
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
	[LinkName("QLineEdit_new")]
	public static extern void* QLineEdit_new(void* parent);
	[LinkName("QLineEdit_new2")]
	public static extern void* QLineEdit_new2();
	[LinkName("QLineEdit_new3")]
	public static extern void* QLineEdit_new3(libqt_string param1);
	[LinkName("QLineEdit_new4")]
	public static extern void* QLineEdit_new4(libqt_string param1, void* parent);
	[LinkName("QLineEdit_MetaObject")]
	public static extern void* QLineEdit_MetaObject(void* c_this);
	[LinkName("QLineEdit_Metacast")]
	public static extern void* QLineEdit_Metacast(void* c_this, char8* param1);
	[LinkName("QLineEdit_Metacall")]
	public static extern int32 QLineEdit_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QLineEdit_Tr")]
	public static extern libqt_string QLineEdit_Tr(char8* s);
	[LinkName("QLineEdit_Text")]
	public static extern libqt_string QLineEdit_Text(void* c_this);
	[LinkName("QLineEdit_DisplayText")]
	public static extern libqt_string QLineEdit_DisplayText(void* c_this);
	[LinkName("QLineEdit_PlaceholderText")]
	public static extern libqt_string QLineEdit_PlaceholderText(void* c_this);
	[LinkName("QLineEdit_SetPlaceholderText")]
	public static extern void QLineEdit_SetPlaceholderText(void* c_this, libqt_string placeholderText);
	[LinkName("QLineEdit_MaxLength")]
	public static extern int32 QLineEdit_MaxLength(void* c_this);
	[LinkName("QLineEdit_SetMaxLength")]
	public static extern void QLineEdit_SetMaxLength(void* c_this, int32 maxLength);
	[LinkName("QLineEdit_SetFrame")]
	public static extern void QLineEdit_SetFrame(void* c_this, bool frame);
	[LinkName("QLineEdit_HasFrame")]
	public static extern bool QLineEdit_HasFrame(void* c_this);
	[LinkName("QLineEdit_SetClearButtonEnabled")]
	public static extern void QLineEdit_SetClearButtonEnabled(void* c_this, bool enable);
	[LinkName("QLineEdit_IsClearButtonEnabled")]
	public static extern bool QLineEdit_IsClearButtonEnabled(void* c_this);
	[LinkName("QLineEdit_EchoMode")]
	public static extern int64 QLineEdit_EchoMode(void* c_this);
	[LinkName("QLineEdit_SetEchoMode")]
	public static extern void QLineEdit_SetEchoMode(void* c_this, int64 echoMode);
	[LinkName("QLineEdit_IsReadOnly")]
	public static extern bool QLineEdit_IsReadOnly(void* c_this);
	[LinkName("QLineEdit_SetReadOnly")]
	public static extern void QLineEdit_SetReadOnly(void* c_this, bool readOnly);
	[LinkName("QLineEdit_SetValidator")]
	public static extern void QLineEdit_SetValidator(void* c_this, void* validator);
	[LinkName("QLineEdit_Validator")]
	public static extern void* QLineEdit_Validator(void* c_this);
	[LinkName("QLineEdit_SetCompleter")]
	public static extern void QLineEdit_SetCompleter(void* c_this, void* completer);
	[LinkName("QLineEdit_Completer")]
	public static extern void* QLineEdit_Completer(void* c_this);
	[LinkName("QLineEdit_SizeHint")]
	public static extern void QLineEdit_SizeHint(void* c_this);
	[LinkName("QLineEdit_MinimumSizeHint")]
	public static extern void QLineEdit_MinimumSizeHint(void* c_this);
	[LinkName("QLineEdit_CursorPosition")]
	public static extern int32 QLineEdit_CursorPosition(void* c_this);
	[LinkName("QLineEdit_SetCursorPosition")]
	public static extern void QLineEdit_SetCursorPosition(void* c_this, int32 cursorPosition);
	[LinkName("QLineEdit_CursorPositionAt")]
	public static extern int32 QLineEdit_CursorPositionAt(void* c_this, void* pos);
	[LinkName("QLineEdit_SetAlignment")]
	public static extern void QLineEdit_SetAlignment(void* c_this, int64 flag);
	[LinkName("QLineEdit_Alignment")]
	public static extern int64 QLineEdit_Alignment(void* c_this);
	[LinkName("QLineEdit_CursorForward")]
	public static extern void QLineEdit_CursorForward(void* c_this, bool mark);
	[LinkName("QLineEdit_CursorBackward")]
	public static extern void QLineEdit_CursorBackward(void* c_this, bool mark);
	[LinkName("QLineEdit_CursorWordForward")]
	public static extern void QLineEdit_CursorWordForward(void* c_this, bool mark);
	[LinkName("QLineEdit_CursorWordBackward")]
	public static extern void QLineEdit_CursorWordBackward(void* c_this, bool mark);
	[LinkName("QLineEdit_Backspace")]
	public static extern void QLineEdit_Backspace(void* c_this);
	[LinkName("QLineEdit_Del")]
	public static extern void QLineEdit_Del(void* c_this);
	[LinkName("QLineEdit_Home")]
	public static extern void QLineEdit_Home(void* c_this, bool mark);
	[LinkName("QLineEdit_End")]
	public static extern void QLineEdit_End(void* c_this, bool mark);
	[LinkName("QLineEdit_IsModified")]
	public static extern bool QLineEdit_IsModified(void* c_this);
	[LinkName("QLineEdit_SetModified")]
	public static extern void QLineEdit_SetModified(void* c_this, bool modified);
	[LinkName("QLineEdit_SetSelection")]
	public static extern void QLineEdit_SetSelection(void* c_this, int32 param1, int32 param2);
	[LinkName("QLineEdit_HasSelectedText")]
	public static extern bool QLineEdit_HasSelectedText(void* c_this);
	[LinkName("QLineEdit_SelectedText")]
	public static extern libqt_string QLineEdit_SelectedText(void* c_this);
	[LinkName("QLineEdit_SelectionStart")]
	public static extern int32 QLineEdit_SelectionStart(void* c_this);
	[LinkName("QLineEdit_SelectionEnd")]
	public static extern int32 QLineEdit_SelectionEnd(void* c_this);
	[LinkName("QLineEdit_SelectionLength")]
	public static extern int32 QLineEdit_SelectionLength(void* c_this);
	[LinkName("QLineEdit_IsUndoAvailable")]
	public static extern bool QLineEdit_IsUndoAvailable(void* c_this);
	[LinkName("QLineEdit_IsRedoAvailable")]
	public static extern bool QLineEdit_IsRedoAvailable(void* c_this);
	[LinkName("QLineEdit_SetDragEnabled")]
	public static extern void QLineEdit_SetDragEnabled(void* c_this, bool b);
	[LinkName("QLineEdit_DragEnabled")]
	public static extern bool QLineEdit_DragEnabled(void* c_this);
	[LinkName("QLineEdit_SetCursorMoveStyle")]
	public static extern void QLineEdit_SetCursorMoveStyle(void* c_this, int64 style);
	[LinkName("QLineEdit_CursorMoveStyle")]
	public static extern int64 QLineEdit_CursorMoveStyle(void* c_this);
	[LinkName("QLineEdit_InputMask")]
	public static extern libqt_string QLineEdit_InputMask(void* c_this);
	[LinkName("QLineEdit_SetInputMask")]
	public static extern void QLineEdit_SetInputMask(void* c_this, libqt_string inputMask);
	[LinkName("QLineEdit_HasAcceptableInput")]
	public static extern bool QLineEdit_HasAcceptableInput(void* c_this);
	[LinkName("QLineEdit_SetTextMargins")]
	public static extern void QLineEdit_SetTextMargins(void* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QLineEdit_SetTextMarginsWithMargins")]
	public static extern void QLineEdit_SetTextMarginsWithMargins(void* c_this, void* margins);
	[LinkName("QLineEdit_TextMargins")]
	public static extern void QLineEdit_TextMargins(void* c_this);
	[LinkName("QLineEdit_AddAction")]
	public static extern void QLineEdit_AddAction(void* c_this, void* action, int64 position);
	[LinkName("QLineEdit_AddAction2")]
	public static extern void* QLineEdit_AddAction2(void* c_this, void* icon, int64 position);
	[LinkName("QLineEdit_SetText")]
	public static extern void QLineEdit_SetText(void* c_this, libqt_string text);
	[LinkName("QLineEdit_Clear")]
	public static extern void QLineEdit_Clear(void* c_this);
	[LinkName("QLineEdit_SelectAll")]
	public static extern void QLineEdit_SelectAll(void* c_this);
	[LinkName("QLineEdit_Undo")]
	public static extern void QLineEdit_Undo(void* c_this);
	[LinkName("QLineEdit_Redo")]
	public static extern void QLineEdit_Redo(void* c_this);
	[LinkName("QLineEdit_Cut")]
	public static extern void QLineEdit_Cut(void* c_this);
	[LinkName("QLineEdit_Copy")]
	public static extern void QLineEdit_Copy(void* c_this);
	[LinkName("QLineEdit_Paste")]
	public static extern void QLineEdit_Paste(void* c_this);
	[LinkName("QLineEdit_Deselect")]
	public static extern void QLineEdit_Deselect(void* c_this);
	[LinkName("QLineEdit_Insert")]
	public static extern void QLineEdit_Insert(void* c_this, libqt_string param1);
	[LinkName("QLineEdit_CreateStandardContextMenu")]
	public static extern void* QLineEdit_CreateStandardContextMenu(void* c_this);
	[LinkName("QLineEdit_Connect_TextChanged")]
	public static extern void QLineEdit_Connect_TextChanged(void* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_TextEdited")]
	public static extern void QLineEdit_Connect_TextEdited(void* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_CursorPositionChanged")]
	public static extern void QLineEdit_Connect_CursorPositionChanged(void* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_ReturnPressed")]
	public static extern void QLineEdit_Connect_ReturnPressed(void* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_EditingFinished")]
	public static extern void QLineEdit_Connect_EditingFinished(void* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_SelectionChanged")]
	public static extern void QLineEdit_Connect_SelectionChanged(void* c_this, c_intptr slot);
	[LinkName("QLineEdit_Connect_InputRejected")]
	public static extern void QLineEdit_Connect_InputRejected(void* c_this, c_intptr slot);
	[LinkName("QLineEdit_MousePressEvent")]
	public static extern void QLineEdit_MousePressEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_MouseMoveEvent")]
	public static extern void QLineEdit_MouseMoveEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_MouseReleaseEvent")]
	public static extern void QLineEdit_MouseReleaseEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_MouseDoubleClickEvent")]
	public static extern void QLineEdit_MouseDoubleClickEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_KeyPressEvent")]
	public static extern void QLineEdit_KeyPressEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_KeyReleaseEvent")]
	public static extern void QLineEdit_KeyReleaseEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_FocusInEvent")]
	public static extern void QLineEdit_FocusInEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_FocusOutEvent")]
	public static extern void QLineEdit_FocusOutEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_PaintEvent")]
	public static extern void QLineEdit_PaintEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_DragEnterEvent")]
	public static extern void QLineEdit_DragEnterEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_DragMoveEvent")]
	public static extern void QLineEdit_DragMoveEvent(void* c_this, void* e);
	[LinkName("QLineEdit_DragLeaveEvent")]
	public static extern void QLineEdit_DragLeaveEvent(void* c_this, void* e);
	[LinkName("QLineEdit_DropEvent")]
	public static extern void QLineEdit_DropEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_ChangeEvent")]
	public static extern void QLineEdit_ChangeEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_ContextMenuEvent")]
	public static extern void QLineEdit_ContextMenuEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_InputMethodEvent")]
	public static extern void QLineEdit_InputMethodEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_InitStyleOption")]
	public static extern void QLineEdit_InitStyleOption(void* c_this, void* option);
	[LinkName("QLineEdit_InputMethodQuery")]
	public static extern void QLineEdit_InputMethodQuery(void* c_this, int64 param1);
	[LinkName("QLineEdit_InputMethodQuery2")]
	public static extern void QLineEdit_InputMethodQuery2(void* c_this, int64 property, void argument);
	[LinkName("QLineEdit_TimerEvent")]
	public static extern void QLineEdit_TimerEvent(void* c_this, void* param1);
	[LinkName("QLineEdit_Event")]
	public static extern bool QLineEdit_Event(void* c_this, void* param1);
	[LinkName("QLineEdit_CursorRect")]
	public static extern void QLineEdit_CursorRect(void* c_this);
	[LinkName("QLineEdit_Tr2")]
	public static extern libqt_string QLineEdit_Tr2(char8* s, char8* c);
	[LinkName("QLineEdit_Tr3")]
	public static extern libqt_string QLineEdit_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QLineEdit_CursorForward2")]
	public static extern void QLineEdit_CursorForward2(void* c_this, bool mark, int32 steps);
	[LinkName("QLineEdit_CursorBackward2")]
	public static extern void QLineEdit_CursorBackward2(void* c_this, bool mark, int32 steps);
	/// Delete this object from C++ memory
	[LinkName("QLineEdit_Delete")]
	public static extern void QLineEdit_Delete(void* self);
}