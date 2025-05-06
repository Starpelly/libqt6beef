#pragma once
#ifndef SRC_QTC_LIBQCOMMONSTYLE_H
#define SRC_QTC_LIBQCOMMONSTYLE_H

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
typedef struct QApplication QApplication;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QCommonStyle QCommonStyle;
typedef struct QEvent QEvent;
typedef struct QFontMetrics QFontMetrics;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPalette QPalette;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QStyle QStyle;
typedef struct QStyleHintReturn QStyleHintReturn;
typedef struct QStyleOption QStyleOption;
typedef struct QStyleOptionComplex QStyleOptionComplex;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

QTLIBC_API QCommonStyle* QCommonStyle_new();
QTLIBC_API QMetaObject* QCommonStyle_MetaObject(const QCommonStyle* self);
QTLIBC_API void* QCommonStyle_Metacast(QCommonStyle* self, const char* param1);
QTLIBC_API int QCommonStyle_Metacall(QCommonStyle* self, int param1, int param2, void** param3);
QTLIBC_API void QCommonStyle_OnMetacall(QCommonStyle* self, intptr_t slot);
QTLIBC_API int QCommonStyle_QBaseMetacall(QCommonStyle* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QCommonStyle_Tr(const char* s);
QTLIBC_API void QCommonStyle_DrawPrimitive(const QCommonStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
QTLIBC_API void QCommonStyle_OnDrawPrimitive(const QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseDrawPrimitive(const QCommonStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
QTLIBC_API void QCommonStyle_DrawControl(const QCommonStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QTLIBC_API void QCommonStyle_OnDrawControl(const QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseDrawControl(const QCommonStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QTLIBC_API QRect* QCommonStyle_SubElementRect(const QCommonStyle* self, int r, QStyleOption* opt, QWidget* widget);
QTLIBC_API void QCommonStyle_OnSubElementRect(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QRect* QCommonStyle_QBaseSubElementRect(const QCommonStyle* self, int r, QStyleOption* opt, QWidget* widget);
QTLIBC_API void QCommonStyle_DrawComplexControl(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w);
QTLIBC_API void QCommonStyle_OnDrawComplexControl(const QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseDrawComplexControl(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w);
QTLIBC_API int QCommonStyle_HitTestComplexControl(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w);
QTLIBC_API void QCommonStyle_OnHitTestComplexControl(const QCommonStyle* self, intptr_t slot);
QTLIBC_API int QCommonStyle_QBaseHitTestComplexControl(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w);
QTLIBC_API QRect* QCommonStyle_SubControlRect(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w);
QTLIBC_API void QCommonStyle_OnSubControlRect(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QRect* QCommonStyle_QBaseSubControlRect(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w);
QTLIBC_API QSize* QCommonStyle_SizeFromContents(const QCommonStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget);
QTLIBC_API void QCommonStyle_OnSizeFromContents(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QSize* QCommonStyle_QBaseSizeFromContents(const QCommonStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget);
QTLIBC_API int QCommonStyle_PixelMetric(const QCommonStyle* self, int m, QStyleOption* opt, QWidget* widget);
QTLIBC_API void QCommonStyle_OnPixelMetric(const QCommonStyle* self, intptr_t slot);
QTLIBC_API int QCommonStyle_QBasePixelMetric(const QCommonStyle* self, int m, QStyleOption* opt, QWidget* widget);
QTLIBC_API int QCommonStyle_StyleHint(const QCommonStyle* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret);
QTLIBC_API void QCommonStyle_OnStyleHint(const QCommonStyle* self, intptr_t slot);
QTLIBC_API int QCommonStyle_QBaseStyleHint(const QCommonStyle* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret);
QTLIBC_API QIcon* QCommonStyle_StandardIcon(const QCommonStyle* self, int standardIcon, QStyleOption* opt, QWidget* widget);
QTLIBC_API void QCommonStyle_OnStandardIcon(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QIcon* QCommonStyle_QBaseStandardIcon(const QCommonStyle* self, int standardIcon, QStyleOption* opt, QWidget* widget);
QTLIBC_API QPixmap* QCommonStyle_StandardPixmap(const QCommonStyle* self, int sp, QStyleOption* opt, QWidget* widget);
QTLIBC_API void QCommonStyle_OnStandardPixmap(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QPixmap* QCommonStyle_QBaseStandardPixmap(const QCommonStyle* self, int sp, QStyleOption* opt, QWidget* widget);
QTLIBC_API QPixmap* QCommonStyle_GeneratedIconPixmap(const QCommonStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
QTLIBC_API void QCommonStyle_OnGeneratedIconPixmap(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QPixmap* QCommonStyle_QBaseGeneratedIconPixmap(const QCommonStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
QTLIBC_API int QCommonStyle_LayoutSpacing(const QCommonStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
QTLIBC_API void QCommonStyle_OnLayoutSpacing(const QCommonStyle* self, intptr_t slot);
QTLIBC_API int QCommonStyle_QBaseLayoutSpacing(const QCommonStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
QTLIBC_API void QCommonStyle_Polish(QCommonStyle* self, QPalette* param1);
QTLIBC_API void QCommonStyle_OnPolish(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBasePolish(QCommonStyle* self, QPalette* param1);
QTLIBC_API void QCommonStyle_PolishWithApp(QCommonStyle* self, QApplication* app);
QTLIBC_API void QCommonStyle_OnPolishWithApp(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBasePolishWithApp(QCommonStyle* self, QApplication* app);
QTLIBC_API void QCommonStyle_PolishWithWidget(QCommonStyle* self, QWidget* widget);
QTLIBC_API void QCommonStyle_OnPolishWithWidget(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBasePolishWithWidget(QCommonStyle* self, QWidget* widget);
QTLIBC_API void QCommonStyle_Unpolish(QCommonStyle* self, QWidget* widget);
QTLIBC_API void QCommonStyle_OnUnpolish(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseUnpolish(QCommonStyle* self, QWidget* widget);
QTLIBC_API void QCommonStyle_UnpolishWithApplication(QCommonStyle* self, QApplication* application);
QTLIBC_API void QCommonStyle_OnUnpolishWithApplication(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseUnpolishWithApplication(QCommonStyle* self, QApplication* application);
QTLIBC_API libqt_string QCommonStyle_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QCommonStyle_Tr3(const char* s, const char* c, int n);
QTLIBC_API QRect* QCommonStyle_ItemTextRect(const QCommonStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, libqt_string text);
QTLIBC_API void QCommonStyle_OnItemTextRect(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QRect* QCommonStyle_QBaseItemTextRect(const QCommonStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, libqt_string text);
QTLIBC_API QRect* QCommonStyle_ItemPixmapRect(const QCommonStyle* self, QRect* r, int flags, QPixmap* pixmap);
QTLIBC_API void QCommonStyle_OnItemPixmapRect(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QRect* QCommonStyle_QBaseItemPixmapRect(const QCommonStyle* self, QRect* r, int flags, QPixmap* pixmap);
QTLIBC_API void QCommonStyle_DrawItemText(const QCommonStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, libqt_string text, int textRole);
QTLIBC_API void QCommonStyle_OnDrawItemText(const QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseDrawItemText(const QCommonStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, libqt_string text, int textRole);
QTLIBC_API void QCommonStyle_DrawItemPixmap(const QCommonStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QTLIBC_API void QCommonStyle_OnDrawItemPixmap(const QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseDrawItemPixmap(const QCommonStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QTLIBC_API QPalette* QCommonStyle_StandardPalette(const QCommonStyle* self);
QTLIBC_API void QCommonStyle_OnStandardPalette(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QPalette* QCommonStyle_QBaseStandardPalette(const QCommonStyle* self);
QTLIBC_API bool QCommonStyle_Event(QCommonStyle* self, QEvent* event);
QTLIBC_API void QCommonStyle_OnEvent(QCommonStyle* self, intptr_t slot);
QTLIBC_API bool QCommonStyle_QBaseEvent(QCommonStyle* self, QEvent* event);
QTLIBC_API bool QCommonStyle_EventFilter(QCommonStyle* self, QObject* watched, QEvent* event);
QTLIBC_API void QCommonStyle_OnEventFilter(QCommonStyle* self, intptr_t slot);
QTLIBC_API bool QCommonStyle_QBaseEventFilter(QCommonStyle* self, QObject* watched, QEvent* event);
QTLIBC_API void QCommonStyle_TimerEvent(QCommonStyle* self, QTimerEvent* event);
QTLIBC_API void QCommonStyle_OnTimerEvent(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseTimerEvent(QCommonStyle* self, QTimerEvent* event);
QTLIBC_API void QCommonStyle_ChildEvent(QCommonStyle* self, QChildEvent* event);
QTLIBC_API void QCommonStyle_OnChildEvent(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseChildEvent(QCommonStyle* self, QChildEvent* event);
QTLIBC_API void QCommonStyle_CustomEvent(QCommonStyle* self, QEvent* event);
QTLIBC_API void QCommonStyle_OnCustomEvent(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseCustomEvent(QCommonStyle* self, QEvent* event);
QTLIBC_API void QCommonStyle_ConnectNotify(QCommonStyle* self, QMetaMethod* signal);
QTLIBC_API void QCommonStyle_OnConnectNotify(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseConnectNotify(QCommonStyle* self, QMetaMethod* signal);
QTLIBC_API void QCommonStyle_DisconnectNotify(QCommonStyle* self, QMetaMethod* signal);
QTLIBC_API void QCommonStyle_OnDisconnectNotify(QCommonStyle* self, intptr_t slot);
QTLIBC_API void QCommonStyle_QBaseDisconnectNotify(QCommonStyle* self, QMetaMethod* signal);
QTLIBC_API QObject* QCommonStyle_Sender(const QCommonStyle* self);
QTLIBC_API void QCommonStyle_OnSender(const QCommonStyle* self, intptr_t slot);
QTLIBC_API QObject* QCommonStyle_QBaseSender(const QCommonStyle* self);
QTLIBC_API int QCommonStyle_SenderSignalIndex(const QCommonStyle* self);
QTLIBC_API void QCommonStyle_OnSenderSignalIndex(const QCommonStyle* self, intptr_t slot);
QTLIBC_API int QCommonStyle_QBaseSenderSignalIndex(const QCommonStyle* self);
QTLIBC_API int QCommonStyle_Receivers(const QCommonStyle* self, const char* signal);
QTLIBC_API void QCommonStyle_OnReceivers(const QCommonStyle* self, intptr_t slot);
QTLIBC_API int QCommonStyle_QBaseReceivers(const QCommonStyle* self, const char* signal);
QTLIBC_API bool QCommonStyle_IsSignalConnected(const QCommonStyle* self, QMetaMethod* signal);
QTLIBC_API void QCommonStyle_OnIsSignalConnected(const QCommonStyle* self, intptr_t slot);
QTLIBC_API bool QCommonStyle_QBaseIsSignalConnected(const QCommonStyle* self, QMetaMethod* signal);
QTLIBC_API void QCommonStyle_Delete(QCommonStyle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
