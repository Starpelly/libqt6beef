#pragma once
#ifndef SRC_QTC_LIBQSETTINGS_H
#define SRC_QTC_LIBQSETTINGS_H

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
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QSettings QSettings;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QSettings::Format Format;           // C++ enum
typedef QSettings::ReadFunc ReadFunc;       // C++ QFlags
typedef QSettings::Scope Scope;             // C++ enum
typedef QSettings::SettingsMap SettingsMap; // C++ QFlags
typedef QSettings::Status Status;           // C++ enum
typedef QSettings::WriteFunc WriteFunc;     // C++ QFlags
#else
typedef int Format;                                               // C ABI enum
typedef int Scope;                                                // C ABI enum
typedef int Status;                                               // C ABI enum
typedef libqt_map /* of libqt_string to QVariant* */ SettingsMap; // C ABI QFlags
#endif

QTLIBC_API QSettings* QSettings_new(libqt_string organization);
QTLIBC_API QSettings* QSettings_new2(int scope, libqt_string organization);
QTLIBC_API QSettings* QSettings_new3(int format, int scope, libqt_string organization);
QTLIBC_API QSettings* QSettings_new4(libqt_string fileName, int format);
QTLIBC_API QSettings* QSettings_new5();
QTLIBC_API QSettings* QSettings_new6(int scope);
QTLIBC_API QSettings* QSettings_new7(libqt_string organization, libqt_string application);
QTLIBC_API QSettings* QSettings_new8(libqt_string organization, libqt_string application, QObject* parent);
QTLIBC_API QSettings* QSettings_new9(int scope, libqt_string organization, libqt_string application);
QTLIBC_API QSettings* QSettings_new10(int scope, libqt_string organization, libqt_string application, QObject* parent);
QTLIBC_API QSettings* QSettings_new11(int format, int scope, libqt_string organization, libqt_string application);
QTLIBC_API QSettings* QSettings_new12(int format, int scope, libqt_string organization, libqt_string application, QObject* parent);
QTLIBC_API QSettings* QSettings_new13(libqt_string fileName, int format, QObject* parent);
QTLIBC_API QSettings* QSettings_new14(QObject* parent);
QTLIBC_API QSettings* QSettings_new15(int scope, QObject* parent);
QTLIBC_API QMetaObject* QSettings_MetaObject(const QSettings* self);
QTLIBC_API void* QSettings_Metacast(QSettings* self, const char* param1);
QTLIBC_API int QSettings_Metacall(QSettings* self, int param1, int param2, void** param3);
QTLIBC_API void QSettings_OnMetacall(QSettings* self, intptr_t slot);
QTLIBC_API int QSettings_QBaseMetacall(QSettings* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSettings_Tr(const char* s);
QTLIBC_API void QSettings_Clear(QSettings* self);
QTLIBC_API void QSettings_Sync(QSettings* self);
QTLIBC_API int QSettings_Status(const QSettings* self);
QTLIBC_API bool QSettings_IsAtomicSyncRequired(const QSettings* self);
QTLIBC_API void QSettings_SetAtomicSyncRequired(QSettings* self, bool enable);
QTLIBC_API void QSettings_BeginGroup(QSettings* self, char* prefix);
QTLIBC_API void QSettings_EndGroup(QSettings* self);
QTLIBC_API libqt_string QSettings_Group(const QSettings* self);
QTLIBC_API int QSettings_BeginReadArray(QSettings* self, char* prefix);
QTLIBC_API void QSettings_BeginWriteArray(QSettings* self, char* prefix);
QTLIBC_API void QSettings_EndArray(QSettings* self);
QTLIBC_API void QSettings_SetArrayIndex(QSettings* self, int i);
QTLIBC_API libqt_list /* of libqt_string */ QSettings_AllKeys(const QSettings* self);
QTLIBC_API libqt_list /* of libqt_string */ QSettings_ChildKeys(const QSettings* self);
QTLIBC_API libqt_list /* of libqt_string */ QSettings_ChildGroups(const QSettings* self);
QTLIBC_API bool QSettings_IsWritable(const QSettings* self);
QTLIBC_API void QSettings_SetValue(QSettings* self, char* key, QVariant* value);
QTLIBC_API QVariant* QSettings_Value(const QSettings* self, char* key, QVariant* defaultValue);
QTLIBC_API QVariant* QSettings_ValueWithKey(const QSettings* self, char* key);
QTLIBC_API void QSettings_Remove(QSettings* self, char* key);
QTLIBC_API bool QSettings_Contains(const QSettings* self, char* key);
QTLIBC_API void QSettings_SetFallbacksEnabled(QSettings* self, bool b);
QTLIBC_API bool QSettings_FallbacksEnabled(const QSettings* self);
QTLIBC_API libqt_string QSettings_FileName(const QSettings* self);
QTLIBC_API int QSettings_Format(const QSettings* self);
QTLIBC_API int QSettings_Scope(const QSettings* self);
QTLIBC_API libqt_string QSettings_OrganizationName(const QSettings* self);
QTLIBC_API libqt_string QSettings_ApplicationName(const QSettings* self);
QTLIBC_API void QSettings_SetDefaultFormat(int format);
QTLIBC_API int QSettings_DefaultFormat();
QTLIBC_API void QSettings_SetPath(int format, int scope, libqt_string path);
QTLIBC_API bool QSettings_Event(QSettings* self, QEvent* event);
QTLIBC_API void QSettings_OnEvent(QSettings* self, intptr_t slot);
QTLIBC_API bool QSettings_QBaseEvent(QSettings* self, QEvent* event);
QTLIBC_API libqt_string QSettings_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSettings_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QSettings_BeginWriteArray2(QSettings* self, char* prefix, int size);
QTLIBC_API bool QSettings_EventFilter(QSettings* self, QObject* watched, QEvent* event);
QTLIBC_API void QSettings_OnEventFilter(QSettings* self, intptr_t slot);
QTLIBC_API bool QSettings_QBaseEventFilter(QSettings* self, QObject* watched, QEvent* event);
QTLIBC_API void QSettings_TimerEvent(QSettings* self, QTimerEvent* event);
QTLIBC_API void QSettings_OnTimerEvent(QSettings* self, intptr_t slot);
QTLIBC_API void QSettings_QBaseTimerEvent(QSettings* self, QTimerEvent* event);
QTLIBC_API void QSettings_ChildEvent(QSettings* self, QChildEvent* event);
QTLIBC_API void QSettings_OnChildEvent(QSettings* self, intptr_t slot);
QTLIBC_API void QSettings_QBaseChildEvent(QSettings* self, QChildEvent* event);
QTLIBC_API void QSettings_CustomEvent(QSettings* self, QEvent* event);
QTLIBC_API void QSettings_OnCustomEvent(QSettings* self, intptr_t slot);
QTLIBC_API void QSettings_QBaseCustomEvent(QSettings* self, QEvent* event);
QTLIBC_API void QSettings_ConnectNotify(QSettings* self, QMetaMethod* signal);
QTLIBC_API void QSettings_OnConnectNotify(QSettings* self, intptr_t slot);
QTLIBC_API void QSettings_QBaseConnectNotify(QSettings* self, QMetaMethod* signal);
QTLIBC_API void QSettings_DisconnectNotify(QSettings* self, QMetaMethod* signal);
QTLIBC_API void QSettings_OnDisconnectNotify(QSettings* self, intptr_t slot);
QTLIBC_API void QSettings_QBaseDisconnectNotify(QSettings* self, QMetaMethod* signal);
QTLIBC_API QObject* QSettings_Sender(const QSettings* self);
QTLIBC_API void QSettings_OnSender(const QSettings* self, intptr_t slot);
QTLIBC_API QObject* QSettings_QBaseSender(const QSettings* self);
QTLIBC_API int QSettings_SenderSignalIndex(const QSettings* self);
QTLIBC_API void QSettings_OnSenderSignalIndex(const QSettings* self, intptr_t slot);
QTLIBC_API int QSettings_QBaseSenderSignalIndex(const QSettings* self);
QTLIBC_API int QSettings_Receivers(const QSettings* self, const char* signal);
QTLIBC_API void QSettings_OnReceivers(const QSettings* self, intptr_t slot);
QTLIBC_API int QSettings_QBaseReceivers(const QSettings* self, const char* signal);
QTLIBC_API bool QSettings_IsSignalConnected(const QSettings* self, QMetaMethod* signal);
QTLIBC_API void QSettings_OnIsSignalConnected(const QSettings* self, intptr_t slot);
QTLIBC_API bool QSettings_QBaseIsSignalConnected(const QSettings* self, QMetaMethod* signal);
QTLIBC_API void QSettings_Delete(QSettings* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
