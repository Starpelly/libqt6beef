using System;
using System.Interop;
namespace Qt;

public struct QApplication : QGuiApplication
{
	[LinkName("QApplication_new")]
	public static extern QApplication* QApplication_new(int32* argc, char8[] argv);
	[LinkName("QApplication_new2")]
	public static extern QApplication* QApplication_new2(int32* argc, char8[] argv, int32 param3);
	[LinkName("QApplication_MetaObject")]
	public static extern QMetaObject* QApplication_MetaObject(Self* c_this);
	[LinkName("QApplication_Metacast")]
	public static extern void* QApplication_Metacast(Self* c_this, char8[] param1);
	[LinkName("QApplication_Metacall")]
	public static extern int32 QApplication_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QApplication_Tr")]
	public static extern libqt_string QApplication_Tr(char8[] s);
	[LinkName("QApplication_Style")]
	public static extern QStyle* QApplication_Style();
	[LinkName("QApplication_SetStyle")]
	public static extern void QApplication_SetStyle(QStyle* style);
	[LinkName("QApplication_SetStyleWithStyle")]
	public static extern QStyle* QApplication_SetStyleWithStyle(libqt_string style);
	[LinkName("QApplication_Palette")]
	public static extern QPalette QApplication_Palette(QWidget* param1);
	[LinkName("QApplication_PaletteWithClassName")]
	public static extern QPalette QApplication_PaletteWithClassName(char8[] className);
	[LinkName("QApplication_SetPalette")]
	public static extern void QApplication_SetPalette(QPalette* param1);
	[LinkName("QApplication_Font")]
	public static extern QFont QApplication_Font();
	[LinkName("QApplication_FontWithQWidget")]
	public static extern QFont QApplication_FontWithQWidget(QWidget* param1);
	[LinkName("QApplication_FontWithClassName")]
	public static extern QFont QApplication_FontWithClassName(char8[] className);
	[LinkName("QApplication_SetFont")]
	public static extern void QApplication_SetFont(QFont* param1);
	[LinkName("QApplication_FontMetrics")]
	public static extern QFontMetrics QApplication_FontMetrics();
	[LinkName("QApplication_AllWidgets")]
	public static extern QWidget*[] QApplication_AllWidgets();
	[LinkName("QApplication_TopLevelWidgets")]
	public static extern QWidget*[] QApplication_TopLevelWidgets();
	[LinkName("QApplication_ActivePopupWidget")]
	public static extern QWidget* QApplication_ActivePopupWidget();
	[LinkName("QApplication_ActiveModalWidget")]
	public static extern QWidget* QApplication_ActiveModalWidget();
	[LinkName("QApplication_FocusWidget")]
	public static extern QWidget* QApplication_FocusWidget();
	[LinkName("QApplication_ActiveWindow")]
	public static extern QWidget* QApplication_ActiveWindow();
	[LinkName("QApplication_SetActiveWindow")]
	public static extern void QApplication_SetActiveWindow(QWidget* act);
	[LinkName("QApplication_WidgetAt")]
	public static extern QWidget* QApplication_WidgetAt(QPoint* p);
	[LinkName("QApplication_WidgetAt2")]
	public static extern QWidget* QApplication_WidgetAt2(int32 x, int32 y);
	[LinkName("QApplication_TopLevelAt")]
	public static extern QWidget* QApplication_TopLevelAt(QPoint* p);
	[LinkName("QApplication_TopLevelAt2")]
	public static extern QWidget* QApplication_TopLevelAt2(int32 x, int32 y);
	[LinkName("QApplication_Beep")]
	public static extern void QApplication_Beep();
	[LinkName("QApplication_Alert")]
	public static extern void QApplication_Alert(QWidget* widget);
	[LinkName("QApplication_SetCursorFlashTime")]
	public static extern void QApplication_SetCursorFlashTime(int32 cursorFlashTime);
	[LinkName("QApplication_CursorFlashTime")]
	public static extern int32 QApplication_CursorFlashTime();
	[LinkName("QApplication_SetDoubleClickInterval")]
	public static extern void QApplication_SetDoubleClickInterval(int32 doubleClickInterval);
	[LinkName("QApplication_DoubleClickInterval")]
	public static extern int32 QApplication_DoubleClickInterval();
	[LinkName("QApplication_SetKeyboardInputInterval")]
	public static extern void QApplication_SetKeyboardInputInterval(int32 keyboardInputInterval);
	[LinkName("QApplication_KeyboardInputInterval")]
	public static extern int32 QApplication_KeyboardInputInterval();
	[LinkName("QApplication_SetWheelScrollLines")]
	public static extern void QApplication_SetWheelScrollLines(int32 wheelScrollLines);
	[LinkName("QApplication_WheelScrollLines")]
	public static extern int32 QApplication_WheelScrollLines();
	[LinkName("QApplication_SetStartDragTime")]
	public static extern void QApplication_SetStartDragTime(int32 ms);
	[LinkName("QApplication_StartDragTime")]
	public static extern int32 QApplication_StartDragTime();
	[LinkName("QApplication_SetStartDragDistance")]
	public static extern void QApplication_SetStartDragDistance(int32 l);
	[LinkName("QApplication_StartDragDistance")]
	public static extern int32 QApplication_StartDragDistance();
	[LinkName("QApplication_IsEffectEnabled")]
	public static extern bool QApplication_IsEffectEnabled(int64 param1);
	[LinkName("QApplication_SetEffectEnabled")]
	public static extern void QApplication_SetEffectEnabled(int64 param1);
	[LinkName("QApplication_Exec")]
	public static extern int32 QApplication_Exec();
	[LinkName("QApplication_Notify")]
	public static extern bool QApplication_Notify(Self* c_this, QObject* param1, QEvent* param2);
	[LinkName("QApplication_ResolveInterface")]
	public static extern void* QApplication_ResolveInterface(Self* c_this, char8[] name, int32 revision);
	[LinkName("QApplication_Connect_FocusChanged")]
	public static extern void QApplication_Connect_FocusChanged(Self* c_this, c_intptr slot);
	[LinkName("QApplication_StyleSheet")]
	public static extern libqt_string QApplication_StyleSheet(Self* c_this);
	[LinkName("QApplication_SetStyleSheet")]
	public static extern void QApplication_SetStyleSheet(Self* c_this, libqt_string sheet);
	[LinkName("QApplication_SetAutoSipEnabled")]
	public static extern void QApplication_SetAutoSipEnabled(Self* c_this, bool enabled);
	[LinkName("QApplication_AutoSipEnabled")]
	public static extern bool QApplication_AutoSipEnabled(Self* c_this);
	[LinkName("QApplication_CloseAllWindows")]
	public static extern void QApplication_CloseAllWindows();
	[LinkName("QApplication_AboutQt")]
	public static extern void QApplication_AboutQt();
	[LinkName("QApplication_Event")]
	public static extern bool QApplication_Event(Self* c_this, QEvent* param1);
	[LinkName("QApplication_Tr2")]
	public static extern libqt_string QApplication_Tr2(char8[] s, char8[] c);
	[LinkName("QApplication_Tr3")]
	public static extern libqt_string QApplication_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QApplication_SetPalette2")]
	public static extern void QApplication_SetPalette2(QPalette* param1, char8[] className);
	[LinkName("QApplication_SetFont2")]
	public static extern void QApplication_SetFont2(QFont* param1, char8[] className);
	[LinkName("QApplication_Alert2")]
	public static extern void QApplication_Alert2(QWidget* widget, int32 duration);
	[LinkName("QApplication_SetEffectEnabled2")]
	public static extern void QApplication_SetEffectEnabled2(int64 param1, bool enable);
}