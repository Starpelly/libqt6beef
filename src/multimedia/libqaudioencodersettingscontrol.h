#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOENCODERSETTINGSCONTROL_H
#define SRC_MULTIMEDIAC_LIBQAUDIOENCODERSETTINGSCONTROL_H

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
typedef struct QAudioEncoderSettings QAudioEncoderSettings;
typedef struct QAudioEncoderSettingsControl QAudioEncoderSettingsControl;
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

QMetaObject* QAudioEncoderSettingsControl_MetaObject(const QAudioEncoderSettingsControl* self);
void* QAudioEncoderSettingsControl_Metacast(QAudioEncoderSettingsControl* self, const char* param1);
int QAudioEncoderSettingsControl_Metacall(QAudioEncoderSettingsControl* self, int param1, int param2, void** param3);
libqt_string QAudioEncoderSettingsControl_Tr(const char* s);
libqt_string QAudioEncoderSettingsControl_TrUtf8(const char* s);
libqt_list /* of libqt_string */ QAudioEncoderSettingsControl_SupportedAudioCodecs(const QAudioEncoderSettingsControl* self);
libqt_string QAudioEncoderSettingsControl_CodecDescription(const QAudioEncoderSettingsControl* self, libqt_string codecName);
libqt_list /* of int */ QAudioEncoderSettingsControl_SupportedSampleRates(const QAudioEncoderSettingsControl* self, QAudioEncoderSettings* settings, bool* continuous);
QAudioEncoderSettings* QAudioEncoderSettingsControl_AudioSettings(const QAudioEncoderSettingsControl* self);
void QAudioEncoderSettingsControl_SetAudioSettings(QAudioEncoderSettingsControl* self, QAudioEncoderSettings* settings);
libqt_string QAudioEncoderSettingsControl_Tr2(const char* s, const char* c);
libqt_string QAudioEncoderSettingsControl_Tr3(const char* s, const char* c, int n);
libqt_string QAudioEncoderSettingsControl_TrUtf82(const char* s, const char* c);
libqt_string QAudioEncoderSettingsControl_TrUtf83(const char* s, const char* c, int n);
bool QAudioEncoderSettingsControl_Event(QAudioEncoderSettingsControl* self, QEvent* event);
bool QAudioEncoderSettingsControl_EventFilter(QAudioEncoderSettingsControl* self, QObject* watched, QEvent* event);
void QAudioEncoderSettingsControl_Delete(QAudioEncoderSettingsControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
