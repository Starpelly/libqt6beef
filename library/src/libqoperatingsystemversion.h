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
typedef struct QOperatingSystemVersionBase QOperatingSystemVersionBase;
typedef struct QVersionNumber QVersionNumber;
#endif

#ifdef __cplusplus
typedef QOperatingSystemVersionBase::OSType OSType; // C++ enum
#else
typedef int OSType; // C ABI enum
#endif

QTLIBC_API QOperatingSystemVersionBase* QOperatingSystemVersionBase_new(int osType, int vmajor);
QTLIBC_API QOperatingSystemVersionBase* QOperatingSystemVersionBase_new2(QOperatingSystemVersionBase* param1);
QTLIBC_API QOperatingSystemVersionBase* QOperatingSystemVersionBase_new3(int osType, int vmajor, int vminor);
QTLIBC_API QOperatingSystemVersionBase* QOperatingSystemVersionBase_new4(int osType, int vmajor, int vminor, int vmicro);
QTLIBC_API QOperatingSystemVersionBase* QOperatingSystemVersionBase_Current();
QTLIBC_API libqt_string QOperatingSystemVersionBase_Name(QOperatingSystemVersionBase* osversion);
QTLIBC_API int QOperatingSystemVersionBase_CurrentType();
QTLIBC_API QVersionNumber* QOperatingSystemVersionBase_Version(const QOperatingSystemVersionBase* self);
QTLIBC_API int QOperatingSystemVersionBase_MajorVersion(const QOperatingSystemVersionBase* self);
QTLIBC_API int QOperatingSystemVersionBase_MinorVersion(const QOperatingSystemVersionBase* self);
QTLIBC_API int QOperatingSystemVersionBase_MicroVersion(const QOperatingSystemVersionBase* self);
QTLIBC_API int QOperatingSystemVersionBase_SegmentCount(const QOperatingSystemVersionBase* self);
QTLIBC_API int QOperatingSystemVersionBase_Type(const QOperatingSystemVersionBase* self);
QTLIBC_API libqt_string QOperatingSystemVersionBase_Name2(const QOperatingSystemVersionBase* self);
QTLIBC_API void QOperatingSystemVersionBase_Delete(QOperatingSystemVersionBase* self);

QTLIBC_API QOperatingSystemVersion* QOperatingSystemVersion_new(QOperatingSystemVersionBase* osversion);
QTLIBC_API QOperatingSystemVersion* QOperatingSystemVersion_new2(int osType, int vmajor);
QTLIBC_API QOperatingSystemVersion* QOperatingSystemVersion_new3(int osType, int vmajor, int vminor);
QTLIBC_API QOperatingSystemVersion* QOperatingSystemVersion_new4(int osType, int vmajor, int vminor, int vmicro);
QTLIBC_API QOperatingSystemVersion* QOperatingSystemVersion_Current();
QTLIBC_API int QOperatingSystemVersion_CurrentType();
QTLIBC_API QVersionNumber* QOperatingSystemVersion_Version(const QOperatingSystemVersion* self);
QTLIBC_API int QOperatingSystemVersion_MajorVersion(const QOperatingSystemVersion* self);
QTLIBC_API int QOperatingSystemVersion_MinorVersion(const QOperatingSystemVersion* self);
QTLIBC_API int QOperatingSystemVersion_MicroVersion(const QOperatingSystemVersion* self);
QTLIBC_API int QOperatingSystemVersion_SegmentCount(const QOperatingSystemVersion* self);
QTLIBC_API int QOperatingSystemVersion_Type(const QOperatingSystemVersion* self);
QTLIBC_API libqt_string QOperatingSystemVersion_Name(const QOperatingSystemVersion* self);
QTLIBC_API void QOperatingSystemVersion_Delete(QOperatingSystemVersion* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
