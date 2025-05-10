using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPlainTextEdit__LineWrapMode
{
	NoWrap = 0,
	WidgetWidth = 1,
}
public class QPlainTextEdit
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QPlainTextEdit_new(parent);
	}
	
	public ~this()
	{
		CQt.QPlainTextEdit_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QPlainTextEdit_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QPlainTextEdit_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QPlainTextEdit_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QPlainTextEdit_Tr(s);
	}
	
	public void SetDocument(void* document)
	{
		CQt.QPlainTextEdit_SetDocument(this.nativePtr, document);
	}
	
	public void* Document()
	{
		return CQt.QPlainTextEdit_Document(this.nativePtr);
	}
	
	public void SetPlaceholderText(libqt_string placeholderText)
	{
		CQt.QPlainTextEdit_SetPlaceholderText(this.nativePtr, placeholderText);
	}
	
	public libqt_string PlaceholderText()
	{
		return CQt.QPlainTextEdit_PlaceholderText(this.nativePtr);
	}
	
	public void SetTextCursor(void* cursor)
	{
		CQt.QPlainTextEdit_SetTextCursor(this.nativePtr, cursor);
	}
	
	public void TextCursor()
	{
		CQt.QPlainTextEdit_TextCursor(this.nativePtr);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QPlainTextEdit_IsReadOnly(this.nativePtr);
	}
	
	public void SetReadOnly(bool ro)
	{
		CQt.QPlainTextEdit_SetReadOnly(this.nativePtr, ro);
	}
	
	public void SetTextInteractionFlags(int64 flags)
	{
		CQt.QPlainTextEdit_SetTextInteractionFlags(this.nativePtr, flags);
	}
	
	public int64 TextInteractionFlags()
	{
		return CQt.QPlainTextEdit_TextInteractionFlags(this.nativePtr);
	}
	
	public void MergeCurrentCharFormat(void* modifier)
	{
		CQt.QPlainTextEdit_MergeCurrentCharFormat(this.nativePtr, modifier);
	}
	
	public void SetCurrentCharFormat(void* format)
	{
		CQt.QPlainTextEdit_SetCurrentCharFormat(this.nativePtr, format);
	}
	
	public void CurrentCharFormat()
	{
		CQt.QPlainTextEdit_CurrentCharFormat(this.nativePtr);
	}
	
	public bool TabChangesFocus()
	{
		return CQt.QPlainTextEdit_TabChangesFocus(this.nativePtr);
	}
	
	public void SetTabChangesFocus(bool b)
	{
		CQt.QPlainTextEdit_SetTabChangesFocus(this.nativePtr, b);
	}
	
	public void SetDocumentTitle(libqt_string title)
	{
		CQt.QPlainTextEdit_SetDocumentTitle(this.nativePtr, title);
	}
	
	public libqt_string DocumentTitle()
	{
		return CQt.QPlainTextEdit_DocumentTitle(this.nativePtr);
	}
	
	public bool IsUndoRedoEnabled()
	{
		return CQt.QPlainTextEdit_IsUndoRedoEnabled(this.nativePtr);
	}
	
	public void SetUndoRedoEnabled(bool enable)
	{
		CQt.QPlainTextEdit_SetUndoRedoEnabled(this.nativePtr, enable);
	}
	
	public void SetMaximumBlockCount(int32 maximum)
	{
		CQt.QPlainTextEdit_SetMaximumBlockCount(this.nativePtr, maximum);
	}
	
	public int32 MaximumBlockCount()
	{
		return CQt.QPlainTextEdit_MaximumBlockCount(this.nativePtr);
	}
	
	public int64 LineWrapMode()
	{
		return CQt.QPlainTextEdit_LineWrapMode(this.nativePtr);
	}
	
	public void SetLineWrapMode(int64 mode)
	{
		CQt.QPlainTextEdit_SetLineWrapMode(this.nativePtr, mode);
	}
	
	public int64 WordWrapMode()
	{
		return CQt.QPlainTextEdit_WordWrapMode(this.nativePtr);
	}
	
	public void SetWordWrapMode(int64 policy)
	{
		CQt.QPlainTextEdit_SetWordWrapMode(this.nativePtr, policy);
	}
	
	public void SetBackgroundVisible(bool visible)
	{
		CQt.QPlainTextEdit_SetBackgroundVisible(this.nativePtr, visible);
	}
	
	public bool BackgroundVisible()
	{
		return CQt.QPlainTextEdit_BackgroundVisible(this.nativePtr);
	}
	
	public void SetCenterOnScroll(bool enabled)
	{
		CQt.QPlainTextEdit_SetCenterOnScroll(this.nativePtr, enabled);
	}
	
	public bool CenterOnScroll()
	{
		return CQt.QPlainTextEdit_CenterOnScroll(this.nativePtr);
	}
	
	public bool Find(libqt_string exp)
	{
		return CQt.QPlainTextEdit_Find(this.nativePtr, exp);
	}
	
	public bool FindWithExp(void* exp)
	{
		return CQt.QPlainTextEdit_FindWithExp(this.nativePtr, exp);
	}
	
	public libqt_string ToPlainText()
	{
		return CQt.QPlainTextEdit_ToPlainText(this.nativePtr);
	}
	
	public void EnsureCursorVisible()
	{
		CQt.QPlainTextEdit_EnsureCursorVisible(this.nativePtr);
	}
	
	public virtual void LoadResource(int32 typeVal, void* name)
	{
		CQt.QPlainTextEdit_LoadResource(this.nativePtr, typeVal, name);
	}
	
	public void* CreateStandardContextMenu()
	{
		return CQt.QPlainTextEdit_CreateStandardContextMenu(this.nativePtr);
	}
	
	public void* CreateStandardContextMenuWithPosition(void* position)
	{
		return CQt.QPlainTextEdit_CreateStandardContextMenuWithPosition(this.nativePtr, position);
	}
	
	public void CursorForPosition(void* pos)
	{
		CQt.QPlainTextEdit_CursorForPosition(this.nativePtr, pos);
	}
	
	public void CursorRect(void* cursor)
	{
		CQt.QPlainTextEdit_CursorRect(this.nativePtr, cursor);
	}
	
	public void CursorRect2()
	{
		CQt.QPlainTextEdit_CursorRect2(this.nativePtr);
	}
	
	public libqt_string AnchorAt(void* pos)
	{
		return CQt.QPlainTextEdit_AnchorAt(this.nativePtr, pos);
	}
	
	public bool OverwriteMode()
	{
		return CQt.QPlainTextEdit_OverwriteMode(this.nativePtr);
	}
	
	public void SetOverwriteMode(bool overwrite)
	{
		CQt.QPlainTextEdit_SetOverwriteMode(this.nativePtr, overwrite);
	}
	
	public double TabStopDistance()
	{
		return CQt.QPlainTextEdit_TabStopDistance(this.nativePtr);
	}
	
	public void SetTabStopDistance(double distance)
	{
		CQt.QPlainTextEdit_SetTabStopDistance(this.nativePtr, distance);
	}
	
	public int32 CursorWidth()
	{
		return CQt.QPlainTextEdit_CursorWidth(this.nativePtr);
	}
	
	public void SetCursorWidth(int32 width)
	{
		CQt.QPlainTextEdit_SetCursorWidth(this.nativePtr, width);
	}
	
	public void SetExtraSelections(QTextEdit__ExtraSelection[] selections)
	{
		CQt.QPlainTextEdit_SetExtraSelections(this.nativePtr, selections);
	}
	
	public QTextEdit__ExtraSelection[] ExtraSelections()
	{
		return CQt.QPlainTextEdit_ExtraSelections(this.nativePtr);
	}
	
	public void MoveCursor(int64 operation)
	{
		CQt.QPlainTextEdit_MoveCursor(this.nativePtr, operation);
	}
	
	public bool CanPaste()
	{
		return CQt.QPlainTextEdit_CanPaste(this.nativePtr);
	}
	
	public void Print(void* printer)
	{
		CQt.QPlainTextEdit_Print(this.nativePtr, printer);
	}
	
	public int32 BlockCount()
	{
		return CQt.QPlainTextEdit_BlockCount(this.nativePtr);
	}
	
	public virtual void InputMethodQuery(int64 property)
	{
		CQt.QPlainTextEdit_InputMethodQuery(this.nativePtr, property);
	}
	
	public void InputMethodQuery2(int64 query, void argument)
	{
		CQt.QPlainTextEdit_InputMethodQuery2(this.nativePtr, query, argument);
	}
	
	public void SetPlainText(libqt_string text)
	{
		CQt.QPlainTextEdit_SetPlainText(this.nativePtr, text);
	}
	
	public void Cut()
	{
		CQt.QPlainTextEdit_Cut(this.nativePtr);
	}
	
	public void Copy()
	{
		CQt.QPlainTextEdit_Copy(this.nativePtr);
	}
	
	public void Paste()
	{
		CQt.QPlainTextEdit_Paste(this.nativePtr);
	}
	
	public void Undo()
	{
		CQt.QPlainTextEdit_Undo(this.nativePtr);
	}
	
	public void Redo()
	{
		CQt.QPlainTextEdit_Redo(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QPlainTextEdit_Clear(this.nativePtr);
	}
	
	public void SelectAll()
	{
		CQt.QPlainTextEdit_SelectAll(this.nativePtr);
	}
	
	public void InsertPlainText(libqt_string text)
	{
		CQt.QPlainTextEdit_InsertPlainText(this.nativePtr, text);
	}
	
	public void AppendPlainText(libqt_string text)
	{
		CQt.QPlainTextEdit_AppendPlainText(this.nativePtr, text);
	}
	
	public void AppendHtml(libqt_string html)
	{
		CQt.QPlainTextEdit_AppendHtml(this.nativePtr, html);
	}
	
	public void CenterCursor()
	{
		CQt.QPlainTextEdit_CenterCursor(this.nativePtr);
	}
	
	public void ZoomIn()
	{
		CQt.QPlainTextEdit_ZoomIn(this.nativePtr);
	}
	
	public void ZoomOut()
	{
		CQt.QPlainTextEdit_ZoomOut(this.nativePtr);
	}
	
	public virtual bool Event(void* e)
	{
		return CQt.QPlainTextEdit_Event(this.nativePtr, e);
	}
	
	public virtual void TimerEvent(void* e)
	{
		CQt.QPlainTextEdit_TimerEvent(this.nativePtr, e);
	}
	
	public virtual void KeyPressEvent(void* e)
	{
		CQt.QPlainTextEdit_KeyPressEvent(this.nativePtr, e);
	}
	
	public virtual void KeyReleaseEvent(void* e)
	{
		CQt.QPlainTextEdit_KeyReleaseEvent(this.nativePtr, e);
	}
	
	public virtual void ResizeEvent(void* e)
	{
		CQt.QPlainTextEdit_ResizeEvent(this.nativePtr, e);
	}
	
	public virtual void PaintEvent(void* e)
	{
		CQt.QPlainTextEdit_PaintEvent(this.nativePtr, e);
	}
	
	public virtual void MousePressEvent(void* e)
	{
		CQt.QPlainTextEdit_MousePressEvent(this.nativePtr, e);
	}
	
	public virtual void MouseMoveEvent(void* e)
	{
		CQt.QPlainTextEdit_MouseMoveEvent(this.nativePtr, e);
	}
	
	public virtual void MouseReleaseEvent(void* e)
	{
		CQt.QPlainTextEdit_MouseReleaseEvent(this.nativePtr, e);
	}
	
	public virtual void MouseDoubleClickEvent(void* e)
	{
		CQt.QPlainTextEdit_MouseDoubleClickEvent(this.nativePtr, e);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QPlainTextEdit_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public virtual void ContextMenuEvent(void* e)
	{
		CQt.QPlainTextEdit_ContextMenuEvent(this.nativePtr, e);
	}
	
	public virtual void DragEnterEvent(void* e)
	{
		CQt.QPlainTextEdit_DragEnterEvent(this.nativePtr, e);
	}
	
	public virtual void DragLeaveEvent(void* e)
	{
		CQt.QPlainTextEdit_DragLeaveEvent(this.nativePtr, e);
	}
	
	public virtual void DragMoveEvent(void* e)
	{
		CQt.QPlainTextEdit_DragMoveEvent(this.nativePtr, e);
	}
	
	public virtual void DropEvent(void* e)
	{
		CQt.QPlainTextEdit_DropEvent(this.nativePtr, e);
	}
	
	public virtual void FocusInEvent(void* e)
	{
		CQt.QPlainTextEdit_FocusInEvent(this.nativePtr, e);
	}
	
	public virtual void FocusOutEvent(void* e)
	{
		CQt.QPlainTextEdit_FocusOutEvent(this.nativePtr, e);
	}
	
	public virtual void ShowEvent(void* param1)
	{
		CQt.QPlainTextEdit_ShowEvent(this.nativePtr, param1);
	}
	
	public virtual void ChangeEvent(void* e)
	{
		CQt.QPlainTextEdit_ChangeEvent(this.nativePtr, e);
	}
	
	public virtual void WheelEvent(void* e)
	{
		CQt.QPlainTextEdit_WheelEvent(this.nativePtr, e);
	}
	
	public virtual void* CreateMimeDataFromSelection()
	{
		return CQt.QPlainTextEdit_CreateMimeDataFromSelection(this.nativePtr);
	}
	
	public virtual bool CanInsertFromMimeData(void* source)
	{
		return CQt.QPlainTextEdit_CanInsertFromMimeData(this.nativePtr, source);
	}
	
	public virtual void InsertFromMimeData(void* source)
	{
		CQt.QPlainTextEdit_InsertFromMimeData(this.nativePtr, source);
	}
	
	public virtual void InputMethodEvent(void* param1)
	{
		CQt.QPlainTextEdit_InputMethodEvent(this.nativePtr, param1);
	}
	
	public virtual void ScrollContentsBy(int32 dx, int32 dy)
	{
		CQt.QPlainTextEdit_ScrollContentsBy(this.nativePtr, dx, dy);
	}
	
	public virtual void DoSetTextCursor(void* cursor)
	{
		CQt.QPlainTextEdit_DoSetTextCursor(this.nativePtr, cursor);
	}
	
	public void FirstVisibleBlock()
	{
		CQt.QPlainTextEdit_FirstVisibleBlock(this.nativePtr);
	}
	
	public void ContentOffset()
	{
		CQt.QPlainTextEdit_ContentOffset(this.nativePtr);
	}
	
	public void BlockBoundingRect(void* block)
	{
		CQt.QPlainTextEdit_BlockBoundingRect(this.nativePtr, block);
	}
	
	public void BlockBoundingGeometry(void* block)
	{
		CQt.QPlainTextEdit_BlockBoundingGeometry(this.nativePtr, block);
	}
	
	public QAbstractTextDocumentLayout__PaintContext GetPaintContext()
	{
		return CQt.QPlainTextEdit_GetPaintContext(this.nativePtr);
	}
	
	public void ZoomInF(float range)
	{
		CQt.QPlainTextEdit_ZoomInF(this.nativePtr, range);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QPlainTextEdit_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QPlainTextEdit_Tr3(s, c, n);
	}
	
	public bool Find2(libqt_string exp, int64 options)
	{
		return CQt.QPlainTextEdit_Find2(this.nativePtr, exp, options);
	}
	
	public bool Find22(void* exp, int64 options)
	{
		return CQt.QPlainTextEdit_Find22(this.nativePtr, exp, options);
	}
	
	public void MoveCursor2(int64 operation, int64 mode)
	{
		CQt.QPlainTextEdit_MoveCursor2(this.nativePtr, operation, mode);
	}
	
	public void ZoomIn1(int32 range)
	{
		CQt.QPlainTextEdit_ZoomIn1(this.nativePtr, range);
	}
	
	public void ZoomOut1(int32 range)
	{
		CQt.QPlainTextEdit_ZoomOut1(this.nativePtr, range);
	}
	
	public int64 VerticalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetVerticalScrollBarPolicy(int64 verticalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBarPolicy(this.nativePtr, verticalScrollBarPolicy);
	}
	
	public void* VerticalScrollBar()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBar(this.nativePtr);
	}
	
	public void SetVerticalScrollBar(void* scrollbar)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBar(this.nativePtr, scrollbar);
	}
	
	public int64 HorizontalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetHorizontalScrollBarPolicy(int64 horizontalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBarPolicy(this.nativePtr, horizontalScrollBarPolicy);
	}
	
	public void* HorizontalScrollBar()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBar(this.nativePtr);
	}
	
	public void SetHorizontalScrollBar(void* scrollbar)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBar(this.nativePtr, scrollbar);
	}
	
	public void* CornerWidget()
	{
		return CQt.QAbstractScrollArea_CornerWidget(this.nativePtr);
	}
	
	public void SetCornerWidget(void* widget)
	{
		CQt.QAbstractScrollArea_SetCornerWidget(this.nativePtr, widget);
	}
	
	public void AddScrollBarWidget(void* widget, int64 alignment)
	{
		CQt.QAbstractScrollArea_AddScrollBarWidget(this.nativePtr, widget, alignment);
	}
	
	public void*[] ScrollBarWidgets(int64 alignment)
	{
		return CQt.QAbstractScrollArea_ScrollBarWidgets(this.nativePtr, alignment);
	}
	
	public void* Viewport()
	{
		return CQt.QAbstractScrollArea_Viewport(this.nativePtr);
	}
	
	public void SetViewport(void* widget)
	{
		CQt.QAbstractScrollArea_SetViewport(this.nativePtr, widget);
	}
	
	public void MaximumViewportSize()
	{
		CQt.QAbstractScrollArea_MaximumViewportSize(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QAbstractScrollArea_MinimumSizeHint(this.nativePtr);
	}
	
	public virtual void SizeHint()
	{
		CQt.QAbstractScrollArea_SizeHint(this.nativePtr);
	}
	
	public virtual void SetupViewport(void* viewport)
	{
		CQt.QAbstractScrollArea_SetupViewport(this.nativePtr, viewport);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return CQt.QAbstractScrollArea_SizeAdjustPolicy(this.nativePtr);
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		CQt.QAbstractScrollArea_SetSizeAdjustPolicy(this.nativePtr, policy);
	}
	
	public int32 FrameStyle()
	{
		return CQt.QFrame_FrameStyle(this.nativePtr);
	}
	
	public void SetFrameStyle(int32 frameStyle)
	{
		CQt.QFrame_SetFrameStyle(this.nativePtr, frameStyle);
	}
	
	public int32 FrameWidth()
	{
		return CQt.QFrame_FrameWidth(this.nativePtr);
	}
	
	public int64 FrameShape()
	{
		return CQt.QFrame_FrameShape(this.nativePtr);
	}
	
	public void SetFrameShape(int64 frameShape)
	{
		CQt.QFrame_SetFrameShape(this.nativePtr, frameShape);
	}
	
	public int64 FrameShadow()
	{
		return CQt.QFrame_FrameShadow(this.nativePtr);
	}
	
	public void SetFrameShadow(int64 frameShadow)
	{
		CQt.QFrame_SetFrameShadow(this.nativePtr, frameShadow);
	}
	
	public int32 LineWidth()
	{
		return CQt.QFrame_LineWidth(this.nativePtr);
	}
	
	public void SetLineWidth(int32 lineWidth)
	{
		CQt.QFrame_SetLineWidth(this.nativePtr, lineWidth);
	}
	
	public int32 MidLineWidth()
	{
		return CQt.QFrame_MidLineWidth(this.nativePtr);
	}
	
	public void SetMidLineWidth(int32 midLineWidth)
	{
		CQt.QFrame_SetMidLineWidth(this.nativePtr, midLineWidth);
	}
	
	public void FrameRect()
	{
		CQt.QFrame_FrameRect(this.nativePtr);
	}
	
	public void SetFrameRect(void* frameRect)
	{
		CQt.QFrame_SetFrameRect(this.nativePtr, frameRect);
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
	[LinkName("QPlainTextEdit_new")]
	public static extern void* QPlainTextEdit_new(void* parent);
	[LinkName("QPlainTextEdit_new2")]
	public static extern void* QPlainTextEdit_new2();
	[LinkName("QPlainTextEdit_new3")]
	public static extern void* QPlainTextEdit_new3(libqt_string text);
	[LinkName("QPlainTextEdit_new4")]
	public static extern void* QPlainTextEdit_new4(libqt_string text, void* parent);
	[LinkName("QPlainTextEdit_MetaObject")]
	public static extern void* QPlainTextEdit_MetaObject(void* c_this);
	[LinkName("QPlainTextEdit_Metacast")]
	public static extern void* QPlainTextEdit_Metacast(void* c_this, char8[] param1);
	[LinkName("QPlainTextEdit_Metacall")]
	public static extern int32 QPlainTextEdit_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPlainTextEdit_Tr")]
	public static extern libqt_string QPlainTextEdit_Tr(char8[] s);
	[LinkName("QPlainTextEdit_SetDocument")]
	public static extern void QPlainTextEdit_SetDocument(void* c_this, void* document);
	[LinkName("QPlainTextEdit_Document")]
	public static extern void* QPlainTextEdit_Document(void* c_this);
	[LinkName("QPlainTextEdit_SetPlaceholderText")]
	public static extern void QPlainTextEdit_SetPlaceholderText(void* c_this, libqt_string placeholderText);
	[LinkName("QPlainTextEdit_PlaceholderText")]
	public static extern libqt_string QPlainTextEdit_PlaceholderText(void* c_this);
	[LinkName("QPlainTextEdit_SetTextCursor")]
	public static extern void QPlainTextEdit_SetTextCursor(void* c_this, void* cursor);
	[LinkName("QPlainTextEdit_TextCursor")]
	public static extern void QPlainTextEdit_TextCursor(void* c_this);
	[LinkName("QPlainTextEdit_IsReadOnly")]
	public static extern bool QPlainTextEdit_IsReadOnly(void* c_this);
	[LinkName("QPlainTextEdit_SetReadOnly")]
	public static extern void QPlainTextEdit_SetReadOnly(void* c_this, bool ro);
	[LinkName("QPlainTextEdit_SetTextInteractionFlags")]
	public static extern void QPlainTextEdit_SetTextInteractionFlags(void* c_this, int64 flags);
	[LinkName("QPlainTextEdit_TextInteractionFlags")]
	public static extern int64 QPlainTextEdit_TextInteractionFlags(void* c_this);
	[LinkName("QPlainTextEdit_MergeCurrentCharFormat")]
	public static extern void QPlainTextEdit_MergeCurrentCharFormat(void* c_this, void* modifier);
	[LinkName("QPlainTextEdit_SetCurrentCharFormat")]
	public static extern void QPlainTextEdit_SetCurrentCharFormat(void* c_this, void* format);
	[LinkName("QPlainTextEdit_CurrentCharFormat")]
	public static extern void QPlainTextEdit_CurrentCharFormat(void* c_this);
	[LinkName("QPlainTextEdit_TabChangesFocus")]
	public static extern bool QPlainTextEdit_TabChangesFocus(void* c_this);
	[LinkName("QPlainTextEdit_SetTabChangesFocus")]
	public static extern void QPlainTextEdit_SetTabChangesFocus(void* c_this, bool b);
	[LinkName("QPlainTextEdit_SetDocumentTitle")]
	public static extern void QPlainTextEdit_SetDocumentTitle(void* c_this, libqt_string title);
	[LinkName("QPlainTextEdit_DocumentTitle")]
	public static extern libqt_string QPlainTextEdit_DocumentTitle(void* c_this);
	[LinkName("QPlainTextEdit_IsUndoRedoEnabled")]
	public static extern bool QPlainTextEdit_IsUndoRedoEnabled(void* c_this);
	[LinkName("QPlainTextEdit_SetUndoRedoEnabled")]
	public static extern void QPlainTextEdit_SetUndoRedoEnabled(void* c_this, bool enable);
	[LinkName("QPlainTextEdit_SetMaximumBlockCount")]
	public static extern void QPlainTextEdit_SetMaximumBlockCount(void* c_this, int32 maximum);
	[LinkName("QPlainTextEdit_MaximumBlockCount")]
	public static extern int32 QPlainTextEdit_MaximumBlockCount(void* c_this);
	[LinkName("QPlainTextEdit_LineWrapMode")]
	public static extern int64 QPlainTextEdit_LineWrapMode(void* c_this);
	[LinkName("QPlainTextEdit_SetLineWrapMode")]
	public static extern void QPlainTextEdit_SetLineWrapMode(void* c_this, int64 mode);
	[LinkName("QPlainTextEdit_WordWrapMode")]
	public static extern int64 QPlainTextEdit_WordWrapMode(void* c_this);
	[LinkName("QPlainTextEdit_SetWordWrapMode")]
	public static extern void QPlainTextEdit_SetWordWrapMode(void* c_this, int64 policy);
	[LinkName("QPlainTextEdit_SetBackgroundVisible")]
	public static extern void QPlainTextEdit_SetBackgroundVisible(void* c_this, bool visible);
	[LinkName("QPlainTextEdit_BackgroundVisible")]
	public static extern bool QPlainTextEdit_BackgroundVisible(void* c_this);
	[LinkName("QPlainTextEdit_SetCenterOnScroll")]
	public static extern void QPlainTextEdit_SetCenterOnScroll(void* c_this, bool enabled);
	[LinkName("QPlainTextEdit_CenterOnScroll")]
	public static extern bool QPlainTextEdit_CenterOnScroll(void* c_this);
	[LinkName("QPlainTextEdit_Find")]
	public static extern bool QPlainTextEdit_Find(void* c_this, libqt_string exp);
	[LinkName("QPlainTextEdit_FindWithExp")]
	public static extern bool QPlainTextEdit_FindWithExp(void* c_this, void* exp);
	[LinkName("QPlainTextEdit_ToPlainText")]
	public static extern libqt_string QPlainTextEdit_ToPlainText(void* c_this);
	[LinkName("QPlainTextEdit_EnsureCursorVisible")]
	public static extern void QPlainTextEdit_EnsureCursorVisible(void* c_this);
	[LinkName("QPlainTextEdit_LoadResource")]
	public static extern void QPlainTextEdit_LoadResource(void* c_this, int32 typeVal, void* name);
	[LinkName("QPlainTextEdit_CreateStandardContextMenu")]
	public static extern void* QPlainTextEdit_CreateStandardContextMenu(void* c_this);
	[LinkName("QPlainTextEdit_CreateStandardContextMenuWithPosition")]
	public static extern void* QPlainTextEdit_CreateStandardContextMenuWithPosition(void* c_this, void* position);
	[LinkName("QPlainTextEdit_CursorForPosition")]
	public static extern void QPlainTextEdit_CursorForPosition(void* c_this, void* pos);
	[LinkName("QPlainTextEdit_CursorRect")]
	public static extern void QPlainTextEdit_CursorRect(void* c_this, void* cursor);
	[LinkName("QPlainTextEdit_CursorRect2")]
	public static extern void QPlainTextEdit_CursorRect2(void* c_this);
	[LinkName("QPlainTextEdit_AnchorAt")]
	public static extern libqt_string QPlainTextEdit_AnchorAt(void* c_this, void* pos);
	[LinkName("QPlainTextEdit_OverwriteMode")]
	public static extern bool QPlainTextEdit_OverwriteMode(void* c_this);
	[LinkName("QPlainTextEdit_SetOverwriteMode")]
	public static extern void QPlainTextEdit_SetOverwriteMode(void* c_this, bool overwrite);
	[LinkName("QPlainTextEdit_TabStopDistance")]
	public static extern double QPlainTextEdit_TabStopDistance(void* c_this);
	[LinkName("QPlainTextEdit_SetTabStopDistance")]
	public static extern void QPlainTextEdit_SetTabStopDistance(void* c_this, double distance);
	[LinkName("QPlainTextEdit_CursorWidth")]
	public static extern int32 QPlainTextEdit_CursorWidth(void* c_this);
	[LinkName("QPlainTextEdit_SetCursorWidth")]
	public static extern void QPlainTextEdit_SetCursorWidth(void* c_this, int32 width);
	[LinkName("QPlainTextEdit_SetExtraSelections")]
	public static extern void QPlainTextEdit_SetExtraSelections(void* c_this, QTextEdit__ExtraSelection[] selections);
	[LinkName("QPlainTextEdit_ExtraSelections")]
	public static extern QTextEdit__ExtraSelection[] QPlainTextEdit_ExtraSelections(void* c_this);
	[LinkName("QPlainTextEdit_MoveCursor")]
	public static extern void QPlainTextEdit_MoveCursor(void* c_this, int64 operation);
	[LinkName("QPlainTextEdit_CanPaste")]
	public static extern bool QPlainTextEdit_CanPaste(void* c_this);
	[LinkName("QPlainTextEdit_Print")]
	public static extern void QPlainTextEdit_Print(void* c_this, void* printer);
	[LinkName("QPlainTextEdit_BlockCount")]
	public static extern int32 QPlainTextEdit_BlockCount(void* c_this);
	[LinkName("QPlainTextEdit_InputMethodQuery")]
	public static extern void QPlainTextEdit_InputMethodQuery(void* c_this, int64 property);
	[LinkName("QPlainTextEdit_InputMethodQuery2")]
	public static extern void QPlainTextEdit_InputMethodQuery2(void* c_this, int64 query, void argument);
	[LinkName("QPlainTextEdit_SetPlainText")]
	public static extern void QPlainTextEdit_SetPlainText(void* c_this, libqt_string text);
	[LinkName("QPlainTextEdit_Cut")]
	public static extern void QPlainTextEdit_Cut(void* c_this);
	[LinkName("QPlainTextEdit_Copy")]
	public static extern void QPlainTextEdit_Copy(void* c_this);
	[LinkName("QPlainTextEdit_Paste")]
	public static extern void QPlainTextEdit_Paste(void* c_this);
	[LinkName("QPlainTextEdit_Undo")]
	public static extern void QPlainTextEdit_Undo(void* c_this);
	[LinkName("QPlainTextEdit_Redo")]
	public static extern void QPlainTextEdit_Redo(void* c_this);
	[LinkName("QPlainTextEdit_Clear")]
	public static extern void QPlainTextEdit_Clear(void* c_this);
	[LinkName("QPlainTextEdit_SelectAll")]
	public static extern void QPlainTextEdit_SelectAll(void* c_this);
	[LinkName("QPlainTextEdit_InsertPlainText")]
	public static extern void QPlainTextEdit_InsertPlainText(void* c_this, libqt_string text);
	[LinkName("QPlainTextEdit_AppendPlainText")]
	public static extern void QPlainTextEdit_AppendPlainText(void* c_this, libqt_string text);
	[LinkName("QPlainTextEdit_AppendHtml")]
	public static extern void QPlainTextEdit_AppendHtml(void* c_this, libqt_string html);
	[LinkName("QPlainTextEdit_CenterCursor")]
	public static extern void QPlainTextEdit_CenterCursor(void* c_this);
	[LinkName("QPlainTextEdit_ZoomIn")]
	public static extern void QPlainTextEdit_ZoomIn(void* c_this);
	[LinkName("QPlainTextEdit_ZoomOut")]
	public static extern void QPlainTextEdit_ZoomOut(void* c_this);
	[LinkName("QPlainTextEdit_Connect_TextChanged")]
	public static extern void QPlainTextEdit_Connect_TextChanged(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_UndoAvailable")]
	public static extern void QPlainTextEdit_Connect_UndoAvailable(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_RedoAvailable")]
	public static extern void QPlainTextEdit_Connect_RedoAvailable(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_CopyAvailable")]
	public static extern void QPlainTextEdit_Connect_CopyAvailable(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_SelectionChanged")]
	public static extern void QPlainTextEdit_Connect_SelectionChanged(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_CursorPositionChanged")]
	public static extern void QPlainTextEdit_Connect_CursorPositionChanged(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_UpdateRequest")]
	public static extern void QPlainTextEdit_Connect_UpdateRequest(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_BlockCountChanged")]
	public static extern void QPlainTextEdit_Connect_BlockCountChanged(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Connect_ModificationChanged")]
	public static extern void QPlainTextEdit_Connect_ModificationChanged(void* c_this, c_intptr slot);
	[LinkName("QPlainTextEdit_Event")]
	public static extern bool QPlainTextEdit_Event(void* c_this, void* e);
	[LinkName("QPlainTextEdit_TimerEvent")]
	public static extern void QPlainTextEdit_TimerEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_KeyPressEvent")]
	public static extern void QPlainTextEdit_KeyPressEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_KeyReleaseEvent")]
	public static extern void QPlainTextEdit_KeyReleaseEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_ResizeEvent")]
	public static extern void QPlainTextEdit_ResizeEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_PaintEvent")]
	public static extern void QPlainTextEdit_PaintEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_MousePressEvent")]
	public static extern void QPlainTextEdit_MousePressEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_MouseMoveEvent")]
	public static extern void QPlainTextEdit_MouseMoveEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_MouseReleaseEvent")]
	public static extern void QPlainTextEdit_MouseReleaseEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_MouseDoubleClickEvent")]
	public static extern void QPlainTextEdit_MouseDoubleClickEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_FocusNextPrevChild")]
	public static extern bool QPlainTextEdit_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QPlainTextEdit_ContextMenuEvent")]
	public static extern void QPlainTextEdit_ContextMenuEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_DragEnterEvent")]
	public static extern void QPlainTextEdit_DragEnterEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_DragLeaveEvent")]
	public static extern void QPlainTextEdit_DragLeaveEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_DragMoveEvent")]
	public static extern void QPlainTextEdit_DragMoveEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_DropEvent")]
	public static extern void QPlainTextEdit_DropEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_FocusInEvent")]
	public static extern void QPlainTextEdit_FocusInEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_FocusOutEvent")]
	public static extern void QPlainTextEdit_FocusOutEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_ShowEvent")]
	public static extern void QPlainTextEdit_ShowEvent(void* c_this, void* param1);
	[LinkName("QPlainTextEdit_ChangeEvent")]
	public static extern void QPlainTextEdit_ChangeEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_WheelEvent")]
	public static extern void QPlainTextEdit_WheelEvent(void* c_this, void* e);
	[LinkName("QPlainTextEdit_CreateMimeDataFromSelection")]
	public static extern void* QPlainTextEdit_CreateMimeDataFromSelection(void* c_this);
	[LinkName("QPlainTextEdit_CanInsertFromMimeData")]
	public static extern bool QPlainTextEdit_CanInsertFromMimeData(void* c_this, void* source);
	[LinkName("QPlainTextEdit_InsertFromMimeData")]
	public static extern void QPlainTextEdit_InsertFromMimeData(void* c_this, void* source);
	[LinkName("QPlainTextEdit_InputMethodEvent")]
	public static extern void QPlainTextEdit_InputMethodEvent(void* c_this, void* param1);
	[LinkName("QPlainTextEdit_ScrollContentsBy")]
	public static extern void QPlainTextEdit_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QPlainTextEdit_DoSetTextCursor")]
	public static extern void QPlainTextEdit_DoSetTextCursor(void* c_this, void* cursor);
	[LinkName("QPlainTextEdit_FirstVisibleBlock")]
	public static extern void QPlainTextEdit_FirstVisibleBlock(void* c_this);
	[LinkName("QPlainTextEdit_ContentOffset")]
	public static extern void QPlainTextEdit_ContentOffset(void* c_this);
	[LinkName("QPlainTextEdit_BlockBoundingRect")]
	public static extern void QPlainTextEdit_BlockBoundingRect(void* c_this, void* block);
	[LinkName("QPlainTextEdit_BlockBoundingGeometry")]
	public static extern void QPlainTextEdit_BlockBoundingGeometry(void* c_this, void* block);
	[LinkName("QPlainTextEdit_GetPaintContext")]
	public static extern QAbstractTextDocumentLayout__PaintContext QPlainTextEdit_GetPaintContext(void* c_this);
	[LinkName("QPlainTextEdit_ZoomInF")]
	public static extern void QPlainTextEdit_ZoomInF(void* c_this, float range);
	[LinkName("QPlainTextEdit_Tr2")]
	public static extern libqt_string QPlainTextEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QPlainTextEdit_Tr3")]
	public static extern libqt_string QPlainTextEdit_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QPlainTextEdit_Find2")]
	public static extern bool QPlainTextEdit_Find2(void* c_this, libqt_string exp, int64 options);
	[LinkName("QPlainTextEdit_Find22")]
	public static extern bool QPlainTextEdit_Find22(void* c_this, void* exp, int64 options);
	[LinkName("QPlainTextEdit_MoveCursor2")]
	public static extern void QPlainTextEdit_MoveCursor2(void* c_this, int64 operation, int64 mode);
	[LinkName("QPlainTextEdit_ZoomIn1")]
	public static extern void QPlainTextEdit_ZoomIn1(void* c_this, int32 range);
	[LinkName("QPlainTextEdit_ZoomOut1")]
	public static extern void QPlainTextEdit_ZoomOut1(void* c_this, int32 range);
	/// Delete this object from C++ memory
	[LinkName("QPlainTextEdit_Delete")]
	public static extern void QPlainTextEdit_Delete(void* self);
}
public class QPlainTextDocumentLayout
{
	protected void* nativePtr;
	
	public this(void* document)
	{
		this.nativePtr = CQt.QPlainTextDocumentLayout_new(document);
	}
	
	public ~this()
	{
		CQt.QPlainTextDocumentLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QPlainTextDocumentLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QPlainTextDocumentLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QPlainTextDocumentLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QPlainTextDocumentLayout_Tr(s);
	}
	
	public virtual void Draw(void* param1, QAbstractTextDocumentLayout__PaintContext* param2)
	{
		CQt.QPlainTextDocumentLayout_Draw(this.nativePtr, param1, param2);
	}
	
	public virtual int32 HitTest(void* param1, int64 param2)
	{
		return CQt.QPlainTextDocumentLayout_HitTest(this.nativePtr, param1, param2);
	}
	
	public virtual int32 PageCount()
	{
		return CQt.QPlainTextDocumentLayout_PageCount(this.nativePtr);
	}
	
	public virtual void DocumentSize()
	{
		CQt.QPlainTextDocumentLayout_DocumentSize(this.nativePtr);
	}
	
	public virtual void FrameBoundingRect(void* param1)
	{
		CQt.QPlainTextDocumentLayout_FrameBoundingRect(this.nativePtr, param1);
	}
	
	public virtual void BlockBoundingRect(void* block)
	{
		CQt.QPlainTextDocumentLayout_BlockBoundingRect(this.nativePtr, block);
	}
	
	public void EnsureBlockLayout(void* block)
	{
		CQt.QPlainTextDocumentLayout_EnsureBlockLayout(this.nativePtr, block);
	}
	
	public void SetCursorWidth(int32 width)
	{
		CQt.QPlainTextDocumentLayout_SetCursorWidth(this.nativePtr, width);
	}
	
	public int32 CursorWidth()
	{
		return CQt.QPlainTextDocumentLayout_CursorWidth(this.nativePtr);
	}
	
	public void RequestUpdate()
	{
		CQt.QPlainTextDocumentLayout_RequestUpdate(this.nativePtr);
	}
	
	public virtual void DocumentChanged(int32 from, int32 param2, int32 charsAdded)
	{
		CQt.QPlainTextDocumentLayout_DocumentChanged(this.nativePtr, from, param2, charsAdded);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QPlainTextDocumentLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QPlainTextDocumentLayout_Tr3(s, c, n);
	}
	
	public libqt_string AnchorAt(void* pos)
	{
		return CQt.QAbstractTextDocumentLayout_AnchorAt(this.nativePtr, pos);
	}
	
	public libqt_string ImageAt(void* pos)
	{
		return CQt.QAbstractTextDocumentLayout_ImageAt(this.nativePtr, pos);
	}
	
	public void FormatAt(void* pos)
	{
		CQt.QAbstractTextDocumentLayout_FormatAt(this.nativePtr, pos);
	}
	
	public void BlockWithMarkerAt(void* pos)
	{
		CQt.QAbstractTextDocumentLayout_BlockWithMarkerAt(this.nativePtr, pos);
	}
	
	public void SetPaintDevice(void* device)
	{
		CQt.QAbstractTextDocumentLayout_SetPaintDevice(this.nativePtr, device);
	}
	
	public void* PaintDevice()
	{
		return CQt.QAbstractTextDocumentLayout_PaintDevice(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QAbstractTextDocumentLayout_Document(this.nativePtr);
	}
	
	public void RegisterHandler(int32 objectType, void* component)
	{
		CQt.QAbstractTextDocumentLayout_RegisterHandler(this.nativePtr, objectType, component);
	}
	
	public void UnregisterHandler(int32 objectType)
	{
		CQt.QAbstractTextDocumentLayout_UnregisterHandler(this.nativePtr, objectType);
	}
	
	public void* HandlerForObject(int32 objectType)
	{
		return CQt.QAbstractTextDocumentLayout_HandlerForObject(this.nativePtr, objectType);
	}
	
	public void UnregisterHandler2(int32 objectType, void* component)
	{
		CQt.QAbstractTextDocumentLayout_UnregisterHandler2(this.nativePtr, objectType, component);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
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
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
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
	
}
extension CQt
{
	[LinkName("QPlainTextDocumentLayout_new")]
	public static extern void* QPlainTextDocumentLayout_new(void* document);
	[LinkName("QPlainTextDocumentLayout_MetaObject")]
	public static extern void* QPlainTextDocumentLayout_MetaObject(void* c_this);
	[LinkName("QPlainTextDocumentLayout_Metacast")]
	public static extern void* QPlainTextDocumentLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QPlainTextDocumentLayout_Metacall")]
	public static extern int32 QPlainTextDocumentLayout_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPlainTextDocumentLayout_Tr")]
	public static extern libqt_string QPlainTextDocumentLayout_Tr(char8[] s);
	[LinkName("QPlainTextDocumentLayout_Draw")]
	public static extern void QPlainTextDocumentLayout_Draw(void* c_this, void* param1, QAbstractTextDocumentLayout__PaintContext* param2);
	[LinkName("QPlainTextDocumentLayout_HitTest")]
	public static extern int32 QPlainTextDocumentLayout_HitTest(void* c_this, void* param1, int64 param2);
	[LinkName("QPlainTextDocumentLayout_PageCount")]
	public static extern int32 QPlainTextDocumentLayout_PageCount(void* c_this);
	[LinkName("QPlainTextDocumentLayout_DocumentSize")]
	public static extern void QPlainTextDocumentLayout_DocumentSize(void* c_this);
	[LinkName("QPlainTextDocumentLayout_FrameBoundingRect")]
	public static extern void QPlainTextDocumentLayout_FrameBoundingRect(void* c_this, void* param1);
	[LinkName("QPlainTextDocumentLayout_BlockBoundingRect")]
	public static extern void QPlainTextDocumentLayout_BlockBoundingRect(void* c_this, void* block);
	[LinkName("QPlainTextDocumentLayout_EnsureBlockLayout")]
	public static extern void QPlainTextDocumentLayout_EnsureBlockLayout(void* c_this, void* block);
	[LinkName("QPlainTextDocumentLayout_SetCursorWidth")]
	public static extern void QPlainTextDocumentLayout_SetCursorWidth(void* c_this, int32 width);
	[LinkName("QPlainTextDocumentLayout_CursorWidth")]
	public static extern int32 QPlainTextDocumentLayout_CursorWidth(void* c_this);
	[LinkName("QPlainTextDocumentLayout_RequestUpdate")]
	public static extern void QPlainTextDocumentLayout_RequestUpdate(void* c_this);
	[LinkName("QPlainTextDocumentLayout_DocumentChanged")]
	public static extern void QPlainTextDocumentLayout_DocumentChanged(void* c_this, int32 from, int32 param2, int32 charsAdded);
	[LinkName("QPlainTextDocumentLayout_Tr2")]
	public static extern libqt_string QPlainTextDocumentLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QPlainTextDocumentLayout_Tr3")]
	public static extern libqt_string QPlainTextDocumentLayout_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QPlainTextDocumentLayout_Delete")]
	public static extern void QPlainTextDocumentLayout_Delete(void* self);
}