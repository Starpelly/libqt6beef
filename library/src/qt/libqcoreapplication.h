#pragma once
#ifndef SRC_QTC_LIBQCOREAPPLICATION_H
#define SRC_QTC_LIBQCOREAPPLICATION_H

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
typedef struct QAbstractEventDispatcher QAbstractEventDispatcher;
typedef struct QAbstractNativeEventFilter QAbstractNativeEventFilter;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QCoreApplication QCoreApplication;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTranslator QTranslator;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QCoreApplication* QCoreApplication_new(int* argc, char** argv);
QTLIBC_API QCoreApplication* QCoreApplication_new2(int* argc, char** argv, int param3);
QTLIBC_API QMetaObject* QCoreApplication_MetaObject(const QCoreApplication* self);
QTLIBC_API void* QCoreApplication_Metacast(QCoreApplication* self, const char* param1);
QTLIBC_API int QCoreApplication_Metacall(QCoreApplication* self, int param1, int param2, void** param3);
QTLIBC_API void QCoreApplication_OnMetacall(QCoreApplication* self, intptr_t slot);
QTLIBC_API int QCoreApplication_QBaseMetacall(QCoreApplication* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QCoreApplication_Tr(const char* s);
QTLIBC_API libqt_list /* of libqt_string */ QCoreApplication_Arguments();
QTLIBC_API void QCoreApplication_SetAttribute(int attribute);
QTLIBC_API bool QCoreApplication_TestAttribute(int attribute);
QTLIBC_API void QCoreApplication_SetOrganizationDomain(libqt_string orgDomain);
QTLIBC_API libqt_string QCoreApplication_OrganizationDomain();
QTLIBC_API void QCoreApplication_SetOrganizationName(libqt_string orgName);
QTLIBC_API libqt_string QCoreApplication_OrganizationName();
QTLIBC_API void QCoreApplication_SetApplicationName(libqt_string application);
QTLIBC_API libqt_string QCoreApplication_ApplicationName();
QTLIBC_API void QCoreApplication_SetApplicationVersion(libqt_string version);
QTLIBC_API libqt_string QCoreApplication_ApplicationVersion();
QTLIBC_API void QCoreApplication_SetSetuidAllowed(bool allow);
QTLIBC_API bool QCoreApplication_IsSetuidAllowed();
QTLIBC_API QCoreApplication* QCoreApplication_Instance();
QTLIBC_API int QCoreApplication_Exec();
QTLIBC_API void QCoreApplication_ProcessEvents();
QTLIBC_API void QCoreApplication_ProcessEvents2(int flags, int maxtime);
QTLIBC_API bool QCoreApplication_SendEvent(QObject* receiver, QEvent* event);
QTLIBC_API void QCoreApplication_PostEvent(QObject* receiver, QEvent* event);
QTLIBC_API void QCoreApplication_SendPostedEvents();
QTLIBC_API void QCoreApplication_RemovePostedEvents(QObject* receiver);
QTLIBC_API QAbstractEventDispatcher* QCoreApplication_EventDispatcher();
QTLIBC_API void QCoreApplication_SetEventDispatcher(QAbstractEventDispatcher* eventDispatcher);
QTLIBC_API bool QCoreApplication_Notify(QCoreApplication* self, QObject* param1, QEvent* param2);
QTLIBC_API void QCoreApplication_OnNotify(QCoreApplication* self, intptr_t slot);
QTLIBC_API bool QCoreApplication_QBaseNotify(QCoreApplication* self, QObject* param1, QEvent* param2);
QTLIBC_API bool QCoreApplication_StartingUp();
QTLIBC_API bool QCoreApplication_ClosingDown();
QTLIBC_API libqt_string QCoreApplication_ApplicationDirPath();
QTLIBC_API libqt_string QCoreApplication_ApplicationFilePath();
QTLIBC_API long long QCoreApplication_ApplicationPid();
QTLIBC_API void QCoreApplication_SetLibraryPaths(libqt_list /* of libqt_string */ libraryPaths);
QTLIBC_API libqt_list /* of libqt_string */ QCoreApplication_LibraryPaths();
QTLIBC_API void QCoreApplication_AddLibraryPath(libqt_string param1);
QTLIBC_API void QCoreApplication_RemoveLibraryPath(libqt_string param1);
QTLIBC_API bool QCoreApplication_InstallTranslator(QTranslator* messageFile);
QTLIBC_API bool QCoreApplication_RemoveTranslator(QTranslator* messageFile);
QTLIBC_API libqt_string QCoreApplication_Translate(const char* context, const char* key);
QTLIBC_API void QCoreApplication_InstallNativeEventFilter(QCoreApplication* self, QAbstractNativeEventFilter* filterObj);
QTLIBC_API void QCoreApplication_Connect_InstallNativeEventFilter(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_RemoveNativeEventFilter(QCoreApplication* self, QAbstractNativeEventFilter* filterObj);
QTLIBC_API void QCoreApplication_Connect_RemoveNativeEventFilter(QCoreApplication* self, intptr_t slot);
QTLIBC_API bool QCoreApplication_IsQuitLockEnabled();
QTLIBC_API void QCoreApplication_SetQuitLockEnabled(bool enabled);
QTLIBC_API void QCoreApplication_Quit();
QTLIBC_API void QCoreApplication_Exit();
QTLIBC_API void QCoreApplication_OrganizationNameChanged(QCoreApplication* self);
QTLIBC_API void QCoreApplication_Connect_OrganizationNameChanged(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_OrganizationDomainChanged(QCoreApplication* self);
QTLIBC_API void QCoreApplication_Connect_OrganizationDomainChanged(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_ApplicationNameChanged(QCoreApplication* self);
QTLIBC_API void QCoreApplication_Connect_ApplicationNameChanged(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_ApplicationVersionChanged(QCoreApplication* self);
QTLIBC_API void QCoreApplication_Connect_ApplicationVersionChanged(QCoreApplication* self, intptr_t slot);
QTLIBC_API bool QCoreApplication_Event(QCoreApplication* self, QEvent* param1);
QTLIBC_API void QCoreApplication_OnEvent(QCoreApplication* self, intptr_t slot);
QTLIBC_API bool QCoreApplication_QBaseEvent(QCoreApplication* self, QEvent* param1);
QTLIBC_API libqt_string QCoreApplication_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QCoreApplication_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QCoreApplication_SetAttribute2(int attribute, bool on);
QTLIBC_API void QCoreApplication_ProcessEvents1(int flags);
QTLIBC_API void QCoreApplication_PostEvent3(QObject* receiver, QEvent* event, int priority);
QTLIBC_API void QCoreApplication_SendPostedEvents1(QObject* receiver);
QTLIBC_API void QCoreApplication_SendPostedEvents2(QObject* receiver, int event_type);
QTLIBC_API void QCoreApplication_RemovePostedEvents2(QObject* receiver, int eventType);
QTLIBC_API libqt_string QCoreApplication_Translate3(const char* context, const char* key, const char* disambiguation);
QTLIBC_API libqt_string QCoreApplication_Translate4(const char* context, const char* key, const char* disambiguation, int n);
QTLIBC_API void QCoreApplication_Exit1(int retcode);
QTLIBC_API bool QCoreApplication_EventFilter(QCoreApplication* self, QObject* watched, QEvent* event);
QTLIBC_API void QCoreApplication_OnEventFilter(QCoreApplication* self, intptr_t slot);
QTLIBC_API bool QCoreApplication_QBaseEventFilter(QCoreApplication* self, QObject* watched, QEvent* event);
QTLIBC_API void QCoreApplication_TimerEvent(QCoreApplication* self, QTimerEvent* event);
QTLIBC_API void QCoreApplication_OnTimerEvent(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_QBaseTimerEvent(QCoreApplication* self, QTimerEvent* event);
QTLIBC_API void QCoreApplication_ChildEvent(QCoreApplication* self, QChildEvent* event);
QTLIBC_API void QCoreApplication_OnChildEvent(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_QBaseChildEvent(QCoreApplication* self, QChildEvent* event);
QTLIBC_API void QCoreApplication_CustomEvent(QCoreApplication* self, QEvent* event);
QTLIBC_API void QCoreApplication_OnCustomEvent(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_QBaseCustomEvent(QCoreApplication* self, QEvent* event);
QTLIBC_API void QCoreApplication_ConnectNotify(QCoreApplication* self, QMetaMethod* signal);
QTLIBC_API void QCoreApplication_OnConnectNotify(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_QBaseConnectNotify(QCoreApplication* self, QMetaMethod* signal);
QTLIBC_API void QCoreApplication_DisconnectNotify(QCoreApplication* self, QMetaMethod* signal);
QTLIBC_API void QCoreApplication_OnDisconnectNotify(QCoreApplication* self, intptr_t slot);
QTLIBC_API void QCoreApplication_QBaseDisconnectNotify(QCoreApplication* self, QMetaMethod* signal);
QTLIBC_API void* QCoreApplication_ResolveInterface(const QCoreApplication* self, const char* name, int revision);
QTLIBC_API void QCoreApplication_OnResolveInterface(const QCoreApplication* self, intptr_t slot);
QTLIBC_API void* QCoreApplication_QBaseResolveInterface(const QCoreApplication* self, const char* name, int revision);
QTLIBC_API QObject* QCoreApplication_Sender(const QCoreApplication* self);
QTLIBC_API void QCoreApplication_OnSender(const QCoreApplication* self, intptr_t slot);
QTLIBC_API QObject* QCoreApplication_QBaseSender(const QCoreApplication* self);
QTLIBC_API int QCoreApplication_SenderSignalIndex(const QCoreApplication* self);
QTLIBC_API void QCoreApplication_OnSenderSignalIndex(const QCoreApplication* self, intptr_t slot);
QTLIBC_API int QCoreApplication_QBaseSenderSignalIndex(const QCoreApplication* self);
QTLIBC_API int QCoreApplication_Receivers(const QCoreApplication* self, const char* signal);
QTLIBC_API void QCoreApplication_OnReceivers(const QCoreApplication* self, intptr_t slot);
QTLIBC_API int QCoreApplication_QBaseReceivers(const QCoreApplication* self, const char* signal);
QTLIBC_API bool QCoreApplication_IsSignalConnected(const QCoreApplication* self, QMetaMethod* signal);
QTLIBC_API void QCoreApplication_OnIsSignalConnected(const QCoreApplication* self, intptr_t slot);
QTLIBC_API bool QCoreApplication_QBaseIsSignalConnected(const QCoreApplication* self, QMetaMethod* signal);
QTLIBC_API void QCoreApplication_Delete(QCoreApplication* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
