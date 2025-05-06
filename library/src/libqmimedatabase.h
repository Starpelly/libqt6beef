#pragma once
#ifndef SRCC_LIBQMIMEDATABASE_H
#define SRCC_LIBQMIMEDATABASE_H

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
typedef struct QFileInfo QFileInfo;
typedef struct QIODevice QIODevice;
typedef struct QMimeDatabase QMimeDatabase;
typedef struct QMimeType QMimeType;
typedef struct QUrl QUrl;
#endif

#ifdef __cplusplus
typedef QMimeDatabase::MatchMode MatchMode; // C++ enum
#else
typedef int MatchMode; // C ABI enum
#endif

QTLIBC_API QMimeDatabase* QMimeDatabase_new();
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForName(const QMimeDatabase* self, libqt_string nameOrAlias);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForFile(const QMimeDatabase* self, libqt_string fileName);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForFileWithFileInfo(const QMimeDatabase* self, QFileInfo* fileInfo);
QTLIBC_API libqt_list /* of QMimeType* */ QMimeDatabase_MimeTypesForFileName(const QMimeDatabase* self, libqt_string fileName);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForData(const QMimeDatabase* self, libqt_string data);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForDataWithDevice(const QMimeDatabase* self, QIODevice* device);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForUrl(const QMimeDatabase* self, QUrl* url);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForFileNameAndData(const QMimeDatabase* self, libqt_string fileName, QIODevice* device);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForFileNameAndData2(const QMimeDatabase* self, libqt_string fileName, libqt_string data);
QTLIBC_API libqt_string QMimeDatabase_SuffixForFileName(const QMimeDatabase* self, libqt_string fileName);
QTLIBC_API libqt_list /* of QMimeType* */ QMimeDatabase_AllMimeTypes(const QMimeDatabase* self);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForFile2(const QMimeDatabase* self, libqt_string fileName, int mode);
QTLIBC_API QMimeType* QMimeDatabase_MimeTypeForFile22(const QMimeDatabase* self, QFileInfo* fileInfo, int mode);
QTLIBC_API void QMimeDatabase_Delete(QMimeDatabase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
