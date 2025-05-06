#pragma once
#ifndef SRC_QTC_LIBQVALIDATOR_H
#define SRC_QTC_LIBQVALIDATOR_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QDoubleValidator QDoubleValidator;
typedef struct QEvent QEvent;
typedef struct QIntValidator QIntValidator;
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QRegularExpression QRegularExpression;
typedef struct QRegularExpressionValidator QRegularExpressionValidator;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QValidator QValidator;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QDoubleValidator::Notation Notation; // C++ enum
typedef QValidator::State State;             // C++ enum
#else
typedef int Notation; // C ABI enum
typedef int State;    // C ABI enum
#endif

QTLIBC_API QValidator* QValidator_new();
QTLIBC_API QValidator* QValidator_new2(QObject* parent);
QTLIBC_API QMetaObject* QValidator_MetaObject(const QValidator* self);
QTLIBC_API void* QValidator_Metacast(QValidator* self, const char* param1);
QTLIBC_API int QValidator_Metacall(QValidator* self, int param1, int param2, void** param3);
QTLIBC_API void QValidator_OnMetacall(QValidator* self, intptr_t slot);
QTLIBC_API int QValidator_QBaseMetacall(QValidator* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QValidator_Tr(const char* s);
QTLIBC_API void QValidator_SetLocale(QValidator* self, QLocale* locale);
QTLIBC_API QLocale* QValidator_Locale(const QValidator* self);
QTLIBC_API int QValidator_Validate(const QValidator* self, libqt_string param1, int* param2);
QTLIBC_API void QValidator_OnValidate(const QValidator* self, intptr_t slot);
QTLIBC_API int QValidator_QBaseValidate(const QValidator* self, libqt_string param1, int* param2);
QTLIBC_API void QValidator_Fixup(const QValidator* self, libqt_string param1);
QTLIBC_API void QValidator_OnFixup(const QValidator* self, intptr_t slot);
QTLIBC_API void QValidator_QBaseFixup(const QValidator* self, libqt_string param1);
QTLIBC_API void QValidator_Changed(QValidator* self);
QTLIBC_API void QValidator_Connect_Changed(QValidator* self, intptr_t slot);
QTLIBC_API libqt_string QValidator_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QValidator_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QValidator_Event(QValidator* self, QEvent* event);
QTLIBC_API void QValidator_OnEvent(QValidator* self, intptr_t slot);
QTLIBC_API bool QValidator_QBaseEvent(QValidator* self, QEvent* event);
QTLIBC_API bool QValidator_EventFilter(QValidator* self, QObject* watched, QEvent* event);
QTLIBC_API void QValidator_OnEventFilter(QValidator* self, intptr_t slot);
QTLIBC_API bool QValidator_QBaseEventFilter(QValidator* self, QObject* watched, QEvent* event);
QTLIBC_API void QValidator_TimerEvent(QValidator* self, QTimerEvent* event);
QTLIBC_API void QValidator_OnTimerEvent(QValidator* self, intptr_t slot);
QTLIBC_API void QValidator_QBaseTimerEvent(QValidator* self, QTimerEvent* event);
QTLIBC_API void QValidator_ChildEvent(QValidator* self, QChildEvent* event);
QTLIBC_API void QValidator_OnChildEvent(QValidator* self, intptr_t slot);
QTLIBC_API void QValidator_QBaseChildEvent(QValidator* self, QChildEvent* event);
QTLIBC_API void QValidator_CustomEvent(QValidator* self, QEvent* event);
QTLIBC_API void QValidator_OnCustomEvent(QValidator* self, intptr_t slot);
QTLIBC_API void QValidator_QBaseCustomEvent(QValidator* self, QEvent* event);
QTLIBC_API void QValidator_ConnectNotify(QValidator* self, QMetaMethod* signal);
QTLIBC_API void QValidator_OnConnectNotify(QValidator* self, intptr_t slot);
QTLIBC_API void QValidator_QBaseConnectNotify(QValidator* self, QMetaMethod* signal);
QTLIBC_API void QValidator_DisconnectNotify(QValidator* self, QMetaMethod* signal);
QTLIBC_API void QValidator_OnDisconnectNotify(QValidator* self, intptr_t slot);
QTLIBC_API void QValidator_QBaseDisconnectNotify(QValidator* self, QMetaMethod* signal);
QTLIBC_API QObject* QValidator_Sender(const QValidator* self);
QTLIBC_API void QValidator_OnSender(const QValidator* self, intptr_t slot);
QTLIBC_API QObject* QValidator_QBaseSender(const QValidator* self);
QTLIBC_API int QValidator_SenderSignalIndex(const QValidator* self);
QTLIBC_API void QValidator_OnSenderSignalIndex(const QValidator* self, intptr_t slot);
QTLIBC_API int QValidator_QBaseSenderSignalIndex(const QValidator* self);
QTLIBC_API int QValidator_Receivers(const QValidator* self, const char* signal);
QTLIBC_API void QValidator_OnReceivers(const QValidator* self, intptr_t slot);
QTLIBC_API int QValidator_QBaseReceivers(const QValidator* self, const char* signal);
QTLIBC_API bool QValidator_IsSignalConnected(const QValidator* self, QMetaMethod* signal);
QTLIBC_API void QValidator_OnIsSignalConnected(const QValidator* self, intptr_t slot);
QTLIBC_API bool QValidator_QBaseIsSignalConnected(const QValidator* self, QMetaMethod* signal);
QTLIBC_API void QValidator_Delete(QValidator* self);

QTLIBC_API QIntValidator* QIntValidator_new();
QTLIBC_API QIntValidator* QIntValidator_new2(int bottom, int top);
QTLIBC_API QIntValidator* QIntValidator_new3(QObject* parent);
QTLIBC_API QIntValidator* QIntValidator_new4(int bottom, int top, QObject* parent);
QTLIBC_API QMetaObject* QIntValidator_MetaObject(const QIntValidator* self);
QTLIBC_API void* QIntValidator_Metacast(QIntValidator* self, const char* param1);
QTLIBC_API int QIntValidator_Metacall(QIntValidator* self, int param1, int param2, void** param3);
QTLIBC_API void QIntValidator_OnMetacall(QIntValidator* self, intptr_t slot);
QTLIBC_API int QIntValidator_QBaseMetacall(QIntValidator* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QIntValidator_Tr(const char* s);
QTLIBC_API int QIntValidator_Validate(const QIntValidator* self, libqt_string param1, int* param2);
QTLIBC_API void QIntValidator_OnValidate(const QIntValidator* self, intptr_t slot);
QTLIBC_API int QIntValidator_QBaseValidate(const QIntValidator* self, libqt_string param1, int* param2);
QTLIBC_API void QIntValidator_Fixup(const QIntValidator* self, libqt_string input);
QTLIBC_API void QIntValidator_OnFixup(const QIntValidator* self, intptr_t slot);
QTLIBC_API void QIntValidator_QBaseFixup(const QIntValidator* self, libqt_string input);
QTLIBC_API void QIntValidator_SetBottom(QIntValidator* self, int bottom);
QTLIBC_API void QIntValidator_SetTop(QIntValidator* self, int top);
QTLIBC_API void QIntValidator_SetRange(QIntValidator* self, int bottom, int top);
QTLIBC_API int QIntValidator_Bottom(const QIntValidator* self);
QTLIBC_API int QIntValidator_Top(const QIntValidator* self);
QTLIBC_API void QIntValidator_BottomChanged(QIntValidator* self, int bottom);
QTLIBC_API void QIntValidator_Connect_BottomChanged(QIntValidator* self, intptr_t slot);
QTLIBC_API void QIntValidator_TopChanged(QIntValidator* self, int top);
QTLIBC_API void QIntValidator_Connect_TopChanged(QIntValidator* self, intptr_t slot);
QTLIBC_API libqt_string QIntValidator_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QIntValidator_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QIntValidator_Event(QIntValidator* self, QEvent* event);
QTLIBC_API void QIntValidator_OnEvent(QIntValidator* self, intptr_t slot);
QTLIBC_API bool QIntValidator_QBaseEvent(QIntValidator* self, QEvent* event);
QTLIBC_API bool QIntValidator_EventFilter(QIntValidator* self, QObject* watched, QEvent* event);
QTLIBC_API void QIntValidator_OnEventFilter(QIntValidator* self, intptr_t slot);
QTLIBC_API bool QIntValidator_QBaseEventFilter(QIntValidator* self, QObject* watched, QEvent* event);
QTLIBC_API void QIntValidator_TimerEvent(QIntValidator* self, QTimerEvent* event);
QTLIBC_API void QIntValidator_OnTimerEvent(QIntValidator* self, intptr_t slot);
QTLIBC_API void QIntValidator_QBaseTimerEvent(QIntValidator* self, QTimerEvent* event);
QTLIBC_API void QIntValidator_ChildEvent(QIntValidator* self, QChildEvent* event);
QTLIBC_API void QIntValidator_OnChildEvent(QIntValidator* self, intptr_t slot);
QTLIBC_API void QIntValidator_QBaseChildEvent(QIntValidator* self, QChildEvent* event);
QTLIBC_API void QIntValidator_CustomEvent(QIntValidator* self, QEvent* event);
QTLIBC_API void QIntValidator_OnCustomEvent(QIntValidator* self, intptr_t slot);
QTLIBC_API void QIntValidator_QBaseCustomEvent(QIntValidator* self, QEvent* event);
QTLIBC_API void QIntValidator_ConnectNotify(QIntValidator* self, QMetaMethod* signal);
QTLIBC_API void QIntValidator_OnConnectNotify(QIntValidator* self, intptr_t slot);
QTLIBC_API void QIntValidator_QBaseConnectNotify(QIntValidator* self, QMetaMethod* signal);
QTLIBC_API void QIntValidator_DisconnectNotify(QIntValidator* self, QMetaMethod* signal);
QTLIBC_API void QIntValidator_OnDisconnectNotify(QIntValidator* self, intptr_t slot);
QTLIBC_API void QIntValidator_QBaseDisconnectNotify(QIntValidator* self, QMetaMethod* signal);
QTLIBC_API QObject* QIntValidator_Sender(const QIntValidator* self);
QTLIBC_API void QIntValidator_OnSender(const QIntValidator* self, intptr_t slot);
QTLIBC_API QObject* QIntValidator_QBaseSender(const QIntValidator* self);
QTLIBC_API int QIntValidator_SenderSignalIndex(const QIntValidator* self);
QTLIBC_API void QIntValidator_OnSenderSignalIndex(const QIntValidator* self, intptr_t slot);
QTLIBC_API int QIntValidator_QBaseSenderSignalIndex(const QIntValidator* self);
QTLIBC_API int QIntValidator_Receivers(const QIntValidator* self, const char* signal);
QTLIBC_API void QIntValidator_OnReceivers(const QIntValidator* self, intptr_t slot);
QTLIBC_API int QIntValidator_QBaseReceivers(const QIntValidator* self, const char* signal);
QTLIBC_API bool QIntValidator_IsSignalConnected(const QIntValidator* self, QMetaMethod* signal);
QTLIBC_API void QIntValidator_OnIsSignalConnected(const QIntValidator* self, intptr_t slot);
QTLIBC_API bool QIntValidator_QBaseIsSignalConnected(const QIntValidator* self, QMetaMethod* signal);
QTLIBC_API void QIntValidator_Delete(QIntValidator* self);

QTLIBC_API QDoubleValidator* QDoubleValidator_new();
QTLIBC_API QDoubleValidator* QDoubleValidator_new2(double bottom, double top, int decimals);
QTLIBC_API QDoubleValidator* QDoubleValidator_new3(QObject* parent);
QTLIBC_API QDoubleValidator* QDoubleValidator_new4(double bottom, double top, int decimals, QObject* parent);
QTLIBC_API QMetaObject* QDoubleValidator_MetaObject(const QDoubleValidator* self);
QTLIBC_API void* QDoubleValidator_Metacast(QDoubleValidator* self, const char* param1);
QTLIBC_API int QDoubleValidator_Metacall(QDoubleValidator* self, int param1, int param2, void** param3);
QTLIBC_API void QDoubleValidator_OnMetacall(QDoubleValidator* self, intptr_t slot);
QTLIBC_API int QDoubleValidator_QBaseMetacall(QDoubleValidator* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QDoubleValidator_Tr(const char* s);
QTLIBC_API int QDoubleValidator_Validate(const QDoubleValidator* self, libqt_string param1, int* param2);
QTLIBC_API void QDoubleValidator_OnValidate(const QDoubleValidator* self, intptr_t slot);
QTLIBC_API int QDoubleValidator_QBaseValidate(const QDoubleValidator* self, libqt_string param1, int* param2);
QTLIBC_API void QDoubleValidator_Fixup(const QDoubleValidator* self, libqt_string input);
QTLIBC_API void QDoubleValidator_OnFixup(const QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_QBaseFixup(const QDoubleValidator* self, libqt_string input);
QTLIBC_API void QDoubleValidator_SetRange(QDoubleValidator* self, double bottom, double top, int decimals);
QTLIBC_API void QDoubleValidator_SetRange2(QDoubleValidator* self, double bottom, double top);
QTLIBC_API void QDoubleValidator_SetBottom(QDoubleValidator* self, double bottom);
QTLIBC_API void QDoubleValidator_SetTop(QDoubleValidator* self, double top);
QTLIBC_API void QDoubleValidator_SetDecimals(QDoubleValidator* self, int decimals);
QTLIBC_API void QDoubleValidator_SetNotation(QDoubleValidator* self, int notation);
QTLIBC_API double QDoubleValidator_Bottom(const QDoubleValidator* self);
QTLIBC_API double QDoubleValidator_Top(const QDoubleValidator* self);
QTLIBC_API int QDoubleValidator_Decimals(const QDoubleValidator* self);
QTLIBC_API int QDoubleValidator_Notation(const QDoubleValidator* self);
QTLIBC_API void QDoubleValidator_BottomChanged(QDoubleValidator* self, double bottom);
QTLIBC_API void QDoubleValidator_Connect_BottomChanged(QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_TopChanged(QDoubleValidator* self, double top);
QTLIBC_API void QDoubleValidator_Connect_TopChanged(QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_DecimalsChanged(QDoubleValidator* self, int decimals);
QTLIBC_API void QDoubleValidator_Connect_DecimalsChanged(QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_NotationChanged(QDoubleValidator* self, int notation);
QTLIBC_API void QDoubleValidator_Connect_NotationChanged(QDoubleValidator* self, intptr_t slot);
QTLIBC_API libqt_string QDoubleValidator_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QDoubleValidator_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QDoubleValidator_Event(QDoubleValidator* self, QEvent* event);
QTLIBC_API void QDoubleValidator_OnEvent(QDoubleValidator* self, intptr_t slot);
QTLIBC_API bool QDoubleValidator_QBaseEvent(QDoubleValidator* self, QEvent* event);
QTLIBC_API bool QDoubleValidator_EventFilter(QDoubleValidator* self, QObject* watched, QEvent* event);
QTLIBC_API void QDoubleValidator_OnEventFilter(QDoubleValidator* self, intptr_t slot);
QTLIBC_API bool QDoubleValidator_QBaseEventFilter(QDoubleValidator* self, QObject* watched, QEvent* event);
QTLIBC_API void QDoubleValidator_TimerEvent(QDoubleValidator* self, QTimerEvent* event);
QTLIBC_API void QDoubleValidator_OnTimerEvent(QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_QBaseTimerEvent(QDoubleValidator* self, QTimerEvent* event);
QTLIBC_API void QDoubleValidator_ChildEvent(QDoubleValidator* self, QChildEvent* event);
QTLIBC_API void QDoubleValidator_OnChildEvent(QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_QBaseChildEvent(QDoubleValidator* self, QChildEvent* event);
QTLIBC_API void QDoubleValidator_CustomEvent(QDoubleValidator* self, QEvent* event);
QTLIBC_API void QDoubleValidator_OnCustomEvent(QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_QBaseCustomEvent(QDoubleValidator* self, QEvent* event);
QTLIBC_API void QDoubleValidator_ConnectNotify(QDoubleValidator* self, QMetaMethod* signal);
QTLIBC_API void QDoubleValidator_OnConnectNotify(QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_QBaseConnectNotify(QDoubleValidator* self, QMetaMethod* signal);
QTLIBC_API void QDoubleValidator_DisconnectNotify(QDoubleValidator* self, QMetaMethod* signal);
QTLIBC_API void QDoubleValidator_OnDisconnectNotify(QDoubleValidator* self, intptr_t slot);
QTLIBC_API void QDoubleValidator_QBaseDisconnectNotify(QDoubleValidator* self, QMetaMethod* signal);
QTLIBC_API QObject* QDoubleValidator_Sender(const QDoubleValidator* self);
QTLIBC_API void QDoubleValidator_OnSender(const QDoubleValidator* self, intptr_t slot);
QTLIBC_API QObject* QDoubleValidator_QBaseSender(const QDoubleValidator* self);
QTLIBC_API int QDoubleValidator_SenderSignalIndex(const QDoubleValidator* self);
QTLIBC_API void QDoubleValidator_OnSenderSignalIndex(const QDoubleValidator* self, intptr_t slot);
QTLIBC_API int QDoubleValidator_QBaseSenderSignalIndex(const QDoubleValidator* self);
QTLIBC_API int QDoubleValidator_Receivers(const QDoubleValidator* self, const char* signal);
QTLIBC_API void QDoubleValidator_OnReceivers(const QDoubleValidator* self, intptr_t slot);
QTLIBC_API int QDoubleValidator_QBaseReceivers(const QDoubleValidator* self, const char* signal);
QTLIBC_API bool QDoubleValidator_IsSignalConnected(const QDoubleValidator* self, QMetaMethod* signal);
QTLIBC_API void QDoubleValidator_OnIsSignalConnected(const QDoubleValidator* self, intptr_t slot);
QTLIBC_API bool QDoubleValidator_QBaseIsSignalConnected(const QDoubleValidator* self, QMetaMethod* signal);
QTLIBC_API void QDoubleValidator_Delete(QDoubleValidator* self);

QTLIBC_API QRegularExpressionValidator* QRegularExpressionValidator_new();
QTLIBC_API QRegularExpressionValidator* QRegularExpressionValidator_new2(QRegularExpression* re);
QTLIBC_API QRegularExpressionValidator* QRegularExpressionValidator_new3(QObject* parent);
QTLIBC_API QRegularExpressionValidator* QRegularExpressionValidator_new4(QRegularExpression* re, QObject* parent);
QTLIBC_API QMetaObject* QRegularExpressionValidator_MetaObject(const QRegularExpressionValidator* self);
QTLIBC_API void* QRegularExpressionValidator_Metacast(QRegularExpressionValidator* self, const char* param1);
QTLIBC_API int QRegularExpressionValidator_Metacall(QRegularExpressionValidator* self, int param1, int param2, void** param3);
QTLIBC_API void QRegularExpressionValidator_OnMetacall(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API int QRegularExpressionValidator_QBaseMetacall(QRegularExpressionValidator* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QRegularExpressionValidator_Tr(const char* s);
QTLIBC_API int QRegularExpressionValidator_Validate(const QRegularExpressionValidator* self, libqt_string input, int* pos);
QTLIBC_API void QRegularExpressionValidator_OnValidate(const QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API int QRegularExpressionValidator_QBaseValidate(const QRegularExpressionValidator* self, libqt_string input, int* pos);
QTLIBC_API QRegularExpression* QRegularExpressionValidator_RegularExpression(const QRegularExpressionValidator* self);
QTLIBC_API void QRegularExpressionValidator_SetRegularExpression(QRegularExpressionValidator* self, QRegularExpression* re);
QTLIBC_API void QRegularExpressionValidator_RegularExpressionChanged(QRegularExpressionValidator* self, QRegularExpression* re);
QTLIBC_API void QRegularExpressionValidator_Connect_RegularExpressionChanged(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API libqt_string QRegularExpressionValidator_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QRegularExpressionValidator_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QRegularExpressionValidator_Fixup(const QRegularExpressionValidator* self, libqt_string param1);
QTLIBC_API void QRegularExpressionValidator_OnFixup(const QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API void QRegularExpressionValidator_QBaseFixup(const QRegularExpressionValidator* self, libqt_string param1);
QTLIBC_API bool QRegularExpressionValidator_Event(QRegularExpressionValidator* self, QEvent* event);
QTLIBC_API void QRegularExpressionValidator_OnEvent(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API bool QRegularExpressionValidator_QBaseEvent(QRegularExpressionValidator* self, QEvent* event);
QTLIBC_API bool QRegularExpressionValidator_EventFilter(QRegularExpressionValidator* self, QObject* watched, QEvent* event);
QTLIBC_API void QRegularExpressionValidator_OnEventFilter(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API bool QRegularExpressionValidator_QBaseEventFilter(QRegularExpressionValidator* self, QObject* watched, QEvent* event);
QTLIBC_API void QRegularExpressionValidator_TimerEvent(QRegularExpressionValidator* self, QTimerEvent* event);
QTLIBC_API void QRegularExpressionValidator_OnTimerEvent(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API void QRegularExpressionValidator_QBaseTimerEvent(QRegularExpressionValidator* self, QTimerEvent* event);
QTLIBC_API void QRegularExpressionValidator_ChildEvent(QRegularExpressionValidator* self, QChildEvent* event);
QTLIBC_API void QRegularExpressionValidator_OnChildEvent(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API void QRegularExpressionValidator_QBaseChildEvent(QRegularExpressionValidator* self, QChildEvent* event);
QTLIBC_API void QRegularExpressionValidator_CustomEvent(QRegularExpressionValidator* self, QEvent* event);
QTLIBC_API void QRegularExpressionValidator_OnCustomEvent(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API void QRegularExpressionValidator_QBaseCustomEvent(QRegularExpressionValidator* self, QEvent* event);
QTLIBC_API void QRegularExpressionValidator_ConnectNotify(QRegularExpressionValidator* self, QMetaMethod* signal);
QTLIBC_API void QRegularExpressionValidator_OnConnectNotify(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API void QRegularExpressionValidator_QBaseConnectNotify(QRegularExpressionValidator* self, QMetaMethod* signal);
QTLIBC_API void QRegularExpressionValidator_DisconnectNotify(QRegularExpressionValidator* self, QMetaMethod* signal);
QTLIBC_API void QRegularExpressionValidator_OnDisconnectNotify(QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API void QRegularExpressionValidator_QBaseDisconnectNotify(QRegularExpressionValidator* self, QMetaMethod* signal);
QTLIBC_API QObject* QRegularExpressionValidator_Sender(const QRegularExpressionValidator* self);
QTLIBC_API void QRegularExpressionValidator_OnSender(const QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API QObject* QRegularExpressionValidator_QBaseSender(const QRegularExpressionValidator* self);
QTLIBC_API int QRegularExpressionValidator_SenderSignalIndex(const QRegularExpressionValidator* self);
QTLIBC_API void QRegularExpressionValidator_OnSenderSignalIndex(const QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API int QRegularExpressionValidator_QBaseSenderSignalIndex(const QRegularExpressionValidator* self);
QTLIBC_API int QRegularExpressionValidator_Receivers(const QRegularExpressionValidator* self, const char* signal);
QTLIBC_API void QRegularExpressionValidator_OnReceivers(const QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API int QRegularExpressionValidator_QBaseReceivers(const QRegularExpressionValidator* self, const char* signal);
QTLIBC_API bool QRegularExpressionValidator_IsSignalConnected(const QRegularExpressionValidator* self, QMetaMethod* signal);
QTLIBC_API void QRegularExpressionValidator_OnIsSignalConnected(const QRegularExpressionValidator* self, intptr_t slot);
QTLIBC_API bool QRegularExpressionValidator_QBaseIsSignalConnected(const QRegularExpressionValidator* self, QMetaMethod* signal);
QTLIBC_API void QRegularExpressionValidator_Delete(QRegularExpressionValidator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
