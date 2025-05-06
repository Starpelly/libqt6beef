#pragma once
#ifndef SRC_QTC_LIBQIMAGEIOHANDLER_H
#define SRC_QTC_LIBQIMAGEIOHANDLER_H

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
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QImageIOHandler QImageIOHandler;
typedef struct QImageIOPlugin QImageIOPlugin;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QImageIOHandler::ImageOption ImageOption;         // C++ enum
typedef QImageIOHandler::Transformation Transformation;   // C++ enum
typedef QImageIOHandler::Transformations Transformations; // C++ QFlags
typedef QImageIOPlugin::Capabilities Capabilities;        // C++ QFlags
typedef QImageIOPlugin::Capability Capability;            // C++ enum
#else
typedef int Capabilities;    // C ABI QFlags
typedef int Capability;      // C ABI enum
typedef int ImageOption;     // C ABI enum
typedef int Transformation;  // C ABI enum
typedef int Transformations; // C ABI QFlags
#endif

QTLIBC_API QImageIOHandler* QImageIOHandler_new();
QTLIBC_API void QImageIOHandler_SetDevice(QImageIOHandler* self, QIODevice* device);
QTLIBC_API QIODevice* QImageIOHandler_Device(const QImageIOHandler* self);
QTLIBC_API void QImageIOHandler_SetFormat(QImageIOHandler* self, libqt_string format);
QTLIBC_API void QImageIOHandler_SetFormatWithFormat(const QImageIOHandler* self, libqt_string format);
QTLIBC_API libqt_string QImageIOHandler_Format(const QImageIOHandler* self);
QTLIBC_API bool QImageIOHandler_CanRead(const QImageIOHandler* self);
QTLIBC_API void QImageIOHandler_OnCanRead(const QImageIOHandler* self, intptr_t slot);
QTLIBC_API bool QImageIOHandler_QBaseCanRead(const QImageIOHandler* self);
QTLIBC_API bool QImageIOHandler_Read(QImageIOHandler* self, QImage* image);
QTLIBC_API void QImageIOHandler_OnRead(QImageIOHandler* self, intptr_t slot);
QTLIBC_API bool QImageIOHandler_QBaseRead(QImageIOHandler* self, QImage* image);
QTLIBC_API bool QImageIOHandler_Write(QImageIOHandler* self, QImage* image);
QTLIBC_API void QImageIOHandler_OnWrite(QImageIOHandler* self, intptr_t slot);
QTLIBC_API bool QImageIOHandler_QBaseWrite(QImageIOHandler* self, QImage* image);
QTLIBC_API QVariant* QImageIOHandler_Option(const QImageIOHandler* self, int option);
QTLIBC_API void QImageIOHandler_OnOption(const QImageIOHandler* self, intptr_t slot);
QTLIBC_API QVariant* QImageIOHandler_QBaseOption(const QImageIOHandler* self, int option);
QTLIBC_API void QImageIOHandler_SetOption(QImageIOHandler* self, int option, QVariant* value);
QTLIBC_API void QImageIOHandler_OnSetOption(QImageIOHandler* self, intptr_t slot);
QTLIBC_API void QImageIOHandler_QBaseSetOption(QImageIOHandler* self, int option, QVariant* value);
QTLIBC_API bool QImageIOHandler_SupportsOption(const QImageIOHandler* self, int option);
QTLIBC_API void QImageIOHandler_OnSupportsOption(const QImageIOHandler* self, intptr_t slot);
QTLIBC_API bool QImageIOHandler_QBaseSupportsOption(const QImageIOHandler* self, int option);
QTLIBC_API bool QImageIOHandler_JumpToNextImage(QImageIOHandler* self);
QTLIBC_API void QImageIOHandler_OnJumpToNextImage(QImageIOHandler* self, intptr_t slot);
QTLIBC_API bool QImageIOHandler_QBaseJumpToNextImage(QImageIOHandler* self);
QTLIBC_API bool QImageIOHandler_JumpToImage(QImageIOHandler* self, int imageNumber);
QTLIBC_API void QImageIOHandler_OnJumpToImage(QImageIOHandler* self, intptr_t slot);
QTLIBC_API bool QImageIOHandler_QBaseJumpToImage(QImageIOHandler* self, int imageNumber);
QTLIBC_API int QImageIOHandler_LoopCount(const QImageIOHandler* self);
QTLIBC_API void QImageIOHandler_OnLoopCount(const QImageIOHandler* self, intptr_t slot);
QTLIBC_API int QImageIOHandler_QBaseLoopCount(const QImageIOHandler* self);
QTLIBC_API int QImageIOHandler_ImageCount(const QImageIOHandler* self);
QTLIBC_API void QImageIOHandler_OnImageCount(const QImageIOHandler* self, intptr_t slot);
QTLIBC_API int QImageIOHandler_QBaseImageCount(const QImageIOHandler* self);
QTLIBC_API int QImageIOHandler_NextImageDelay(const QImageIOHandler* self);
QTLIBC_API void QImageIOHandler_OnNextImageDelay(const QImageIOHandler* self, intptr_t slot);
QTLIBC_API int QImageIOHandler_QBaseNextImageDelay(const QImageIOHandler* self);
QTLIBC_API int QImageIOHandler_CurrentImageNumber(const QImageIOHandler* self);
QTLIBC_API void QImageIOHandler_OnCurrentImageNumber(const QImageIOHandler* self, intptr_t slot);
QTLIBC_API int QImageIOHandler_QBaseCurrentImageNumber(const QImageIOHandler* self);
QTLIBC_API QRect* QImageIOHandler_CurrentImageRect(const QImageIOHandler* self);
QTLIBC_API void QImageIOHandler_OnCurrentImageRect(const QImageIOHandler* self, intptr_t slot);
QTLIBC_API QRect* QImageIOHandler_QBaseCurrentImageRect(const QImageIOHandler* self);
QTLIBC_API bool QImageIOHandler_AllocateImage(QSize* size, int format, QImage* image);
QTLIBC_API void QImageIOHandler_Delete(QImageIOHandler* self);

