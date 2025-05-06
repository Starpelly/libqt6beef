using System;
using System.Interop;
namespace Qt;

public struct QTextBrowser
{
	[LinkName("QTextBrowser_new")]
	public static extern void* QTextBrowser_new(QWidget parent);
	[LinkName("QTextBrowser_new2")]
	public static extern void* QTextBrowser_new2();
	[LinkName("QTextBrowser_MetaObject")]
	public static extern QMetaObject QTextBrowser_MetaObject(void* c_this);
	[LinkName("QTextBrowser_Metacast")]
	public static extern void QTextBrowser_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextBrowser_Metacall")]
	public static extern int32 QTextBrowser_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTextBrowser_Tr")]
	public static extern char8[] QTextBrowser_Tr(char8[] s);
	[LinkName("QTextBrowser_Source")]
	public static extern QUrl QTextBrowser_Source(void* c_this);
	[LinkName("QTextBrowser_SourceType")]
	public static extern int64 QTextBrowser_SourceType(void* c_this);
	[LinkName("QTextBrowser_SearchPaths")]
	public static extern char8[][] QTextBrowser_SearchPaths(void* c_this);
	[LinkName("QTextBrowser_SetSearchPaths")]
	public static extern void QTextBrowser_SetSearchPaths(void* c_this, char8[][] paths);
	[LinkName("QTextBrowser_LoadResource")]
	public static extern QVariant QTextBrowser_LoadResource(void* c_this, int32 typeVal, QUrl name);
	[LinkName("QTextBrowser_IsBackwardAvailable")]
	public static extern bool QTextBrowser_IsBackwardAvailable(void* c_this);
	[LinkName("QTextBrowser_IsForwardAvailable")]
	public static extern bool QTextBrowser_IsForwardAvailable(void* c_this);
	[LinkName("QTextBrowser_ClearHistory")]
	public static extern void QTextBrowser_ClearHistory(void* c_this);
	[LinkName("QTextBrowser_HistoryTitle")]
	public static extern char8[] QTextBrowser_HistoryTitle(void* c_this, int32 param1);
	[LinkName("QTextBrowser_HistoryUrl")]
	public static extern QUrl QTextBrowser_HistoryUrl(void* c_this, int32 param1);
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
	public static extern void QTextBrowser_SetSource(void* c_this, QUrl name);
	[LinkName("QTextBrowser_Backward")]
	public static extern void QTextBrowser_Backward(void* c_this);
	[LinkName("QTextBrowser_Forward")]
	public static extern void QTextBrowser_Forward(void* c_this);
	[LinkName("QTextBrowser_Home")]
	public static extern void QTextBrowser_Home(void* c_this);
	[LinkName("QTextBrowser_Reload")]
	public static extern void QTextBrowser_Reload(void* c_this);
	[LinkName("QTextBrowser_BackwardAvailable")]
	public static extern void QTextBrowser_BackwardAvailable(void* c_this, bool param1);
	[LinkName("QTextBrowser_ForwardAvailable")]
	public static extern void QTextBrowser_ForwardAvailable(void* c_this, bool param1);
	[LinkName("QTextBrowser_HistoryChanged")]
	public static extern void QTextBrowser_HistoryChanged(void* c_this);
	[LinkName("QTextBrowser_SourceChanged")]
	public static extern void QTextBrowser_SourceChanged(void* c_this, QUrl param1);
	[LinkName("QTextBrowser_Highlighted")]
	public static extern void QTextBrowser_Highlighted(void* c_this, QUrl param1);
	[LinkName("QTextBrowser_AnchorClicked")]
	public static extern void QTextBrowser_AnchorClicked(void* c_this, QUrl param1);
	[LinkName("QTextBrowser_Event")]
	public static extern bool QTextBrowser_Event(void* c_this, QEvent e);
	[LinkName("QTextBrowser_KeyPressEvent")]
	public static extern void QTextBrowser_KeyPressEvent(void* c_this, QKeyEvent ev);
	[LinkName("QTextBrowser_MouseMoveEvent")]
	public static extern void QTextBrowser_MouseMoveEvent(void* c_this, QMouseEvent ev);
	[LinkName("QTextBrowser_MousePressEvent")]
	public static extern void QTextBrowser_MousePressEvent(void* c_this, QMouseEvent ev);
	[LinkName("QTextBrowser_MouseReleaseEvent")]
	public static extern void QTextBrowser_MouseReleaseEvent(void* c_this, QMouseEvent ev);
	[LinkName("QTextBrowser_FocusOutEvent")]
	public static extern void QTextBrowser_FocusOutEvent(void* c_this, QFocusEvent ev);
	[LinkName("QTextBrowser_FocusNextPrevChild")]
	public static extern bool QTextBrowser_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QTextBrowser_PaintEvent")]
	public static extern void QTextBrowser_PaintEvent(void* c_this, QPaintEvent e);
	[LinkName("QTextBrowser_DoSetSource")]
	public static extern void QTextBrowser_DoSetSource(void* c_this, QUrl name, int64 typeVal);
	[LinkName("QTextBrowser_Tr2")]
	public static extern char8[] QTextBrowser_Tr2(char8[] s, char8[] c);
	[LinkName("QTextBrowser_Tr3")]
	public static extern char8[] QTextBrowser_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTextBrowser_SetSource2")]
	public static extern void QTextBrowser_SetSource2(void* c_this, QUrl name, int64 typeVal);
}