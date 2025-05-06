#pragma once
#ifndef SRC_QTC_LIBQRESOURCE_H
#define SRC_QTC_LIBQRESOURCE_H

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
typedef struct QLocale QLocale;
typedef struct QResource QResource;
#endif

#ifdef __cplusplus
typedef QResource::Compression Compression; // C++ enum
#else
typedef int Compression; // C ABI enum
#endif

QTLIBC_API QResource* QResource_new();
QTLIBC_API QResource* QResource_new2(libqt_string file);
QTLIBC_API QResource* QResource_new3(libqt_string file, QLocale* locale);
QTLIBC_API void QResource_SetFileName(QResource* self, libqt_string file);
QTLIBC_API libqt_string QResource_FileName(const QResource* self);
QTLIBC_API libqt_string QResource_AbsoluteFilePath(const QResource* self);
QTLIBC_API void QResource_SetLocale(QResource* self, QLocale* locale);
QTLIBC_API QLocale* QResource_Locale(const QResource* self);
QTLIBC_API bool QResource_IsValid(const QResource* self);
QTLIBC_API int QResource_CompressionAlgorithm(const QResource* self);
QTLIBC_API long long QResource_Size(const QResource* self);
QTLIBC_API const unsigned char* QResource_Data(const QResource* self);
QTLIBC_API long long QResource_UncompressedSize(const QResource* self);
QTLIBC_API libqt_string QResource_UncompressedData(const QResource* self);
QTLIBC_API QDateTime* QResource_LastModified(const QResource* self);
QTLIBC_API bool QResource_RegisterResource(libqt_string rccFilename);
QTLIBC_API bool QResource_UnregisterResource(libqt_string rccFilename);
QTLIBC_API bool QResource_RegisterResourceWithRccData(const unsigned char* rccData);
QTLIBC_API bool QResource_UnregisterResourceWithRccData(const unsigned char* rccData);
QTLIBC_API bool QResource_RegisterResource2(libqt_string rccFilename, libqt_string resourceRoot);
QTLIBC_API bool QResource_UnregisterResource2(libqt_string rccFilename, libqt_string resourceRoot);
QTLIBC_API bool QResource_RegisterResource22(const unsigned char* rccData, libqt_string resourceRoot);
QTLIBC_API bool QResource_UnregisterResource22(const unsigned char* rccData, libqt_string resourceRoot);
QTLIBC_API void QResource_Delete(QResource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
