#pragma once
#ifndef SRCC_LIBQLOCKFILE_H
#define SRCC_LIBQLOCKFILE_H

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
typedef struct QLockFile QLockFile;
#endif

#ifdef __cplusplus
typedef QLockFile::LockError LockError; // C++ enum
#else
typedef int LockError; // C ABI enum
#endif

QTLIBC_API QLockFile* QLockFile_new(libqt_string fileName);
QTLIBC_API libqt_string QLockFile_FileName(const QLockFile* self);
QTLIBC_API bool QLockFile_Lock(QLockFile* self);
QTLIBC_API bool QLockFile_TryLock(QLockFile* self);
QTLIBC_API void QLockFile_Unlock(QLockFile* self);
QTLIBC_API void QLockFile_SetStaleLockTime(QLockFile* self, int staleLockTime);
QTLIBC_API int QLockFile_StaleLockTime(const QLockFile* self);
QTLIBC_API bool QLockFile_IsLocked(const QLockFile* self);
QTLIBC_API bool QLockFile_RemoveStaleLockFile(QLockFile* self);
QTLIBC_API int QLockFile_Error(const QLockFile* self);
QTLIBC_API bool QLockFile_TryLock1(QLockFile* self, int timeout);
QTLIBC_API void QLockFile_Delete(QLockFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
