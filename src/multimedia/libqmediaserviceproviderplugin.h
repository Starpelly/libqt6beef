#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIASERVICEPROVIDERPLUGIN_H
#define SRC_MULTIMEDIAC_LIBQMEDIASERVICEPROVIDERPLUGIN_H

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
typedef struct QMediaService QMediaService;
typedef struct QMediaServiceCameraInfoInterface QMediaServiceCameraInfoInterface;
typedef struct QMediaServiceDefaultDeviceInterface QMediaServiceDefaultDeviceInterface;
typedef struct QMediaServiceFeaturesInterface QMediaServiceFeaturesInterface;
typedef struct QMediaServiceProviderFactoryInterface QMediaServiceProviderFactoryInterface;
typedef struct QMediaServiceProviderHint QMediaServiceProviderHint;
typedef struct QMediaServiceProviderPlugin QMediaServiceProviderPlugin;
typedef struct QMediaServiceSupportedDevicesInterface QMediaServiceSupportedDevicesInterface;
typedef struct QMediaServiceSupportedFormatsInterface QMediaServiceSupportedFormatsInterface;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QMediaServiceProviderHint::Feature Feature;   // C++ enum
typedef QMediaServiceProviderHint::Features Features; // C++ QFlags
typedef QMediaServiceProviderHint::Type Type;         // C++ enum
#else
typedef int Feature;        // C ABI enum
typedef int Features;       // C ABI QFlags
typedef unsigned char Type; // C ABI enum
#endif

QMediaServiceProviderHint* QMediaServiceProviderHint_new();
QMediaServiceProviderHint* QMediaServiceProviderHint_new2(libqt_string mimeType, libqt_list /* of libqt_string */ codecs);
QMediaServiceProviderHint* QMediaServiceProviderHint_new3(libqt_string device);
QMediaServiceProviderHint* QMediaServiceProviderHint_new4(int position);
QMediaServiceProviderHint* QMediaServiceProviderHint_new5(int features);
QMediaServiceProviderHint* QMediaServiceProviderHint_new6(QMediaServiceProviderHint* other);
void QMediaServiceProviderHint_OperatorAssign(QMediaServiceProviderHint* self, QMediaServiceProviderHint* other);
bool QMediaServiceProviderHint_OperatorEqual(const QMediaServiceProviderHint* self, QMediaServiceProviderHint* other);
bool QMediaServiceProviderHint_OperatorNotEqual(const QMediaServiceProviderHint* self, QMediaServiceProviderHint* other);
bool QMediaServiceProviderHint_IsNull(const QMediaServiceProviderHint* self);
int QMediaServiceProviderHint_Type(const QMediaServiceProviderHint* self);
libqt_string QMediaServiceProviderHint_MimeType(const QMediaServiceProviderHint* self);
libqt_list /* of libqt_string */ QMediaServiceProviderHint_Codecs(const QMediaServiceProviderHint* self);
libqt_string QMediaServiceProviderHint_Device(const QMediaServiceProviderHint* self);
int QMediaServiceProviderHint_CameraPosition(const QMediaServiceProviderHint* self);
int QMediaServiceProviderHint_Features(const QMediaServiceProviderHint* self);
void QMediaServiceProviderHint_Delete(QMediaServiceProviderHint* self);

QMediaService* QMediaServiceProviderFactoryInterface_Create(QMediaServiceProviderFactoryInterface* self, libqt_string key);
void QMediaServiceProviderFactoryInterface_Release(QMediaServiceProviderFactoryInterface* self, QMediaService* service);
void QMediaServiceProviderFactoryInterface_OperatorAssign(QMediaServiceProviderFactoryInterface* self, QMediaServiceProviderFactoryInterface* param1);
void QMediaServiceProviderFactoryInterface_Delete(QMediaServiceProviderFactoryInterface* self);

