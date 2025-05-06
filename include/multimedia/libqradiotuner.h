#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQRADIOTUNER_H
#define SRC_MULTIMEDIAC_LIBQRADIOTUNER_H

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
typedef struct QMediaObject QMediaObject;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QRadioData QRadioData;
typedef struct QRadioTuner QRadioTuner;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QRadioTuner::Band Band;             // C++ enum
typedef QRadioTuner::Error Error;           // C++ enum
typedef QRadioTuner::SearchMode SearchMode; // C++ enum
typedef QRadioTuner::State State;           // C++ enum
typedef QRadioTuner::StereoMode StereoMode; // C++ enum
#else
typedef int Band;       // C ABI enum
typedef int Error;      // C ABI enum
typedef int SearchMode; // C ABI enum
typedef int State;      // C ABI enum
typedef int StereoMode; // C ABI enum
#endif

QRadioTuner* QRadioTuner_new();
QRadioTuner* QRadioTuner_new2(QObject* parent);
QMetaObject* QRadioTuner_MetaObject(const QRadioTuner* self);
void* QRadioTuner_Metacast(QRadioTuner* self, const char* param1);
int QRadioTuner_Metacall(QRadioTuner* self, int param1, int param2, void** param3);
void QRadioTuner_OnMetacall(QRadioTuner* self, intptr_t slot);
int QRadioTuner_QBaseMetacall(QRadioTuner* self, int param1, int param2, void** param3);
libqt_string QRadioTuner_Tr(const char* s);
libqt_string QRadioTuner_TrUtf8(const char* s);
int QRadioTuner_Availability(const QRadioTuner* self);
void QRadioTuner_OnAvailability(const QRadioTuner* self, intptr_t slot);
int QRadioTuner_QBaseAvailability(const QRadioTuner* self);
int QRadioTuner_State(const QRadioTuner* self);
int QRadioTuner_Band(const QRadioTuner* self);
bool QRadioTuner_IsBandSupported(const QRadioTuner* self, int b);
int QRadioTuner_Frequency(const QRadioTuner* self);
int QRadioTuner_FrequencyStep(const QRadioTuner* self, int band);
libqt_pair /* tuple of int and int */ QRadioTuner_FrequencyRange(const QRadioTuner* self, int band);
bool QRadioTuner_IsStereo(const QRadioTuner* self);
void QRadioTuner_SetStereoMode(QRadioTuner* self, int mode);
int QRadioTuner_StereoMode(const QRadioTuner* self);
int QRadioTuner_SignalStrength(const QRadioTuner* self);
int QRadioTuner_Volume(const QRadioTuner* self);
bool QRadioTuner_IsMuted(const QRadioTuner* self);
bool QRadioTuner_IsSearching(const QRadioTuner* self);
bool QRadioTuner_IsAntennaConnected(const QRadioTuner* self);
int QRadioTuner_Error(const QRadioTuner* self);
libqt_string QRadioTuner_ErrorString(const QRadioTuner* self);
QRadioData* QRadioTuner_RadioData(const QRadioTuner* self);
void QRadioTuner_SearchForward(QRadioTuner* self);
void QRadioTuner_SearchBackward(QRadioTuner* self);
void QRadioTuner_SearchAllStations(QRadioTuner* self);
void QRadioTuner_CancelSearch(QRadioTuner* self);
void QRadioTuner_SetBand(QRadioTuner* self, int band);
void QRadioTuner_SetFrequency(QRadioTuner* self, int frequency);
void QRadioTuner_SetVolume(QRadioTuner* self, int volume);
void QRadioTuner_SetMuted(QRadioTuner* self, bool muted);
void QRadioTuner_Start(QRadioTuner* self);
void QRadioTuner_Stop(QRadioTuner* self);
void QRadioTuner_StateChanged(QRadioTuner* self, int state);
void QRadioTuner_Connect_StateChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_BandChanged(QRadioTuner* self, int band);
void QRadioTuner_Connect_BandChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_FrequencyChanged(QRadioTuner* self, int frequency);
void QRadioTuner_Connect_FrequencyChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_StereoStatusChanged(QRadioTuner* self, bool stereo);
void QRadioTuner_Connect_StereoStatusChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_SearchingChanged(QRadioTuner* self, bool searching);
void QRadioTuner_Connect_SearchingChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_SignalStrengthChanged(QRadioTuner* self, int signalStrength);
void QRadioTuner_Connect_SignalStrengthChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_VolumeChanged(QRadioTuner* self, int volume);
void QRadioTuner_Connect_VolumeChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_MutedChanged(QRadioTuner* self, bool muted);
void QRadioTuner_Connect_MutedChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_StationFound(QRadioTuner* self, int frequency, libqt_string stationId);
void QRadioTuner_Connect_StationFound(QRadioTuner* self, intptr_t slot);
void QRadioTuner_AntennaConnectedChanged(QRadioTuner* self, bool connectionStatus);
void QRadioTuner_Connect_AntennaConnectedChanged(QRadioTuner* self, intptr_t slot);
void QRadioTuner_ErrorWithErrorVal(QRadioTuner* self, int errorVal);
void QRadioTuner_Connect_ErrorWithErrorVal(QRadioTuner* self, intptr_t slot);
libqt_string QRadioTuner_Tr2(const char* s, const char* c);
libqt_string QRadioTuner_Tr3(const char* s, const char* c, int n);
libqt_string QRadioTuner_TrUtf82(const char* s, const char* c);
libqt_string QRadioTuner_TrUtf83(const char* s, const char* c, int n);
void QRadioTuner_SearchAllStations1(QRadioTuner* self, int searchMode);
bool QRadioTuner_IsAvailable(const QRadioTuner* self);
void QRadioTuner_OnIsAvailable(const QRadioTuner* self, intptr_t slot);
bool QRadioTuner_QBaseIsAvailable(const QRadioTuner* self);
QMediaService* QRadioTuner_Service(const QRadioTuner* self);
void QRadioTuner_OnService(const QRadioTuner* self, intptr_t slot);
QMediaService* QRadioTuner_QBaseService(const QRadioTuner* self);
bool QRadioTuner_Bind(QRadioTuner* self, QObject* param1);
void QRadioTuner_OnBind(QRadioTuner* self, intptr_t slot);
bool QRadioTuner_QBaseBind(QRadioTuner* self, QObject* param1);
void QRadioTuner_Unbind(QRadioTuner* self, QObject* param1);
void QRadioTuner_OnUnbind(QRadioTuner* self, intptr_t slot);
void QRadioTuner_QBaseUnbind(QRadioTuner* self, QObject* param1);
bool QRadioTuner_Event(QRadioTuner* self, QEvent* event);
void QRadioTuner_OnEvent(QRadioTuner* self, intptr_t slot);
bool QRadioTuner_QBaseEvent(QRadioTuner* self, QEvent* event);
bool QRadioTuner_EventFilter(QRadioTuner* self, QObject* watched, QEvent* event);
void QRadioTuner_OnEventFilter(QRadioTuner* self, intptr_t slot);
bool QRadioTuner_QBaseEventFilter(QRadioTuner* self, QObject* watched, QEvent* event);
void QRadioTuner_TimerEvent(QRadioTuner* self, QTimerEvent* event);
void QRadioTuner_OnTimerEvent(QRadioTuner* self, intptr_t slot);
void QRadioTuner_QBaseTimerEvent(QRadioTuner* self, QTimerEvent* event);
void QRadioTuner_ChildEvent(QRadioTuner* self, QChildEvent* event);
void QRadioTuner_OnChildEvent(QRadioTuner* self, intptr_t slot);
void QRadioTuner_QBaseChildEvent(QRadioTuner* self, QChildEvent* event);
void QRadioTuner_CustomEvent(QRadioTuner* self, QEvent* event);
void QRadioTuner_OnCustomEvent(QRadioTuner* self, intptr_t slot);
void QRadioTuner_QBaseCustomEvent(QRadioTuner* self, QEvent* event);
void QRadioTuner_ConnectNotify(QRadioTuner* self, QMetaMethod* signal);
void QRadioTuner_OnConnectNotify(QRadioTuner* self, intptr_t slot);
void QRadioTuner_QBaseConnectNotify(QRadioTuner* self, QMetaMethod* signal);
void QRadioTuner_DisconnectNotify(QRadioTuner* self, QMetaMethod* signal);
void QRadioTuner_OnDisconnectNotify(QRadioTuner* self, intptr_t slot);
void QRadioTuner_QBaseDisconnectNotify(QRadioTuner* self, QMetaMethod* signal);
void QRadioTuner_AddPropertyWatch(QRadioTuner* self, libqt_string name);
void QRadioTuner_OnAddPropertyWatch(QRadioTuner* self, intptr_t slot);
void QRadioTuner_QBaseAddPropertyWatch(QRadioTuner* self, libqt_string name);
void QRadioTuner_RemovePropertyWatch(QRadioTuner* self, libqt_string name);
void QRadioTuner_OnRemovePropertyWatch(QRadioTuner* self, intptr_t slot);
void QRadioTuner_QBaseRemovePropertyWatch(QRadioTuner* self, libqt_string name);
QObject* QRadioTuner_Sender(const QRadioTuner* self);
void QRadioTuner_OnSender(const QRadioTuner* self, intptr_t slot);
QObject* QRadioTuner_QBaseSender(const QRadioTuner* self);
int QRadioTuner_SenderSignalIndex(const QRadioTuner* self);
void QRadioTuner_OnSenderSignalIndex(const QRadioTuner* self, intptr_t slot);
int QRadioTuner_QBaseSenderSignalIndex(const QRadioTuner* self);
int QRadioTuner_Receivers(const QRadioTuner* self, const char* signal);
void QRadioTuner_OnReceivers(const QRadioTuner* self, intptr_t slot);
int QRadioTuner_QBaseReceivers(const QRadioTuner* self, const char* signal);
bool QRadioTuner_IsSignalConnected(const QRadioTuner* self, QMetaMethod* signal);
void QRadioTuner_OnIsSignalConnected(const QRadioTuner* self, intptr_t slot);
bool QRadioTuner_QBaseIsSignalConnected(const QRadioTuner* self, QMetaMethod* signal);
void QRadioTuner_Delete(QRadioTuner* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
