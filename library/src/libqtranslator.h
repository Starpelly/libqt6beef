#pragma once
#ifndef SRCC_LIBQTRANSLATOR_H
#define SRCC_LIBQTRANSLATOR_H

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
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTranslator QTranslator;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QTranslator* QTranslator_new();
QTLIBC_API QTranslator* QTranslator_new2(QObject* parent);
QTLIBC_API QMetaObject* QTranslator_MetaObject(const QTranslator* self);
QTLIBC_API void* QTranslator_Metacast(QTranslator* self, const char* param1);
QTLIBC_API int QTranslator_Metacall(QTranslator* self, int param1, int param2, void** param3);
QTLIBC_API void QTranslator_OnMetacall(QTranslator* self, intptr_t slot);
QTLIBC_API int QTranslator_QBaseMetacall(QTranslator* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTranslator_Tr(const char* s);
QTLIBC_API libqt_string QTranslator_Translate(const QTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
QTLIBC_API void QTranslator_OnTranslate(const QTranslator* self, intptr_t slot);
QTLIBC_API libqt_string QTranslator_QBaseTranslate(const QTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n);
QTLIBC_API bool QTranslator_IsEmpty(const QTranslator* self);
QTLIBC_API void QTranslator_OnIsEmpty(const QTranslator* self, intptr_t slot);
QTLIBC_API bool QTranslator_QBaseIsEmpty(const QTranslator* self);
QTLIBC_API libqt_string QTranslator_Language(const QTranslator* self);
QTLIBC_API libqt_string QTranslator_FilePath(const QTranslator* self);
QTLIBC_API bool QTranslator_Load(QTranslator* self, libqt_string filename);
QTLIBC_API bool QTranslator_Load2(QTranslator* self, QLocale* locale, libqt_string filename);
QTLIBC_API bool QTranslator_Load3(QTranslator* self, const unsigned char* data, int lenVal);
QTLIBC_API libqt_string QTranslator_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTranslator_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTranslator_Load22(QTranslator* self, libqt_string filename, libqt_string directory);
QTLIBC_API bool QTranslator_Load32(QTranslator* self, libqt_string filename, libqt_string directory, libqt_string search_delimiters);
QTLIBC_API bool QTranslator_Load4(QTranslator* self, libqt_string filename, libqt_string directory, libqt_string search_delimiters, libqt_string suffix);
QTLIBC_API bool QTranslator_Load33(QTranslator* self, QLocale* locale, libqt_string filename, libqt_string prefix);
QTLIBC_API bool QTranslator_Load42(QTranslator* self, QLocale* locale, libqt_string filename, libqt_string prefix, libqt_string directory);
QTLIBC_API bool QTranslator_Load5(QTranslator* self, QLocale* locale, libqt_string filename, libqt_string prefix, libqt_string directory, libqt_string suffix);
QTLIBC_API bool QTranslator_Load34(QTranslator* self, const unsigned char* data, int lenVal, libqt_string directory);
QTLIBC_API bool QTranslator_Event(QTranslator* self, QEvent* event);
QTLIBC_API void QTranslator_OnEvent(QTranslator* self, intptr_t slot);
QTLIBC_API bool QTranslator_QBaseEvent(QTranslator* self, QEvent* event);
QTLIBC_API bool QTranslator_EventFilter(QTranslator* self, QObject* watched, QEvent* event);
QTLIBC_API void QTranslator_OnEventFilter(QTranslator* self, intptr_t slot);
QTLIBC_API bool QTranslator_QBaseEventFilter(QTranslator* self, QObject* watched, QEvent* event);
QTLIBC_API void QTranslator_TimerEvent(QTranslator* self, QTimerEvent* event);
QTLIBC_API void QTranslator_OnTimerEvent(QTranslator* self, intptr_t slot);
QTLIBC_API void QTranslator_QBaseTimerEvent(QTranslator* self, QTimerEvent* event);
QTLIBC_API void QTranslator_ChildEvent(QTranslator* self, QChildEvent* event);
QTLIBC_API void QTranslator_OnChildEvent(QTranslator* self, intptr_t slot);
QTLIBC_API void QTranslator_QBaseChildEvent(QTranslator* self, QChildEvent* event);
QTLIBC_API void QTranslator_CustomEvent(QTranslator* self, QEvent* event);
QTLIBC_API void QTranslator_OnCustomEvent(QTranslator* self, intptr_t slot);
QTLIBC_API void QTranslator_QBaseCustomEvent(QTranslator* self, QEvent* event);
QTLIBC_API void QTranslator_ConnectNotify(QTranslator* self, QMetaMethod* signal);
QTLIBC_API void QTranslator_OnConnectNotify(QTranslator* self, intptr_t slot);
QTLIBC_API void QTranslator_QBaseConnectNotify(QTranslator* self, QMetaMethod* signal);
QTLIBC_API void QTranslator_DisconnectNotify(QTranslator* self, QMetaMethod* signal);
QTLIBC_API void QTranslator_OnDisconnectNotify(QTranslator* self, intptr_t slot);
QTLIBC_API void QTranslator_QBaseDisconnectNotify(QTranslator* self, QMetaMethod* signal);
QTLIBC_API QObject* QTranslator_Sender(const QTranslator* self);
QTLIBC_API void QTranslator_OnSender(const QTranslator* self, intptr_t slot);
QTLIBC_API QObject* QTranslator_QBaseSender(const QTranslator* self);
QTLIBC_API int QTranslator_SenderSignalIndex(const QTranslator* self);
QTLIBC_API void QTranslator_OnSenderSignalIndex(const QTranslator* self, intptr_t slot);
QTLIBC_API int QTranslator_QBaseSenderSignalIndex(const QTranslator* self);
QTLIBC_API int QTranslator_Receivers(const QTranslator* self, const char* signal);
QTLIBC_API void QTranslator_OnReceivers(const QTranslator* self, intptr_t slot);
QTLIBC_API int QTranslator_QBaseReceivers(const QTranslator* self, const char* signal);
QTLIBC_API bool QTranslator_IsSignalConnected(const QTranslator* self, QMetaMethod* signal);
QTLIBC_API void QTranslator_OnIsSignalConnected(const QTranslator* self, intptr_t slot);
QTLIBC_API bool QTranslator_QBaseIsSignalConnected(const QTranslator* self, QMetaMethod* signal);
QTLIBC_API void QTranslator_Delete(QTranslator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