QTLIBC_API QImageIOPlugin* QImageIOPlugin_new();
QTLIBC_API QImageIOPlugin* QImageIOPlugin_new2(QObject* parent);
QTLIBC_API QMetaObject* QImageIOPlugin_MetaObject(const QImageIOPlugin* self);
QTLIBC_API void* QImageIOPlugin_Metacast(QImageIOPlugin* self, const char* param1);
QTLIBC_API int QImageIOPlugin_Metacall(QImageIOPlugin* self, int param1, int param2, void** param3);
QTLIBC_API void QImageIOPlugin_OnMetacall(QImageIOPlugin* self, intptr_t slot);
QTLIBC_API int QImageIOPlugin_QBaseMetacall(QImageIOPlugin* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QImageIOPlugin_Tr(const char* s);
QTLIBC_API int QImageIOPlugin_Capabilities(const QImageIOPlugin* self, QIODevice* device, libqt_string format);
QTLIBC_API void QImageIOPlugin_OnCapabilities(const QImageIOPlugin* self, intptr_t slot);
QTLIBC_API int QImageIOPlugin_QBaseCapabilities(const QImageIOPlugin* self, QIODevice* device, libqt_string format);
QTLIBC_API QImageIOHandler* QImageIOPlugin_Create(const QImageIOPlugin* self, QIODevice* device, libqt_string format);
QTLIBC_API void QImageIOPlugin_OnCreate(const QImageIOPlugin* self, intptr_t slot);
QTLIBC_API QImageIOHandler* QImageIOPlugin_QBaseCreate(const QImageIOPlugin* self, QIODevice* device, libqt_string format);
QTLIBC_API libqt_string QImageIOPlugin_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QImageIOPlugin_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QImageIOPlugin_Event(QImageIOPlugin* self, QEvent* event);
QTLIBC_API void QImageIOPlugin_OnEvent(QImageIOPlugin* self, intptr_t slot);
QTLIBC_API bool QImageIOPlugin_QBaseEvent(QImageIOPlugin* self, QEvent* event);
QTLIBC_API bool QImageIOPlugin_EventFilter(QImageIOPlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QImageIOPlugin_OnEventFilter(QImageIOPlugin* self, intptr_t slot);
QTLIBC_API bool QImageIOPlugin_QBaseEventFilter(QImageIOPlugin* self, QObject* watched, QEvent* event);
QTLIBC_API void QImageIOPlugin_TimerEvent(QImageIOPlugin* self, QTimerEvent* event);
QTLIBC_API void QImageIOPlugin_OnTimerEvent(QImageIOPlugin* self, intptr_t slot);
QTLIBC_API void QImageIOPlugin_QBaseTimerEvent(QImageIOPlugin* self, QTimerEvent* event);
QTLIBC_API void QImageIOPlugin_ChildEvent(QImageIOPlugin* self, QChildEvent* event);
QTLIBC_API void QImageIOPlugin_OnChildEvent(QImageIOPlugin* self, intptr_t slot);
QTLIBC_API void QImageIOPlugin_QBaseChildEvent(QImageIOPlugin* self, QChildEvent* event);
QTLIBC_API void QImageIOPlugin_CustomEvent(QImageIOPlugin* self, QEvent* event);
QTLIBC_API void QImageIOPlugin_OnCustomEvent(QImageIOPlugin* self, intptr_t slot);
QTLIBC_API void QImageIOPlugin_QBaseCustomEvent(QImageIOPlugin* self, QEvent* event);
QTLIBC_API void QImageIOPlugin_ConnectNotify(QImageIOPlugin* self, QMetaMethod* signal);
QTLIBC_API void QImageIOPlugin_OnConnectNotify(QImageIOPlugin* self, intptr_t slot);
QTLIBC_API void QImageIOPlugin_QBaseConnectNotify(QImageIOPlugin* self, QMetaMethod* signal);
QTLIBC_API void QImageIOPlugin_DisconnectNotify(QImageIOPlugin* self, QMetaMethod* signal);
QTLIBC_API void QImageIOPlugin_OnDisconnectNotify(QImageIOPlugin* self, intptr_t slot);
QTLIBC_API void QImageIOPlugin_QBaseDisconnectNotify(QImageIOPlugin* self, QMetaMethod* signal);
QTLIBC_API QObject* QImageIOPlugin_Sender(const QImageIOPlugin* self);
QTLIBC_API void QImageIOPlugin_OnSender(const QImageIOPlugin* self, intptr_t slot);
QTLIBC_API QObject* QImageIOPlugin_QBaseSender(const QImageIOPlugin* self);
QTLIBC_API int QImageIOPlugin_SenderSignalIndex(const QImageIOPlugin* self);
QTLIBC_API void QImageIOPlugin_OnSenderSignalIndex(const QImageIOPlugin* self, intptr_t slot);
QTLIBC_API int QImageIOPlugin_QBaseSenderSignalIndex(const QImageIOPlugin* self);
QTLIBC_API int QImageIOPlugin_Receivers(const QImageIOPlugin* self, const char* signal);
QTLIBC_API void QImageIOPlugin_OnReceivers(const QImageIOPlugin* self, intptr_t slot);
QTLIBC_API int QImageIOPlugin_QBaseReceivers(const QImageIOPlugin* self, const char* signal);
QTLIBC_API bool QImageIOPlugin_IsSignalConnected(const QImageIOPlugin* self, QMetaMethod* signal);
QTLIBC_API void QImageIOPlugin_OnIsSignalConnected(const QImageIOPlugin* self, intptr_t slot);
QTLIBC_API bool QImageIOPlugin_QBaseIsSignalConnected(const QImageIOPlugin* self, QMetaMethod* signal);
QTLIBC_API void QImageIOPlugin_Delete(QImageIOPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
