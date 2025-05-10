using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextDocument__MetaInformation
{
	DocumentTitle = 0,
	DocumentUrl = 1,
	CssMedia = 2,
}
[AllowDuplicates]
public enum QTextDocument__MarkdownFeature
{
	MarkdownNoHTML = 96,
	MarkdownDialectCommonMark = 0,
	MarkdownDialectGitHub = 20236,
}
[AllowDuplicates]
public enum QTextDocument__FindFlag
{
	FindBackward = 1,
	FindCaseSensitively = 2,
	FindWholeWords = 4,
}
[AllowDuplicates]
public enum QTextDocument__ResourceType
{
	UnknownResource = 0,
	HtmlResource = 1,
	ImageResource = 2,
	StyleSheetResource = 3,
	MarkdownResource = 4,
	UserResource = 100,
}
[AllowDuplicates]
public enum QTextDocument__Stacks
{
	UndoStack = 1,
	RedoStack = 2,
	UndoAndRedoStacks = 3,
}
public class QAbstractUndoItem
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAbstractUndoItem_Delete(this.nativePtr);
	}
	
	public virtual void Undo()
	{
		CQt.QAbstractUndoItem_Undo(this.nativePtr);
	}
	
	public virtual void Redo()
	{
		CQt.QAbstractUndoItem_Redo(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAbstractUndoItem_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAbstractUndoItem_Undo")]
	public static extern void QAbstractUndoItem_Undo(void* c_this);
	[LinkName("QAbstractUndoItem_Redo")]
	public static extern void QAbstractUndoItem_Redo(void* c_this);
	[LinkName("QAbstractUndoItem_OperatorAssign")]
	public static extern void QAbstractUndoItem_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAbstractUndoItem_Delete")]
	public static extern void QAbstractUndoItem_Delete(void* self);
}
public class QTextDocument
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextDocument_new();
	}
	
	public ~this()
	{
		CQt.QTextDocument_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTextDocument_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTextDocument_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTextDocument_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTextDocument_Tr(s);
	}
	
	public void* Clone()
	{
		return CQt.QTextDocument_Clone(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextDocument_IsEmpty(this.nativePtr);
	}
	
	public virtual void Clear()
	{
		CQt.QTextDocument_Clear(this.nativePtr);
	}
	
	public void SetUndoRedoEnabled(bool enable)
	{
		CQt.QTextDocument_SetUndoRedoEnabled(this.nativePtr, enable);
	}
	
	public bool IsUndoRedoEnabled()
	{
		return CQt.QTextDocument_IsUndoRedoEnabled(this.nativePtr);
	}
	
	public bool IsUndoAvailable()
	{
		return CQt.QTextDocument_IsUndoAvailable(this.nativePtr);
	}
	
	public bool IsRedoAvailable()
	{
		return CQt.QTextDocument_IsRedoAvailable(this.nativePtr);
	}
	
	public int32 AvailableUndoSteps()
	{
		return CQt.QTextDocument_AvailableUndoSteps(this.nativePtr);
	}
	
	public int32 AvailableRedoSteps()
	{
		return CQt.QTextDocument_AvailableRedoSteps(this.nativePtr);
	}
	
	public int32 Revision()
	{
		return CQt.QTextDocument_Revision(this.nativePtr);
	}
	
	public void SetDocumentLayout(void* layout)
	{
		CQt.QTextDocument_SetDocumentLayout(this.nativePtr, layout);
	}
	
	public void* DocumentLayout()
	{
		return CQt.QTextDocument_DocumentLayout(this.nativePtr);
	}
	
	public void SetMetaInformation(int64 info, libqt_string param2)
	{
		CQt.QTextDocument_SetMetaInformation(this.nativePtr, info, param2);
	}
	
	public libqt_string MetaInformation(int64 info)
	{
		return CQt.QTextDocument_MetaInformation(this.nativePtr, info);
	}
	
	public libqt_string ToHtml()
	{
		return CQt.QTextDocument_ToHtml(this.nativePtr);
	}
	
	public void SetHtml(libqt_string html)
	{
		CQt.QTextDocument_SetHtml(this.nativePtr, html);
	}
	
	public libqt_string ToMarkdown()
	{
		return CQt.QTextDocument_ToMarkdown(this.nativePtr);
	}
	
	public void SetMarkdown(libqt_string markdown)
	{
		CQt.QTextDocument_SetMarkdown(this.nativePtr, markdown);
	}
	
	public libqt_string ToRawText()
	{
		return CQt.QTextDocument_ToRawText(this.nativePtr);
	}
	
	public libqt_string ToPlainText()
	{
		return CQt.QTextDocument_ToPlainText(this.nativePtr);
	}
	
	public void SetPlainText(libqt_string text)
	{
		CQt.QTextDocument_SetPlainText(this.nativePtr, text);
	}
	
	public void CharacterAt(int32 pos)
	{
		CQt.QTextDocument_CharacterAt(this.nativePtr, pos);
	}
	
	public void Find(libqt_string subString)
	{
		CQt.QTextDocument_Find(this.nativePtr, subString);
	}
	
	public void Find2(libqt_string subString, void* cursor)
	{
		CQt.QTextDocument_Find2(this.nativePtr, subString, cursor);
	}
	
	public void FindWithExpr(void* expr)
	{
		CQt.QTextDocument_FindWithExpr(this.nativePtr, expr);
	}
	
	public void Find3(void* expr, void* cursor)
	{
		CQt.QTextDocument_Find3(this.nativePtr, expr, cursor);
	}
	
	public void* FrameAt(int32 pos)
	{
		return CQt.QTextDocument_FrameAt(this.nativePtr, pos);
	}
	
	public void* RootFrame()
	{
		return CQt.QTextDocument_RootFrame(this.nativePtr);
	}
	
	public void* Object(int32 objectIndex)
	{
		return CQt.QTextDocument_Object(this.nativePtr, objectIndex);
	}
	
	public void* ObjectForFormat(void* param1)
	{
		return CQt.QTextDocument_ObjectForFormat(this.nativePtr, param1);
	}
	
	public void FindBlock(int32 pos)
	{
		CQt.QTextDocument_FindBlock(this.nativePtr, pos);
	}
	
	public void FindBlockByNumber(int32 blockNumber)
	{
		CQt.QTextDocument_FindBlockByNumber(this.nativePtr, blockNumber);
	}
	
	public void FindBlockByLineNumber(int32 blockNumber)
	{
		CQt.QTextDocument_FindBlockByLineNumber(this.nativePtr, blockNumber);
	}
	
	public void Begin()
	{
		CQt.QTextDocument_Begin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QTextDocument_End(this.nativePtr);
	}
	
	public void FirstBlock()
	{
		CQt.QTextDocument_FirstBlock(this.nativePtr);
	}
	
	public void LastBlock()
	{
		CQt.QTextDocument_LastBlock(this.nativePtr);
	}
	
	public void SetPageSize(void* size)
	{
		CQt.QTextDocument_SetPageSize(this.nativePtr, size);
	}
	
	public void PageSize()
	{
		CQt.QTextDocument_PageSize(this.nativePtr);
	}
	
	public void SetDefaultFont(void* font)
	{
		CQt.QTextDocument_SetDefaultFont(this.nativePtr, font);
	}
	
	public void DefaultFont()
	{
		CQt.QTextDocument_DefaultFont(this.nativePtr);
	}
	
	public void SetSuperScriptBaseline(double baseline)
	{
		CQt.QTextDocument_SetSuperScriptBaseline(this.nativePtr, baseline);
	}
	
	public double SuperScriptBaseline()
	{
		return CQt.QTextDocument_SuperScriptBaseline(this.nativePtr);
	}
	
	public void SetSubScriptBaseline(double baseline)
	{
		CQt.QTextDocument_SetSubScriptBaseline(this.nativePtr, baseline);
	}
	
	public double SubScriptBaseline()
	{
		return CQt.QTextDocument_SubScriptBaseline(this.nativePtr);
	}
	
	public void SetBaselineOffset(double baseline)
	{
		CQt.QTextDocument_SetBaselineOffset(this.nativePtr, baseline);
	}
	
	public double BaselineOffset()
	{
		return CQt.QTextDocument_BaselineOffset(this.nativePtr);
	}
	
	public int32 PageCount()
	{
		return CQt.QTextDocument_PageCount(this.nativePtr);
	}
	
	public bool IsModified()
	{
		return CQt.QTextDocument_IsModified(this.nativePtr);
	}
	
	public void Print(void* printer)
	{
		CQt.QTextDocument_Print(this.nativePtr, printer);
	}
	
	public void Resource(int32 typeVal, void* name)
	{
		CQt.QTextDocument_Resource(this.nativePtr, typeVal, name);
	}
	
	public void AddResource(int32 typeVal, void* name, void* resource)
	{
		CQt.QTextDocument_AddResource(this.nativePtr, typeVal, name, resource);
	}
	
	public void[] AllFormats()
	{
		return CQt.QTextDocument_AllFormats(this.nativePtr);
	}
	
	public void MarkContentsDirty(int32 from, int32 length)
	{
		CQt.QTextDocument_MarkContentsDirty(this.nativePtr, from, length);
	}
	
	public void SetUseDesignMetrics(bool b)
	{
		CQt.QTextDocument_SetUseDesignMetrics(this.nativePtr, b);
	}
	
	public bool UseDesignMetrics()
	{
		return CQt.QTextDocument_UseDesignMetrics(this.nativePtr);
	}
	
	public void SetLayoutEnabled(bool b)
	{
		CQt.QTextDocument_SetLayoutEnabled(this.nativePtr, b);
	}
	
	public bool IsLayoutEnabled()
	{
		return CQt.QTextDocument_IsLayoutEnabled(this.nativePtr);
	}
	
	public void DrawContents(void* painter)
	{
		CQt.QTextDocument_DrawContents(this.nativePtr, painter);
	}
	
	public void SetTextWidth(double width)
	{
		CQt.QTextDocument_SetTextWidth(this.nativePtr, width);
	}
	
	public double TextWidth()
	{
		return CQt.QTextDocument_TextWidth(this.nativePtr);
	}
	
	public double IdealWidth()
	{
		return CQt.QTextDocument_IdealWidth(this.nativePtr);
	}
	
	public double IndentWidth()
	{
		return CQt.QTextDocument_IndentWidth(this.nativePtr);
	}
	
	public void SetIndentWidth(double width)
	{
		CQt.QTextDocument_SetIndentWidth(this.nativePtr, width);
	}
	
	public double DocumentMargin()
	{
		return CQt.QTextDocument_DocumentMargin(this.nativePtr);
	}
	
	public void SetDocumentMargin(double margin)
	{
		CQt.QTextDocument_SetDocumentMargin(this.nativePtr, margin);
	}
	
	public void AdjustSize()
	{
		CQt.QTextDocument_AdjustSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QTextDocument_Size(this.nativePtr);
	}
	
	public int32 BlockCount()
	{
		return CQt.QTextDocument_BlockCount(this.nativePtr);
	}
	
	public int32 LineCount()
	{
		return CQt.QTextDocument_LineCount(this.nativePtr);
	}
	
	public int32 CharacterCount()
	{
		return CQt.QTextDocument_CharacterCount(this.nativePtr);
	}
	
	public void SetDefaultStyleSheet(libqt_string sheet)
	{
		CQt.QTextDocument_SetDefaultStyleSheet(this.nativePtr, sheet);
	}
	
	public libqt_string DefaultStyleSheet()
	{
		return CQt.QTextDocument_DefaultStyleSheet(this.nativePtr);
	}
	
	public void Undo(void* cursor)
	{
		CQt.QTextDocument_Undo(this.nativePtr, cursor);
	}
	
	public void Redo(void* cursor)
	{
		CQt.QTextDocument_Redo(this.nativePtr, cursor);
	}
	
	public void ClearUndoRedoStacks()
	{
		CQt.QTextDocument_ClearUndoRedoStacks(this.nativePtr);
	}
	
	public int32 MaximumBlockCount()
	{
		return CQt.QTextDocument_MaximumBlockCount(this.nativePtr);
	}
	
	public void SetMaximumBlockCount(int32 maximum)
	{
		CQt.QTextDocument_SetMaximumBlockCount(this.nativePtr, maximum);
	}
	
	public void DefaultTextOption()
	{
		CQt.QTextDocument_DefaultTextOption(this.nativePtr);
	}
	
	public void SetDefaultTextOption(void* option)
	{
		CQt.QTextDocument_SetDefaultTextOption(this.nativePtr, option);
	}
	
	public void BaseUrl()
	{
		CQt.QTextDocument_BaseUrl(this.nativePtr);
	}
	
	public void SetBaseUrl(void* url)
	{
		CQt.QTextDocument_SetBaseUrl(this.nativePtr, url);
	}
	
	public int64 DefaultCursorMoveStyle()
	{
		return CQt.QTextDocument_DefaultCursorMoveStyle(this.nativePtr);
	}
	
	public void SetDefaultCursorMoveStyle(int64 style)
	{
		CQt.QTextDocument_SetDefaultCursorMoveStyle(this.nativePtr, style);
	}
	
	public void Undo2()
	{
		CQt.QTextDocument_Undo2(this.nativePtr);
	}
	
	public void Redo2()
	{
		CQt.QTextDocument_Redo2(this.nativePtr);
	}
	
	public void AppendUndoItem(void* param1)
	{
		CQt.QTextDocument_AppendUndoItem(this.nativePtr, param1);
	}
	
	public void SetModified()
	{
		CQt.QTextDocument_SetModified(this.nativePtr);
	}
	
	public virtual void* CreateObject(void* f)
	{
		return CQt.QTextDocument_CreateObject(this.nativePtr, f);
	}
	
	public virtual void LoadResource(int32 typeVal, void* name)
	{
		CQt.QTextDocument_LoadResource(this.nativePtr, typeVal, name);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTextDocument_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTextDocument_Tr3(s, c, n);
	}
	
	public void* Clone1(void* parent)
	{
		return CQt.QTextDocument_Clone1(this.nativePtr, parent);
	}
	
	public libqt_string ToMarkdown1(int64 features)
	{
		return CQt.QTextDocument_ToMarkdown1(this.nativePtr, features);
	}
	
	public void SetMarkdown2(libqt_string markdown, int64 features)
	{
		CQt.QTextDocument_SetMarkdown2(this.nativePtr, markdown, features);
	}
	
	public void Find22(libqt_string subString, int32 from)
	{
		CQt.QTextDocument_Find22(this.nativePtr, subString, from);
	}
	
	public void Find32(libqt_string subString, int32 from, int64 options)
	{
		CQt.QTextDocument_Find32(this.nativePtr, subString, from, options);
	}
	
	public void Find33(libqt_string subString, void* cursor, int64 options)
	{
		CQt.QTextDocument_Find33(this.nativePtr, subString, cursor, options);
	}
	
	public void Find23(void* expr, int32 from)
	{
		CQt.QTextDocument_Find23(this.nativePtr, expr, from);
	}
	
	public void Find34(void* expr, int32 from, int64 options)
	{
		CQt.QTextDocument_Find34(this.nativePtr, expr, from, options);
	}
	
	public void Find35(void* expr, void* cursor, int64 options)
	{
		CQt.QTextDocument_Find35(this.nativePtr, expr, cursor, options);
	}
	
	public void DrawContents2(void* painter, void* rect)
	{
		CQt.QTextDocument_DrawContents2(this.nativePtr, painter, rect);
	}
	
	public void ClearUndoRedoStacks1(int64 historyToClear)
	{
		CQt.QTextDocument_ClearUndoRedoStacks1(this.nativePtr, historyToClear);
	}
	
	public void SetModified1(bool m)
	{
		CQt.QTextDocument_SetModified1(this.nativePtr, m);
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
	[LinkName("QTextDocument_new")]
	public static extern void* QTextDocument_new();
	[LinkName("QTextDocument_new2")]
	public static extern void* QTextDocument_new2(libqt_string text);
	[LinkName("QTextDocument_new3")]
	public static extern void* QTextDocument_new3(void* parent);
	[LinkName("QTextDocument_new4")]
	public static extern void* QTextDocument_new4(libqt_string text, void* parent);
	[LinkName("QTextDocument_MetaObject")]
	public static extern void* QTextDocument_MetaObject(void* c_this);
	[LinkName("QTextDocument_Metacast")]
	public static extern void* QTextDocument_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextDocument_Metacall")]
	public static extern int32 QTextDocument_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextDocument_Tr")]
	public static extern libqt_string QTextDocument_Tr(char8[] s);
	[LinkName("QTextDocument_Clone")]
	public static extern void* QTextDocument_Clone(void* c_this);
	[LinkName("QTextDocument_IsEmpty")]
	public static extern bool QTextDocument_IsEmpty(void* c_this);
	[LinkName("QTextDocument_Clear")]
	public static extern void QTextDocument_Clear(void* c_this);
	[LinkName("QTextDocument_SetUndoRedoEnabled")]
	public static extern void QTextDocument_SetUndoRedoEnabled(void* c_this, bool enable);
	[LinkName("QTextDocument_IsUndoRedoEnabled")]
	public static extern bool QTextDocument_IsUndoRedoEnabled(void* c_this);
	[LinkName("QTextDocument_IsUndoAvailable")]
	public static extern bool QTextDocument_IsUndoAvailable(void* c_this);
	[LinkName("QTextDocument_IsRedoAvailable")]
	public static extern bool QTextDocument_IsRedoAvailable(void* c_this);
	[LinkName("QTextDocument_AvailableUndoSteps")]
	public static extern int32 QTextDocument_AvailableUndoSteps(void* c_this);
	[LinkName("QTextDocument_AvailableRedoSteps")]
	public static extern int32 QTextDocument_AvailableRedoSteps(void* c_this);
	[LinkName("QTextDocument_Revision")]
	public static extern int32 QTextDocument_Revision(void* c_this);
	[LinkName("QTextDocument_SetDocumentLayout")]
	public static extern void QTextDocument_SetDocumentLayout(void* c_this, void* layout);
	[LinkName("QTextDocument_DocumentLayout")]
	public static extern void* QTextDocument_DocumentLayout(void* c_this);
	[LinkName("QTextDocument_SetMetaInformation")]
	public static extern void QTextDocument_SetMetaInformation(void* c_this, int64 info, libqt_string param2);
	[LinkName("QTextDocument_MetaInformation")]
	public static extern libqt_string QTextDocument_MetaInformation(void* c_this, int64 info);
	[LinkName("QTextDocument_ToHtml")]
	public static extern libqt_string QTextDocument_ToHtml(void* c_this);
	[LinkName("QTextDocument_SetHtml")]
	public static extern void QTextDocument_SetHtml(void* c_this, libqt_string html);
	[LinkName("QTextDocument_ToMarkdown")]
	public static extern libqt_string QTextDocument_ToMarkdown(void* c_this);
	[LinkName("QTextDocument_SetMarkdown")]
	public static extern void QTextDocument_SetMarkdown(void* c_this, libqt_string markdown);
	[LinkName("QTextDocument_ToRawText")]
	public static extern libqt_string QTextDocument_ToRawText(void* c_this);
	[LinkName("QTextDocument_ToPlainText")]
	public static extern libqt_string QTextDocument_ToPlainText(void* c_this);
	[LinkName("QTextDocument_SetPlainText")]
	public static extern void QTextDocument_SetPlainText(void* c_this, libqt_string text);
	[LinkName("QTextDocument_CharacterAt")]
	public static extern void QTextDocument_CharacterAt(void* c_this, int32 pos);
	[LinkName("QTextDocument_Find")]
	public static extern void QTextDocument_Find(void* c_this, libqt_string subString);
	[LinkName("QTextDocument_Find2")]
	public static extern void QTextDocument_Find2(void* c_this, libqt_string subString, void* cursor);
	[LinkName("QTextDocument_FindWithExpr")]
	public static extern void QTextDocument_FindWithExpr(void* c_this, void* expr);
	[LinkName("QTextDocument_Find3")]
	public static extern void QTextDocument_Find3(void* c_this, void* expr, void* cursor);
	[LinkName("QTextDocument_FrameAt")]
	public static extern void* QTextDocument_FrameAt(void* c_this, int32 pos);
	[LinkName("QTextDocument_RootFrame")]
	public static extern void* QTextDocument_RootFrame(void* c_this);
	[LinkName("QTextDocument_Object")]
	public static extern void* QTextDocument_Object(void* c_this, int32 objectIndex);
	[LinkName("QTextDocument_ObjectForFormat")]
	public static extern void* QTextDocument_ObjectForFormat(void* c_this, void* param1);
	[LinkName("QTextDocument_FindBlock")]
	public static extern void QTextDocument_FindBlock(void* c_this, int32 pos);
	[LinkName("QTextDocument_FindBlockByNumber")]
	public static extern void QTextDocument_FindBlockByNumber(void* c_this, int32 blockNumber);
	[LinkName("QTextDocument_FindBlockByLineNumber")]
	public static extern void QTextDocument_FindBlockByLineNumber(void* c_this, int32 blockNumber);
	[LinkName("QTextDocument_Begin")]
	public static extern void QTextDocument_Begin(void* c_this);
	[LinkName("QTextDocument_End")]
	public static extern void QTextDocument_End(void* c_this);
	[LinkName("QTextDocument_FirstBlock")]
	public static extern void QTextDocument_FirstBlock(void* c_this);
	[LinkName("QTextDocument_LastBlock")]
	public static extern void QTextDocument_LastBlock(void* c_this);
	[LinkName("QTextDocument_SetPageSize")]
	public static extern void QTextDocument_SetPageSize(void* c_this, void* size);
	[LinkName("QTextDocument_PageSize")]
	public static extern void QTextDocument_PageSize(void* c_this);
	[LinkName("QTextDocument_SetDefaultFont")]
	public static extern void QTextDocument_SetDefaultFont(void* c_this, void* font);
	[LinkName("QTextDocument_DefaultFont")]
	public static extern void QTextDocument_DefaultFont(void* c_this);
	[LinkName("QTextDocument_SetSuperScriptBaseline")]
	public static extern void QTextDocument_SetSuperScriptBaseline(void* c_this, double baseline);
	[LinkName("QTextDocument_SuperScriptBaseline")]
	public static extern double QTextDocument_SuperScriptBaseline(void* c_this);
	[LinkName("QTextDocument_SetSubScriptBaseline")]
	public static extern void QTextDocument_SetSubScriptBaseline(void* c_this, double baseline);
	[LinkName("QTextDocument_SubScriptBaseline")]
	public static extern double QTextDocument_SubScriptBaseline(void* c_this);
	[LinkName("QTextDocument_SetBaselineOffset")]
	public static extern void QTextDocument_SetBaselineOffset(void* c_this, double baseline);
	[LinkName("QTextDocument_BaselineOffset")]
	public static extern double QTextDocument_BaselineOffset(void* c_this);
	[LinkName("QTextDocument_PageCount")]
	public static extern int32 QTextDocument_PageCount(void* c_this);
	[LinkName("QTextDocument_IsModified")]
	public static extern bool QTextDocument_IsModified(void* c_this);
	[LinkName("QTextDocument_Print")]
	public static extern void QTextDocument_Print(void* c_this, void* printer);
	[LinkName("QTextDocument_Resource")]
	public static extern void QTextDocument_Resource(void* c_this, int32 typeVal, void* name);
	[LinkName("QTextDocument_AddResource")]
	public static extern void QTextDocument_AddResource(void* c_this, int32 typeVal, void* name, void* resource);
	[LinkName("QTextDocument_AllFormats")]
	public static extern void[] QTextDocument_AllFormats(void* c_this);
	[LinkName("QTextDocument_MarkContentsDirty")]
	public static extern void QTextDocument_MarkContentsDirty(void* c_this, int32 from, int32 length);
	[LinkName("QTextDocument_SetUseDesignMetrics")]
	public static extern void QTextDocument_SetUseDesignMetrics(void* c_this, bool b);
	[LinkName("QTextDocument_UseDesignMetrics")]
	public static extern bool QTextDocument_UseDesignMetrics(void* c_this);
	[LinkName("QTextDocument_SetLayoutEnabled")]
	public static extern void QTextDocument_SetLayoutEnabled(void* c_this, bool b);
	[LinkName("QTextDocument_IsLayoutEnabled")]
	public static extern bool QTextDocument_IsLayoutEnabled(void* c_this);
	[LinkName("QTextDocument_DrawContents")]
	public static extern void QTextDocument_DrawContents(void* c_this, void* painter);
	[LinkName("QTextDocument_SetTextWidth")]
	public static extern void QTextDocument_SetTextWidth(void* c_this, double width);
	[LinkName("QTextDocument_TextWidth")]
	public static extern double QTextDocument_TextWidth(void* c_this);
	[LinkName("QTextDocument_IdealWidth")]
	public static extern double QTextDocument_IdealWidth(void* c_this);
	[LinkName("QTextDocument_IndentWidth")]
	public static extern double QTextDocument_IndentWidth(void* c_this);
	[LinkName("QTextDocument_SetIndentWidth")]
	public static extern void QTextDocument_SetIndentWidth(void* c_this, double width);
	[LinkName("QTextDocument_DocumentMargin")]
	public static extern double QTextDocument_DocumentMargin(void* c_this);
	[LinkName("QTextDocument_SetDocumentMargin")]
	public static extern void QTextDocument_SetDocumentMargin(void* c_this, double margin);
	[LinkName("QTextDocument_AdjustSize")]
	public static extern void QTextDocument_AdjustSize(void* c_this);
	[LinkName("QTextDocument_Size")]
	public static extern void QTextDocument_Size(void* c_this);
	[LinkName("QTextDocument_BlockCount")]
	public static extern int32 QTextDocument_BlockCount(void* c_this);
	[LinkName("QTextDocument_LineCount")]
	public static extern int32 QTextDocument_LineCount(void* c_this);
	[LinkName("QTextDocument_CharacterCount")]
	public static extern int32 QTextDocument_CharacterCount(void* c_this);
	[LinkName("QTextDocument_SetDefaultStyleSheet")]
	public static extern void QTextDocument_SetDefaultStyleSheet(void* c_this, libqt_string sheet);
	[LinkName("QTextDocument_DefaultStyleSheet")]
	public static extern libqt_string QTextDocument_DefaultStyleSheet(void* c_this);
	[LinkName("QTextDocument_Undo")]
	public static extern void QTextDocument_Undo(void* c_this, void* cursor);
	[LinkName("QTextDocument_Redo")]
	public static extern void QTextDocument_Redo(void* c_this, void* cursor);
	[LinkName("QTextDocument_ClearUndoRedoStacks")]
	public static extern void QTextDocument_ClearUndoRedoStacks(void* c_this);
	[LinkName("QTextDocument_MaximumBlockCount")]
	public static extern int32 QTextDocument_MaximumBlockCount(void* c_this);
	[LinkName("QTextDocument_SetMaximumBlockCount")]
	public static extern void QTextDocument_SetMaximumBlockCount(void* c_this, int32 maximum);
	[LinkName("QTextDocument_DefaultTextOption")]
	public static extern void QTextDocument_DefaultTextOption(void* c_this);
	[LinkName("QTextDocument_SetDefaultTextOption")]
	public static extern void QTextDocument_SetDefaultTextOption(void* c_this, void* option);
	[LinkName("QTextDocument_BaseUrl")]
	public static extern void QTextDocument_BaseUrl(void* c_this);
	[LinkName("QTextDocument_SetBaseUrl")]
	public static extern void QTextDocument_SetBaseUrl(void* c_this, void* url);
	[LinkName("QTextDocument_DefaultCursorMoveStyle")]
	public static extern int64 QTextDocument_DefaultCursorMoveStyle(void* c_this);
	[LinkName("QTextDocument_SetDefaultCursorMoveStyle")]
	public static extern void QTextDocument_SetDefaultCursorMoveStyle(void* c_this, int64 style);
	[LinkName("QTextDocument_Connect_ContentsChange")]
	public static extern void QTextDocument_Connect_ContentsChange(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_ContentsChanged")]
	public static extern void QTextDocument_Connect_ContentsChanged(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_UndoAvailable")]
	public static extern void QTextDocument_Connect_UndoAvailable(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_RedoAvailable")]
	public static extern void QTextDocument_Connect_RedoAvailable(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_UndoCommandAdded")]
	public static extern void QTextDocument_Connect_UndoCommandAdded(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_ModificationChanged")]
	public static extern void QTextDocument_Connect_ModificationChanged(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_CursorPositionChanged")]
	public static extern void QTextDocument_Connect_CursorPositionChanged(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_BlockCountChanged")]
	public static extern void QTextDocument_Connect_BlockCountChanged(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_BaseUrlChanged")]
	public static extern void QTextDocument_Connect_BaseUrlChanged(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Connect_DocumentLayoutChanged")]
	public static extern void QTextDocument_Connect_DocumentLayoutChanged(void* c_this, c_intptr slot);
	[LinkName("QTextDocument_Undo2")]
	public static extern void QTextDocument_Undo2(void* c_this);
	[LinkName("QTextDocument_Redo2")]
	public static extern void QTextDocument_Redo2(void* c_this);
	[LinkName("QTextDocument_AppendUndoItem")]
	public static extern void QTextDocument_AppendUndoItem(void* c_this, void* param1);
	[LinkName("QTextDocument_SetModified")]
	public static extern void QTextDocument_SetModified(void* c_this);
	[LinkName("QTextDocument_CreateObject")]
	public static extern void* QTextDocument_CreateObject(void* c_this, void* f);
	[LinkName("QTextDocument_LoadResource")]
	public static extern void QTextDocument_LoadResource(void* c_this, int32 typeVal, void* name);
	[LinkName("QTextDocument_Tr2")]
	public static extern libqt_string QTextDocument_Tr2(char8[] s, char8[] c);
	[LinkName("QTextDocument_Tr3")]
	public static extern libqt_string QTextDocument_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTextDocument_Clone1")]
	public static extern void* QTextDocument_Clone1(void* c_this, void* parent);
	[LinkName("QTextDocument_ToMarkdown1")]
	public static extern libqt_string QTextDocument_ToMarkdown1(void* c_this, int64 features);
	[LinkName("QTextDocument_SetMarkdown2")]
	public static extern void QTextDocument_SetMarkdown2(void* c_this, libqt_string markdown, int64 features);
	[LinkName("QTextDocument_Find22")]
	public static extern void QTextDocument_Find22(void* c_this, libqt_string subString, int32 from);
	[LinkName("QTextDocument_Find32")]
	public static extern void QTextDocument_Find32(void* c_this, libqt_string subString, int32 from, int64 options);
	[LinkName("QTextDocument_Find33")]
	public static extern void QTextDocument_Find33(void* c_this, libqt_string subString, void* cursor, int64 options);
	[LinkName("QTextDocument_Find23")]
	public static extern void QTextDocument_Find23(void* c_this, void* expr, int32 from);
	[LinkName("QTextDocument_Find34")]
	public static extern void QTextDocument_Find34(void* c_this, void* expr, int32 from, int64 options);
	[LinkName("QTextDocument_Find35")]
	public static extern void QTextDocument_Find35(void* c_this, void* expr, void* cursor, int64 options);
	[LinkName("QTextDocument_DrawContents2")]
	public static extern void QTextDocument_DrawContents2(void* c_this, void* painter, void* rect);
	[LinkName("QTextDocument_ClearUndoRedoStacks1")]
	public static extern void QTextDocument_ClearUndoRedoStacks1(void* c_this, int64 historyToClear);
	[LinkName("QTextDocument_SetModified1")]
	public static extern void QTextDocument_SetModified1(void* c_this, bool m);
	/// Delete this object from C++ memory
	[LinkName("QTextDocument_Delete")]
	public static extern void QTextDocument_Delete(void* self);
}