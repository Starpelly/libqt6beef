#pragma once
#ifndef SRCC_LIBQLIBRARYINFO_H
#define SRCC_LIBQLIBRARYINFO_H

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
typedef struct QDate QDate;
typedef struct QLibraryInfo QLibraryInfo;
typedef struct QVersionNumber QVersionNumber;
#endif

#ifdef __cplusplus
typedef QLibraryInfo::LibraryLocation LibraryLocation; // C++ enum
#else
typedef int LibraryLocation; // C ABI enum
#endif

QLibraryInfo* QLibraryInfo_new(QLibraryInfo* other);
QLibraryInfo* QLibraryInfo_new2(QLibraryInfo* other);
void QLibraryInfo_CopyAssign(QLibraryInfo* self, QLibraryInfo* other);
void QLibraryInfo_MoveAssign(QLibraryInfo* self, QLibraryInfo* other);
libqt_string QLibraryInfo_Licensee();
libqt_string QLibraryInfo_LicensedProducts();
QDate* QLibraryInfo_BuildDate();
const char* QLibraryInfo_Build();
bool QLibraryInfo_IsDebugBuild();
QVersionNumber* QLibraryInfo_Version();
libqt_string QLibraryInfo_Location(QLibraryInfo::LibraryPath param1);
libqt_list /* of libqt_string */ QLibraryInfo_PlatformPluginArguments(libqt_string platformName);
void QLibraryInfo_Delete(QLibraryInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
