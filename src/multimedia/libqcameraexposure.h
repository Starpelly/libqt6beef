#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAEXPOSURE_H
#define SRC_MULTIMEDIAC_LIBQCAMERAEXPOSURE_H

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
typedef struct QCameraExposure QCameraExposure;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPointF QPointF;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QCameraExposure::ExposureMode ExposureMode; // C++ enum
typedef QCameraExposure::FlashMode FlashMode;       // C++ enum
typedef QCameraExposure::FlashModes FlashModes;     // C++ QFlags
typedef QCameraExposure::MeteringMode MeteringMode; // C++ enum
#else
typedef int ExposureMode; // C ABI enum
typedef int FlashMode;    // C ABI enum
typedef int FlashModes;   // C ABI QFlags
typedef int MeteringMode; // C ABI enum
#endif

QMetaObject* QCameraExposure_MetaObject(const QCameraExposure* self);
void* QCameraExposure_Metacast(QCameraExposure* self, const char* param1);
int QCameraExposure_Metacall(QCameraExposure* self, int param1, int param2, void** param3);
libqt_string QCameraExposure_Tr(const char* s);
libqt_string QCameraExposure_TrUtf8(const char* s);
bool QCameraExposure_IsAvailable(const QCameraExposure* self);
int QCameraExposure_FlashMode(const QCameraExposure* self);
bool QCameraExposure_IsFlashModeSupported(const QCameraExposure* self, int mode);
bool QCameraExposure_IsFlashReady(const QCameraExposure* self);
int QCameraExposure_ExposureMode(const QCameraExposure* self);
bool QCameraExposure_IsExposureModeSupported(const QCameraExposure* self, int mode);
double QCameraExposure_ExposureCompensation(const QCameraExposure* self);
int QCameraExposure_MeteringMode(const QCameraExposure* self);
bool QCameraExposure_IsMeteringModeSupported(const QCameraExposure* self, int mode);
QPointF* QCameraExposure_SpotMeteringPoint(const QCameraExposure* self);
void QCameraExposure_SetSpotMeteringPoint(QCameraExposure* self, QPointF* point);
int QCameraExposure_IsoSensitivity(const QCameraExposure* self);
double QCameraExposure_Aperture(const QCameraExposure* self);
double QCameraExposure_ShutterSpeed(const QCameraExposure* self);
int QCameraExposure_RequestedIsoSensitivity(const QCameraExposure* self);
double QCameraExposure_RequestedAperture(const QCameraExposure* self);
double QCameraExposure_RequestedShutterSpeed(const QCameraExposure* self);
libqt_list /* of int */ QCameraExposure_SupportedIsoSensitivities(const QCameraExposure* self);
libqt_list /* of double */ QCameraExposure_SupportedApertures(const QCameraExposure* self);
libqt_list /* of double */ QCameraExposure_SupportedShutterSpeeds(const QCameraExposure* self);
void QCameraExposure_SetFlashMode(QCameraExposure* self, int mode);
void QCameraExposure_SetExposureMode(QCameraExposure* self, int mode);
void QCameraExposure_SetMeteringMode(QCameraExposure* self, int mode);
void QCameraExposure_SetExposureCompensation(QCameraExposure* self, double ev);
void QCameraExposure_SetManualIsoSensitivity(QCameraExposure* self, int iso);
void QCameraExposure_SetAutoIsoSensitivity(QCameraExposure* self);
void QCameraExposure_SetManualAperture(QCameraExposure* self, double aperture);
void QCameraExposure_SetAutoAperture(QCameraExposure* self);
void QCameraExposure_SetManualShutterSpeed(QCameraExposure* self, double seconds);
void QCameraExposure_SetAutoShutterSpeed(QCameraExposure* self);
void QCameraExposure_FlashReady(QCameraExposure* self, bool param1);
void QCameraExposure_Connect_FlashReady(QCameraExposure* self, intptr_t slot);
void QCameraExposure_ApertureChanged(QCameraExposure* self, double param1);
void QCameraExposure_Connect_ApertureChanged(QCameraExposure* self, intptr_t slot);
void QCameraExposure_ApertureRangeChanged(QCameraExposure* self);
void QCameraExposure_Connect_ApertureRangeChanged(QCameraExposure* self, intptr_t slot);
void QCameraExposure_ShutterSpeedChanged(QCameraExposure* self, double speed);
void QCameraExposure_Connect_ShutterSpeedChanged(QCameraExposure* self, intptr_t slot);
void QCameraExposure_ShutterSpeedRangeChanged(QCameraExposure* self);
void QCameraExposure_Connect_ShutterSpeedRangeChanged(QCameraExposure* self, intptr_t slot);
void QCameraExposure_IsoSensitivityChanged(QCameraExposure* self, int param1);
void QCameraExposure_Connect_IsoSensitivityChanged(QCameraExposure* self, intptr_t slot);
void QCameraExposure_ExposureCompensationChanged(QCameraExposure* self, double param1);
void QCameraExposure_Connect_ExposureCompensationChanged(QCameraExposure* self, intptr_t slot);
libqt_string QCameraExposure_Tr2(const char* s, const char* c);
libqt_string QCameraExposure_Tr3(const char* s, const char* c, int n);
libqt_string QCameraExposure_TrUtf82(const char* s, const char* c);
libqt_string QCameraExposure_TrUtf83(const char* s, const char* c, int n);
libqt_list /* of int */ QCameraExposure_SupportedIsoSensitivities1(const QCameraExposure* self, bool* continuous);
libqt_list /* of double */ QCameraExposure_SupportedApertures1(const QCameraExposure* self, bool* continuous);
libqt_list /* of double */ QCameraExposure_SupportedShutterSpeeds1(const QCameraExposure* self, bool* continuous);
bool QCameraExposure_Event(QCameraExposure* self, QEvent* event);
bool QCameraExposure_EventFilter(QCameraExposure* self, QObject* watched, QEvent* event);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
