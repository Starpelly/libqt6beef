#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQRADIOTUNERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQRADIOTUNERCONTROL_H

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
typedef struct QRadioTunerControl QRadioTunerControl;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QRadioTunerControl_MetaObject(const QRadioTunerControl* self);
void* QRadioTunerControl_Metacast(QRadioTunerControl* self, const char* param1);
int QRadioTunerControl_Metacall(QRadioTunerControl* self, int param1, int param2, void** param3);
libqt_string QRadioTunerControl_Tr(const char* s);
libqt_string QRadioTunerControl_TrUtf8(const char* s);
int QRadioTunerControl_State(const QRadioTunerControl* self);
int QRadioTunerControl_Band(const QRadioTunerControl* self);
void QRadioTunerControl_SetBand(QRadioTunerControl* self, int b);
bool QRadioTunerControl_IsBandSupported(const QRadioTunerControl* self, int b);
int QRadioTunerControl_Frequency(const QRadioTunerControl* self);
int QRadioTunerControl_FrequencyStep(const QRadioTunerControl* self, int b);
libqt_pair /* tuple of int and int */ QRadioTunerControl_FrequencyRange(const QRadioTunerControl* self, int b);
void QRadioTunerControl_SetFrequency(QRadioTunerControl* self, int frequency);
bool QRadioTunerControl_IsStereo(const QRadioTunerControl* self);
int QRadioTunerControl_StereoMode(const QRadioTunerControl* self);
void QRadioTunerControl_SetStereoMode(QRadioTunerControl* self, int mode);
int QRadioTunerControl_SignalStrength(const QRadioTunerControl* self);
int QRadioTunerControl_Volume(const QRadioTunerControl* self);
void QRadioTunerControl_SetVolume(QRadioTunerControl* self, int volume);
bool QRadioTunerControl_IsMuted(const QRadioTunerControl* self);
void QRadioTunerControl_SetMuted(QRadioTunerControl* self, bool muted);
bool QRadioTunerControl_IsSearching(const QRadioTunerControl* self);
bool QRadioTunerControl_IsAntennaConnected(const QRadioTunerControl* self);
void QRadioTunerControl_SearchForward(QRadioTunerControl* self);
void QRadioTunerControl_SearchBackward(QRadioTunerControl* self);
void QRadioTunerControl_SearchAllStations(QRadioTunerControl* self, int searchMode);
void QRadioTunerControl_CancelSearch(QRadioTunerControl* self);
void QRadioTunerControl_Start(QRadioTunerControl* self);
void QRadioTunerControl_Stop(QRadioTunerControl* self);
int QRadioTunerControl_Error(const QRadioTunerControl* self);
libqt_string QRadioTunerControl_ErrorString(const QRadioTunerControl* self);
void QRadioTunerControl_StateChanged(QRadioTunerControl* self, int state);
void QRadioTunerControl_Connect_StateChanged(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_BandChanged(QRadioTunerControl* self, int band);
void QRadioTunerControl_Connect_BandChanged(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_FrequencyChanged(QRadioTunerControl* self, int frequency);
void QRadioTunerControl_Connect_FrequencyChanged(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_StereoStatusChanged(QRadioTunerControl* self, bool stereo);
void QRadioTunerControl_Connect_StereoStatusChanged(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_SearchingChanged(QRadioTunerControl* self, bool searching);
void QRadioTunerControl_Connect_SearchingChanged(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_SignalStrengthChanged(QRadioTunerControl* self, int signalStrength);
void QRadioTunerControl_Connect_SignalStrengthChanged(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_VolumeChanged(QRadioTunerControl* self, int volume);
void QRadioTunerControl_Connect_VolumeChanged(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_MutedChanged(QRadioTunerControl* self, bool muted);
void QRadioTunerControl_Connect_MutedChanged(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_ErrorWithErr(QRadioTunerControl* self, int err);
void QRadioTunerControl_Connect_ErrorWithErr(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_StationFound(QRadioTunerControl* self, int frequency, libqt_string stationId);
void QRadioTunerControl_Connect_StationFound(QRadioTunerControl* self, intptr_t slot);
void QRadioTunerControl_AntennaConnectedChanged(QRadioTunerControl* self, bool connectionStatus);
void QRadioTunerControl_Connect_AntennaConnectedChanged(QRadioTunerControl* self, intptr_t slot);
libqt_string QRadioTunerControl_Tr2(const char* s, const char* c);
libqt_string QRadioTunerControl_Tr3(const char* s, const char* c, int n);
libqt_string QRadioTunerControl_TrUtf82(const char* s, const char* c);
libqt_string QRadioTunerControl_TrUtf83(const char* s, const char* c, int n);
bool QRadioTunerControl_Event(QRadioTunerControl* self, QEvent* event);
bool QRadioTunerControl_EventFilter(QRadioTunerControl* self, QObject* watched, QEvent* event);
void QRadioTunerControl_Delete(QRadioTunerControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
