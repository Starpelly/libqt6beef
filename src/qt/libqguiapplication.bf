using System;
using System.Interop;
namespace Qt;

public struct QGuiApplication : QCoreApplication
{
	[LinkName("QGuiApplication_new")]
	public static extern QGuiApplication* QGuiApplication_new(int32* argc, char8[] argv);
	[LinkName("QGuiApplication_new2")]
	public static extern QGuiApplication* QGuiApplication_new2(int32* argc, char8[] argv, int32 param3);
	[LinkName("QGuiApplication_MetaObject")]
	public static extern QMetaObject* QGuiApplication_MetaObject(Self* c_this);
	[LinkName("QGuiApplication_Metacast")]
	public static extern void* QGuiApplication_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGuiApplication_Metacall")]
	public static extern int32 QGuiApplication_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGuiApplication_Tr")]
	public static extern libqt_string QGuiApplication_Tr(char8[] s);
	[LinkName("QGuiApplication_SetApplicationDisplayName")]
	public static extern void QGuiApplication_SetApplicationDisplayName(libqt_string name);
	[LinkName("QGuiApplication_ApplicationDisplayName")]
	public static extern libqt_string QGuiApplication_ApplicationDisplayName();
	[LinkName("QGuiApplication_SetDesktopFileName")]
	public static extern void QGuiApplication_SetDesktopFileName(libqt_string name);
	[LinkName("QGuiApplication_DesktopFileName")]
	public static extern libqt_string QGuiApplication_DesktopFileName();
	[LinkName("QGuiApplication_AllWindows")]
	public static extern QWindow*[] QGuiApplication_AllWindows();
	[LinkName("QGuiApplication_TopLevelWindows")]
	public static extern QWindow*[] QGuiApplication_TopLevelWindows();
	[LinkName("QGuiApplication_TopLevelAt")]
	public static extern QWindow* QGuiApplication_TopLevelAt(QPoint* pos);
	[LinkName("QGuiApplication_SetWindowIcon")]
	public static extern void QGuiApplication_SetWindowIcon(QIcon* icon);
	[LinkName("QGuiApplication_WindowIcon")]
	public static extern QIcon QGuiApplication_WindowIcon();
	[LinkName("QGuiApplication_PlatformName")]
	public static extern libqt_string QGuiApplication_PlatformName();
	[LinkName("QGuiApplication_ModalWindow")]
	public static extern QWindow* QGuiApplication_ModalWindow();
	[LinkName("QGuiApplication_FocusWindow")]
	public static extern QWindow* QGuiApplication_FocusWindow();
	[LinkName("QGuiApplication_FocusObject")]
	public static extern QObject* QGuiApplication_FocusObject();
	[LinkName("QGuiApplication_PrimaryScreen")]
	public static extern QScreen* QGuiApplication_PrimaryScreen();
	[LinkName("QGuiApplication_Screens")]
	public static extern QScreen*[] QGuiApplication_Screens();
	[LinkName("QGuiApplication_ScreenAt")]
	public static extern QScreen* QGuiApplication_ScreenAt(QPoint* point);
	[LinkName("QGuiApplication_DevicePixelRatio")]
	public static extern double QGuiApplication_DevicePixelRatio(Self* c_this);
	[LinkName("QGuiApplication_OverrideCursor")]
	public static extern QCursor* QGuiApplication_OverrideCursor();
	[LinkName("QGuiApplication_SetOverrideCursor")]
	public static extern void QGuiApplication_SetOverrideCursor(QCursor* overrideCursor);
	[LinkName("QGuiApplication_ChangeOverrideCursor")]
	public static extern void QGuiApplication_ChangeOverrideCursor(QCursor* param1);
	[LinkName("QGuiApplication_RestoreOverrideCursor")]
	public static extern void QGuiApplication_RestoreOverrideCursor();
	[LinkName("QGuiApplication_Font")]
	public static extern QFont QGuiApplication_Font();
	[LinkName("QGuiApplication_SetFont")]
	public static extern void QGuiApplication_SetFont(QFont* font);
	[LinkName("QGuiApplication_Clipboard")]
	public static extern QClipboard* QGuiApplication_Clipboard();
	[LinkName("QGuiApplication_Palette")]
	public static extern QPalette QGuiApplication_Palette();
	[LinkName("QGuiApplication_SetPalette")]
	public static extern void QGuiApplication_SetPalette(QPalette* pal);
	[LinkName("QGuiApplication_KeyboardModifiers")]
	public static extern int64 QGuiApplication_KeyboardModifiers();
	[LinkName("QGuiApplication_QueryKeyboardModifiers")]
	public static extern int64 QGuiApplication_QueryKeyboardModifiers();
	[LinkName("QGuiApplication_MouseButtons")]
	public static extern int64 QGuiApplication_MouseButtons();
	[LinkName("QGuiApplication_SetLayoutDirection")]
	public static extern void QGuiApplication_SetLayoutDirection(int64 direction);
	[LinkName("QGuiApplication_LayoutDirection")]
	public static extern int64 QGuiApplication_LayoutDirection();
	[LinkName("QGuiApplication_IsRightToLeft")]
	public static extern bool QGuiApplication_IsRightToLeft();
	[LinkName("QGuiApplication_IsLeftToRight")]
	public static extern bool QGuiApplication_IsLeftToRight();
	[LinkName("QGuiApplication_StyleHints")]
	public static extern QStyleHints* QGuiApplication_StyleHints();
	[LinkName("QGuiApplication_SetDesktopSettingsAware")]
	public static extern void QGuiApplication_SetDesktopSettingsAware(bool on);
	[LinkName("QGuiApplication_DesktopSettingsAware")]
	public static extern bool QGuiApplication_DesktopSettingsAware();
	[LinkName("QGuiApplication_InputMethod")]
	public static extern QInputMethod* QGuiApplication_InputMethod();
	[LinkName("QGuiApplication_SetQuitOnLastWindowClosed")]
	public static extern void QGuiApplication_SetQuitOnLastWindowClosed(bool quit);
	[LinkName("QGuiApplication_QuitOnLastWindowClosed")]
	public static extern bool QGuiApplication_QuitOnLastWindowClosed();
	[LinkName("QGuiApplication_ApplicationState")]
	public static extern int64 QGuiApplication_ApplicationState();
	[LinkName("QGuiApplication_SetHighDpiScaleFactorRoundingPolicy")]
	public static extern void QGuiApplication_SetHighDpiScaleFactorRoundingPolicy(int64 policy);
	[LinkName("QGuiApplication_HighDpiScaleFactorRoundingPolicy")]
	public static extern int64 QGuiApplication_HighDpiScaleFactorRoundingPolicy();
	[LinkName("QGuiApplication_Exec")]
	public static extern int32 QGuiApplication_Exec();
	[LinkName("QGuiApplication_Notify")]
	public static extern bool QGuiApplication_Notify(Self* c_this, QObject* param1, QEvent* param2);
	[LinkName("QGuiApplication_IsSessionRestored")]
	public static extern bool QGuiApplication_IsSessionRestored(Self* c_this);
	[LinkName("QGuiApplication_SessionId")]
	public static extern libqt_string QGuiApplication_SessionId(Self* c_this);
	[LinkName("QGuiApplication_SessionKey")]
	public static extern libqt_string QGuiApplication_SessionKey(Self* c_this);
	[LinkName("QGuiApplication_IsSavingSession")]
	public static extern bool QGuiApplication_IsSavingSession(Self* c_this);
	[LinkName("QGuiApplication_ResolveInterface")]
	public static extern void* QGuiApplication_ResolveInterface(Self* c_this, char8[] name, int32 revision);
	[LinkName("QGuiApplication_Sync")]
	public static extern void QGuiApplication_Sync();
	[LinkName("QGuiApplication_FontDatabaseChanged")]
	public static extern void QGuiApplication_FontDatabaseChanged(Self* c_this);
	[LinkName("QGuiApplication_ScreenAdded")]
	public static extern void QGuiApplication_ScreenAdded(Self* c_this, QScreen* screen);
	[LinkName("QGuiApplication_ScreenRemoved")]
	public static extern void QGuiApplication_ScreenRemoved(Self* c_this, QScreen* screen);
	[LinkName("QGuiApplication_PrimaryScreenChanged")]
	public static extern void QGuiApplication_PrimaryScreenChanged(Self* c_this, QScreen* screen);
	[LinkName("QGuiApplication_LastWindowClosed")]
	public static extern void QGuiApplication_LastWindowClosed(Self* c_this);
	[LinkName("QGuiApplication_FocusObjectChanged")]
	public static extern void QGuiApplication_FocusObjectChanged(Self* c_this, QObject* focusObject);
	[LinkName("QGuiApplication_FocusWindowChanged")]
	public static extern void QGuiApplication_FocusWindowChanged(Self* c_this, QWindow* focusWindow);
	[LinkName("QGuiApplication_ApplicationStateChanged")]
	public static extern void QGuiApplication_ApplicationStateChanged(Self* c_this, int64 state);
	[LinkName("QGuiApplication_LayoutDirectionChanged")]
	public static extern void QGuiApplication_LayoutDirectionChanged(Self* c_this, int64 direction);
	[LinkName("QGuiApplication_CommitDataRequest")]
	public static extern void QGuiApplication_CommitDataRequest(Self* c_this, QSessionManager* sessionManager);
	[LinkName("QGuiApplication_SaveStateRequest")]
	public static extern void QGuiApplication_SaveStateRequest(Self* c_this, QSessionManager* sessionManager);
	[LinkName("QGuiApplication_ApplicationDisplayNameChanged")]
	public static extern void QGuiApplication_ApplicationDisplayNameChanged(Self* c_this);
	[LinkName("QGuiApplication_PaletteChanged")]
	public static extern void QGuiApplication_PaletteChanged(Self* c_this, QPalette* pal);
	[LinkName("QGuiApplication_FontChanged")]
	public static extern void QGuiApplication_FontChanged(Self* c_this, QFont* font);
	[LinkName("QGuiApplication_Event")]
	public static extern bool QGuiApplication_Event(Self* c_this, QEvent* param1);
	[LinkName("QGuiApplication_Tr2")]
	public static extern libqt_string QGuiApplication_Tr2(char8[] s, char8[] c);
	[LinkName("QGuiApplication_Tr3")]
	public static extern libqt_string QGuiApplication_Tr3(char8[] s, char8[] c, int32 n);
}