#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAPLAYLIST_H
#define SRC_MULTIMEDIAC_LIBQMEDIAPLAYLIST_H

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
typedef struct QIODevice QIODevice;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaContent QMediaContent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaPlaylist QMediaPlaylist;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QMediaPlaylist::Error Error;               // C++ enum
typedef QMediaPlaylist::PlaybackMode PlaybackMode; // C++ enum
#else
typedef int Error;        // C ABI enum
typedef int PlaybackMode; // C ABI enum
#endif

QMediaPlaylist* QMediaPlaylist_new();
QMediaPlaylist* QMediaPlaylist_new2(QObject* parent);
QMetaObject* QMediaPlaylist_MetaObject(const QMediaPlaylist* self);
void* QMediaPlaylist_Metacast(QMediaPlaylist* self, const char* param1);
int QMediaPlaylist_Metacall(QMediaPlaylist* self, int param1, int param2, void** param3);
void QMediaPlaylist_OnMetacall(QMediaPlaylist* self, intptr_t slot);
int QMediaPlaylist_QBaseMetacall(QMediaPlaylist* self, int param1, int param2, void** param3);
libqt_string QMediaPlaylist_Tr(const char* s);
libqt_string QMediaPlaylist_TrUtf8(const char* s);
QMediaObject* QMediaPlaylist_MediaObject(const QMediaPlaylist* self);
void QMediaPlaylist_OnMediaObject(const QMediaPlaylist* self, intptr_t slot);
QMediaObject* QMediaPlaylist_QBaseMediaObject(const QMediaPlaylist* self);
int QMediaPlaylist_PlaybackMode(const QMediaPlaylist* self);
void QMediaPlaylist_SetPlaybackMode(QMediaPlaylist* self, int mode);
int QMediaPlaylist_CurrentIndex(const QMediaPlaylist* self);
QMediaContent* QMediaPlaylist_CurrentMedia(const QMediaPlaylist* self);
int QMediaPlaylist_NextIndex(const QMediaPlaylist* self);
int QMediaPlaylist_PreviousIndex(const QMediaPlaylist* self);
QMediaContent* QMediaPlaylist_Media(const QMediaPlaylist* self, int index);
int QMediaPlaylist_MediaCount(const QMediaPlaylist* self);
bool QMediaPlaylist_IsEmpty(const QMediaPlaylist* self);
bool QMediaPlaylist_IsReadOnly(const QMediaPlaylist* self);
bool QMediaPlaylist_AddMedia(QMediaPlaylist* self, QMediaContent* content);
bool QMediaPlaylist_AddMediaWithItems(QMediaPlaylist* self, libqt_list /* of QMediaContent* */ items);
bool QMediaPlaylist_InsertMedia(QMediaPlaylist* self, int index, QMediaContent* content);
bool QMediaPlaylist_InsertMedia2(QMediaPlaylist* self, int index, libqt_list /* of QMediaContent* */ items);
bool QMediaPlaylist_MoveMedia(QMediaPlaylist* self, int from, int to);
bool QMediaPlaylist_RemoveMedia(QMediaPlaylist* self, int pos);
bool QMediaPlaylist_RemoveMedia2(QMediaPlaylist* self, int start, int end);
bool QMediaPlaylist_Clear(QMediaPlaylist* self);
void QMediaPlaylist_Load(QMediaPlaylist* self, QNetworkRequest* request);
void QMediaPlaylist_LoadWithLocation(QMediaPlaylist* self, QUrl* location);
void QMediaPlaylist_LoadWithDevice(QMediaPlaylist* self, QIODevice* device);
bool QMediaPlaylist_Save(QMediaPlaylist* self, QUrl* location);
bool QMediaPlaylist_Save2(QMediaPlaylist* self, QIODevice* device, const char* format);
int QMediaPlaylist_Error(const QMediaPlaylist* self);
libqt_string QMediaPlaylist_ErrorString(const QMediaPlaylist* self);
void QMediaPlaylist_Shuffle(QMediaPlaylist* self);
void QMediaPlaylist_Next(QMediaPlaylist* self);
void QMediaPlaylist_Previous(QMediaPlaylist* self);
void QMediaPlaylist_SetCurrentIndex(QMediaPlaylist* self, int index);
void QMediaPlaylist_CurrentIndexChanged(QMediaPlaylist* self, int index);
void QMediaPlaylist_Connect_CurrentIndexChanged(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_PlaybackModeChanged(QMediaPlaylist* self, int mode);
void QMediaPlaylist_Connect_PlaybackModeChanged(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_CurrentMediaChanged(QMediaPlaylist* self, QMediaContent* param1);
void QMediaPlaylist_Connect_CurrentMediaChanged(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_MediaAboutToBeInserted(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_Connect_MediaAboutToBeInserted(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_MediaInserted(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_Connect_MediaInserted(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_MediaAboutToBeRemoved(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_Connect_MediaAboutToBeRemoved(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_MediaRemoved(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_Connect_MediaRemoved(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_MediaChanged(QMediaPlaylist* self, int start, int end);
void QMediaPlaylist_Connect_MediaChanged(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_Loaded(QMediaPlaylist* self);
void QMediaPlaylist_Connect_Loaded(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_LoadFailed(QMediaPlaylist* self);
void QMediaPlaylist_Connect_LoadFailed(QMediaPlaylist* self, intptr_t slot);
bool QMediaPlaylist_SetMediaObject(QMediaPlaylist* self, QMediaObject* object);
void QMediaPlaylist_OnSetMediaObject(QMediaPlaylist* self, intptr_t slot);
bool QMediaPlaylist_QBaseSetMediaObject(QMediaPlaylist* self, QMediaObject* object);
libqt_string QMediaPlaylist_Tr2(const char* s, const char* c);
libqt_string QMediaPlaylist_Tr3(const char* s, const char* c, int n);
libqt_string QMediaPlaylist_TrUtf82(const char* s, const char* c);
libqt_string QMediaPlaylist_TrUtf83(const char* s, const char* c, int n);
int QMediaPlaylist_NextIndex1(const QMediaPlaylist* self, int steps);
int QMediaPlaylist_PreviousIndex1(const QMediaPlaylist* self, int steps);
void QMediaPlaylist_Load2(QMediaPlaylist* self, QNetworkRequest* request, const char* format);
void QMediaPlaylist_Load22(QMediaPlaylist* self, QUrl* location, const char* format);
void QMediaPlaylist_Load23(QMediaPlaylist* self, QIODevice* device, const char* format);
bool QMediaPlaylist_Save22(QMediaPlaylist* self, QUrl* location, const char* format);
bool QMediaPlaylist_Event(QMediaPlaylist* self, QEvent* event);
void QMediaPlaylist_OnEvent(QMediaPlaylist* self, intptr_t slot);
bool QMediaPlaylist_QBaseEvent(QMediaPlaylist* self, QEvent* event);
bool QMediaPlaylist_EventFilter(QMediaPlaylist* self, QObject* watched, QEvent* event);
void QMediaPlaylist_OnEventFilter(QMediaPlaylist* self, intptr_t slot);
bool QMediaPlaylist_QBaseEventFilter(QMediaPlaylist* self, QObject* watched, QEvent* event);
void QMediaPlaylist_TimerEvent(QMediaPlaylist* self, QTimerEvent* event);
void QMediaPlaylist_OnTimerEvent(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_QBaseTimerEvent(QMediaPlaylist* self, QTimerEvent* event);
void QMediaPlaylist_ChildEvent(QMediaPlaylist* self, QChildEvent* event);
void QMediaPlaylist_OnChildEvent(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_QBaseChildEvent(QMediaPlaylist* self, QChildEvent* event);
void QMediaPlaylist_CustomEvent(QMediaPlaylist* self, QEvent* event);
void QMediaPlaylist_OnCustomEvent(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_QBaseCustomEvent(QMediaPlaylist* self, QEvent* event);
void QMediaPlaylist_ConnectNotify(QMediaPlaylist* self, QMetaMethod* signal);
void QMediaPlaylist_OnConnectNotify(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_QBaseConnectNotify(QMediaPlaylist* self, QMetaMethod* signal);
void QMediaPlaylist_DisconnectNotify(QMediaPlaylist* self, QMetaMethod* signal);
void QMediaPlaylist_OnDisconnectNotify(QMediaPlaylist* self, intptr_t slot);
void QMediaPlaylist_QBaseDisconnectNotify(QMediaPlaylist* self, QMetaMethod* signal);
QObject* QMediaPlaylist_Sender(const QMediaPlaylist* self);
void QMediaPlaylist_OnSender(const QMediaPlaylist* self, intptr_t slot);
QObject* QMediaPlaylist_QBaseSender(const QMediaPlaylist* self);
int QMediaPlaylist_SenderSignalIndex(const QMediaPlaylist* self);
void QMediaPlaylist_OnSenderSignalIndex(const QMediaPlaylist* self, intptr_t slot);
int QMediaPlaylist_QBaseSenderSignalIndex(const QMediaPlaylist* self);
int QMediaPlaylist_Receivers(const QMediaPlaylist* self, const char* signal);
void QMediaPlaylist_OnReceivers(const QMediaPlaylist* self, intptr_t slot);
int QMediaPlaylist_QBaseReceivers(const QMediaPlaylist* self, const char* signal);
bool QMediaPlaylist_IsSignalConnected(const QMediaPlaylist* self, QMetaMethod* signal);
void QMediaPlaylist_OnIsSignalConnected(const QMediaPlaylist* self, intptr_t slot);
bool QMediaPlaylist_QBaseIsSignalConnected(const QMediaPlaylist* self, QMetaMethod* signal);
void QMediaPlaylist_Delete(QMediaPlaylist* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
