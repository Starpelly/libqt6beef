#pragma once
#ifndef SRC_QTC_LIBQSTYLE_H
#define SRC_QTC_LIBQSTYLE_H

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

#ifdef __cplusplus
typedef QStyle::ComplexControl ComplexControl;                       // C++ enum
typedef QStyle::ContentsType ContentsType;                           // C++ enum
typedef QStyle::ControlElement ControlElement;                       // C++ enum
typedef QStyle::PixelMetric PixelMetric;                             // C++ enum
typedef QStyle::PrimitiveElement PrimitiveElement;                   // C++ enum
typedef QStyle::RequestSoftwareInputPanel RequestSoftwareInputPanel; // C++ enum
typedef QStyle::StandardPixmap StandardPixmap;                       // C++ enum
typedef QStyle::State State;                                         // C++ QFlags
typedef QStyle::StateFlag StateFlag;                                 // C++ enum
typedef QStyle::StyleHint StyleHint;                                 // C++ enum
typedef QStyle::SubControl SubControl;                               // C++ enum
typedef QStyle::SubControls SubControls;                             // C++ QFlags
typedef QStyle::SubElement SubElement;                               // C++ enum
#else
typedef int ComplexControl;            // C ABI enum
typedef int ContentsType;              // C ABI enum
typedef int ControlElement;            // C ABI enum
typedef int PixelMetric;               // C ABI enum
typedef int PrimitiveElement;          // C ABI enum
typedef int RequestSoftwareInputPanel; // C ABI enum
typedef int StandardPixmap;            // C ABI enum
typedef int State;                     // C ABI QFlags
typedef int StateFlag;                 // C ABI enum
typedef int StyleHint;                 // C ABI enum
typedef int SubControl;                // C ABI enum
typedef int SubControls;               // C ABI QFlags
typedef int SubElement;                // C ABI enum
#endif

