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
public struct QCompleter : QObject
{
	[LinkName("QCompleter_new")]
	public static extern QCompleter* QCompleter_new();
	[LinkName("QCompleter_new2")]
	public static extern QCompleter* QCompleter_new2(QAbstractItemModel* model);
	[LinkName("QCompleter_new3")]
	public static extern QCompleter* QCompleter_new3(libqt_string[] completions);
	[LinkName("QCompleter_new4")]
	public static extern QCompleter* QCompleter_new4(QObject* parent);
	[LinkName("QCompleter_new5")]
	public static extern QCompleter* QCompleter_new5(QAbstractItemModel* model, QObject* parent);
	[LinkName("QCompleter_new6")]
	public static extern QCompleter* QCompleter_new6(libqt_string[] completions, QObject* parent);
	[LinkName("QCompleter_MetaObject")]
	public static extern QMetaObject* QCompleter_MetaObject(Self* c_this);
	[LinkName("QCompleter_Metacast")]
	public static extern void* QCompleter_Metacast(Self* c_this, char8[] param1);
	[LinkName("QCompleter_Metacall")]
	public static extern int32 QCompleter_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QCompleter_Tr")]
	public static extern libqt_string QCompleter_Tr(char8[] s);
	[LinkName("QCompleter_SetWidget")]
	public static extern void QCompleter_SetWidget(Self* c_this, QWidget* widget);
	[LinkName("QCompleter_Widget")]
	public static extern QWidget* QCompleter_Widget(Self* c_this);
	[LinkName("QCompleter_SetModel")]
	public static extern void QCompleter_SetModel(Self* c_this, QAbstractItemModel* c);
	[LinkName("QCompleter_Model")]
	public static extern QAbstractItemModel* QCompleter_Model(Self* c_this);
	[LinkName("QCompleter_SetCompletionMode")]
	public static extern void QCompleter_SetCompletionMode(Self* c_this, int64 mode);
	[LinkName("QCompleter_CompletionMode")]
	public static extern int64 QCompleter_CompletionMode(Self* c_this);
	[LinkName("QCompleter_SetFilterMode")]
	public static extern void QCompleter_SetFilterMode(Self* c_this, int64 filterMode);
	[LinkName("QCompleter_FilterMode")]
	public static extern int64 QCompleter_FilterMode(Self* c_this);
	[LinkName("QCompleter_Popup")]
	public static extern QAbstractItemView* QCompleter_Popup(Self* c_this);
	[LinkName("QCompleter_SetPopup")]
	public static extern void QCompleter_SetPopup(Self* c_this, QAbstractItemView* popup);
	[LinkName("QCompleter_SetCaseSensitivity")]
	public static extern void QCompleter_SetCaseSensitivity(Self* c_this, int64 caseSensitivity);
	[LinkName("QCompleter_CaseSensitivity")]
	public static extern int64 QCompleter_CaseSensitivity(Self* c_this);
	[LinkName("QCompleter_SetModelSorting")]
	public static extern void QCompleter_SetModelSorting(Self* c_this, int64 sorting);
	[LinkName("QCompleter_ModelSorting")]
	public static extern int64 QCompleter_ModelSorting(Self* c_this);
	[LinkName("QCompleter_SetCompletionColumn")]
	public static extern void QCompleter_SetCompletionColumn(Self* c_this, int32 column);
	[LinkName("QCompleter_CompletionColumn")]
	public static extern int32 QCompleter_CompletionColumn(Self* c_this);
	[LinkName("QCompleter_SetCompletionRole")]
	public static extern void QCompleter_SetCompletionRole(Self* c_this, int32 role);
	[LinkName("QCompleter_CompletionRole")]
	public static extern int32 QCompleter_CompletionRole(Self* c_this);
	[LinkName("QCompleter_WrapAround")]
	public static extern bool QCompleter_WrapAround(Self* c_this);
	[LinkName("QCompleter_MaxVisibleItems")]
	public static extern int32 QCompleter_MaxVisibleItems(Self* c_this);
	[LinkName("QCompleter_SetMaxVisibleItems")]
	public static extern void QCompleter_SetMaxVisibleItems(Self* c_this, int32 maxItems);
	[LinkName("QCompleter_CompletionCount")]
	public static extern int32 QCompleter_CompletionCount(Self* c_this);
	[LinkName("QCompleter_SetCurrentRow")]
	public static extern bool QCompleter_SetCurrentRow(Self* c_this, int32 row);
	[LinkName("QCompleter_CurrentRow")]
	public static extern int32 QCompleter_CurrentRow(Self* c_this);
	[LinkName("QCompleter_CurrentIndex")]
	public static extern QModelIndex QCompleter_CurrentIndex(Self* c_this);
	[LinkName("QCompleter_CurrentCompletion")]
	public static extern libqt_string QCompleter_CurrentCompletion(Self* c_this);
	[LinkName("QCompleter_CompletionModel")]
	public static extern QAbstractItemModel* QCompleter_CompletionModel(Self* c_this);
	[LinkName("QCompleter_CompletionPrefix")]
	public static extern libqt_string QCompleter_CompletionPrefix(Self* c_this);
	[LinkName("QCompleter_SetCompletionPrefix")]
	public static extern void QCompleter_SetCompletionPrefix(Self* c_this, libqt_string prefix);
	[LinkName("QCompleter_Complete")]
	public static extern void QCompleter_Complete(Self* c_this);
	[LinkName("QCompleter_SetWrapAround")]
	public static extern void QCompleter_SetWrapAround(Self* c_this, bool wrap);
	[LinkName("QCompleter_PathFromIndex")]
	public static extern libqt_string QCompleter_PathFromIndex(Self* c_this, QModelIndex* index);
	[LinkName("QCompleter_SplitPath")]
	public static extern libqt_string[] QCompleter_SplitPath(Self* c_this, libqt_string path);
	[LinkName("QCompleter_EventFilter")]
	public static extern bool QCompleter_EventFilter(Self* c_this, QObject* o, QEvent* e);
	[LinkName("QCompleter_Event")]
	public static extern bool QCompleter_Event(Self* c_this, QEvent* param1);
	[LinkName("QCompleter_Tr2")]
	public static extern libqt_string QCompleter_Tr2(char8[] s, char8[] c);
	[LinkName("QCompleter_Tr3")]
	public static extern libqt_string QCompleter_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QCompleter_Complete1")]
	public static extern void QCompleter_Complete1(Self* c_this, QRect* rect);
}