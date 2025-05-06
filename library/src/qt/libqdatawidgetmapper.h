#pragma once
#ifndef SRC_QTC_LIBQDATAWIDGETMAPPER_H
#define SRC_QTC_LIBQDATAWIDGETMAPPER_H

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
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QDataWidgetMapper QDataWidgetMapper;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QDataWidgetMapper::SubmitPolicy SubmitPolicy; // C++ enum
#else
typedef int SubmitPolicy; // C ABI enum
#endif

QTLIBC_API QDataWidgetMapper* QDataWidgetMapper_new();
QTLIBC_API QDataWidgetMapper* QDataWidgetMapper_new2(QObject* parent);
QTLIBC_API QMetaObject* QDataWidgetMapper_MetaObject(const QDataWidgetMapper* self);
QTLIBC_API void* QDataWidgetMapper_Metacast(QDataWidgetMapper* self, const char* param1);
QTLIBC_API int QDataWidgetMapper_Metacall(QDataWidgetMapper* self, int param1, int param2, void** param3);
QTLIBC_API void QDataWidgetMapper_OnMetacall(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API int QDataWidgetMapper_QBaseMetacall(QDataWidgetMapper* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QDataWidgetMapper_Tr(const char* s);
QTLIBC_API void QDataWidgetMapper_SetModel(QDataWidgetMapper* self, QAbstractItemModel* model);
QTLIBC_API QAbstractItemModel* QDataWidgetMapper_Model(const QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_SetItemDelegate(QDataWidgetMapper* self, QAbstractItemDelegate* delegate);
QTLIBC_API QAbstractItemDelegate* QDataWidgetMapper_ItemDelegate(const QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_SetRootIndex(QDataWidgetMapper* self, QModelIndex* index);
QTLIBC_API QModelIndex* QDataWidgetMapper_RootIndex(const QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_SetOrientation(QDataWidgetMapper* self, int aOrientation);
QTLIBC_API int QDataWidgetMapper_Orientation(const QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_SetSubmitPolicy(QDataWidgetMapper* self, int policy);
QTLIBC_API int QDataWidgetMapper_SubmitPolicy(const QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_AddMapping(QDataWidgetMapper* self, QWidget* widget, int section);
QTLIBC_API void QDataWidgetMapper_AddMapping2(QDataWidgetMapper* self, QWidget* widget, int section, libqt_string propertyName);
QTLIBC_API void QDataWidgetMapper_RemoveMapping(QDataWidgetMapper* self, QWidget* widget);
QTLIBC_API int QDataWidgetMapper_MappedSection(const QDataWidgetMapper* self, QWidget* widget);
QTLIBC_API libqt_string QDataWidgetMapper_MappedPropertyName(const QDataWidgetMapper* self, QWidget* widget);
QTLIBC_API QWidget* QDataWidgetMapper_MappedWidgetAt(const QDataWidgetMapper* self, int section);
QTLIBC_API void QDataWidgetMapper_ClearMapping(QDataWidgetMapper* self);
QTLIBC_API int QDataWidgetMapper_CurrentIndex(const QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_Revert(QDataWidgetMapper* self);
QTLIBC_API bool QDataWidgetMapper_Submit(QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_ToFirst(QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_ToLast(QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_ToNext(QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_ToPrevious(QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_SetCurrentIndex(QDataWidgetMapper* self, int index);
QTLIBC_API void QDataWidgetMapper_OnSetCurrentIndex(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API void QDataWidgetMapper_QBaseSetCurrentIndex(QDataWidgetMapper* self, int index);
QTLIBC_API void QDataWidgetMapper_SetCurrentModelIndex(QDataWidgetMapper* self, QModelIndex* index);
QTLIBC_API void QDataWidgetMapper_CurrentIndexChanged(QDataWidgetMapper* self, int index);
void QDataWidgetMapper_Connect_CurrentIndexChanged(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API libqt_string QDataWidgetMapper_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QDataWidgetMapper_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QDataWidgetMapper_Event(QDataWidgetMapper* self, QEvent* event);
QTLIBC_API void QDataWidgetMapper_OnEvent(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API bool QDataWidgetMapper_QBaseEvent(QDataWidgetMapper* self, QEvent* event);
QTLIBC_API bool QDataWidgetMapper_EventFilter(QDataWidgetMapper* self, QObject* watched, QEvent* event);
QTLIBC_API void QDataWidgetMapper_OnEventFilter(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API bool QDataWidgetMapper_QBaseEventFilter(QDataWidgetMapper* self, QObject* watched, QEvent* event);
QTLIBC_API void QDataWidgetMapper_TimerEvent(QDataWidgetMapper* self, QTimerEvent* event);
QTLIBC_API void QDataWidgetMapper_OnTimerEvent(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API void QDataWidgetMapper_QBaseTimerEvent(QDataWidgetMapper* self, QTimerEvent* event);
QTLIBC_API void QDataWidgetMapper_ChildEvent(QDataWidgetMapper* self, QChildEvent* event);
QTLIBC_API void QDataWidgetMapper_OnChildEvent(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API void QDataWidgetMapper_QBaseChildEvent(QDataWidgetMapper* self, QChildEvent* event);
QTLIBC_API void QDataWidgetMapper_CustomEvent(QDataWidgetMapper* self, QEvent* event);
QTLIBC_API void QDataWidgetMapper_OnCustomEvent(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API void QDataWidgetMapper_QBaseCustomEvent(QDataWidgetMapper* self, QEvent* event);
QTLIBC_API void QDataWidgetMapper_ConnectNotify(QDataWidgetMapper* self, QMetaMethod* signal);
QTLIBC_API void QDataWidgetMapper_OnConnectNotify(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API void QDataWidgetMapper_QBaseConnectNotify(QDataWidgetMapper* self, QMetaMethod* signal);
QTLIBC_API void QDataWidgetMapper_DisconnectNotify(QDataWidgetMapper* self, QMetaMethod* signal);
QTLIBC_API void QDataWidgetMapper_OnDisconnectNotify(QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API void QDataWidgetMapper_QBaseDisconnectNotify(QDataWidgetMapper* self, QMetaMethod* signal);
QTLIBC_API QObject* QDataWidgetMapper_Sender(const QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_OnSender(const QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API QObject* QDataWidgetMapper_QBaseSender(const QDataWidgetMapper* self);
QTLIBC_API int QDataWidgetMapper_SenderSignalIndex(const QDataWidgetMapper* self);
QTLIBC_API void QDataWidgetMapper_OnSenderSignalIndex(const QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API int QDataWidgetMapper_QBaseSenderSignalIndex(const QDataWidgetMapper* self);
QTLIBC_API int QDataWidgetMapper_Receivers(const QDataWidgetMapper* self, const char* signal);
QTLIBC_API void QDataWidgetMapper_OnReceivers(const QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API int QDataWidgetMapper_QBaseReceivers(const QDataWidgetMapper* self, const char* signal);
QTLIBC_API bool QDataWidgetMapper_IsSignalConnected(const QDataWidgetMapper* self, QMetaMethod* signal);
QTLIBC_API void QDataWidgetMapper_OnIsSignalConnected(const QDataWidgetMapper* self, intptr_t slot);
QTLIBC_API bool QDataWidgetMapper_QBaseIsSignalConnected(const QDataWidgetMapper* self, QMetaMethod* signal);
QTLIBC_API void QDataWidgetMapper_Delete(QDataWidgetMapper* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