QTLIBC_API QStyle* QStyle_new();
QTLIBC_API QMetaObject* QStyle_MetaObject(const QStyle* self);
QTLIBC_API void* QStyle_Metacast(QStyle* self, const char* param1);
QTLIBC_API int QStyle_Metacall(QStyle* self, int param1, int param2, void** param3);
QTLIBC_API void QStyle_OnMetacall(QStyle* self, intptr_t slot);
QTLIBC_API int QStyle_QBaseMetacall(QStyle* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStyle_Tr(const char* s);
QTLIBC_API libqt_string QStyle_Name(const QStyle* self);
QTLIBC_API void QStyle_Polish(QStyle* self, QWidget* widget);
QTLIBC_API void QStyle_OnPolish(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBasePolish(QStyle* self, QWidget* widget);
QTLIBC_API void QStyle_Unpolish(QStyle* self, QWidget* widget);
QTLIBC_API void QStyle_OnUnpolish(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseUnpolish(QStyle* self, QWidget* widget);
QTLIBC_API void QStyle_PolishWithApplication(QStyle* self, QApplication* application);
QTLIBC_API void QStyle_OnPolishWithApplication(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBasePolishWithApplication(QStyle* self, QApplication* application);
QTLIBC_API void QStyle_UnpolishWithApplication(QStyle* self, QApplication* application);
QTLIBC_API void QStyle_OnUnpolishWithApplication(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseUnpolishWithApplication(QStyle* self, QApplication* application);
QTLIBC_API void QStyle_PolishWithPalette(QStyle* self, QPalette* palette);
QTLIBC_API void QStyle_OnPolishWithPalette(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBasePolishWithPalette(QStyle* self, QPalette* palette);
QTLIBC_API QRect* QStyle_ItemTextRect(const QStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, libqt_string text);
QTLIBC_API void QStyle_OnItemTextRect(const QStyle* self, intptr_t slot);
QTLIBC_API QRect* QStyle_QBaseItemTextRect(const QStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, libqt_string text);
QTLIBC_API QRect* QStyle_ItemPixmapRect(const QStyle* self, QRect* r, int flags, QPixmap* pixmap);
QTLIBC_API void QStyle_OnItemPixmapRect(const QStyle* self, intptr_t slot);
QTLIBC_API QRect* QStyle_QBaseItemPixmapRect(const QStyle* self, QRect* r, int flags, QPixmap* pixmap);
QTLIBC_API void QStyle_DrawItemText(const QStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, libqt_string text, int textRole);
QTLIBC_API void QStyle_OnDrawItemText(const QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseDrawItemText(const QStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, libqt_string text, int textRole);
QTLIBC_API void QStyle_DrawItemPixmap(const QStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QTLIBC_API void QStyle_OnDrawItemPixmap(const QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseDrawItemPixmap(const QStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QTLIBC_API QPalette* QStyle_StandardPalette(const QStyle* self);
QTLIBC_API void QStyle_OnStandardPalette(const QStyle* self, intptr_t slot);
QTLIBC_API QPalette* QStyle_QBaseStandardPalette(const QStyle* self);
QTLIBC_API void QStyle_DrawPrimitive(const QStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
QTLIBC_API void QStyle_OnDrawPrimitive(const QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseDrawPrimitive(const QStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
QTLIBC_API void QStyle_DrawControl(const QStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QTLIBC_API void QStyle_OnDrawControl(const QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseDrawControl(const QStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QTLIBC_API QRect* QStyle_SubElementRect(const QStyle* self, int subElement, QStyleOption* option, QWidget* widget);
QTLIBC_API void QStyle_OnSubElementRect(const QStyle* self, intptr_t slot);
QTLIBC_API QRect* QStyle_QBaseSubElementRect(const QStyle* self, int subElement, QStyleOption* option, QWidget* widget);
QTLIBC_API void QStyle_DrawComplexControl(const QStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* widget);
QTLIBC_API void QStyle_OnDrawComplexControl(const QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseDrawComplexControl(const QStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* widget);
QTLIBC_API int QStyle_HitTestComplexControl(const QStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* widget);
QTLIBC_API void QStyle_OnHitTestComplexControl(const QStyle* self, intptr_t slot);
QTLIBC_API int QStyle_QBaseHitTestComplexControl(const QStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* widget);
QTLIBC_API QRect* QStyle_SubControlRect(const QStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
QTLIBC_API void QStyle_OnSubControlRect(const QStyle* self, intptr_t slot);
QTLIBC_API QRect* QStyle_QBaseSubControlRect(const QStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
QTLIBC_API int QStyle_PixelMetric(const QStyle* self, int metric, QStyleOption* option, QWidget* widget);
QTLIBC_API void QStyle_OnPixelMetric(const QStyle* self, intptr_t slot);
QTLIBC_API int QStyle_QBasePixelMetric(const QStyle* self, int metric, QStyleOption* option, QWidget* widget);
QTLIBC_API QSize* QStyle_SizeFromContents(const QStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* w);
QTLIBC_API void QStyle_OnSizeFromContents(const QStyle* self, intptr_t slot);
QTLIBC_API QSize* QStyle_QBaseSizeFromContents(const QStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* w);
QTLIBC_API int QStyle_StyleHint(const QStyle* self, int stylehint, QStyleOption* opt, QWidget* widget, QStyleHintReturn* returnData);
QTLIBC_API void QStyle_OnStyleHint(const QStyle* self, intptr_t slot);
QTLIBC_API int QStyle_QBaseStyleHint(const QStyle* self, int stylehint, QStyleOption* opt, QWidget* widget, QStyleHintReturn* returnData);
QTLIBC_API QPixmap* QStyle_StandardPixmap(const QStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
QTLIBC_API void QStyle_OnStandardPixmap(const QStyle* self, intptr_t slot);
QTLIBC_API QPixmap* QStyle_QBaseStandardPixmap(const QStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
QTLIBC_API QIcon* QStyle_StandardIcon(const QStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
QTLIBC_API void QStyle_OnStandardIcon(const QStyle* self, intptr_t slot);
QTLIBC_API QIcon* QStyle_QBaseStandardIcon(const QStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
QTLIBC_API QPixmap* QStyle_GeneratedIconPixmap(const QStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
QTLIBC_API void QStyle_OnGeneratedIconPixmap(const QStyle* self, intptr_t slot);
QTLIBC_API QPixmap* QStyle_QBaseGeneratedIconPixmap(const QStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
QTLIBC_API QRect* QStyle_VisualRect(int direction, QRect* boundingRect, QRect* logicalRect);
QTLIBC_API QPoint* QStyle_VisualPos(int direction, QRect* boundingRect, QPoint* logicalPos);
QTLIBC_API int QStyle_SliderPositionFromValue(int min, int max, int val, int space);
QTLIBC_API int QStyle_SliderValueFromPosition(int min, int max, int pos, int space);
QTLIBC_API int QStyle_VisualAlignment(int direction, int alignment);
QTLIBC_API QRect* QStyle_AlignedRect(int direction, int alignment, QSize* size, QRect* rectangle);
QTLIBC_API int QStyle_LayoutSpacing(const QStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
QTLIBC_API void QStyle_OnLayoutSpacing(const QStyle* self, intptr_t slot);
QTLIBC_API int QStyle_QBaseLayoutSpacing(const QStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
QTLIBC_API int QStyle_CombinedLayoutSpacing(const QStyle* self, int controls1, int controls2, int orientation);
QTLIBC_API QStyle* QStyle_Proxy(const QStyle* self);
QTLIBC_API libqt_string QStyle_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStyle_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QStyle_SliderPositionFromValue5(int min, int max, int val, int space, bool upsideDown);
QTLIBC_API int QStyle_SliderValueFromPosition5(int min, int max, int pos, int space, bool upsideDown);
QTLIBC_API int QStyle_CombinedLayoutSpacing4(const QStyle* self, int controls1, int controls2, int orientation, QStyleOption* option);
QTLIBC_API int QStyle_CombinedLayoutSpacing5(const QStyle* self, int controls1, int controls2, int orientation, QStyleOption* option, QWidget* widget);
QTLIBC_API bool QStyle_Event(QStyle* self, QEvent* event);
QTLIBC_API void QStyle_OnEvent(QStyle* self, intptr_t slot);
QTLIBC_API bool QStyle_QBaseEvent(QStyle* self, QEvent* event);
QTLIBC_API bool QStyle_EventFilter(QStyle* self, QObject* watched, QEvent* event);
QTLIBC_API void QStyle_OnEventFilter(QStyle* self, intptr_t slot);
QTLIBC_API bool QStyle_QBaseEventFilter(QStyle* self, QObject* watched, QEvent* event);
QTLIBC_API void QStyle_TimerEvent(QStyle* self, QTimerEvent* event);
QTLIBC_API void QStyle_OnTimerEvent(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseTimerEvent(QStyle* self, QTimerEvent* event);
QTLIBC_API void QStyle_ChildEvent(QStyle* self, QChildEvent* event);
QTLIBC_API void QStyle_OnChildEvent(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseChildEvent(QStyle* self, QChildEvent* event);
QTLIBC_API void QStyle_CustomEvent(QStyle* self, QEvent* event);
QTLIBC_API void QStyle_OnCustomEvent(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseCustomEvent(QStyle* self, QEvent* event);
QTLIBC_API void QStyle_ConnectNotify(QStyle* self, QMetaMethod* signal);
QTLIBC_API void QStyle_OnConnectNotify(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseConnectNotify(QStyle* self, QMetaMethod* signal);
QTLIBC_API void QStyle_DisconnectNotify(QStyle* self, QMetaMethod* signal);
QTLIBC_API void QStyle_OnDisconnectNotify(QStyle* self, intptr_t slot);
QTLIBC_API void QStyle_QBaseDisconnectNotify(QStyle* self, QMetaMethod* signal);
QTLIBC_API QObject* QStyle_Sender(const QStyle* self);
QTLIBC_API void QStyle_OnSender(const QStyle* self, intptr_t slot);
QTLIBC_API QObject* QStyle_QBaseSender(const QStyle* self);
QTLIBC_API int QStyle_SenderSignalIndex(const QStyle* self);
QTLIBC_API void QStyle_OnSenderSignalIndex(const QStyle* self, intptr_t slot);
QTLIBC_API int QStyle_QBaseSenderSignalIndex(const QStyle* self);
QTLIBC_API int QStyle_Receivers(const QStyle* self, const char* signal);
QTLIBC_API void QStyle_OnReceivers(const QStyle* self, intptr_t slot);
QTLIBC_API int QStyle_QBaseReceivers(const QStyle* self, const char* signal);
QTLIBC_API bool QStyle_IsSignalConnected(const QStyle* self, QMetaMethod* signal);
QTLIBC_API void QStyle_OnIsSignalConnected(const QStyle* self, intptr_t slot);
QTLIBC_API bool QStyle_QBaseIsSignalConnected(const QStyle* self, QMetaMethod* signal);
QTLIBC_API void QStyle_Delete(QStyle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
