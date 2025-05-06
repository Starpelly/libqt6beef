#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOINPUTSELECTORCONTROL_H
#define SRC_MULTIMEDIAC_LIBQAUDIOINPUTSELECTORCONTROL_H

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
typedef struct QAudioInputSelectorControl QAudioInputSelectorControl;
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

QMetaObject* QAudioInputSelectorControl_MetaObject(const QAudioInputSelectorControl* self);
void* QAudioInputSelectorControl_Metacast(QAudioInputSelectorControl* self, const char* param1);
int QAudioInputSelectorControl_Metacall(QAudioInputSelectorControl* self, int param1, int param2, void** param3);
libqt_string QAudioInputSelectorControl_Tr(const char* s);
libqt_string QAudioInputSelectorControl_TrUtf8(const char* s);
libqt_list /* of libqt_string */ QAudioInputSelectorControl_AvailableInputs(const QAudioInputSelectorControl* self);
libqt_string QAudioInputSelectorControl_InputDescription(const QAudioInputSelectorControl* self, libqt_string name);
libqt_string QAudioInputSelectorControl_DefaultInput(const QAudioInputSelectorControl* self);
libqt_string QAudioInputSelectorControl_ActiveInput(const QAudioInputSelectorControl* self);
void QAudioInputSelectorControl_SetActiveInput(QAudioInputSelectorControl* self, libqt_string name);
void QAudioInputSelectorControl_ActiveInputChanged(QAudioInputSelectorControl* self, libqt_string name);
void QAudioInputSelectorControl_Connect_ActiveInputChanged(QAudioInputSelectorControl* self, intptr_t slot);
void QAudioInputSelectorControl_AvailableInputsChanged(QAudioInputSelectorControl* self);
void QAudioInputSelectorControl_Connect_AvailableInputsChanged(QAudioInputSelectorControl* self, intptr_t slot);
libqt_string QAudioInputSelectorControl_Tr2(const char* s, const char* c);
libqt_string QAudioInputSelectorControl_Tr3(const char* s, const char* c, int n);
libqt_string QAudioInputSelectorControl_TrUtf82(const char* s, const char* c);
libqt_string QAudioInputSelectorControl_TrUtf83(const char* s, const char* c, int n);
bool QAudioInputSelectorControl_Event(QAudioInputSelectorControl* self, QEvent* event);
bool QAudioInputSelectorControl_EventFilter(QAudioInputSelectorControl* self, QObject* watched, QEvent* event);
void QAudioInputSelectorControl_Delete(QAudioInputSelectorControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
