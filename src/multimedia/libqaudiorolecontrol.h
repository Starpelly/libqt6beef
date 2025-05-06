#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOROLECONTROL_H
#define SRC_MULTIMEDIAC_LIBQAUDIOROLECONTROL_H

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
typedef struct QAudioRoleControl QAudioRoleControl;
typedef struct QChildEvent QChildEvent;
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

QMetaObject* QAudioRoleControl_MetaObject(const QAudioRoleControl* self);
void* QAudioRoleControl_Metacast(QAudioRoleControl* self, const char* param1);
int QAudioRoleControl_Metacall(QAudioRoleControl* self, int param1, int param2, void** param3);
libqt_string QAudioRoleControl_Tr(const char* s);
libqt_string QAudioRoleControl_TrUtf8(const char* s);
int QAudioRoleControl_AudioRole(const QAudioRoleControl* self);
void QAudioRoleControl_SetAudioRole(QAudioRoleControl* self, int role);
libqt_list /* of int */ QAudioRoleControl_SupportedAudioRoles(const QAudioRoleControl* self);
void QAudioRoleControl_AudioRoleChanged(QAudioRoleControl* self, int role);
void QAudioRoleControl_Connect_AudioRoleChanged(QAudioRoleControl* self, intptr_t slot);
libqt_string QAudioRoleControl_Tr2(const char* s, const char* c);
libqt_string QAudioRoleControl_Tr3(const char* s, const char* c, int n);
libqt_string QAudioRoleControl_TrUtf82(const char* s, const char* c);
libqt_string QAudioRoleControl_TrUtf83(const char* s, const char* c, int n);
bool QAudioRoleControl_Event(QAudioRoleControl* self, QEvent* event);
bool QAudioRoleControl_EventFilter(QAudioRoleControl* self, QObject* watched, QEvent* event);
void QAudioRoleControl_Delete(QAudioRoleControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
