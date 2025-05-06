#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMETADATAREADERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMETADATAREADERCONTROL_H

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
typedef struct QMetaDataReaderControl QMetaDataReaderControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMetaDataReaderControl_MetaObject(const QMetaDataReaderControl* self);
void* QMetaDataReaderControl_Metacast(QMetaDataReaderControl* self, const char* param1);
int QMetaDataReaderControl_Metacall(QMetaDataReaderControl* self, int param1, int param2, void** param3);
libqt_string QMetaDataReaderControl_Tr(const char* s);
libqt_string QMetaDataReaderControl_TrUtf8(const char* s);
bool QMetaDataReaderControl_IsMetaDataAvailable(const QMetaDataReaderControl* self);
QVariant* QMetaDataReaderControl_MetaData(const QMetaDataReaderControl* self, libqt_string key);
libqt_list /* of libqt_string */ QMetaDataReaderControl_AvailableMetaData(const QMetaDataReaderControl* self);
void QMetaDataReaderControl_MetaDataChanged(QMetaDataReaderControl* self);
void QMetaDataReaderControl_Connect_MetaDataChanged(QMetaDataReaderControl* self, intptr_t slot);
void QMetaDataReaderControl_MetaDataChanged2(QMetaDataReaderControl* self, libqt_string key, QVariant* value);
void QMetaDataReaderControl_Connect_MetaDataChanged2(QMetaDataReaderControl* self, intptr_t slot);
void QMetaDataReaderControl_MetaDataAvailableChanged(QMetaDataReaderControl* self, bool available);
void QMetaDataReaderControl_Connect_MetaDataAvailableChanged(QMetaDataReaderControl* self, intptr_t slot);
libqt_string QMetaDataReaderControl_Tr2(const char* s, const char* c);
libqt_string QMetaDataReaderControl_Tr3(const char* s, const char* c, int n);
libqt_string QMetaDataReaderControl_TrUtf82(const char* s, const char* c);
libqt_string QMetaDataReaderControl_TrUtf83(const char* s, const char* c, int n);
bool QMetaDataReaderControl_Event(QMetaDataReaderControl* self, QEvent* event);
bool QMetaDataReaderControl_EventFilter(QMetaDataReaderControl* self, QObject* watched, QEvent* event);
void QMetaDataReaderControl_Delete(QMetaDataReaderControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
