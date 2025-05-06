#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQVIDEOENCODERSETTINGSCONTROL_H
#define SRC_MULTIMEDIAC_LIBQVIDEOENCODERSETTINGSCONTROL_H

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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoEncoderSettings QVideoEncoderSettings;
typedef struct QVideoEncoderSettingsControl QVideoEncoderSettingsControl;
#endif

QMetaObject* QVideoEncoderSettingsControl_MetaObject(const QVideoEncoderSettingsControl* self);
void* QVideoEncoderSettingsControl_Metacast(QVideoEncoderSettingsControl* self, const char* param1);
int QVideoEncoderSettingsControl_Metacall(QVideoEncoderSettingsControl* self, int param1, int param2, void** param3);
libqt_string QVideoEncoderSettingsControl_Tr(const char* s);
libqt_string QVideoEncoderSettingsControl_TrUtf8(const char* s);
libqt_list /* of QSize* */ QVideoEncoderSettingsControl_SupportedResolutions(const QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings, bool* continuous);
libqt_list /* of double */ QVideoEncoderSettingsControl_SupportedFrameRates(const QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings, bool* continuous);
libqt_list /* of libqt_string */ QVideoEncoderSettingsControl_SupportedVideoCodecs(const QVideoEncoderSettingsControl* self);
libqt_string QVideoEncoderSettingsControl_VideoCodecDescription(const QVideoEncoderSettingsControl* self, libqt_string codec);
QVideoEncoderSettings* QVideoEncoderSettingsControl_VideoSettings(const QVideoEncoderSettingsControl* self);
void QVideoEncoderSettingsControl_SetVideoSettings(QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings);
libqt_string QVideoEncoderSettingsControl_Tr2(const char* s, const char* c);
libqt_string QVideoEncoderSettingsControl_Tr3(const char* s, const char* c, int n);
libqt_string QVideoEncoderSettingsControl_TrUtf82(const char* s, const char* c);
libqt_string QVideoEncoderSettingsControl_TrUtf83(const char* s, const char* c, int n);
bool QVideoEncoderSettingsControl_Event(QVideoEncoderSettingsControl* self, QEvent* event);
bool QVideoEncoderSettingsControl_EventFilter(QVideoEncoderSettingsControl* self, QObject* watched, QEvent* event);
void QVideoEncoderSettingsControl_Delete(QVideoEncoderSettingsControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
