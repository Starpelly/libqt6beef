using System;
using System.Interop;
namespace Qt;

public struct QTextBrowser : QTextEdit
{
	[LinkName("QTextBrowser_new")]
	public static extern QTextBrowser* QTextBrowser_new(QWidget* parent);
	[LinkName("QTextBrowser_new2")]
	public static extern QTextBrowser* QTextBrowser_new2();
	[LinkName("QTextBrowser_MetaObject")]
	public static extern QMetaObject* QTextBrowser_MetaObject(Self* c_this);
	[LinkName("QTextBrowser_Metacast")]
	public static extern void* QTextBrowser_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTextBrowser_Metacall")]
	public static extern int32 QTextBrowser_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextBrowser_Tr")]
	public static extern libqt_string QTextBrowser_Tr(char8[] s);
	[LinkName("QTextBrowser_Source")]
	public static extern QUrl QTextBrowser_Source(Self* c_this);
	[LinkName("QTextBrowser_SourceType")]
	public static extern int64 QTextBrowser_SourceType(Self* c_this);
	[LinkName("QTextBrowser_SearchPaths")]
	public static extern libqt_string[] QTextBrowser_SearchPaths(Self* c_this);
	[LinkName("QTextBrowser_SetSearchPaths")]
	public static extern void QTextBrowser_SetSearchPaths(Self* c_this, libqt_string[] paths);
	[LinkName("QTextBrowser_LoadResource")]
	public static extern QVariant QTextBrowser_LoadResource(Self* c_this, int32 typeVal, QUrl* name);
	[LinkName("QTextBrowser_IsBackwardAvailable")]
	public static extern bool QTextBrowser_IsBackwardAvailable(Self* c_this);
	[LinkName("QTextBrowser_IsForwardAvailable")]
	public static extern bool QTextBrowser_IsForwardAvailable(Self* c_this);
	[LinkName("QTextBrowser_ClearHistory")]
	public static extern void QTextBrowser_ClearHistory(Self* c_this);
	[LinkName("QTextBrowser_HistoryTitle")]
	public static extern libqt_string QTextBrowser_HistoryTitle(Self* c_this, int32 param1);
	[LinkName("QTextBrowser_HistoryUrl")]
	public static extern QUrl QTextBrowser_HistoryUrl(Self* c_this, int32 param1);
	[LinkName("QTextBrowser_BackwardHistoryCount")]
	public static extern int32 QTextBrowser_BackwardHistoryCount(Self* c_this);
	[LinkName("QTextBrowser_ForwardHistoryCount")]
	public static extern int32 QTextBrowser_ForwardHistoryCount(Self* c_this);
	[LinkName("QTextBrowser_OpenExternalLinks")]
	public static extern bool QTextBrowser_OpenExternalLinks(Self* c_this);
	[LinkName("QTextBrowser_SetOpenExternalLinks")]
	public static extern void QTextBrowser_SetOpenExternalLinks(Self* c_this, bool open);
	[LinkName("QTextBrowser_OpenLinks")]
	public static extern bool QTextBrowser_OpenLinks(Self* c_this);
	[LinkName("QTextBrowser_SetOpenLinks")]
	public static extern void QTextBrowser_SetOpenLinks(Self* c_this, bool open);
	[LinkName("QTextBrowser_SetSource")]
	public static extern void QTextBrowser_SetSource(Self* c_this, QUrl* name);
	[LinkName("QTextBrowser_Backward")]
	public static extern void QTextBrowser_Backward(Self* c_this);
	[LinkName("QTextBrowser_Forward")]
	public static extern void QTextBrowser_Forward(Self* c_this);
	[LinkName("QTextBrowser_Home")]
	public static extern void QTextBrowser_Home(Self* c_this);
	[LinkName("QTextBrowser_Reload")]
	public static extern void QTextBrowser_Reload(Self* c_this);
	[LinkName("QTextBrowser_BackwardAvailable")]
	public static extern void QTextBrowser_BackwardAvailable(Self* c_this, bool param1);
	[LinkName("QTextBrowser_ForwardAvailable")]
	public static extern void QTextBrowser_ForwardAvailable(Self* c_this, bool param1);
	[LinkName("QTextBrowser_HistoryChanged")]
	public static extern void QTextBrowser_HistoryChanged(Self* c_this);
	[LinkName("QTextBrowser_SourceChanged")]
	public static extern void QTextBrowser_SourceChanged(Self* c_this, QUrl* param1);
	[LinkName("QTextBrowser_Highlighted")]
	public static extern void QTextBrowser_Highlighted(Self* c_this, QUrl* param1);
	[LinkName("QTextBrowser_AnchorClicked")]
	public static extern void QTextBrowser_AnchorClicked(Self* c_this, QUrl* param1);
	[LinkName("QTextBrowser_Event")]
	public static extern bool QTextBrowser_Event(Self* c_this, QEvent* e);
	[LinkName("QTextBrowser_KeyPressEvent")]
	public static extern void QTextBrowser_KeyPressEvent(Self* c_this, QKeyEvent* ev);
	[LinkName("QTextBrowser_MouseMoveEvent")]
	public static extern void QTextBrowser_MouseMoveEvent(Self* c_this, QMouseEvent* ev);
	[LinkName("QTextBrowser_MousePressEvent")]
	public static extern void QTextBrowser_MousePressEvent(Self* c_this, QMouseEvent* ev);
	[LinkName("QTextBrowser_MouseReleaseEvent")]
	public static extern void QTextBrowser_MouseReleaseEvent(Self* c_this, QMouseEvent* ev);
	[LinkName("QTextBrowser_FocusOutEvent")]
	public static extern void QTextBrowser_FocusOutEvent(Self* c_this, QFocusEvent* ev);
	[LinkName("QTextBrowser_FocusNextPrevChild")]
	public static extern bool QTextBrowser_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QTextBrowser_PaintEvent")]
	public static extern void QTextBrowser_PaintEvent(Self* c_this, QPaintEvent* e);
	[LinkName("QTextBrowser_DoSetSource")]
	public static extern void QTextBrowser_DoSetSource(Self* c_this, QUrl* name, int64 typeVal);
	[LinkName("QTextBrowser_Tr2")]
	public static extern libqt_string QTextBrowser_Tr2(char8[] s, char8[] c);
	[LinkName("QTextBrowser_Tr3")]
	public static extern libqt_string QTextBrowser_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTextBrowser_SetSource2")]
	public static extern void QTextBrowser_SetSource2(Self* c_this, QUrl* name, int64 typeVal);
}