int QMediaServiceSupportedFormatsInterface_HasSupport(const QMediaServiceSupportedFormatsInterface* self, libqt_string mimeType, libqt_list /* of libqt_string */ codecs);
libqt_list /* of libqt_string */ QMediaServiceSupportedFormatsInterface_SupportedMimeTypes(const QMediaServiceSupportedFormatsInterface* self);
void QMediaServiceSupportedFormatsInterface_OperatorAssign(QMediaServiceSupportedFormatsInterface* self, QMediaServiceSupportedFormatsInterface* param1);
void QMediaServiceSupportedFormatsInterface_Delete(QMediaServiceSupportedFormatsInterface* self);

libqt_list /* of libqt_string */ QMediaServiceSupportedDevicesInterface_Devices(const QMediaServiceSupportedDevicesInterface* self, libqt_string service);
libqt_string QMediaServiceSupportedDevicesInterface_DeviceDescription(QMediaServiceSupportedDevicesInterface* self, libqt_string service, libqt_string device);
void QMediaServiceSupportedDevicesInterface_OperatorAssign(QMediaServiceSupportedDevicesInterface* self, QMediaServiceSupportedDevicesInterface* param1);
void QMediaServiceSupportedDevicesInterface_Delete(QMediaServiceSupportedDevicesInterface* self);

libqt_string QMediaServiceDefaultDeviceInterface_DefaultDevice(const QMediaServiceDefaultDeviceInterface* self, libqt_string service);
void QMediaServiceDefaultDeviceInterface_OperatorAssign(QMediaServiceDefaultDeviceInterface* self, QMediaServiceDefaultDeviceInterface* param1);
void QMediaServiceDefaultDeviceInterface_Delete(QMediaServiceDefaultDeviceInterface* self);

int QMediaServiceCameraInfoInterface_CameraPosition(const QMediaServiceCameraInfoInterface* self, libqt_string device);
int QMediaServiceCameraInfoInterface_CameraOrientation(const QMediaServiceCameraInfoInterface* self, libqt_string device);
void QMediaServiceCameraInfoInterface_OperatorAssign(QMediaServiceCameraInfoInterface* self, QMediaServiceCameraInfoInterface* param1);
void QMediaServiceCameraInfoInterface_Delete(QMediaServiceCameraInfoInterface* self);

int QMediaServiceFeaturesInterface_SupportedFeatures(const QMediaServiceFeaturesInterface* self, libqt_string service);
void QMediaServiceFeaturesInterface_OperatorAssign(QMediaServiceFeaturesInterface* self, QMediaServiceFeaturesInterface* param1);
void QMediaServiceFeaturesInterface_Delete(QMediaServiceFeaturesInterface* self);

QMetaObject* QMediaServiceProviderPlugin_MetaObject(const QMediaServiceProviderPlugin* self);
void* QMediaServiceProviderPlugin_Metacast(QMediaServiceProviderPlugin* self, const char* param1);
int QMediaServiceProviderPlugin_Metacall(QMediaServiceProviderPlugin* self, int param1, int param2, void** param3);
libqt_string QMediaServiceProviderPlugin_Tr(const char* s);
libqt_string QMediaServiceProviderPlugin_TrUtf8(const char* s);
QMediaService* QMediaServiceProviderPlugin_Create(QMediaServiceProviderPlugin* self, libqt_string key);
void QMediaServiceProviderPlugin_Release(QMediaServiceProviderPlugin* self, QMediaService* service);
libqt_string QMediaServiceProviderPlugin_Tr2(const char* s, const char* c);
libqt_string QMediaServiceProviderPlugin_Tr3(const char* s, const char* c, int n);
libqt_string QMediaServiceProviderPlugin_TrUtf82(const char* s, const char* c);
libqt_string QMediaServiceProviderPlugin_TrUtf83(const char* s, const char* c, int n);
bool QMediaServiceProviderPlugin_Event(QMediaServiceProviderPlugin* self, QEvent* event);
bool QMediaServiceProviderPlugin_EventFilter(QMediaServiceProviderPlugin* self, QObject* watched, QEvent* event);
void QMediaServiceProviderPlugin_Delete(QMediaServiceProviderPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
