#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOOUTPUTSELECTORCONTROL_H
#define SRC_MULTIMEDIAC_LIBQAUDIOOUTPUTSELECTORCONTROL_H

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
typedef struct QAudioOutputSelectorControl QAudioOutputSelectorControl;
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

QMetaObject* QAudioOutputSelectorControl_MetaObject(const QAudioOutputSelectorControl* self);
void* QAudioOutputSelectorControl_Metacast(QAudioOutputSelectorControl* self, const char* param1);
int QAudioOutputSelectorControl_Metacall(QAudioOutputSelectorControl* self, int param1, int param2, void** param3);
libqt_string QAudioOutputSelectorControl_Tr(const char* s);
libqt_string QAudioOutputSelectorControl_TrUtf8(const char* s);
libqt_list /* of libqt_string */ QAudioOutputSelectorControl_AvailableOutputs(const QAudioOutputSelectorControl* self);
libqt_string QAudioOutputSelectorControl_OutputDescription(const QAudioOutputSelectorControl* self, libqt_string name);
libqt_string QAudioOutputSelectorControl_DefaultOutput(const QAudioOutputSelectorControl* self);
libqt_string QAudioOutputSelectorControl_ActiveOutput(const QAudioOutputSelectorControl* self);
void QAudioOutputSelectorControl_SetActiveOutput(QAudioOutputSelectorControl* self, libqt_string name);
void QAudioOutputSelectorControl_ActiveOutputChanged(QAudioOutputSelectorControl* self, libqt_string name);
void QAudioOutputSelectorControl_Connect_ActiveOutputChanged(QAudioOutputSelectorControl* self, intptr_t slot);
void QAudioOutputSelectorControl_AvailableOutputsChanged(QAudioOutputSelectorControl* self);
void QAudioOutputSelectorControl_Connect_AvailableOutputsChanged(QAudioOutputSelectorControl* self, intptr_t slot);
libqt_string QAudioOutputSelectorControl_Tr2(const char* s, const char* c);
libqt_string QAudioOutputSelectorControl_Tr3(const char* s, const char* c, int n);
libqt_string QAudioOutputSelectorControl_TrUtf82(const char* s, const char* c);
libqt_string QAudioOutputSelectorControl_TrUtf83(const char* s, const char* c, int n);
bool QAudioOutputSelectorControl_Event(QAudioOutputSelectorControl* self, QEvent* event);
bool QAudioOutputSelectorControl_EventFilter(QAudioOutputSelectorControl* self, QObject* watched, QEvent* event);
void QAudioOutputSelectorControl_Delete(QAudioOutputSelectorControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
