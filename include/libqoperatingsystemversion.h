#pragma once
#ifndef SRCC_LIBQOPERATINGSYSTEMVERSION_H
#define SRCC_LIBQOPERATINGSYSTEMVERSION_H

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
typedef struct QOperatingSystemVersion QOperatingSystemVersion;
#endif

#ifdef __cplusplus
typedef QOperatingSystemVersion::OSType OSType; // C++ enum
#else
typedef int OSType; // C ABI enum
#endif

QOperatingSystemVersion* QOperatingSystemVersion_new(int osType, int vmajor);
QOperatingSystemVersion* QOperatingSystemVersion_new2(int osType, int vmajor, int vminor);
QOperatingSystemVersion* QOperatingSystemVersion_new3(int osType, int vmajor, int vminor, int vmicro);
QOperatingSystemVersion* QOperatingSystemVersion_Current();
int QOperatingSystemVersion_CurrentType();
int QOperatingSystemVersion_MajorVersion(const QOperatingSystemVersion* self);
int QOperatingSystemVersion_MinorVersion(const QOperatingSystemVersion* self);
int QOperatingSystemVersion_MicroVersion(const QOperatingSystemVersion* self);
int QOperatingSystemVersion_SegmentCount(const QOperatingSystemVersion* self);
int QOperatingSystemVersion_Type(const QOperatingSystemVersion* self);
libqt_string QOperatingSystemVersion_Name(const QOperatingSystemVersion* self);
void QOperatingSystemVersion_Delete(QOperatingSystemVersion* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
