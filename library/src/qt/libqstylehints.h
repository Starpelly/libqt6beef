#pragma once
#ifndef SRC_QTC_LIBQSTYLEHINTS_H
#define SRC_QTC_LIBQSTYLEHINTS_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChar QChar;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QStyleHints QStyleHints;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QMetaObject* QStyleHints_MetaObject(const QStyleHints* self);
QTLIBC_API void* QStyleHints_Metacast(QStyleHints* self, const char* param1);
QTLIBC_API int QStyleHints_Metacall(QStyleHints* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStyleHints_Tr(const char* s);
QTLIBC_API void QStyleHints_SetMouseDoubleClickInterval(QStyleHints* self, int mouseDoubleClickInterval);
QTLIBC_API int QStyleHints_MouseDoubleClickInterval(const QStyleHints* self);
QTLIBC_API int QStyleHints_MouseDoubleClickDistance(const QStyleHints* self);
QTLIBC_API int QStyleHints_TouchDoubleTapDistance(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetMousePressAndHoldInterval(QStyleHints* self, int mousePressAndHoldInterval);
QTLIBC_API int QStyleHints_MousePressAndHoldInterval(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetStartDragDistance(QStyleHints* self, int startDragDistance);
QTLIBC_API int QStyleHints_StartDragDistance(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetStartDragTime(QStyleHints* self, int startDragTime);
QTLIBC_API int QStyleHints_StartDragTime(const QStyleHints* self);
QTLIBC_API int QStyleHints_StartDragVelocity(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetKeyboardInputInterval(QStyleHints* self, int keyboardInputInterval);
QTLIBC_API int QStyleHints_KeyboardInputInterval(const QStyleHints* self);
QTLIBC_API int QStyleHints_KeyboardAutoRepeatRate(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetCursorFlashTime(QStyleHints* self, int cursorFlashTime);
QTLIBC_API int QStyleHints_CursorFlashTime(const QStyleHints* self);
QTLIBC_API bool QStyleHints_ShowIsFullScreen(const QStyleHints* self);
QTLIBC_API bool QStyleHints_ShowIsMaximized(const QStyleHints* self);
QTLIBC_API bool QStyleHints_ShowShortcutsInContextMenus(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetShowShortcutsInContextMenus(QStyleHints* self, bool showShortcutsInContextMenus);
QTLIBC_API int QStyleHints_PasswordMaskDelay(const QStyleHints* self);
QTLIBC_API QChar* QStyleHints_PasswordMaskCharacter(const QStyleHints* self);
QTLIBC_API double QStyleHints_FontSmoothingGamma(const QStyleHints* self);
QTLIBC_API bool QStyleHints_UseRtlExtensions(const QStyleHints* self);
QTLIBC_API bool QStyleHints_SetFocusOnTouchRelease(const QStyleHints* self);
QTLIBC_API int QStyleHints_TabFocusBehavior(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetTabFocusBehavior(QStyleHints* self, int tabFocusBehavior);
QTLIBC_API bool QStyleHints_SingleClickActivation(const QStyleHints* self);
QTLIBC_API bool QStyleHints_UseHoverEffects(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetUseHoverEffects(QStyleHints* self, bool useHoverEffects);
QTLIBC_API int QStyleHints_WheelScrollLines(const QStyleHints* self);
QTLIBC_API void QStyleHints_SetWheelScrollLines(QStyleHints* self, int scrollLines);
QTLIBC_API void QStyleHints_SetMouseQuickSelectionThreshold(QStyleHints* self, int threshold);
QTLIBC_API int QStyleHints_MouseQuickSelectionThreshold(const QStyleHints* self);
QTLIBC_API void QStyleHints_CursorFlashTimeChanged(QStyleHints* self, int cursorFlashTime);
QTLIBC_API void QStyleHints_Connect_CursorFlashTimeChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_KeyboardInputIntervalChanged(QStyleHints* self, int keyboardInputInterval);
QTLIBC_API void QStyleHints_Connect_KeyboardInputIntervalChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_MouseDoubleClickIntervalChanged(QStyleHints* self, int mouseDoubleClickInterval);
QTLIBC_API void QStyleHints_Connect_MouseDoubleClickIntervalChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_MousePressAndHoldIntervalChanged(QStyleHints* self, int mousePressAndHoldInterval);
QTLIBC_API void QStyleHints_Connect_MousePressAndHoldIntervalChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_StartDragDistanceChanged(QStyleHints* self, int startDragDistance);
QTLIBC_API void QStyleHints_Connect_StartDragDistanceChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_StartDragTimeChanged(QStyleHints* self, int startDragTime);
QTLIBC_API void QStyleHints_Connect_StartDragTimeChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_TabFocusBehaviorChanged(QStyleHints* self, int tabFocusBehavior);
QTLIBC_API void QStyleHints_Connect_TabFocusBehaviorChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_UseHoverEffectsChanged(QStyleHints* self, bool useHoverEffects);
QTLIBC_API void QStyleHints_Connect_UseHoverEffectsChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_ShowShortcutsInContextMenusChanged(QStyleHints* self, bool param1);
QTLIBC_API void QStyleHints_Connect_ShowShortcutsInContextMenusChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_WheelScrollLinesChanged(QStyleHints* self, int scrollLines);
QTLIBC_API void QStyleHints_Connect_WheelScrollLinesChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API void QStyleHints_MouseQuickSelectionThresholdChanged(QStyleHints* self, int threshold);
QTLIBC_API void QStyleHints_Connect_MouseQuickSelectionThresholdChanged(QStyleHints* self, intptr_t slot);
QTLIBC_API libqt_string QStyleHints_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStyleHints_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QStyleHints_Event(QStyleHints* self, QEvent* event);
QTLIBC_API bool QStyleHints_EventFilter(QStyleHints* self, QObject* watched, QEvent* event);
QTLIBC_API void QStyleHints_Delete(QStyleHints* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
