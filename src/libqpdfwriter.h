#pragma once
#ifndef SRCC_LIBQPDFWRITER_H
#define SRCC_LIBQPDFWRITER_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins)
typedef QPagedPaintDevice::Margins QPagedPaintDevice__Margins;
#endif
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMarginsF QMarginsF;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPageLayout QPageLayout;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPagedPaintDevice__Margins QPagedPaintDevice__Margins;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPdfWriter QPdfWriter;
typedef struct QPoint QPoint;
typedef struct QSizeF QSizeF;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QPdfWriter* QPdfWriter_new(libqt_string filename);
QPdfWriter* QPdfWriter_new2(QIODevice* device);
QMetaObject* QPdfWriter_MetaObject(const QPdfWriter* self);
void* QPdfWriter_Metacast(QPdfWriter* self, const char* param1);
int QPdfWriter_Metacall(QPdfWriter* self, int param1, int param2, void** param3);
void QPdfWriter_OnMetacall(QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseMetacall(QPdfWriter* self, int param1, int param2, void** param3);
libqt_string QPdfWriter_Tr(const char* s);
libqt_string QPdfWriter_TrUtf8(const char* s);
void QPdfWriter_SetPdfVersion(QPdfWriter* self, int version);
int QPdfWriter_PdfVersion(const QPdfWriter* self);
libqt_string QPdfWriter_Title(const QPdfWriter* self);
void QPdfWriter_SetTitle(QPdfWriter* self, libqt_string title);
libqt_string QPdfWriter_Creator(const QPdfWriter* self);
void QPdfWriter_SetCreator(QPdfWriter* self, libqt_string creator);
bool QPdfWriter_NewPage(QPdfWriter* self);
void QPdfWriter_OnNewPage(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseNewPage(QPdfWriter* self);
void QPdfWriter_SetResolution(QPdfWriter* self, int resolution);
int QPdfWriter_Resolution(const QPdfWriter* self);
void QPdfWriter_SetDocumentXmpMetadata(QPdfWriter* self, libqt_string xmpMetadata);
libqt_string QPdfWriter_DocumentXmpMetadata(const QPdfWriter* self);
void QPdfWriter_AddFileAttachment(QPdfWriter* self, libqt_string fileName, libqt_string data);
void QPdfWriter_SetPageSize(QPdfWriter* self, int size);
void QPdfWriter_OnSetPageSize(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseSetPageSize(QPdfWriter* self, int size);
void QPdfWriter_SetPageSizeMM(QPdfWriter* self, QSizeF* size);
void QPdfWriter_OnSetPageSizeMM(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseSetPageSizeMM(QPdfWriter* self, QSizeF* size);
void QPdfWriter_SetMargins(QPdfWriter* self, QPagedPaintDevice__Margins* m);
void QPdfWriter_OnSetMargins(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseSetMargins(QPdfWriter* self, QPagedPaintDevice__Margins* m);
QPaintEngine* QPdfWriter_PaintEngine(const QPdfWriter* self);
void QPdfWriter_OnPaintEngine(const QPdfWriter* self, intptr_t slot);
QPaintEngine* QPdfWriter_QBasePaintEngine(const QPdfWriter* self);
int QPdfWriter_Metric(const QPdfWriter* self, int id);
void QPdfWriter_OnMetric(const QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseMetric(const QPdfWriter* self, int id);
libqt_string QPdfWriter_Tr2(const char* s, const char* c);
libqt_string QPdfWriter_Tr3(const char* s, const char* c, int n);
libqt_string QPdfWriter_TrUtf82(const char* s, const char* c);
libqt_string QPdfWriter_TrUtf83(const char* s, const char* c, int n);
void QPdfWriter_AddFileAttachment3(QPdfWriter* self, libqt_string fileName, libqt_string data, libqt_string mimeType);
bool QPdfWriter_Event(QPdfWriter* self, QEvent* event);
void QPdfWriter_OnEvent(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseEvent(QPdfWriter* self, QEvent* event);
bool QPdfWriter_EventFilter(QPdfWriter* self, QObject* watched, QEvent* event);
void QPdfWriter_OnEventFilter(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseEventFilter(QPdfWriter* self, QObject* watched, QEvent* event);
void QPdfWriter_TimerEvent(QPdfWriter* self, QTimerEvent* event);
void QPdfWriter_OnTimerEvent(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseTimerEvent(QPdfWriter* self, QTimerEvent* event);
void QPdfWriter_ChildEvent(QPdfWriter* self, QChildEvent* event);
void QPdfWriter_OnChildEvent(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseChildEvent(QPdfWriter* self, QChildEvent* event);
void QPdfWriter_CustomEvent(QPdfWriter* self, QEvent* event);
void QPdfWriter_OnCustomEvent(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseCustomEvent(QPdfWriter* self, QEvent* event);
void QPdfWriter_ConnectNotify(QPdfWriter* self, QMetaMethod* signal);
void QPdfWriter_OnConnectNotify(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseConnectNotify(QPdfWriter* self, QMetaMethod* signal);
void QPdfWriter_DisconnectNotify(QPdfWriter* self, QMetaMethod* signal);
void QPdfWriter_OnDisconnectNotify(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseDisconnectNotify(QPdfWriter* self, QMetaMethod* signal);
void QPdfWriter_SetPageSizeWithSize(QPdfWriter* self, int size);
void QPdfWriter_OnSetPageSizeWithSize(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseSetPageSizeWithSize(QPdfWriter* self, int size);
int QPdfWriter_DevType(const QPdfWriter* self);
void QPdfWriter_OnDevType(const QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseDevType(const QPdfWriter* self);
void QPdfWriter_InitPainter(const QPdfWriter* self, QPainter* painter);
void QPdfWriter_OnInitPainter(const QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseInitPainter(const QPdfWriter* self, QPainter* painter);
QPaintDevice* QPdfWriter_Redirected(const QPdfWriter* self, QPoint* offset);
void QPdfWriter_OnRedirected(const QPdfWriter* self, intptr_t slot);
QPaintDevice* QPdfWriter_QBaseRedirected(const QPdfWriter* self, QPoint* offset);
QPainter* QPdfWriter_SharedPainter(const QPdfWriter* self);
void QPdfWriter_OnSharedPainter(const QPdfWriter* self, intptr_t slot);
QPainter* QPdfWriter_QBaseSharedPainter(const QPdfWriter* self);
QObject* QPdfWriter_Sender(const QPdfWriter* self);
void QPdfWriter_OnSender(const QPdfWriter* self, intptr_t slot);
QObject* QPdfWriter_QBaseSender(const QPdfWriter* self);
int QPdfWriter_SenderSignalIndex(const QPdfWriter* self);
void QPdfWriter_OnSenderSignalIndex(const QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseSenderSignalIndex(const QPdfWriter* self);
int QPdfWriter_Receivers(const QPdfWriter* self, const char* signal);
void QPdfWriter_OnReceivers(const QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseReceivers(const QPdfWriter* self, const char* signal);
bool QPdfWriter_IsSignalConnected(const QPdfWriter* self, QMetaMethod* signal);
void QPdfWriter_OnIsSignalConnected(const QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseIsSignalConnected(const QPdfWriter* self, QMetaMethod* signal);
QPageLayout* QPdfWriter_DevicePageLayout(const QPdfWriter* self);
void QPdfWriter_OnDevicePageLayout(const QPdfWriter* self, intptr_t slot);
QPageLayout* QPdfWriter_QBaseDevicePageLayout(const QPdfWriter* self);
void QPdfWriter_Delete(QPdfWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
