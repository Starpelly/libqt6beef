#pragma once
#ifndef SRCC_LIBQTOUCHDEVICE_H
#define SRCC_LIBQTOUCHDEVICE_H

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
#else
typedef struct QTouchDevice QTouchDevice;
#endif

#ifdef __cplusplus
typedef QTouchDevice::Capabilities Capabilities;     // C++ QFlags
typedef QTouchDevice::CapabilityFlag CapabilityFlag; // C++ enum
typedef QTouchDevice::DeviceType DeviceType;         // C++ enum
typedef QTouchDevice::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef int Capabilities;    // C ABI QFlags
typedef int CapabilityFlag;  // C ABI enum
typedef int DeviceType;      // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTouchDevice* QTouchDevice_new();
libqt_list /* of QTouchDevice* */ QTouchDevice_Devices();
libqt_string QTouchDevice_Name(const QTouchDevice* self);
int QTouchDevice_Type(const QTouchDevice* self);
int QTouchDevice_Capabilities(const QTouchDevice* self);
int QTouchDevice_MaximumTouchPoints(const QTouchDevice* self);
void QTouchDevice_SetName(QTouchDevice* self, libqt_string name);
void QTouchDevice_SetType(QTouchDevice* self, int devType);
void QTouchDevice_SetCapabilities(QTouchDevice* self, int caps);
void QTouchDevice_SetMaximumTouchPoints(QTouchDevice* self, int max);
void QTouchDevice_Delete(QTouchDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
