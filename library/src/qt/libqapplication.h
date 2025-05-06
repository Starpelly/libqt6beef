#pragma once
#ifndef SRC_QTC_LIBQAPPLICATION_H
#define SRC_QTC_LIBQAPPLICATION_H

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
typedef struct QApplication QApplication;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QClipboard QClipboard;
typedef struct QCoreApplication QCoreApplication;
typedef struct QCursor QCursor;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QFontMetrics QFontMetrics;
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
typedef struct QStyle QStyle;
typedef struct QStyleHints QStyleHints;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTranslator QTranslator;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QApplication* QApplication_new(int* argc, char** argv);
QTLIBC_API QApplication* QApplication_new2(int* argc, char** argv, int param3);
QTLIBC_API QMetaObject* QApplication_MetaObject(const QApplication* self);
QTLIBC_API void* QApplication_Metacast(QApplication* self, const char* param1);
QTLIBC_API int QApplication_Metacall(QApplication* self, int param1, int param2, void** param3);
QTLIBC_API void QApplication_OnMetacall(QApplication* self, intptr_t slot);
QTLIBC_API int QApplication_QBaseMetacall(QApplication* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QApplication_Tr(const char* s);
QTLIBC_API QStyle* QApplication_Style();
QTLIBC_API void QApplication_SetStyle(QStyle* style);
QTLIBC_API QStyle* QApplication_SetStyleWithStyle(libqt_string style);
QTLIBC_API QPalette* QApplication_Palette(QWidget* param1);
QTLIBC_API QPalette* QApplication_PaletteWithClassName(const char* className);
QTLIBC_API void QApplication_SetPalette(QPalette* param1);
QTLIBC_API QFont* QApplication_Font();
QTLIBC_API QFont* QApplication_FontWithQWidget(QWidget* param1);
QTLIBC_API QFont* QApplication_FontWithClassName(const char* className);
QTLIBC_API void QApplication_SetFont(QFont* param1);
QTLIBC_API QFontMetrics* QApplication_FontMetrics();
QTLIBC_API libqt_list /* of QWidget* */ QApplication_AllWidgets();
QTLIBC_API libqt_list /* of QWidget* */ QApplication_TopLevelWidgets();
QTLIBC_API QWidget* QApplication_ActivePopupWidget();
QTLIBC_API QWidget* QApplication_ActiveModalWidget();
QTLIBC_API QWidget* QApplication_FocusWidget();
QTLIBC_API QWidget* QApplication_ActiveWindow();
QTLIBC_API void QApplication_SetActiveWindow(QWidget* act);
QTLIBC_API QWidget* QApplication_WidgetAt(QPoint* p);
QTLIBC_API QWidget* QApplication_WidgetAt2(int x, int y);
QTLIBC_API QWidget* QApplication_TopLevelAt(QPoint* p);
QTLIBC_API QWidget* QApplication_TopLevelAt2(int x, int y);
QTLIBC_API void QApplication_Beep();
QTLIBC_API void QApplication_Alert(QWidget* widget);
QTLIBC_API void QApplication_SetCursorFlashTime(int cursorFlashTime);
QTLIBC_API int QApplication_CursorFlashTime();
QTLIBC_API void QApplication_SetDoubleClickInterval(int doubleClickInterval);
QTLIBC_API int QApplication_DoubleClickInterval();
QTLIBC_API void QApplication_SetKeyboardInputInterval(int keyboardInputInterval);
QTLIBC_API int QApplication_KeyboardInputInterval();
QTLIBC_API void QApplication_SetWheelScrollLines(int wheelScrollLines);
QTLIBC_API int QApplication_WheelScrollLines();
QTLIBC_API void QApplication_SetStartDragTime(int ms);
QTLIBC_API int QApplication_StartDragTime();
QTLIBC_API void QApplication_SetStartDragDistance(int l);
QTLIBC_API int QApplication_StartDragDistance();
QTLIBC_API bool QApplication_IsEffectEnabled(int param1);
QTLIBC_API void QApplication_SetEffectEnabled(int param1);
QTLIBC_API int QApplication_Exec();
QTLIBC_API bool QApplication_Notify(QApplication* self, QObject* param1, QEvent* param2);
QTLIBC_API void QApplication_OnNotify(QApplication* self, intptr_t slot);
QTLIBC_API bool QApplication_QBaseNotify(QApplication* self, QObject* param1, QEvent* param2);
QTLIBC_API void QApplication_FocusChanged(QApplication* self, QWidget* old, QWidget* now);
void QApplication_Connect_FocusChanged(QApplication* self, intptr_t slot);
QTLIBC_API libqt_string QApplication_StyleSheet(const QApplication* self);
QTLIBC_API void QApplication_SetStyleSheet(QApplication* self, libqt_string sheet);
QTLIBC_API void QApplication_SetAutoSipEnabled(QApplication* self, const bool enabled);
QTLIBC_API bool QApplication_AutoSipEnabled(const QApplication* self);
QTLIBC_API void QApplication_CloseAllWindows();
QTLIBC_API void QApplication_AboutQt();
QTLIBC_API bool QApplication_Event(QApplication* self, QEvent* param1);
QTLIBC_API void QApplication_OnEvent(QApplication* self, intptr_t slot);
QTLIBC_API bool QApplication_QBaseEvent(QApplication* self, QEvent* param1);
QTLIBC_API libqt_string QApplication_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QApplication_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QApplication_SetPalette2(QPalette* param1, const char* className);
QTLIBC_API void QApplication_SetFont2(QFont* param1, const char* className);
QTLIBC_API void QApplication_Alert2(QWidget* widget, int duration);
QTLIBC_API void QApplication_SetEffectEnabled2(int param1, bool enable);
QTLIBC_API bool QApplication_EventFilter(QApplication* self, QObject* watched, QEvent* event);
QTLIBC_API void QApplication_OnEventFilter(QApplication* self, intptr_t slot);
QTLIBC_API bool QApplication_QBaseEventFilter(QApplication* self, QObject* watched, QEvent* event);
QTLIBC_API void QApplication_TimerEvent(QApplication* self, QTimerEvent* event);
QTLIBC_API void QApplication_OnTimerEvent(QApplication* self, intptr_t slot);
QTLIBC_API void QApplication_QBaseTimerEvent(QApplication* self, QTimerEvent* event);
QTLIBC_API void QApplication_ChildEvent(QApplication* self, QChildEvent* event);
QTLIBC_API void QApplication_OnChildEvent(QApplication* self, intptr_t slot);
QTLIBC_API void QApplication_QBaseChildEvent(QApplication* self, QChildEvent* event);
QTLIBC_API void QApplication_CustomEvent(QApplication* self, QEvent* event);
QTLIBC_API void QApplication_OnCustomEvent(QApplication* self, intptr_t slot);
QTLIBC_API void QApplication_QBaseCustomEvent(QApplication* self, QEvent* event);
QTLIBC_API void QApplication_ConnectNotify(QApplication* self, QMetaMethod* signal);
QTLIBC_API void QApplication_OnConnectNotify(QApplication* self, intptr_t slot);
QTLIBC_API void QApplication_QBaseConnectNotify(QApplication* self, QMetaMethod* signal);
QTLIBC_API void QApplication_DisconnectNotify(QApplication* self, QMetaMethod* signal);
QTLIBC_API void QApplication_OnDisconnectNotify(QApplication* self, intptr_t slot);
QTLIBC_API void QApplication_QBaseDisconnectNotify(QApplication* self, QMetaMethod* signal);
QTLIBC_API void* QApplication_ResolveInterface(const QApplication* self, const char* name, int revision);
QTLIBC_API void QApplication_OnResolveInterface(const QApplication* self, intptr_t slot);
QTLIBC_API void* QApplication_QBaseResolveInterface(const QApplication* self, const char* name, int revision);
QTLIBC_API QObject* QApplication_Sender(const QApplication* self);
QTLIBC_API void QApplication_OnSender(const QApplication* self, intptr_t slot);
QTLIBC_API QObject* QApplication_QBaseSender(const QApplication* self);
QTLIBC_API int QApplication_SenderSignalIndex(const QApplication* self);
QTLIBC_API void QApplication_OnSenderSignalIndex(const QApplication* self, intptr_t slot);
QTLIBC_API int QApplication_QBaseSenderSignalIndex(const QApplication* self);
QTLIBC_API int QApplication_Receivers(const QApplication* self, const char* signal);
QTLIBC_API void QApplication_OnReceivers(const QApplication* self, intptr_t slot);
QTLIBC_API int QApplication_QBaseReceivers(const QApplication* self, const char* signal);
QTLIBC_API bool QApplication_IsSignalConnected(const QApplication* self, QMetaMethod* signal);
QTLIBC_API void QApplication_OnIsSignalConnected(const QApplication* self, intptr_t slot);
QTLIBC_API bool QApplication_QBaseIsSignalConnected(const QApplication* self, QMetaMethod* signal);
QTLIBC_API void QApplication_Delete(QApplication* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
