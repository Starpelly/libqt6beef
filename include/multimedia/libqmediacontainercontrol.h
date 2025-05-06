#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIACONTAINERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIACONTAINERCONTROL_H

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
typedef struct QMediaContainerControl QMediaContainerControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMediaContainerControl_MetaObject(const QMediaContainerControl* self);
void* QMediaContainerControl_Metacast(QMediaContainerControl* self, const char* param1);
int QMediaContainerControl_Metacall(QMediaContainerControl* self, int param1, int param2, void** param3);
libqt_string QMediaContainerControl_Tr(const char* s);
libqt_string QMediaContainerControl_TrUtf8(const char* s);
libqt_list /* of libqt_string */ QMediaContainerControl_SupportedContainers(const QMediaContainerControl* self);
libqt_string QMediaContainerControl_ContainerFormat(const QMediaContainerControl* self);
void QMediaContainerControl_SetContainerFormat(QMediaContainerControl* self, libqt_string format);
libqt_string QMediaContainerControl_ContainerDescription(const QMediaContainerControl* self, libqt_string formatMimeType);
libqt_string QMediaContainerControl_Tr2(const char* s, const char* c);
libqt_string QMediaContainerControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaContainerControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaContainerControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaContainerControl_Event(QMediaContainerControl* self, QEvent* event);
bool QMediaContainerControl_EventFilter(QMediaContainerControl* self, QObject* watched, QEvent* event);
void QMediaContainerControl_Delete(QMediaContainerControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
