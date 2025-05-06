#pragma once
#ifndef SRC_QTC_LIBQPDFWRITER_H
#define SRC_QTC_LIBQPDFWRITER_H

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
typedef struct QIODevice QIODevice;
typedef struct QMarginsF QMarginsF;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPdfWriter QPdfWriter;
typedef struct QPoint QPoint;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QPdfWriter* QPdfWriter_new(libqt_string filename);
QTLIBC_API QPdfWriter* QPdfWriter_new2(QIODevice* device);
QTLIBC_API QMetaObject* QPdfWriter_MetaObject(const QPdfWriter* self);
QTLIBC_API void* QPdfWriter_Metacast(QPdfWriter* self, const char* param1);
QTLIBC_API int QPdfWriter_Metacall(QPdfWriter* self, int param1, int param2, void** param3);
QTLIBC_API void QPdfWriter_OnMetacall(QPdfWriter* self, intptr_t slot);
QTLIBC_API int QPdfWriter_QBaseMetacall(QPdfWriter* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QPdfWriter_Tr(const char* s);
QTLIBC_API void QPdfWriter_SetPdfVersion(QPdfWriter* self, int version);
QTLIBC_API int QPdfWriter_PdfVersion(const QPdfWriter* self);
QTLIBC_API libqt_string QPdfWriter_Title(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_SetTitle(QPdfWriter* self, libqt_string title);
QTLIBC_API libqt_string QPdfWriter_Creator(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_SetCreator(QPdfWriter* self, libqt_string creator);
QTLIBC_API bool QPdfWriter_NewPage(QPdfWriter* self);
QTLIBC_API void QPdfWriter_OnNewPage(QPdfWriter* self, intptr_t slot);
QTLIBC_API bool QPdfWriter_QBaseNewPage(QPdfWriter* self);
QTLIBC_API void QPdfWriter_SetResolution(QPdfWriter* self, int resolution);
QTLIBC_API int QPdfWriter_Resolution(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_SetDocumentXmpMetadata(QPdfWriter* self, libqt_string xmpMetadata);
QTLIBC_API libqt_string QPdfWriter_DocumentXmpMetadata(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_AddFileAttachment(QPdfWriter* self, libqt_string fileName, libqt_string data);
QTLIBC_API QPaintEngine* QPdfWriter_PaintEngine(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_OnPaintEngine(const QPdfWriter* self, intptr_t slot);
QTLIBC_API QPaintEngine* QPdfWriter_QBasePaintEngine(const QPdfWriter* self);
QTLIBC_API int QPdfWriter_Metric(const QPdfWriter* self, int id);
QTLIBC_API void QPdfWriter_OnMetric(const QPdfWriter* self, intptr_t slot);
QTLIBC_API int QPdfWriter_QBaseMetric(const QPdfWriter* self, int id);
QTLIBC_API libqt_string QPdfWriter_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QPdfWriter_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QPdfWriter_AddFileAttachment3(QPdfWriter* self, libqt_string fileName, libqt_string data, libqt_string mimeType);
QTLIBC_API bool QPdfWriter_Event(QPdfWriter* self, QEvent* event);
QTLIBC_API void QPdfWriter_OnEvent(QPdfWriter* self, intptr_t slot);
QTLIBC_API bool QPdfWriter_QBaseEvent(QPdfWriter* self, QEvent* event);
QTLIBC_API bool QPdfWriter_EventFilter(QPdfWriter* self, QObject* watched, QEvent* event);
QTLIBC_API void QPdfWriter_OnEventFilter(QPdfWriter* self, intptr_t slot);
QTLIBC_API bool QPdfWriter_QBaseEventFilter(QPdfWriter* self, QObject* watched, QEvent* event);
QTLIBC_API void QPdfWriter_TimerEvent(QPdfWriter* self, QTimerEvent* event);
QTLIBC_API void QPdfWriter_OnTimerEvent(QPdfWriter* self, intptr_t slot);
QTLIBC_API void QPdfWriter_QBaseTimerEvent(QPdfWriter* self, QTimerEvent* event);
QTLIBC_API void QPdfWriter_ChildEvent(QPdfWriter* self, QChildEvent* event);
QTLIBC_API void QPdfWriter_OnChildEvent(QPdfWriter* self, intptr_t slot);
QTLIBC_API void QPdfWriter_QBaseChildEvent(QPdfWriter* self, QChildEvent* event);
QTLIBC_API void QPdfWriter_CustomEvent(QPdfWriter* self, QEvent* event);
QTLIBC_API void QPdfWriter_OnCustomEvent(QPdfWriter* self, intptr_t slot);
QTLIBC_API void QPdfWriter_QBaseCustomEvent(QPdfWriter* self, QEvent* event);
QTLIBC_API void QPdfWriter_ConnectNotify(QPdfWriter* self, QMetaMethod* signal);
QTLIBC_API void QPdfWriter_OnConnectNotify(QPdfWriter* self, intptr_t slot);
QTLIBC_API void QPdfWriter_QBaseConnectNotify(QPdfWriter* self, QMetaMethod* signal);
QTLIBC_API void QPdfWriter_DisconnectNotify(QPdfWriter* self, QMetaMethod* signal);
QTLIBC_API void QPdfWriter_OnDisconnectNotify(QPdfWriter* self, intptr_t slot);
QTLIBC_API void QPdfWriter_QBaseDisconnectNotify(QPdfWriter* self, QMetaMethod* signal);
QTLIBC_API bool QPdfWriter_SetPageLayout(QPdfWriter* self, QPageLayout* pageLayout);
QTLIBC_API void QPdfWriter_OnSetPageLayout(QPdfWriter* self, intptr_t slot);
QTLIBC_API bool QPdfWriter_QBaseSetPageLayout(QPdfWriter* self, QPageLayout* pageLayout);
QTLIBC_API bool QPdfWriter_SetPageSize(QPdfWriter* self, QPageSize* pageSize);
QTLIBC_API void QPdfWriter_OnSetPageSize(QPdfWriter* self, intptr_t slot);
QTLIBC_API bool QPdfWriter_QBaseSetPageSize(QPdfWriter* self, QPageSize* pageSize);
QTLIBC_API bool QPdfWriter_SetPageOrientation(QPdfWriter* self, int orientation);
QTLIBC_API void QPdfWriter_OnSetPageOrientation(QPdfWriter* self, intptr_t slot);
QTLIBC_API bool QPdfWriter_QBaseSetPageOrientation(QPdfWriter* self, int orientation);
QTLIBC_API bool QPdfWriter_SetPageMargins(QPdfWriter* self, QMarginsF* margins, int units);
QTLIBC_API void QPdfWriter_OnSetPageMargins(QPdfWriter* self, intptr_t slot);
QTLIBC_API bool QPdfWriter_QBaseSetPageMargins(QPdfWriter* self, QMarginsF* margins, int units);
QTLIBC_API void QPdfWriter_SetPageRanges(QPdfWriter* self, QPageRanges* ranges);
QTLIBC_API void QPdfWriter_OnSetPageRanges(QPdfWriter* self, intptr_t slot);
QTLIBC_API void QPdfWriter_QBaseSetPageRanges(QPdfWriter* self, QPageRanges* ranges);
QTLIBC_API int QPdfWriter_DevType(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_OnDevType(const QPdfWriter* self, intptr_t slot);
QTLIBC_API int QPdfWriter_QBaseDevType(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_InitPainter(const QPdfWriter* self, QPainter* painter);
QTLIBC_API void QPdfWriter_OnInitPainter(const QPdfWriter* self, intptr_t slot);
QTLIBC_API void QPdfWriter_QBaseInitPainter(const QPdfWriter* self, QPainter* painter);
QTLIBC_API QPaintDevice* QPdfWriter_Redirected(const QPdfWriter* self, QPoint* offset);
QTLIBC_API void QPdfWriter_OnRedirected(const QPdfWriter* self, intptr_t slot);
QTLIBC_API QPaintDevice* QPdfWriter_QBaseRedirected(const QPdfWriter* self, QPoint* offset);
QTLIBC_API QPainter* QPdfWriter_SharedPainter(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_OnSharedPainter(const QPdfWriter* self, intptr_t slot);
QTLIBC_API QPainter* QPdfWriter_QBaseSharedPainter(const QPdfWriter* self);
QTLIBC_API QObject* QPdfWriter_Sender(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_OnSender(const QPdfWriter* self, intptr_t slot);
QTLIBC_API QObject* QPdfWriter_QBaseSender(const QPdfWriter* self);
QTLIBC_API int QPdfWriter_SenderSignalIndex(const QPdfWriter* self);
QTLIBC_API void QPdfWriter_OnSenderSignalIndex(const QPdfWriter* self, intptr_t slot);
QTLIBC_API int QPdfWriter_QBaseSenderSignalIndex(const QPdfWriter* self);
QTLIBC_API int QPdfWriter_Receivers(const QPdfWriter* self, const char* signal);
QTLIBC_API void QPdfWriter_OnReceivers(const QPdfWriter* self, intptr_t slot);
QTLIBC_API int QPdfWriter_QBaseReceivers(const QPdfWriter* self, const char* signal);
QTLIBC_API bool QPdfWriter_IsSignalConnected(const QPdfWriter* self, QMetaMethod* signal);
QTLIBC_API void QPdfWriter_OnIsSignalConnected(const QPdfWriter* self, intptr_t slot);
QTLIBC_API bool QPdfWriter_QBaseIsSignalConnected(const QPdfWriter* self, QMetaMethod* signal);
QTLIBC_API void QPdfWriter_Delete(QPdfWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
