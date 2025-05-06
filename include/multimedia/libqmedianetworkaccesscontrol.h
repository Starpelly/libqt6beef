#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIANETWORKACCESSCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIANETWORKACCESSCONTROL_H

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
typedef struct QMediaNetworkAccessControl QMediaNetworkAccessControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QNetworkConfiguration QNetworkConfiguration;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMediaNetworkAccessControl_MetaObject(const QMediaNetworkAccessControl* self);
void* QMediaNetworkAccessControl_Metacast(QMediaNetworkAccessControl* self, const char* param1);
int QMediaNetworkAccessControl_Metacall(QMediaNetworkAccessControl* self, int param1, int param2, void** param3);
libqt_string QMediaNetworkAccessControl_Tr(const char* s);
libqt_string QMediaNetworkAccessControl_TrUtf8(const char* s);
void QMediaNetworkAccessControl_SetConfigurations(QMediaNetworkAccessControl* self, libqt_list /* of QNetworkConfiguration* */ configuration);
QNetworkConfiguration* QMediaNetworkAccessControl_CurrentConfiguration(const QMediaNetworkAccessControl* self);
void QMediaNetworkAccessControl_ConfigurationChanged(QMediaNetworkAccessControl* self, QNetworkConfiguration* configuration);
void QMediaNetworkAccessControl_Connect_ConfigurationChanged(QMediaNetworkAccessControl* self, intptr_t slot);
libqt_string QMediaNetworkAccessControl_Tr2(const char* s, const char* c);
libqt_string QMediaNetworkAccessControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaNetworkAccessControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaNetworkAccessControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaNetworkAccessControl_Event(QMediaNetworkAccessControl* self, QEvent* event);
bool QMediaNetworkAccessControl_EventFilter(QMediaNetworkAccessControl* self, QObject* watched, QEvent* event);
void QMediaNetworkAccessControl_Delete(QMediaNetworkAccessControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
