#pragma once
#ifndef SRCC_LIBQBUTTONGROUP_H
#define SRCC_LIBQBUTTONGROUP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QButtonGroup QButtonGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QButtonGroup* QButtonGroup_new();
QTLIBC_API QButtonGroup* QButtonGroup_new2(QObject* parent);
QTLIBC_API QMetaObject* QButtonGroup_MetaObject(const QButtonGroup* self);
QTLIBC_API void* QButtonGroup_Metacast(QButtonGroup* self, const char* param1);
QTLIBC_API int QButtonGroup_Metacall(QButtonGroup* self, int param1, int param2, void** param3);
QTLIBC_API void QButtonGroup_OnMetacall(QButtonGroup* self, intptr_t slot);
QTLIBC_API int QButtonGroup_QBaseMetacall(QButtonGroup* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QButtonGroup_Tr(const char* s);
QTLIBC_API void QButtonGroup_SetExclusive(QButtonGroup* self, bool exclusive);
QTLIBC_API bool QButtonGroup_Exclusive(const QButtonGroup* self);
QTLIBC_API void QButtonGroup_AddButton(QButtonGroup* self, QAbstractButton* param1);
QTLIBC_API void QButtonGroup_RemoveButton(QButtonGroup* self, QAbstractButton* param1);
QTLIBC_API libqt_list /* of QAbstractButton* */ QButtonGroup_Buttons(const QButtonGroup* self);
QTLIBC_API QAbstractButton* QButtonGroup_CheckedButton(const QButtonGroup* self);
QTLIBC_API QAbstractButton* QButtonGroup_Button(const QButtonGroup* self, int id);
QTLIBC_API void QButtonGroup_SetId(QButtonGroup* self, QAbstractButton* button, int id);
QTLIBC_API int QButtonGroup_Id(const QButtonGroup* self, QAbstractButton* button);
QTLIBC_API int QButtonGroup_CheckedId(const QButtonGroup* self);
QTLIBC_API void QButtonGroup_ButtonClicked(QButtonGroup* self, QAbstractButton* param1);
void QButtonGroup_Connect_ButtonClicked(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_ButtonPressed(QButtonGroup* self, QAbstractButton* param1);
void QButtonGroup_Connect_ButtonPressed(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_ButtonReleased(QButtonGroup* self, QAbstractButton* param1);
void QButtonGroup_Connect_ButtonReleased(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_ButtonToggled(QButtonGroup* self, QAbstractButton* param1, bool param2);
void QButtonGroup_Connect_ButtonToggled(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_IdClicked(QButtonGroup* self, int param1);
void QButtonGroup_Connect_IdClicked(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_IdPressed(QButtonGroup* self, int param1);
void QButtonGroup_Connect_IdPressed(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_IdReleased(QButtonGroup* self, int param1);
void QButtonGroup_Connect_IdReleased(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_IdToggled(QButtonGroup* self, int param1, bool param2);
void QButtonGroup_Connect_IdToggled(QButtonGroup* self, intptr_t slot);
QTLIBC_API libqt_string QButtonGroup_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QButtonGroup_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QButtonGroup_AddButton2(QButtonGroup* self, QAbstractButton* param1, int id);
QTLIBC_API bool QButtonGroup_Event(QButtonGroup* self, QEvent* event);
QTLIBC_API void QButtonGroup_OnEvent(QButtonGroup* self, intptr_t slot);
QTLIBC_API bool QButtonGroup_QBaseEvent(QButtonGroup* self, QEvent* event);
QTLIBC_API bool QButtonGroup_EventFilter(QButtonGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QButtonGroup_OnEventFilter(QButtonGroup* self, intptr_t slot);
QTLIBC_API bool QButtonGroup_QBaseEventFilter(QButtonGroup* self, QObject* watched, QEvent* event);
QTLIBC_API void QButtonGroup_TimerEvent(QButtonGroup* self, QTimerEvent* event);
QTLIBC_API void QButtonGroup_OnTimerEvent(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_QBaseTimerEvent(QButtonGroup* self, QTimerEvent* event);
QTLIBC_API void QButtonGroup_ChildEvent(QButtonGroup* self, QChildEvent* event);
QTLIBC_API void QButtonGroup_OnChildEvent(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_QBaseChildEvent(QButtonGroup* self, QChildEvent* event);
QTLIBC_API void QButtonGroup_CustomEvent(QButtonGroup* self, QEvent* event);
QTLIBC_API void QButtonGroup_OnCustomEvent(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_QBaseCustomEvent(QButtonGroup* self, QEvent* event);
QTLIBC_API void QButtonGroup_ConnectNotify(QButtonGroup* self, QMetaMethod* signal);
QTLIBC_API void QButtonGroup_OnConnectNotify(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_QBaseConnectNotify(QButtonGroup* self, QMetaMethod* signal);
QTLIBC_API void QButtonGroup_DisconnectNotify(QButtonGroup* self, QMetaMethod* signal);
QTLIBC_API void QButtonGroup_OnDisconnectNotify(QButtonGroup* self, intptr_t slot);
QTLIBC_API void QButtonGroup_QBaseDisconnectNotify(QButtonGroup* self, QMetaMethod* signal);
QTLIBC_API QObject* QButtonGroup_Sender(const QButtonGroup* self);
QTLIBC_API void QButtonGroup_OnSender(const QButtonGroup* self, intptr_t slot);
QTLIBC_API QObject* QButtonGroup_QBaseSender(const QButtonGroup* self);
QTLIBC_API int QButtonGroup_SenderSignalIndex(const QButtonGroup* self);
QTLIBC_API void QButtonGroup_OnSenderSignalIndex(const QButtonGroup* self, intptr_t slot);
QTLIBC_API int QButtonGroup_QBaseSenderSignalIndex(const QButtonGroup* self);
QTLIBC_API int QButtonGroup_Receivers(const QButtonGroup* self, const char* signal);
QTLIBC_API void QButtonGroup_OnReceivers(const QButtonGroup* self, intptr_t slot);
QTLIBC_API int QButtonGroup_QBaseReceivers(const QButtonGroup* self, const char* signal);
QTLIBC_API bool QButtonGroup_IsSignalConnected(const QButtonGroup* self, QMetaMethod* signal);
QTLIBC_API void QButtonGroup_OnIsSignalConnected(const QButtonGroup* self, intptr_t slot);
QTLIBC_API bool QButtonGroup_QBaseIsSignalConnected(const QButtonGroup* self, QMetaMethod* signal);
QTLIBC_API void QButtonGroup_Delete(QButtonGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
