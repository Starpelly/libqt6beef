#pragma once
#ifndef SRC_QTC_LIBQDIR_H
#define SRC_QTC_LIBQDIR_H

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
typedef struct QChar QChar;
typedef struct QDir QDir;
typedef struct QFileInfo QFileInfo;
#endif

#ifdef __cplusplus
typedef QDir::Filter Filter;       // C++ enum
typedef QDir::Filters Filters;     // C++ QFlags
typedef QDir::SortFlag SortFlag;   // C++ enum
typedef QDir::SortFlags SortFlags; // C++ QFlags
#else
typedef int Filter;    // C ABI enum
typedef int Filters;   // C ABI QFlags
typedef int SortFlag;  // C ABI enum
typedef int SortFlags; // C ABI QFlags
#endif

QTLIBC_API QDir* QDir_new(QDir* param1);
QTLIBC_API QDir* QDir_new2();
QTLIBC_API QDir* QDir_new3(libqt_string path, libqt_string nameFilter);
QTLIBC_API QDir* QDir_new4(libqt_string path);
QTLIBC_API QDir* QDir_new5(libqt_string path, libqt_string nameFilter, int sort);
QTLIBC_API QDir* QDir_new6(libqt_string path, libqt_string nameFilter, int sort, int filter);
QTLIBC_API void QDir_OperatorAssign(QDir* self, QDir* param1);
QTLIBC_API void QDir_Swap(QDir* self, QDir* other);
QTLIBC_API void QDir_SetPath(QDir* self, libqt_string path);
QTLIBC_API libqt_string QDir_Path(const QDir* self);
QTLIBC_API libqt_string QDir_AbsolutePath(const QDir* self);
QTLIBC_API libqt_string QDir_CanonicalPath(const QDir* self);
QTLIBC_API void QDir_SetSearchPaths(libqt_string prefix, libqt_list /* of libqt_string */ searchPaths);
QTLIBC_API void QDir_AddSearchPath(libqt_string prefix, libqt_string path);
QTLIBC_API libqt_list /* of libqt_string */ QDir_SearchPaths(libqt_string prefix);
QTLIBC_API libqt_string QDir_DirName(const QDir* self);
QTLIBC_API libqt_string QDir_FilePath(const QDir* self, libqt_string fileName);
QTLIBC_API libqt_string QDir_AbsoluteFilePath(const QDir* self, libqt_string fileName);
QTLIBC_API libqt_string QDir_RelativeFilePath(const QDir* self, libqt_string fileName);
QTLIBC_API libqt_string QDir_ToNativeSeparators(libqt_string pathName);
QTLIBC_API libqt_string QDir_FromNativeSeparators(libqt_string pathName);
QTLIBC_API bool QDir_Cd(QDir* self, libqt_string dirName);
QTLIBC_API bool QDir_CdUp(QDir* self);
QTLIBC_API libqt_list /* of libqt_string */ QDir_NameFilters(const QDir* self);
QTLIBC_API void QDir_SetNameFilters(QDir* self, libqt_list /* of libqt_string */ nameFilters);
QTLIBC_API int QDir_Filter(const QDir* self);
QTLIBC_API void QDir_SetFilter(QDir* self, int filter);
QTLIBC_API int QDir_Sorting(const QDir* self);
QTLIBC_API void QDir_SetSorting(QDir* self, int sort);
QTLIBC_API unsigned int QDir_Count(const QDir* self);
QTLIBC_API bool QDir_IsEmpty(const QDir* self);
QTLIBC_API libqt_string QDir_OperatorSubscript(const QDir* self, int param1);
QTLIBC_API libqt_list /* of libqt_string */ QDir_NameFiltersFromString(libqt_string nameFilter);
QTLIBC_API libqt_list /* of libqt_string */ QDir_EntryList(const QDir* self);
QTLIBC_API libqt_list /* of libqt_string */ QDir_EntryListWithNameFilters(const QDir* self, libqt_list /* of libqt_string */ nameFilters);
QTLIBC_API libqt_list /* of QFileInfo* */ QDir_EntryInfoList(const QDir* self);
QTLIBC_API libqt_list /* of QFileInfo* */ QDir_EntryInfoListWithNameFilters(const QDir* self, libqt_list /* of libqt_string */ nameFilters);
QTLIBC_API bool QDir_Mkdir(const QDir* self, libqt_string dirName);
QTLIBC_API bool QDir_Mkdir2(const QDir* self, libqt_string dirName, int permissions);
QTLIBC_API bool QDir_Rmdir(const QDir* self, libqt_string dirName);
QTLIBC_API bool QDir_Mkpath(const QDir* self, libqt_string dirPath);
QTLIBC_API bool QDir_Rmpath(const QDir* self, libqt_string dirPath);
QTLIBC_API bool QDir_RemoveRecursively(QDir* self);
QTLIBC_API bool QDir_IsReadable(const QDir* self);
QTLIBC_API bool QDir_Exists(const QDir* self);
QTLIBC_API bool QDir_IsRoot(const QDir* self);
QTLIBC_API bool QDir_IsRelativePath(libqt_string path);
QTLIBC_API bool QDir_IsAbsolutePath(libqt_string path);
QTLIBC_API bool QDir_IsRelative(const QDir* self);
QTLIBC_API bool QDir_IsAbsolute(const QDir* self);
QTLIBC_API bool QDir_MakeAbsolute(QDir* self);
QTLIBC_API bool QDir_OperatorEqual(const QDir* self, QDir* dir);
QTLIBC_API bool QDir_OperatorNotEqual(const QDir* self, QDir* dir);
QTLIBC_API bool QDir_Remove(QDir* self, libqt_string fileName);
QTLIBC_API bool QDir_Rename(QDir* self, libqt_string oldName, libqt_string newName);
QTLIBC_API bool QDir_ExistsWithName(const QDir* self, libqt_string name);
QTLIBC_API libqt_list /* of QFileInfo* */ QDir_Drives();
QTLIBC_API QChar* QDir_ListSeparator();
QTLIBC_API QChar* QDir_Separator();
QTLIBC_API bool QDir_SetCurrent(libqt_string path);
QTLIBC_API QDir* QDir_Current();
QTLIBC_API libqt_string QDir_CurrentPath();
QTLIBC_API QDir* QDir_Home();
QTLIBC_API libqt_string QDir_HomePath();
QTLIBC_API QDir* QDir_Root();
QTLIBC_API libqt_string QDir_RootPath();
QTLIBC_API QDir* QDir_Temp();
QTLIBC_API libqt_string QDir_TempPath();
QTLIBC_API bool QDir_Match(libqt_list /* of libqt_string */ filters, libqt_string fileName);
QTLIBC_API bool QDir_Match2(libqt_string filter, libqt_string fileName);
QTLIBC_API libqt_string QDir_CleanPath(libqt_string path);
QTLIBC_API void QDir_Refresh(const QDir* self);
QTLIBC_API bool QDir_IsEmpty1(const QDir* self, int filters);
QTLIBC_API libqt_list /* of libqt_string */ QDir_EntryList1(const QDir* self, int filters);
QTLIBC_API libqt_list /* of libqt_string */ QDir_EntryList2(const QDir* self, int filters, int sort);
QTLIBC_API libqt_list /* of libqt_string */ QDir_EntryList22(const QDir* self, libqt_list /* of libqt_string */ nameFilters, int filters);
QTLIBC_API libqt_list /* of libqt_string */ QDir_EntryList3(const QDir* self, libqt_list /* of libqt_string */ nameFilters, int filters, int sort);
QTLIBC_API libqt_list /* of QFileInfo* */ QDir_EntryInfoList1(const QDir* self, int filters);
QTLIBC_API libqt_list /* of QFileInfo* */ QDir_EntryInfoList2(const QDir* self, int filters, int sort);
QTLIBC_API libqt_list /* of QFileInfo* */ QDir_EntryInfoList22(const QDir* self, libqt_list /* of libqt_string */ nameFilters, int filters);
QTLIBC_API libqt_list /* of QFileInfo* */ QDir_EntryInfoList3(const QDir* self, libqt_list /* of libqt_string */ nameFilters, int filters, int sort);
QTLIBC_API void QDir_Delete(QDir* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
