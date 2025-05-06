#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAGAPLESSPLAYBACKCONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIAGAPLESSPLAYBACKCONTROL_H

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
typedef struct QMediaContent QMediaContent;
typedef struct QMediaControl QMediaControl;
typedef struct QMediaGaplessPlaybackControl QMediaGaplessPlaybackControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QMediaGaplessPlaybackControl_MetaObject(const QMediaGaplessPlaybackControl* self);
void* QMediaGaplessPlaybackControl_Metacast(QMediaGaplessPlaybackControl* self, const char* param1);
int QMediaGaplessPlaybackControl_Metacall(QMediaGaplessPlaybackControl* self, int param1, int param2, void** param3);
libqt_string QMediaGaplessPlaybackControl_Tr(const char* s);
libqt_string QMediaGaplessPlaybackControl_TrUtf8(const char* s);
QMediaContent* QMediaGaplessPlaybackControl_NextMedia(const QMediaGaplessPlaybackControl* self);
void QMediaGaplessPlaybackControl_SetNextMedia(QMediaGaplessPlaybackControl* self, QMediaContent* media);
bool QMediaGaplessPlaybackControl_IsCrossfadeSupported(const QMediaGaplessPlaybackControl* self);
double QMediaGaplessPlaybackControl_CrossfadeTime(const QMediaGaplessPlaybackControl* self);
void QMediaGaplessPlaybackControl_SetCrossfadeTime(QMediaGaplessPlaybackControl* self, double crossfadeTime);
void QMediaGaplessPlaybackControl_CrossfadeTimeChanged(QMediaGaplessPlaybackControl* self, double crossfadeTime);
void QMediaGaplessPlaybackControl_Connect_CrossfadeTimeChanged(QMediaGaplessPlaybackControl* self, intptr_t slot);
void QMediaGaplessPlaybackControl_NextMediaChanged(QMediaGaplessPlaybackControl* self, QMediaContent* media);
void QMediaGaplessPlaybackControl_Connect_NextMediaChanged(QMediaGaplessPlaybackControl* self, intptr_t slot);
void QMediaGaplessPlaybackControl_AdvancedToNextMedia(QMediaGaplessPlaybackControl* self);
void QMediaGaplessPlaybackControl_Connect_AdvancedToNextMedia(QMediaGaplessPlaybackControl* self, intptr_t slot);
libqt_string QMediaGaplessPlaybackControl_Tr2(const char* s, const char* c);
libqt_string QMediaGaplessPlaybackControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaGaplessPlaybackControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaGaplessPlaybackControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaGaplessPlaybackControl_Event(QMediaGaplessPlaybackControl* self, QEvent* event);
bool QMediaGaplessPlaybackControl_EventFilter(QMediaGaplessPlaybackControl* self, QObject* watched, QEvent* event);
void QMediaGaplessPlaybackControl_Delete(QMediaGaplessPlaybackControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
