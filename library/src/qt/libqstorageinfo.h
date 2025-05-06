#pragma once
#ifndef SRC_QTC_LIBQSTORAGEINFO_H
#define SRC_QTC_LIBQSTORAGEINFO_H

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
typedef struct QDir QDir;
typedef struct QStorageInfo QStorageInfo;
#endif

QTLIBC_API QStorageInfo* QStorageInfo_new();
QTLIBC_API QStorageInfo* QStorageInfo_new2(libqt_string path);
QTLIBC_API QStorageInfo* QStorageInfo_new3(QDir* dir);
QTLIBC_API QStorageInfo* QStorageInfo_new4(QStorageInfo* other);
QTLIBC_API void QStorageInfo_OperatorAssign(QStorageInfo* self, QStorageInfo* other);
QTLIBC_API void QStorageInfo_Swap(QStorageInfo* self, QStorageInfo* other);
QTLIBC_API void QStorageInfo_SetPath(QStorageInfo* self, libqt_string path);
QTLIBC_API libqt_string QStorageInfo_RootPath(const QStorageInfo* self);
QTLIBC_API libqt_string QStorageInfo_Device(const QStorageInfo* self);
QTLIBC_API libqt_string QStorageInfo_Subvolume(const QStorageInfo* self);
QTLIBC_API libqt_string QStorageInfo_FileSystemType(const QStorageInfo* self);
QTLIBC_API libqt_string QStorageInfo_Name(const QStorageInfo* self);
QTLIBC_API libqt_string QStorageInfo_DisplayName(const QStorageInfo* self);
QTLIBC_API long long QStorageInfo_BytesTotal(const QStorageInfo* self);
QTLIBC_API long long QStorageInfo_BytesFree(const QStorageInfo* self);
QTLIBC_API long long QStorageInfo_BytesAvailable(const QStorageInfo* self);
QTLIBC_API int QStorageInfo_BlockSize(const QStorageInfo* self);
QTLIBC_API bool QStorageInfo_IsRoot(const QStorageInfo* self);
QTLIBC_API bool QStorageInfo_IsReadOnly(const QStorageInfo* self);
QTLIBC_API bool QStorageInfo_IsReady(const QStorageInfo* self);
QTLIBC_API bool QStorageInfo_IsValid(const QStorageInfo* self);
QTLIBC_API void QStorageInfo_Refresh(QStorageInfo* self);
QTLIBC_API libqt_list /* of QStorageInfo* */ QStorageInfo_MountedVolumes();
QTLIBC_API QStorageInfo* QStorageInfo_Root();
QTLIBC_API void QStorageInfo_Delete(QStorageInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
