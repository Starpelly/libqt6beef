#pragma once
#ifndef SRC_QTC_LIBQDIRITERATOR_H
#define SRC_QTC_LIBQDIRITERATOR_H

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
typedef struct QDirIterator QDirIterator;
typedef struct QFileInfo QFileInfo;
#endif

#ifdef __cplusplus
typedef QDirIterator::IteratorFlag IteratorFlag;   // C++ enum
typedef QDirIterator::IteratorFlags IteratorFlags; // C++ QFlags
#else
typedef int IteratorFlag;  // C ABI enum
typedef int IteratorFlags; // C ABI QFlags
#endif

QTLIBC_API QDirIterator* QDirIterator_new(QDir* dir);
QTLIBC_API QDirIterator* QDirIterator_new2(libqt_string path);
QTLIBC_API QDirIterator* QDirIterator_new3(libqt_string path, int filter);
QTLIBC_API QDirIterator* QDirIterator_new4(libqt_string path, libqt_list /* of libqt_string */ nameFilters);
QTLIBC_API QDirIterator* QDirIterator_new5(QDir* dir, int flags);
QTLIBC_API QDirIterator* QDirIterator_new6(libqt_string path, int flags);
QTLIBC_API QDirIterator* QDirIterator_new7(libqt_string path, int filter, int flags);
QTLIBC_API QDirIterator* QDirIterator_new8(libqt_string path, libqt_list /* of libqt_string */ nameFilters, int filters);
QTLIBC_API QDirIterator* QDirIterator_new9(libqt_string path, libqt_list /* of libqt_string */ nameFilters, int filters, int flags);
QTLIBC_API libqt_string QDirIterator_Next(QDirIterator* self);
QTLIBC_API QFileInfo* QDirIterator_NextFileInfo(QDirIterator* self);
QTLIBC_API bool QDirIterator_HasNext(const QDirIterator* self);
QTLIBC_API libqt_string QDirIterator_FileName(const QDirIterator* self);
QTLIBC_API libqt_string QDirIterator_FilePath(const QDirIterator* self);
QTLIBC_API QFileInfo* QDirIterator_FileInfo(const QDirIterator* self);
QTLIBC_API libqt_string QDirIterator_Path(const QDirIterator* self);
QTLIBC_API void QDirIterator_Delete(QDirIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
