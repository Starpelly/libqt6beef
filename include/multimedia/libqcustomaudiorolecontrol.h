#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCUSTOMAUDIOROLECONTROL_H
#define SRC_MULTIMEDIAC_LIBQCUSTOMAUDIOROLECONTROL_H

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
typedef struct QCustomAudioRoleControl QCustomAudioRoleControl;
typedef struct QEvent QEvent;
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

QMetaObject* QCustomAudioRoleControl_MetaObject(const QCustomAudioRoleControl* self);
void* QCustomAudioRoleControl_Metacast(QCustomAudioRoleControl* self, const char* param1);
int QCustomAudioRoleControl_Metacall(QCustomAudioRoleControl* self, int param1, int param2, void** param3);
libqt_string QCustomAudioRoleControl_Tr(const char* s);
libqt_string QCustomAudioRoleControl_TrUtf8(const char* s);
libqt_string QCustomAudioRoleControl_CustomAudioRole(const QCustomAudioRoleControl* self);
void QCustomAudioRoleControl_SetCustomAudioRole(QCustomAudioRoleControl* self, libqt_string role);
libqt_list /* of libqt_string */ QCustomAudioRoleControl_SupportedCustomAudioRoles(const QCustomAudioRoleControl* self);
void QCustomAudioRoleControl_CustomAudioRoleChanged(QCustomAudioRoleControl* self, libqt_string role);
void QCustomAudioRoleControl_Connect_CustomAudioRoleChanged(QCustomAudioRoleControl* self, intptr_t slot);
libqt_string QCustomAudioRoleControl_Tr2(const char* s, const char* c);
libqt_string QCustomAudioRoleControl_Tr3(const char* s, const char* c, int n);
libqt_string QCustomAudioRoleControl_TrUtf82(const char* s, const char* c);
libqt_string QCustomAudioRoleControl_TrUtf83(const char* s, const char* c, int n);
bool QCustomAudioRoleControl_Event(QCustomAudioRoleControl* self, QEvent* event);
bool QCustomAudioRoleControl_EventFilter(QCustomAudioRoleControl* self, QObject* watched, QEvent* event);
void QCustomAudioRoleControl_Delete(QCustomAudioRoleControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
