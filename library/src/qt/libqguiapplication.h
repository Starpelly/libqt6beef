#pragma once
#ifndef SRC_QTC_LIBQGUIAPPLICATION_H
#define SRC_QTC_LIBQGUIAPPLICATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractEventDispatcher QAbstractEventDispatcher;
typedef struct QAbstractNativeEventFilter QAbstractNativeEventFilter;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QClipboard QClipboard;
typedef struct QCoreApplication QCoreApplication;
typedef struct QCursor QCursor;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QGuiApplication QGuiApplication;
typedef struct QIcon QIcon;
typedef struct QInputMethod QInputMethod;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPalette QPalette;
typedef struct QPoint QPoint;
typedef struct QScreen QScreen;
typedef struct QSessionManager QSessionManager;
typedef struct QStyleHints QStyleHints;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTranslator QTranslator;
typedef struct QVariant QVariant;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QGuiApplication* QGuiApplication_new(int* argc, char** argv);
QTLIBC_API QGuiApplication* QGuiApplication_new2(int* argc, char** argv, int param3);
QTLIBC_API QMetaObject* QGuiApplication_MetaObject(const QGuiApplication* self);
QTLIBC_API void* QGuiApplication_Metacast(QGuiApplication* self, const char* param1);
QTLIBC_API int QGuiApplication_Metacall(QGuiApplication* self, int param1, int param2, void** param3);
QTLIBC_API void QGuiApplication_OnMetacall(QGuiApplication* self, intptr_t slot);
QTLIBC_API int QGuiApplication_QBaseMetacall(QGuiApplication* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGuiApplication_Tr(const char* s);
QTLIBC_API void QGuiApplication_SetApplicationDisplayName(libqt_string name);
QTLIBC_API libqt_string QGuiApplication_ApplicationDisplayName();
QTLIBC_API void QGuiApplication_SetDesktopFileName(libqt_string name);
QTLIBC_API libqt_string QGuiApplication_DesktopFileName();
QTLIBC_API libqt_list /* of QWindow* */ QGuiApplication_AllWindows();
QTLIBC_API libqt_list /* of QWindow* */ QGuiApplication_TopLevelWindows();
QTLIBC_API QWindow* QGuiApplication_TopLevelAt(QPoint* pos);
QTLIBC_API void QGuiApplication_SetWindowIcon(QIcon* icon);
QTLIBC_API QIcon* QGuiApplication_WindowIcon();
QTLIBC_API libqt_string QGuiApplication_PlatformName();
QTLIBC_API QWindow* QGuiApplication_ModalWindow();
QTLIBC_API QWindow* QGuiApplication_FocusWindow();
QTLIBC_API QObject* QGuiApplication_FocusObject();
QTLIBC_API QScreen* QGuiApplication_PrimaryScreen();
QTLIBC_API libqt_list /* of QScreen* */ QGuiApplication_Screens();
QTLIBC_API QScreen* QGuiApplication_ScreenAt(QPoint* point);
QTLIBC_API double QGuiApplication_DevicePixelRatio(const QGuiApplication* self);
QTLIBC_API QCursor* QGuiApplication_OverrideCursor();
QTLIBC_API void QGuiApplication_SetOverrideCursor(QCursor* overrideCursor);
QTLIBC_API void QGuiApplication_ChangeOverrideCursor(QCursor* param1);
QTLIBC_API void QGuiApplication_RestoreOverrideCursor();
QTLIBC_API QFont* QGuiApplication_Font();
QTLIBC_API void QGuiApplication_SetFont(QFont* font);
QTLIBC_API QClipboard* QGuiApplication_Clipboard();
QTLIBC_API QPalette* QGuiApplication_Palette();
QTLIBC_API void QGuiApplication_SetPalette(QPalette* pal);
QTLIBC_API int QGuiApplication_KeyboardModifiers();
QTLIBC_API int QGuiApplication_QueryKeyboardModifiers();
QTLIBC_API int QGuiApplication_MouseButtons();
QTLIBC_API void QGuiApplication_SetLayoutDirection(int direction);
QTLIBC_API int QGuiApplication_LayoutDirection();
QTLIBC_API bool QGuiApplication_IsRightToLeft();
QTLIBC_API bool QGuiApplication_IsLeftToRight();
QTLIBC_API QStyleHints* QGuiApplication_StyleHints();
QTLIBC_API void QGuiApplication_SetDesktopSettingsAware(bool on);
QTLIBC_API bool QGuiApplication_DesktopSettingsAware();
QTLIBC_API QInputMethod* QGuiApplication_InputMethod();
QTLIBC_API void QGuiApplication_SetQuitOnLastWindowClosed(bool quit);
QTLIBC_API bool QGuiApplication_QuitOnLastWindowClosed();
QTLIBC_API int QGuiApplication_ApplicationState();
QTLIBC_API void QGuiApplication_SetHighDpiScaleFactorRoundingPolicy(int policy);
QTLIBC_API int QGuiApplication_HighDpiScaleFactorRoundingPolicy();
QTLIBC_API int QGuiApplication_Exec();
QTLIBC_API bool QGuiApplication_Notify(QGuiApplication* self, QObject* param1, QEvent* param2);
QTLIBC_API void QGuiApplication_OnNotify(QGuiApplication* self, intptr_t slot);
QTLIBC_API bool QGuiApplication_QBaseNotify(QGuiApplication* self, QObject* param1, QEvent* param2);
QTLIBC_API bool QGuiApplication_IsSessionRestored(const QGuiApplication* self);
QTLIBC_API libqt_string QGuiApplication_SessionId(const QGuiApplication* self);
QTLIBC_API libqt_string QGuiApplication_SessionKey(const QGuiApplication* self);
QTLIBC_API bool QGuiApplication_IsSavingSession(const QGuiApplication* self);
QTLIBC_API void QGuiApplication_Sync();
QTLIBC_API void QGuiApplication_FontDatabaseChanged(QGuiApplication* self);
QTLIBC_API void QGuiApplication_Connect_FontDatabaseChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_ScreenAdded(QGuiApplication* self, QScreen* screen);
QTLIBC_API void QGuiApplication_Connect_ScreenAdded(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_ScreenRemoved(QGuiApplication* self, QScreen* screen);
QTLIBC_API void QGuiApplication_Connect_ScreenRemoved(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_PrimaryScreenChanged(QGuiApplication* self, QScreen* screen);
QTLIBC_API void QGuiApplication_Connect_PrimaryScreenChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_LastWindowClosed(QGuiApplication* self);
QTLIBC_API void QGuiApplication_Connect_LastWindowClosed(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_FocusObjectChanged(QGuiApplication* self, QObject* focusObject);
QTLIBC_API void QGuiApplication_Connect_FocusObjectChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_FocusWindowChanged(QGuiApplication* self, QWindow* focusWindow);
QTLIBC_API void QGuiApplication_Connect_FocusWindowChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_ApplicationStateChanged(QGuiApplication* self, int state);
QTLIBC_API void QGuiApplication_Connect_ApplicationStateChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_LayoutDirectionChanged(QGuiApplication* self, int direction);
QTLIBC_API void QGuiApplication_Connect_LayoutDirectionChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_CommitDataRequest(QGuiApplication* self, QSessionManager* sessionManager);
QTLIBC_API void QGuiApplication_Connect_CommitDataRequest(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_SaveStateRequest(QGuiApplication* self, QSessionManager* sessionManager);
QTLIBC_API void QGuiApplication_Connect_SaveStateRequest(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_ApplicationDisplayNameChanged(QGuiApplication* self);
QTLIBC_API void QGuiApplication_Connect_ApplicationDisplayNameChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_PaletteChanged(QGuiApplication* self, QPalette* pal);
QTLIBC_API void QGuiApplication_Connect_PaletteChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_FontChanged(QGuiApplication* self, QFont* font);
QTLIBC_API void QGuiApplication_Connect_FontChanged(QGuiApplication* self, intptr_t slot);
QTLIBC_API bool QGuiApplication_Event(QGuiApplication* self, QEvent* param1);
QTLIBC_API void QGuiApplication_OnEvent(QGuiApplication* self, intptr_t slot);
QTLIBC_API bool QGuiApplication_QBaseEvent(QGuiApplication* self, QEvent* param1);
QTLIBC_API libqt_string QGuiApplication_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGuiApplication_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QGuiApplication_EventFilter(QGuiApplication* self, QObject* watched, QEvent* event);
QTLIBC_API void QGuiApplication_OnEventFilter(QGuiApplication* self, intptr_t slot);
QTLIBC_API bool QGuiApplication_QBaseEventFilter(QGuiApplication* self, QObject* watched, QEvent* event);
QTLIBC_API void QGuiApplication_TimerEvent(QGuiApplication* self, QTimerEvent* event);
QTLIBC_API void QGuiApplication_OnTimerEvent(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_QBaseTimerEvent(QGuiApplication* self, QTimerEvent* event);
QTLIBC_API void QGuiApplication_ChildEvent(QGuiApplication* self, QChildEvent* event);
QTLIBC_API void QGuiApplication_OnChildEvent(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_QBaseChildEvent(QGuiApplication* self, QChildEvent* event);
QTLIBC_API void QGuiApplication_CustomEvent(QGuiApplication* self, QEvent* event);
QTLIBC_API void QGuiApplication_OnCustomEvent(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_QBaseCustomEvent(QGuiApplication* self, QEvent* event);
QTLIBC_API void QGuiApplication_ConnectNotify(QGuiApplication* self, QMetaMethod* signal);
QTLIBC_API void QGuiApplication_OnConnectNotify(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_QBaseConnectNotify(QGuiApplication* self, QMetaMethod* signal);
QTLIBC_API void QGuiApplication_DisconnectNotify(QGuiApplication* self, QMetaMethod* signal);
QTLIBC_API void QGuiApplication_OnDisconnectNotify(QGuiApplication* self, intptr_t slot);
QTLIBC_API void QGuiApplication_QBaseDisconnectNotify(QGuiApplication* self, QMetaMethod* signal);
QTLIBC_API void* QGuiApplication_ResolveInterface(const QGuiApplication* self, const char* name, int revision);
QTLIBC_API void QGuiApplication_OnResolveInterface(const QGuiApplication* self, intptr_t slot);
QTLIBC_API void* QGuiApplication_QBaseResolveInterface(const QGuiApplication* self, const char* name, int revision);
QTLIBC_API QObject* QGuiApplication_Sender(const QGuiApplication* self);
QTLIBC_API void QGuiApplication_OnSender(const QGuiApplication* self, intptr_t slot);
QTLIBC_API QObject* QGuiApplication_QBaseSender(const QGuiApplication* self);
QTLIBC_API int QGuiApplication_SenderSignalIndex(const QGuiApplication* self);
QTLIBC_API void QGuiApplication_OnSenderSignalIndex(const QGuiApplication* self, intptr_t slot);
QTLIBC_API int QGuiApplication_QBaseSenderSignalIndex(const QGuiApplication* self);
QTLIBC_API int QGuiApplication_Receivers(const QGuiApplication* self, const char* signal);
QTLIBC_API void QGuiApplication_OnReceivers(const QGuiApplication* self, intptr_t slot);
QTLIBC_API int QGuiApplication_QBaseReceivers(const QGuiApplication* self, const char* signal);
QTLIBC_API bool QGuiApplication_IsSignalConnected(const QGuiApplication* self, QMetaMethod* signal);
QTLIBC_API void QGuiApplication_OnIsSignalConnected(const QGuiApplication* self, intptr_t slot);
QTLIBC_API bool QGuiApplication_QBaseIsSignalConnected(const QGuiApplication* self, QMetaMethod* signal);
QTLIBC_API void QGuiApplication_Delete(QGuiApplication* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
