#pragma once
#ifndef SRC_QTC_LIBQSTANDARDPATHS_H
#define SRC_QTC_LIBQSTANDARDPATHS_H

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
typedef struct QStandardPaths QStandardPaths;
#endif

#ifdef __cplusplus
typedef QStandardPaths::LocateOption LocateOption;         // C++ enum
typedef QStandardPaths::LocateOptions LocateOptions;       // C++ QFlags
typedef QStandardPaths::QtGadgetHelper QtGadgetHelper;     // C++ QFlags
typedef QStandardPaths::StandardLocation StandardLocation; // C++ enum
#else
typedef int LocateOption;     // C ABI enum
typedef int LocateOptions;    // C ABI QFlags
typedef int StandardLocation; // C ABI enum
typedef void QtGadgetHelper;  // C ABI QFlags
#endif

QTLIBC_API libqt_string QStandardPaths_WritableLocation(int typeVal);
QTLIBC_API libqt_list /* of libqt_string */ QStandardPaths_StandardLocations(int typeVal);
QTLIBC_API libqt_string QStandardPaths_Locate(int typeVal, libqt_string fileName);
QTLIBC_API libqt_list /* of libqt_string */ QStandardPaths_LocateAll(int typeVal, libqt_string fileName);
QTLIBC_API libqt_string QStandardPaths_DisplayName(int typeVal);
QTLIBC_API libqt_string QStandardPaths_FindExecutable(libqt_string executableName);
QTLIBC_API void QStandardPaths_SetTestModeEnabled(bool testMode);
QTLIBC_API bool QStandardPaths_IsTestModeEnabled();
QTLIBC_API libqt_string QStandardPaths_Locate3(int typeVal, libqt_string fileName, int options);
QTLIBC_API libqt_list /* of libqt_string */ QStandardPaths_LocateAll3(int typeVal, libqt_string fileName, int options);
QTLIBC_API libqt_string QStandardPaths_FindExecutable2(libqt_string executableName, libqt_list /* of libqt_string */ paths);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
