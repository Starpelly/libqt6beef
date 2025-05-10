using System;
using System.Interop;
namespace Qt;

public class QTextBrowser
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QTextBrowser_new(parent);
	}
	
	public ~this()
	{
		CQt.QTextBrowser_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTextBrowser_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTextBrowser_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTextBrowser_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTextBrowser_Tr(s);
	}
	
	public void Source()
	{
		CQt.QTextBrowser_Source(this.nativePtr);
	}
	
	public int64 SourceType()
	{
		return CQt.QTextBrowser_SourceType(this.nativePtr);
	}
	
	public libqt_string[] SearchPaths()
	{
		return CQt.QTextBrowser_SearchPaths(this.nativePtr);
	}
	
	public void SetSearchPaths(libqt_string[] paths)
	{
		CQt.QTextBrowser_SetSearchPaths(this.nativePtr, paths);
	}
	
	public virtual void LoadResource(int32 typeVal, void* name)
	{
		CQt.QTextBrowser_LoadResource(this.nativePtr, typeVal, name);
	}
	
	public bool IsBackwardAvailable()
	{
		return CQt.QTextBrowser_IsBackwardAvailable(this.nativePtr);
	}
	
	public bool IsForwardAvailable()
	{
		return CQt.QTextBrowser_IsForwardAvailable(this.nativePtr);
	}
	
	public void ClearHistory()
	{
		CQt.QTextBrowser_ClearHistory(this.nativePtr);
	}
	
	public libqt_string HistoryTitle(int32 param1)
	{
		return CQt.QTextBrowser_HistoryTitle(this.nativePtr, param1);
	}
	
	public void HistoryUrl(int32 param1)
	{
		CQt.QTextBrowser_HistoryUrl(this.nativePtr, param1);
	}
	
	public int32 BackwardHistoryCount()
	{
		return CQt.QTextBrowser_BackwardHistoryCount(this.nativePtr);
	}
	
	public int32 ForwardHistoryCount()
	{
		return CQt.QTextBrowser_ForwardHistoryCount(this.nativePtr);
	}
	
	public bool OpenExternalLinks()
	{
		return CQt.QTextBrowser_OpenExternalLinks(this.nativePtr);
	}
	
	public void SetOpenExternalLinks(bool open)
	{
		CQt.QTextBrowser_SetOpenExternalLinks(this.nativePtr, open);
	}
	
	public bool OpenLinks()
	{
		return CQt.QTextBrowser_OpenLinks(this.nativePtr);
	}
	
	public void SetOpenLinks(bool open)
	{
		CQt.QTextBrowser_SetOpenLinks(this.nativePtr, open);
	}
	
	public void SetSource(void* name)
	{
		CQt.QTextBrowser_SetSource(this.nativePtr, name);
	}
	
	public virtual void Backward()
	{
		CQt.QTextBrowser_Backward(this.nativePtr);
	}
	
	public virtual void Forward()
	{
		CQt.QTextBrowser_Forward(this.nativePtr);
	}
	
	public virtual void Home()
	{
		CQt.QTextBrowser_Home(this.nativePtr);
	}
	
	public virtual void Reload()
	{
		CQt.QTextBrowser_Reload(this.nativePtr);
	}
	
	public virtual bool Event(void* e)
	{
		return CQt.QTextBrowser_Event(this.nativePtr, e);
	}
	
	public virtual void KeyPressEvent(void* ev)
	{
		CQt.QTextBrowser_KeyPressEvent(this.nativePtr, ev);
	}
	
	public virtual void MouseMoveEvent(void* ev)
	{
		CQt.QTextBrowser_MouseMoveEvent(this.nativePtr, ev);
	}
	
	public virtual void MousePressEvent(void* ev)
	{
		CQt.QTextBrowser_MousePressEvent(this.nativePtr, ev);
	}
	
	public virtual void MouseReleaseEvent(void* ev)
	{
		CQt.QTextBrowser_MouseReleaseEvent(this.nativePtr, ev);
	}
	
	public virtual void FocusOutEvent(void* ev)
	{
		CQt.QTextBrowser_FocusOutEvent(this.nativePtr, ev);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QTextBrowser_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public virtual void PaintEvent(void* e)
	{
		CQt.QTextBrowser_PaintEvent(this.nativePtr, e);
	}
	
	public virtual void DoSetSource(void* name, int64 typeVal)
	{
		CQt.QTextBrowser_DoSetSource(this.nativePtr, name, typeVal);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTextBrowser_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTextBrowser_Tr3(s, c, n);
	}
	
	public void SetSource2(void* name, int64 typeVal)
	{
		CQt.QTextBrowser_SetSource2(this.nativePtr, name, typeVal);
	}
	
	public void SetDocument(void* document)
	{
		CQt.QTextEdit_SetDocument(this.nativePtr, document);
	}
	
	public void* Document()
	{
		return CQt.QTextEdit_Document(this.nativePtr);
	}
	
	public void SetPlaceholderText(libqt_string placeholderText)
	{
		CQt.QTextEdit_SetPlaceholderText(this.nativePtr, placeholderText);
	}
	
	public libqt_string PlaceholderText()
	{
		return CQt.QTextEdit_PlaceholderText(this.nativePtr);
	}
	
	public void SetTextCursor(void* cursor)
	{
		CQt.QTextEdit_SetTextCursor(this.nativePtr, cursor);
	}
	
	public void TextCursor()
	{
		CQt.QTextEdit_TextCursor(this.nativePtr);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QTextEdit_IsReadOnly(this.nativePtr);
	}
	
	public void SetReadOnly(bool ro)
	{
		CQt.QTextEdit_SetReadOnly(this.nativePtr, ro);
	}
	
	public void SetTextInteractionFlags(int64 flags)
	{
		CQt.QTextEdit_SetTextInteractionFlags(this.nativePtr, flags);
	}
	
	public int64 TextInteractionFlags()
	{
		return CQt.QTextEdit_TextInteractionFlags(this.nativePtr);
	}
	
	public double FontPointSize()
	{
		return CQt.QTextEdit_FontPointSize(this.nativePtr);
	}
	
	public libqt_string FontFamily()
	{
		return CQt.QTextEdit_FontFamily(this.nativePtr);
	}
	
	public int32 FontWeight()
	{
		return CQt.QTextEdit_FontWeight(this.nativePtr);
	}
	
	public bool FontUnderline()
	{
		return CQt.QTextEdit_FontUnderline(this.nativePtr);
	}
	
	public bool FontItalic()
	{
		return CQt.QTextEdit_FontItalic(this.nativePtr);
	}
	
	public void TextColor()
	{
		CQt.QTextEdit_TextColor(this.nativePtr);
	}
	
	public void TextBackgroundColor()
	{
		CQt.QTextEdit_TextBackgroundColor(this.nativePtr);
	}
	
	public void CurrentFont()
	{
		CQt.QTextEdit_CurrentFont(this.nativePtr);
	}
	
	public int64 Alignment()
	{
		return CQt.QTextEdit_Alignment(this.nativePtr);
	}
	
	public void MergeCurrentCharFormat(void* modifier)
	{
		CQt.QTextEdit_MergeCurrentCharFormat(this.nativePtr, modifier);
	}
	
	public void SetCurrentCharFormat(void* format)
	{
		CQt.QTextEdit_SetCurrentCharFormat(this.nativePtr, format);
	}
	
	public void CurrentCharFormat()
	{
		CQt.QTextEdit_CurrentCharFormat(this.nativePtr);
	}
	
	public int64 AutoFormatting()
	{
		return CQt.QTextEdit_AutoFormatting(this.nativePtr);
	}
	
	public void SetAutoFormatting(int64 features)
	{
		CQt.QTextEdit_SetAutoFormatting(this.nativePtr, features);
	}
	
	public bool TabChangesFocus()
	{
		return CQt.QTextEdit_TabChangesFocus(this.nativePtr);
	}
	
	public void SetTabChangesFocus(bool b)
	{
		CQt.QTextEdit_SetTabChangesFocus(this.nativePtr, b);
	}
	
	public void SetDocumentTitle(libqt_string title)
	{
		CQt.QTextEdit_SetDocumentTitle(this.nativePtr, title);
	}
	
	public libqt_string DocumentTitle()
	{
		return CQt.QTextEdit_DocumentTitle(this.nativePtr);
	}
	
	public bool IsUndoRedoEnabled()
	{
		return CQt.QTextEdit_IsUndoRedoEnabled(this.nativePtr);
	}
	
	public void SetUndoRedoEnabled(bool enable)
	{
		CQt.QTextEdit_SetUndoRedoEnabled(this.nativePtr, enable);
	}
	
	public int64 LineWrapMode()
	{
		return CQt.QTextEdit_LineWrapMode(this.nativePtr);
	}
	
	public void SetLineWrapMode(int64 mode)
	{
		CQt.QTextEdit_SetLineWrapMode(this.nativePtr, mode);
	}
	
	public int32 LineWrapColumnOrWidth()
	{
		return CQt.QTextEdit_LineWrapColumnOrWidth(this.nativePtr);
	}
	
	public void SetLineWrapColumnOrWidth(int32 w)
	{
		CQt.QTextEdit_SetLineWrapColumnOrWidth(this.nativePtr, w);
	}
	
	public int64 WordWrapMode()
	{
		return CQt.QTextEdit_WordWrapMode(this.nativePtr);
	}
	
	public void SetWordWrapMode(int64 policy)
	{
		CQt.QTextEdit_SetWordWrapMode(this.nativePtr, policy);
	}
	
	public bool Find(libqt_string exp)
	{
		return CQt.QTextEdit_Find(this.nativePtr, exp);
	}
	
	public bool FindWithExp(void* exp)
	{
		return CQt.QTextEdit_FindWithExp(this.nativePtr, exp);
	}
	
	public libqt_string ToPlainText()
	{
		return CQt.QTextEdit_ToPlainText(this.nativePtr);
	}
	
	public libqt_string ToHtml()
	{
		return CQt.QTextEdit_ToHtml(this.nativePtr);
	}
	
	public libqt_string ToMarkdown()
	{
		return CQt.QTextEdit_ToMarkdown(this.nativePtr);
	}
	
	public void EnsureCursorVisible()
	{
		CQt.QTextEdit_EnsureCursorVisible(this.nativePtr);
	}
	
	public void* CreateStandardContextMenu()
	{
		return CQt.QTextEdit_CreateStandardContextMenu(this.nativePtr);
	}
	
	public void* CreateStandardContextMenuWithPosition(void* position)
	{
		return CQt.QTextEdit_CreateStandardContextMenuWithPosition(this.nativePtr, position);
	}
	
	public void CursorForPosition(void* pos)
	{
		CQt.QTextEdit_CursorForPosition(this.nativePtr, pos);
	}
	
	public void CursorRect(void* cursor)
	{
		CQt.QTextEdit_CursorRect(this.nativePtr, cursor);
	}
	
	public void CursorRect2()
	{
		CQt.QTextEdit_CursorRect2(this.nativePtr);
	}
	
	public libqt_string AnchorAt(void* pos)
	{
		return CQt.QTextEdit_AnchorAt(this.nativePtr, pos);
	}
	
	public bool OverwriteMode()
	{
		return CQt.QTextEdit_OverwriteMode(this.nativePtr);
	}
	
	public void SetOverwriteMode(bool overwrite)
	{
		CQt.QTextEdit_SetOverwriteMode(this.nativePtr, overwrite);
	}
	
	public double TabStopDistance()
	{
		return CQt.QTextEdit_TabStopDistance(this.nativePtr);
	}
	
	public void SetTabStopDistance(double distance)
	{
		CQt.QTextEdit_SetTabStopDistance(this.nativePtr, distance);
	}
	
	public int32 CursorWidth()
	{
		return CQt.QTextEdit_CursorWidth(this.nativePtr);
	}
	
	public void SetCursorWidth(int32 width)
	{
		CQt.QTextEdit_SetCursorWidth(this.nativePtr, width);
	}
	
	public bool AcceptRichText()
	{
		return CQt.QTextEdit_AcceptRichText(this.nativePtr);
	}
	
	public void SetAcceptRichText(bool accept)
	{
		CQt.QTextEdit_SetAcceptRichText(this.nativePtr, accept);
	}
	
	public void SetExtraSelections(QTextEdit__ExtraSelection[] selections)
	{
		CQt.QTextEdit_SetExtraSelections(this.nativePtr, selections);
	}
	
	public QTextEdit__ExtraSelection[] ExtraSelections()
	{
		return CQt.QTextEdit_ExtraSelections(this.nativePtr);
	}
	
	public void MoveCursor(int64 operation)
	{
		CQt.QTextEdit_MoveCursor(this.nativePtr, operation);
	}
	
	public bool CanPaste()
	{
		return CQt.QTextEdit_CanPaste(this.nativePtr);
	}
	
	public void Print(void* printer)
	{
		CQt.QTextEdit_Print(this.nativePtr, printer);
	}
	
	public virtual void InputMethodQuery(int64 property)
	{
		CQt.QTextEdit_InputMethodQuery(this.nativePtr, property);
	}
	
	public void InputMethodQuery2(int64 query, void argument)
	{
		CQt.QTextEdit_InputMethodQuery2(this.nativePtr, query, argument);
	}
	
	public void SetFontPointSize(double s)
	{
		CQt.QTextEdit_SetFontPointSize(this.nativePtr, s);
	}
	
	public void SetFontFamily(libqt_string fontFamily)
	{
		CQt.QTextEdit_SetFontFamily(this.nativePtr, fontFamily);
	}
	
	public void SetFontWeight(int32 w)
	{
		CQt.QTextEdit_SetFontWeight(this.nativePtr, w);
	}
	
	public void SetFontUnderline(bool b)
	{
		CQt.QTextEdit_SetFontUnderline(this.nativePtr, b);
	}
	
	public void SetFontItalic(bool b)
	{
		CQt.QTextEdit_SetFontItalic(this.nativePtr, b);
	}
	
	public void SetTextColor(void* c)
	{
		CQt.QTextEdit_SetTextColor(this.nativePtr, c);
	}
	
	public void SetTextBackgroundColor(void* c)
	{
		CQt.QTextEdit_SetTextBackgroundColor(this.nativePtr, c);
	}
	
	public void SetCurrentFont(void* f)
	{
		CQt.QTextEdit_SetCurrentFont(this.nativePtr, f);
	}
	
	public void SetAlignment(int64 a)
	{
		CQt.QTextEdit_SetAlignment(this.nativePtr, a);
	}
	
	public void SetPlainText(libqt_string text)
	{
		CQt.QTextEdit_SetPlainText(this.nativePtr, text);
	}
	
	public void SetHtml(libqt_string text)
	{
		CQt.QTextEdit_SetHtml(this.nativePtr, text);
	}
	
	public void SetMarkdown(libqt_string markdown)
	{
		CQt.QTextEdit_SetMarkdown(this.nativePtr, markdown);
	}
	
	public void SetText(libqt_string text)
	{
		CQt.QTextEdit_SetText(this.nativePtr, text);
	}
	
	public void Cut()
	{
		CQt.QTextEdit_Cut(this.nativePtr);
	}
	
	public void Copy()
	{
		CQt.QTextEdit_Copy(this.nativePtr);
	}
	
	public void Paste()
	{
		CQt.QTextEdit_Paste(this.nativePtr);
	}
	
	public void Undo()
	{
		CQt.QTextEdit_Undo(this.nativePtr);
	}
	
	public void Redo()
	{
		CQt.QTextEdit_Redo(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QTextEdit_Clear(this.nativePtr);
	}
	
	public void SelectAll()
	{
		CQt.QTextEdit_SelectAll(this.nativePtr);
	}
	
	public void InsertPlainText(libqt_string text)
	{
		CQt.QTextEdit_InsertPlainText(this.nativePtr, text);
	}
	
	public void InsertHtml(libqt_string text)
	{
		CQt.QTextEdit_InsertHtml(this.nativePtr, text);
	}
	
	public void Append(libqt_string text)
	{
		CQt.QTextEdit_Append(this.nativePtr, text);
	}
	
	public void ScrollToAnchor(libqt_string name)
	{
		CQt.QTextEdit_ScrollToAnchor(this.nativePtr, name);
	}
	
	public void ZoomIn()
	{
		CQt.QTextEdit_ZoomIn(this.nativePtr);
	}
	
	public void ZoomOut()
	{
		CQt.QTextEdit_ZoomOut(this.nativePtr);
	}
	
	public bool Find2(libqt_string exp, int64 options)
	{
		return CQt.QTextEdit_Find2(this.nativePtr, exp, options);
	}
	
	public bool Find22(void* exp, int64 options)
	{
		return CQt.QTextEdit_Find22(this.nativePtr, exp, options);
	}
	
	public libqt_string ToMarkdown1(int64 features)
	{
		return CQt.QTextEdit_ToMarkdown1(this.nativePtr, features);
	}
	
	public void MoveCursor2(int64 operation, int64 mode)
	{
		CQt.QTextEdit_MoveCursor2(this.nativePtr, operation, mode);
	}
	
	public void ZoomIn1(int32 range)
	{
		CQt.QTextEdit_ZoomIn1(this.nativePtr, range);
	}
	
	public void ZoomOut1(int32 range)
	{
		CQt.QTextEdit_ZoomOut1(this.nativePtr, range);
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
	[LinkName("QTextBrowser_new")]
	public static extern void* QTextBrowser_new(void* parent);
	[LinkName("QTextBrowser_new2")]
	public static extern void* QTextBrowser_new2();
	[LinkName("QTextBrowser_MetaObject")]
	public static extern void* QTextBrowser_MetaObject(void* c_this);
	[LinkName("QTextBrowser_Metacast")]
	public static extern void* QTextBrowser_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextBrowser_Metacall")]
	public static extern int32 QTextBrowser_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextBrowser_Tr")]
	public static extern libqt_string QTextBrowser_Tr(char8[] s);
	[LinkName("QTextBrowser_Source")]
	public static extern void QTextBrowser_Source(void* c_this);
	[LinkName("QTextBrowser_SourceType")]
	public static extern int64 QTextBrowser_SourceType(void* c_this);
	[LinkName("QTextBrowser_SearchPaths")]
	public static extern libqt_string[] QTextBrowser_SearchPaths(void* c_this);
	[LinkName("QTextBrowser_SetSearchPaths")]
	public static extern void QTextBrowser_SetSearchPaths(void* c_this, libqt_string[] paths);
	[LinkName("QTextBrowser_LoadResource")]
	public static extern void QTextBrowser_LoadResource(void* c_this, int32 typeVal, void* name);
	[LinkName("QTextBrowser_IsBackwardAvailable")]
	public static extern bool QTextBrowser_IsBackwardAvailable(void* c_this);
	[LinkName("QTextBrowser_IsForwardAvailable")]
	public static extern bool QTextBrowser_IsForwardAvailable(void* c_this);
	[LinkName("QTextBrowser_ClearHistory")]
	public static extern void QTextBrowser_ClearHistory(void* c_this);
	[LinkName("QTextBrowser_HistoryTitle")]
	public static extern libqt_string QTextBrowser_HistoryTitle(void* c_this, int32 param1);
	[LinkName("QTextBrowser_HistoryUrl")]
	public static extern void QTextBrowser_HistoryUrl(void* c_this, int32 param1);
	[LinkName("QTextBrowser_BackwardHistoryCount")]
	public static extern int32 QTextBrowser_BackwardHistoryCount(void* c_this);
	[LinkName("QTextBrowser_ForwardHistoryCount")]
	public static extern int32 QTextBrowser_ForwardHistoryCount(void* c_this);
	[LinkName("QTextBrowser_OpenExternalLinks")]
	public static extern bool QTextBrowser_OpenExternalLinks(void* c_this);
	[LinkName("QTextBrowser_SetOpenExternalLinks")]
	public static extern void QTextBrowser_SetOpenExternalLinks(void* c_this, bool open);
	[LinkName("QTextBrowser_OpenLinks")]
	public static extern bool QTextBrowser_OpenLinks(void* c_this);
	[LinkName("QTextBrowser_SetOpenLinks")]
	public static extern void QTextBrowser_SetOpenLinks(void* c_this, bool open);
	[LinkName("QTextBrowser_SetSource")]
	public static extern void QTextBrowser_SetSource(void* c_this, void* name);
	[LinkName("QTextBrowser_Backward")]
	public static extern void QTextBrowser_Backward(void* c_this);
	[LinkName("QTextBrowser_Forward")]
	public static extern void QTextBrowser_Forward(void* c_this);
	[LinkName("QTextBrowser_Home")]
	public static extern void QTextBrowser_Home(void* c_this);
	[LinkName("QTextBrowser_Reload")]
	public static extern void QTextBrowser_Reload(void* c_this);
	[LinkName("QTextBrowser_Connect_BackwardAvailable")]
	public static extern void QTextBrowser_Connect_BackwardAvailable(void* c_this, c_intptr slot);
	[LinkName("QTextBrowser_Connect_ForwardAvailable")]
	public static extern void QTextBrowser_Connect_ForwardAvailable(void* c_this, c_intptr slot);
	[LinkName("QTextBrowser_Connect_HistoryChanged")]
	public static extern void QTextBrowser_Connect_HistoryChanged(void* c_this, c_intptr slot);
	[LinkName("QTextBrowser_Connect_SourceChanged")]
	public static extern void QTextBrowser_Connect_SourceChanged(void* c_this, c_intptr slot);
	[LinkName("QTextBrowser_Connect_Highlighted")]
	public static extern void QTextBrowser_Connect_Highlighted(void* c_this, c_intptr slot);
	[LinkName("QTextBrowser_Connect_AnchorClicked")]
	public static extern void QTextBrowser_Connect_AnchorClicked(void* c_this, c_intptr slot);
	[LinkName("QTextBrowser_Event")]
	public static extern bool QTextBrowser_Event(void* c_this, void* e);
	[LinkName("QTextBrowser_KeyPressEvent")]
	public static extern void QTextBrowser_KeyPressEvent(void* c_this, void* ev);
	[LinkName("QTextBrowser_MouseMoveEvent")]
	public static extern void QTextBrowser_MouseMoveEvent(void* c_this, void* ev);
	[LinkName("QTextBrowser_MousePressEvent")]
	public static extern void QTextBrowser_MousePressEvent(void* c_this, void* ev);
	[LinkName("QTextBrowser_MouseReleaseEvent")]
	public static extern void QTextBrowser_MouseReleaseEvent(void* c_this, void* ev);
	[LinkName("QTextBrowser_FocusOutEvent")]
	public static extern void QTextBrowser_FocusOutEvent(void* c_this, void* ev);
	[LinkName("QTextBrowser_FocusNextPrevChild")]
	public static extern bool QTextBrowser_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QTextBrowser_PaintEvent")]
	public static extern void QTextBrowser_PaintEvent(void* c_this, void* e);
	[LinkName("QTextBrowser_DoSetSource")]
	public static extern void QTextBrowser_DoSetSource(void* c_this, void* name, int64 typeVal);
	[LinkName("QTextBrowser_Tr2")]
	public static extern libqt_string QTextBrowser_Tr2(char8[] s, char8[] c);
	[LinkName("QTextBrowser_Tr3")]
	public static extern libqt_string QTextBrowser_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTextBrowser_SetSource2")]
	public static extern void QTextBrowser_SetSource2(void* c_this, void* name, int64 typeVal);
	/// Delete this object from C++ memory
	[LinkName("QTextBrowser_Delete")]
	public static extern void QTextBrowser_Delete(void* self);
}