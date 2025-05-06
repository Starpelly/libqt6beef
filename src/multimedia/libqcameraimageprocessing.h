#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAIMAGEPROCESSING_H
#define SRC_MULTIMEDIAC_LIBQCAMERAIMAGEPROCESSING_H

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
typedef struct QCameraImageProcessing QCameraImageProcessing;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
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
typedef QCameraImageProcessing::ColorFilter ColorFilter;           // C++ enum
typedef QCameraImageProcessing::WhiteBalanceMode WhiteBalanceMode; // C++ enum
#else
typedef int ColorFilter;      // C ABI enum
typedef int WhiteBalanceMode; // C ABI enum
#endif

QMetaObject* QCameraImageProcessing_MetaObject(const QCameraImageProcessing* self);
void* QCameraImageProcessing_Metacast(QCameraImageProcessing* self, const char* param1);
int QCameraImageProcessing_Metacall(QCameraImageProcessing* self, int param1, int param2, void** param3);
libqt_string QCameraImageProcessing_Tr(const char* s);
libqt_string QCameraImageProcessing_TrUtf8(const char* s);
bool QCameraImageProcessing_IsAvailable(const QCameraImageProcessing* self);
int QCameraImageProcessing_WhiteBalanceMode(const QCameraImageProcessing* self);
void QCameraImageProcessing_SetWhiteBalanceMode(QCameraImageProcessing* self, int mode);
bool QCameraImageProcessing_IsWhiteBalanceModeSupported(const QCameraImageProcessing* self, int mode);
double QCameraImageProcessing_ManualWhiteBalance(const QCameraImageProcessing* self);
void QCameraImageProcessing_SetManualWhiteBalance(QCameraImageProcessing* self, double colorTemperature);
double QCameraImageProcessing_Brightness(const QCameraImageProcessing* self);
void QCameraImageProcessing_SetBrightness(QCameraImageProcessing* self, double value);
double QCameraImageProcessing_Contrast(const QCameraImageProcessing* self);
void QCameraImageProcessing_SetContrast(QCameraImageProcessing* self, double value);
double QCameraImageProcessing_Saturation(const QCameraImageProcessing* self);
void QCameraImageProcessing_SetSaturation(QCameraImageProcessing* self, double value);
double QCameraImageProcessing_SharpeningLevel(const QCameraImageProcessing* self);
void QCameraImageProcessing_SetSharpeningLevel(QCameraImageProcessing* self, double value);
double QCameraImageProcessing_DenoisingLevel(const QCameraImageProcessing* self);
void QCameraImageProcessing_SetDenoisingLevel(QCameraImageProcessing* self, double value);
int QCameraImageProcessing_ColorFilter(const QCameraImageProcessing* self);
void QCameraImageProcessing_SetColorFilter(QCameraImageProcessing* self, int filter);
bool QCameraImageProcessing_IsColorFilterSupported(const QCameraImageProcessing* self, int filter);
libqt_string QCameraImageProcessing_Tr2(const char* s, const char* c);
libqt_string QCameraImageProcessing_Tr3(const char* s, const char* c, int n);
libqt_string QCameraImageProcessing_TrUtf82(const char* s, const char* c);
libqt_string QCameraImageProcessing_TrUtf83(const char* s, const char* c, int n);
bool QCameraImageProcessing_Event(QCameraImageProcessing* self, QEvent* event);
bool QCameraImageProcessing_EventFilter(QCameraImageProcessing* self, QObject* watched, QEvent* event);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
