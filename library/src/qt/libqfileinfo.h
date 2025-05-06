#pragma once
#ifndef SRC_QTC_LIBQFILEINFO_H
#define SRC_QTC_LIBQFILEINFO_H

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
typedef struct QDateTime QDateTime;
typedef struct QDir QDir;
typedef struct QFileDevice QFileDevice;
typedef struct QFileInfo QFileInfo;
#endif

QTLIBC_API QFileInfo* QFileInfo_new();
QTLIBC_API QFileInfo* QFileInfo_new2(libqt_string file);
QTLIBC_API QFileInfo* QFileInfo_new3(QFileDevice* file);
QTLIBC_API QFileInfo* QFileInfo_new4(QDir* dir, libqt_string file);
QTLIBC_API QFileInfo* QFileInfo_new5(QFileInfo* fileinfo);
QTLIBC_API void QFileInfo_OperatorAssign(QFileInfo* self, QFileInfo* fileinfo);
QTLIBC_API void QFileInfo_Swap(QFileInfo* self, QFileInfo* other);
QTLIBC_API bool QFileInfo_OperatorEqual(const QFileInfo* self, QFileInfo* fileinfo);
QTLIBC_API bool QFileInfo_OperatorNotEqual(const QFileInfo* self, QFileInfo* fileinfo);
QTLIBC_API void QFileInfo_SetFile(QFileInfo* self, libqt_string file);
QTLIBC_API void QFileInfo_SetFileWithFile(QFileInfo* self, QFileDevice* file);
QTLIBC_API void QFileInfo_SetFile2(QFileInfo* self, QDir* dir, libqt_string file);
QTLIBC_API bool QFileInfo_Exists(const QFileInfo* self);
QTLIBC_API bool QFileInfo_ExistsWithFile(libqt_string file);
QTLIBC_API void QFileInfo_Refresh(QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_FilePath(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_AbsoluteFilePath(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_CanonicalFilePath(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_FileName(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_BaseName(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_CompleteBaseName(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_Suffix(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_BundleName(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_CompleteSuffix(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_Path(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_AbsolutePath(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_CanonicalPath(const QFileInfo* self);
QTLIBC_API QDir* QFileInfo_Dir(const QFileInfo* self);
QTLIBC_API QDir* QFileInfo_AbsoluteDir(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsReadable(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsWritable(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsExecutable(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsHidden(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsNativePath(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsRelative(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsAbsolute(const QFileInfo* self);
QTLIBC_API bool QFileInfo_MakeAbsolute(QFileInfo* self);
QTLIBC_API bool QFileInfo_IsFile(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsDir(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsSymLink(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsSymbolicLink(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsShortcut(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsAlias(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsJunction(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsRoot(const QFileInfo* self);
QTLIBC_API bool QFileInfo_IsBundle(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_SymLinkTarget(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_JunctionTarget(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_Owner(const QFileInfo* self);
QTLIBC_API unsigned int QFileInfo_OwnerId(const QFileInfo* self);
QTLIBC_API libqt_string QFileInfo_Group(const QFileInfo* self);
QTLIBC_API unsigned int QFileInfo_GroupId(const QFileInfo* self);
QTLIBC_API bool QFileInfo_Permission(const QFileInfo* self, int permissions);
QTLIBC_API int QFileInfo_Permissions(const QFileInfo* self);
QTLIBC_API long long QFileInfo_Size(const QFileInfo* self);
QTLIBC_API QDateTime* QFileInfo_BirthTime(const QFileInfo* self);
QTLIBC_API QDateTime* QFileInfo_MetadataChangeTime(const QFileInfo* self);
QTLIBC_API QDateTime* QFileInfo_LastModified(const QFileInfo* self);
QTLIBC_API QDateTime* QFileInfo_LastRead(const QFileInfo* self);
QTLIBC_API QDateTime* QFileInfo_FileTime(const QFileInfo* self, int time);
QTLIBC_API bool QFileInfo_Caching(const QFileInfo* self);
QTLIBC_API void QFileInfo_SetCaching(QFileInfo* self, bool on);
QTLIBC_API void QFileInfo_Stat(QFileInfo* self);
QTLIBC_API void QFileInfo_Delete(QFileInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
