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
typedef struct QLibraryInfo QLibraryInfo;
typedef struct QVersionNumber QVersionNumber;
#endif

#ifdef __cplusplus
typedef QLibraryInfo::LibraryLocation LibraryLocation; // C++ QFlags
typedef QLibraryInfo::LibraryPath LibraryPath;         // C++ enum
#else
typedef int LibraryLocation; // C ABI QFlags
typedef int LibraryPath;     // C ABI enum
#endif

QTLIBC_API QLibraryInfo* QLibraryInfo_new(QLibraryInfo* other);
QTLIBC_API QLibraryInfo* QLibraryInfo_new2(QLibraryInfo* other);
QTLIBC_API void QLibraryInfo_CopyAssign(QLibraryInfo* self, QLibraryInfo* other);
QTLIBC_API void QLibraryInfo_MoveAssign(QLibraryInfo* self, QLibraryInfo* other);
QTLIBC_API const char* QLibraryInfo_Build();
QTLIBC_API bool QLibraryInfo_IsDebugBuild();
QTLIBC_API QVersionNumber* QLibraryInfo_Version();
QTLIBC_API libqt_string QLibraryInfo_Path(int p);
QTLIBC_API libqt_string QLibraryInfo_Location(int location);
QTLIBC_API libqt_list /* of libqt_string */ QLibraryInfo_PlatformPluginArguments(libqt_string platformName);
QTLIBC_API void QLibraryInfo_Delete(QLibraryInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
