#pragma once
#ifndef SRC_QT_SVGC_LIBQSVGRENDERER_H
#define SRC_QT_SVGC_LIBQSVGRENDERER_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSvgRenderer QSvgRenderer;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QXmlStreamReader QXmlStreamReader;
#endif

QTLIBC_API QSvgRenderer* QSvgRenderer_new();
QTLIBC_API QSvgRenderer* QSvgRenderer_new2(libqt_string filename);
QTLIBC_API QSvgRenderer* QSvgRenderer_new3(libqt_string contents);
QTLIBC_API QSvgRenderer* QSvgRenderer_new4(QXmlStreamReader* contents);
QTLIBC_API QSvgRenderer* QSvgRenderer_new5(QObject* parent);
QTLIBC_API QSvgRenderer* QSvgRenderer_new6(libqt_string filename, QObject* parent);
QTLIBC_API QSvgRenderer* QSvgRenderer_new7(libqt_string contents, QObject* parent);
QTLIBC_API QSvgRenderer* QSvgRenderer_new8(QXmlStreamReader* contents, QObject* parent);
QTLIBC_API QMetaObject* QSvgRenderer_MetaObject(const QSvgRenderer* self);
QTLIBC_API void* QSvgRenderer_Metacast(QSvgRenderer* self, const char* param1);
QTLIBC_API int QSvgRenderer_Metacall(QSvgRenderer* self, int param1, int param2, void** param3);
QTLIBC_API void QSvgRenderer_OnMetacall(QSvgRenderer* self, intptr_t slot);
QTLIBC_API int QSvgRenderer_QBaseMetacall(QSvgRenderer* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSvgRenderer_Tr(const char* s);
QTLIBC_API bool QSvgRenderer_IsValid(const QSvgRenderer* self);
QTLIBC_API QSize* QSvgRenderer_DefaultSize(const QSvgRenderer* self);
QTLIBC_API QRect* QSvgRenderer_ViewBox(const QSvgRenderer* self);
QTLIBC_API QRectF* QSvgRenderer_ViewBoxF(const QSvgRenderer* self);
QTLIBC_API void QSvgRenderer_SetViewBox(QSvgRenderer* self, QRect* viewbox);
QTLIBC_API void QSvgRenderer_SetViewBoxWithViewbox(QSvgRenderer* self, QRectF* viewbox);
QTLIBC_API int QSvgRenderer_AspectRatioMode(const QSvgRenderer* self);
QTLIBC_API void QSvgRenderer_SetAspectRatioMode(QSvgRenderer* self, int mode);
QTLIBC_API bool QSvgRenderer_Animated(const QSvgRenderer* self);
QTLIBC_API int QSvgRenderer_FramesPerSecond(const QSvgRenderer* self);
QTLIBC_API void QSvgRenderer_SetFramesPerSecond(QSvgRenderer* self, int num);
QTLIBC_API int QSvgRenderer_CurrentFrame(const QSvgRenderer* self);
QTLIBC_API void QSvgRenderer_SetCurrentFrame(QSvgRenderer* self, int currentFrame);
QTLIBC_API int QSvgRenderer_AnimationDuration(const QSvgRenderer* self);
QTLIBC_API QRectF* QSvgRenderer_BoundsOnElement(const QSvgRenderer* self, libqt_string id);
QTLIBC_API bool QSvgRenderer_ElementExists(const QSvgRenderer* self, libqt_string id);
QTLIBC_API QTransform* QSvgRenderer_TransformForElement(const QSvgRenderer* self, libqt_string id);
QTLIBC_API bool QSvgRenderer_Load(QSvgRenderer* self, libqt_string filename);
QTLIBC_API bool QSvgRenderer_LoadWithContents(QSvgRenderer* self, libqt_string contents);
QTLIBC_API bool QSvgRenderer_Load2(QSvgRenderer* self, QXmlStreamReader* contents);
QTLIBC_API void QSvgRenderer_Render(QSvgRenderer* self, QPainter* p);
QTLIBC_API void QSvgRenderer_Render2(QSvgRenderer* self, QPainter* p, QRectF* bounds);
QTLIBC_API void QSvgRenderer_Render3(QSvgRenderer* self, QPainter* p, libqt_string elementId);
QTLIBC_API void QSvgRenderer_RepaintNeeded(QSvgRenderer* self);
QTLIBC_API void QSvgRenderer_Connect_RepaintNeeded(QSvgRenderer* self, intptr_t slot);
QTLIBC_API libqt_string QSvgRenderer_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSvgRenderer_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QSvgRenderer_Render32(QSvgRenderer* self, QPainter* p, libqt_string elementId, QRectF* bounds);
QTLIBC_API bool QSvgRenderer_Event(QSvgRenderer* self, QEvent* event);
QTLIBC_API void QSvgRenderer_OnEvent(QSvgRenderer* self, intptr_t slot);
QTLIBC_API bool QSvgRenderer_QBaseEvent(QSvgRenderer* self, QEvent* event);
QTLIBC_API bool QSvgRenderer_EventFilter(QSvgRenderer* self, QObject* watched, QEvent* event);
QTLIBC_API void QSvgRenderer_OnEventFilter(QSvgRenderer* self, intptr_t slot);
QTLIBC_API bool QSvgRenderer_QBaseEventFilter(QSvgRenderer* self, QObject* watched, QEvent* event);
QTLIBC_API void QSvgRenderer_TimerEvent(QSvgRenderer* self, QTimerEvent* event);
QTLIBC_API void QSvgRenderer_OnTimerEvent(QSvgRenderer* self, intptr_t slot);
QTLIBC_API void QSvgRenderer_QBaseTimerEvent(QSvgRenderer* self, QTimerEvent* event);
QTLIBC_API void QSvgRenderer_ChildEvent(QSvgRenderer* self, QChildEvent* event);
QTLIBC_API void QSvgRenderer_OnChildEvent(QSvgRenderer* self, intptr_t slot);
QTLIBC_API void QSvgRenderer_QBaseChildEvent(QSvgRenderer* self, QChildEvent* event);
QTLIBC_API void QSvgRenderer_CustomEvent(QSvgRenderer* self, QEvent* event);
QTLIBC_API void QSvgRenderer_OnCustomEvent(QSvgRenderer* self, intptr_t slot);
QTLIBC_API void QSvgRenderer_QBaseCustomEvent(QSvgRenderer* self, QEvent* event);
QTLIBC_API void QSvgRenderer_ConnectNotify(QSvgRenderer* self, QMetaMethod* signal);
QTLIBC_API void QSvgRenderer_OnConnectNotify(QSvgRenderer* self, intptr_t slot);
QTLIBC_API void QSvgRenderer_QBaseConnectNotify(QSvgRenderer* self, QMetaMethod* signal);
QTLIBC_API void QSvgRenderer_DisconnectNotify(QSvgRenderer* self, QMetaMethod* signal);
QTLIBC_API void QSvgRenderer_OnDisconnectNotify(QSvgRenderer* self, intptr_t slot);
QTLIBC_API void QSvgRenderer_QBaseDisconnectNotify(QSvgRenderer* self, QMetaMethod* signal);
QTLIBC_API QObject* QSvgRenderer_Sender(const QSvgRenderer* self);
QTLIBC_API void QSvgRenderer_OnSender(const QSvgRenderer* self, intptr_t slot);
QTLIBC_API QObject* QSvgRenderer_QBaseSender(const QSvgRenderer* self);
QTLIBC_API int QSvgRenderer_SenderSignalIndex(const QSvgRenderer* self);
QTLIBC_API void QSvgRenderer_OnSenderSignalIndex(const QSvgRenderer* self, intptr_t slot);
QTLIBC_API int QSvgRenderer_QBaseSenderSignalIndex(const QSvgRenderer* self);
QTLIBC_API int QSvgRenderer_Receivers(const QSvgRenderer* self, const char* signal);
QTLIBC_API void QSvgRenderer_OnReceivers(const QSvgRenderer* self, intptr_t slot);
QTLIBC_API int QSvgRenderer_QBaseReceivers(const QSvgRenderer* self, const char* signal);
QTLIBC_API bool QSvgRenderer_IsSignalConnected(const QSvgRenderer* self, QMetaMethod* signal);
QTLIBC_API void QSvgRenderer_OnIsSignalConnected(const QSvgRenderer* self, intptr_t slot);
QTLIBC_API bool QSvgRenderer_QBaseIsSignalConnected(const QSvgRenderer* self, QMetaMethod* signal);
QTLIBC_API void QSvgRenderer_Delete(QSvgRenderer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
