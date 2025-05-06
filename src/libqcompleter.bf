using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCompleter__CompletionMode
{
	PopupCompletion = 0,
	UnfilteredPopupCompletion = 1,
	InlineCompletion = 2,
}
[AllowDuplicates]
public enum QCompleter__ModelSorting
{
	UnsortedModel = 0,
	CaseSensitivelySortedModel = 1,
	CaseInsensitivelySortedModel = 2,
}
public struct QCompleter
{
	[LinkName("QCompleter_new")]
	public static extern void* QCompleter_new();
	[LinkName("QCompleter_new2")]
	public static extern void* QCompleter_new2(QAbstractItemModel model);
	[LinkName("QCompleter_new3")]
	public static extern void* QCompleter_new3(char8[][] completions);
	[LinkName("QCompleter_new4")]
	public static extern void* QCompleter_new4(QObject parent);
	[LinkName("QCompleter_new5")]
	public static extern void* QCompleter_new5(QAbstractItemModel model, QObject parent);
	[LinkName("QCompleter_new6")]
	public static extern void* QCompleter_new6(char8[][] completions, QObject parent);
	[LinkName("QCompleter_MetaObject")]
	public static extern QMetaObject QCompleter_MetaObject(void* c_this);
	[LinkName("QCompleter_Metacast")]
	public static extern void QCompleter_Metacast(void* c_this, char8[] param1);
	[LinkName("QCompleter_Metacall")]
	public static extern int32 QCompleter_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QCompleter_Tr")]
	public static extern char8[] QCompleter_Tr(char8[] s);
	[LinkName("QCompleter_SetWidget")]
	public static extern void QCompleter_SetWidget(void* c_this, QWidget widget);
	[LinkName("QCompleter_Widget")]
	public static extern QWidget QCompleter_Widget(void* c_this);
	[LinkName("QCompleter_SetModel")]
	public static extern void QCompleter_SetModel(void* c_this, QAbstractItemModel c);
	[LinkName("QCompleter_Model")]
	public static extern QAbstractItemModel QCompleter_Model(void* c_this);
	[LinkName("QCompleter_SetCompletionMode")]
	public static extern void QCompleter_SetCompletionMode(void* c_this, int64 mode);
	[LinkName("QCompleter_CompletionMode")]
	public static extern int64 QCompleter_CompletionMode(void* c_this);
	[LinkName("QCompleter_SetFilterMode")]
	public static extern void QCompleter_SetFilterMode(void* c_this, int64 filterMode);
	[LinkName("QCompleter_FilterMode")]
	public static extern int64 QCompleter_FilterMode(void* c_this);
	[LinkName("QCompleter_Popup")]
	public static extern QAbstractItemView QCompleter_Popup(void* c_this);
	[LinkName("QCompleter_SetPopup")]
	public static extern void QCompleter_SetPopup(void* c_this, QAbstractItemView popup);
	[LinkName("QCompleter_SetCaseSensitivity")]
	public static extern void QCompleter_SetCaseSensitivity(void* c_this, int64 caseSensitivity);
	[LinkName("QCompleter_CaseSensitivity")]
	public static extern int64 QCompleter_CaseSensitivity(void* c_this);
	[LinkName("QCompleter_SetModelSorting")]
	public static extern void QCompleter_SetModelSorting(void* c_this, int64 sorting);
	[LinkName("QCompleter_ModelSorting")]
	public static extern int64 QCompleter_ModelSorting(void* c_this);
	[LinkName("QCompleter_SetCompletionColumn")]
	public static extern void QCompleter_SetCompletionColumn(void* c_this, int32 column);
	[LinkName("QCompleter_CompletionColumn")]
	public static extern int32 QCompleter_CompletionColumn(void* c_this);
	[LinkName("QCompleter_SetCompletionRole")]
	public static extern void QCompleter_SetCompletionRole(void* c_this, int32 role);
	[LinkName("QCompleter_CompletionRole")]
	public static extern int32 QCompleter_CompletionRole(void* c_this);
	[LinkName("QCompleter_WrapAround")]
	public static extern bool QCompleter_WrapAround(void* c_this);
	[LinkName("QCompleter_MaxVisibleItems")]
	public static extern int32 QCompleter_MaxVisibleItems(void* c_this);
	[LinkName("QCompleter_SetMaxVisibleItems")]
	public static extern void QCompleter_SetMaxVisibleItems(void* c_this, int32 maxItems);
	[LinkName("QCompleter_CompletionCount")]
	public static extern int32 QCompleter_CompletionCount(void* c_this);
	[LinkName("QCompleter_SetCurrentRow")]
	public static extern bool QCompleter_SetCurrentRow(void* c_this, int32 row);
	[LinkName("QCompleter_CurrentRow")]
	public static extern int32 QCompleter_CurrentRow(void* c_this);
	[LinkName("QCompleter_CurrentIndex")]
	public static extern QModelIndex QCompleter_CurrentIndex(void* c_this);
	[LinkName("QCompleter_CurrentCompletion")]
	public static extern char8[] QCompleter_CurrentCompletion(void* c_this);
	[LinkName("QCompleter_CompletionModel")]
	public static extern QAbstractItemModel QCompleter_CompletionModel(void* c_this);
	[LinkName("QCompleter_CompletionPrefix")]
	public static extern char8[] QCompleter_CompletionPrefix(void* c_this);
	[LinkName("QCompleter_SetCompletionPrefix")]
	public static extern void QCompleter_SetCompletionPrefix(void* c_this, char8[] prefix);
	[LinkName("QCompleter_Complete")]
	public static extern void QCompleter_Complete(void* c_this);
	[LinkName("QCompleter_SetWrapAround")]
	public static extern void QCompleter_SetWrapAround(void* c_this, bool wrap);
	[LinkName("QCompleter_PathFromIndex")]
	public static extern char8[] QCompleter_PathFromIndex(void* c_this, QModelIndex index);
	[LinkName("QCompleter_SplitPath")]
	public static extern char8[][] QCompleter_SplitPath(void* c_this, char8[] path);
	[LinkName("QCompleter_EventFilter")]
	public static extern bool QCompleter_EventFilter(void* c_this, QObject o, QEvent e);
	[LinkName("QCompleter_Event")]
	public static extern bool QCompleter_Event(void* c_this, QEvent param1);
	[LinkName("QCompleter_Activated")]
	public static extern void QCompleter_Activated(void* c_this, char8[] text);
	[LinkName("QCompleter_ActivatedWithIndex")]
	public static extern void QCompleter_ActivatedWithIndex(void* c_this, QModelIndex index);
	[LinkName("QCompleter_Highlighted")]
	public static extern void QCompleter_Highlighted(void* c_this, char8[] text);
	[LinkName("QCompleter_HighlightedWithIndex")]
	public static extern void QCompleter_HighlightedWithIndex(void* c_this, QModelIndex index);
	[LinkName("QCompleter_Tr2")]
	public static extern char8[] QCompleter_Tr2(char8[] s, char8[] c);
	[LinkName("QCompleter_Tr3")]
	public static extern char8[] QCompleter_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QCompleter_Complete1")]
	public static extern void QCompleter_Complete1(void* c_this, QRect rect);
}