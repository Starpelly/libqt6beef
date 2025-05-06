#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMETADATAWRITERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMETADATAWRITERCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaDataWriterControl QMetaDataWriterControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMetaDataWriterControl_MetaObject(const QMetaDataWriterControl* self);
void* QMetaDataWriterControl_Metacast(QMetaDataWriterControl* self, const char* param1);
int QMetaDataWriterControl_Metacall(QMetaDataWriterControl* self, int param1, int param2, void** param3);
libqt_string QMetaDataWriterControl_Tr(const char* s);
libqt_string QMetaDataWriterControl_TrUtf8(const char* s);
bool QMetaDataWriterControl_IsWritable(const QMetaDataWriterControl* self);
bool QMetaDataWriterControl_IsMetaDataAvailable(const QMetaDataWriterControl* self);
QVariant* QMetaDataWriterControl_MetaData(const QMetaDataWriterControl* self, libqt_string key);
void QMetaDataWriterControl_SetMetaData(QMetaDataWriterControl* self, libqt_string key, QVariant* value);
libqt_list /* of libqt_string */ QMetaDataWriterControl_AvailableMetaData(const QMetaDataWriterControl* self);
void QMetaDataWriterControl_MetaDataChanged(QMetaDataWriterControl* self);
void QMetaDataWriterControl_Connect_MetaDataChanged(QMetaDataWriterControl* self, intptr_t slot);
void QMetaDataWriterControl_MetaDataChanged2(QMetaDataWriterControl* self, libqt_string key, QVariant* value);
void QMetaDataWriterControl_Connect_MetaDataChanged2(QMetaDataWriterControl* self, intptr_t slot);
void QMetaDataWriterControl_WritableChanged(QMetaDataWriterControl* self, bool writable);
void QMetaDataWriterControl_Connect_WritableChanged(QMetaDataWriterControl* self, intptr_t slot);
void QMetaDataWriterControl_MetaDataAvailableChanged(QMetaDataWriterControl* self, bool available);
void QMetaDataWriterControl_Connect_MetaDataAvailableChanged(QMetaDataWriterControl* self, intptr_t slot);
libqt_string QMetaDataWriterControl_Tr2(const char* s, const char* c);
libqt_string QMetaDataWriterControl_Tr3(const char* s, const char* c, int n);
libqt_string QMetaDataWriterControl_TrUtf82(const char* s, const char* c);
libqt_string QMetaDataWriterControl_TrUtf83(const char* s, const char* c, int n);
bool QMetaDataWriterControl_Event(QMetaDataWriterControl* self, QEvent* event);
bool QMetaDataWriterControl_EventFilter(QMetaDataWriterControl* self, QObject* watched, QEvent* event);
void QMetaDataWriterControl_Delete(QMetaDataWriterControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
