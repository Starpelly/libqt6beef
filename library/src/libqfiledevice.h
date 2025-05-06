#pragma once
#ifndef SRCC_LIBQFILEDEVICE_H
#define SRCC_LIBQFILEDEVICE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QDateTime QDateTime;
typedef struct QEvent QEvent;
typedef struct QFileDevice QFileDevice;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QFileDevice::FileError FileError;             // C++ enum
typedef QFileDevice::FileHandleFlag FileHandleFlag;   // C++ enum
typedef QFileDevice::FileHandleFlags FileHandleFlags; // C++ QFlags
typedef QFileDevice::FileTime FileTime;               // C++ enum
typedef QFileDevice::MemoryMapFlag MemoryMapFlag;     // C++ enum
typedef QFileDevice::MemoryMapFlags MemoryMapFlags;   // C++ QFlags
typedef QFileDevice::Permission Permission;           // C++ enum
typedef QFileDevice::Permissions Permissions;         // C++ QFlags
#else
typedef int FileError;       // C ABI enum
typedef int FileHandleFlag;  // C ABI enum
typedef int FileHandleFlags; // C ABI QFlags
typedef int FileTime;        // C ABI enum
typedef int MemoryMapFlag;   // C ABI enum
typedef int MemoryMapFlags;  // C ABI QFlags
typedef int Permission;      // C ABI enum
typedef int Permissions;     // C ABI QFlags
#endif

QTLIBC_API QMetaObject* QFileDevice_MetaObject(const QFileDevice* self);
QTLIBC_API void* QFileDevice_Metacast(QFileDevice* self, const char* param1);
QTLIBC_API int QFileDevice_Metacall(QFileDevice* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFileDevice_Tr(const char* s);
QTLIBC_API int QFileDevice_Error(const QFileDevice* self);
QTLIBC_API void QFileDevice_UnsetError(QFileDevice* self);
QTLIBC_API void QFileDevice_Close(QFileDevice* self);
QTLIBC_API bool QFileDevice_IsSequential(const QFileDevice* self);
QTLIBC_API int QFileDevice_Handle(const QFileDevice* self);
QTLIBC_API libqt_string QFileDevice_FileName(const QFileDevice* self);
QTLIBC_API long long QFileDevice_Pos(const QFileDevice* self);
QTLIBC_API bool QFileDevice_Seek(QFileDevice* self, long long offset);
QTLIBC_API bool QFileDevice_AtEnd(const QFileDevice* self);
QTLIBC_API bool QFileDevice_Flush(QFileDevice* self);
QTLIBC_API long long QFileDevice_Size(const QFileDevice* self);
QTLIBC_API bool QFileDevice_Resize(QFileDevice* self, long long sz);
QTLIBC_API int QFileDevice_Permissions(const QFileDevice* self);
QTLIBC_API bool QFileDevice_SetPermissions(QFileDevice* self, int permissionSpec);
QTLIBC_API unsigned char* QFileDevice_Map(QFileDevice* self, long long offset, long long size);
QTLIBC_API bool QFileDevice_Unmap(QFileDevice* self, unsigned char* address);
QTLIBC_API QDateTime* QFileDevice_FileTime(const QFileDevice* self, int time);
QTLIBC_API bool QFileDevice_SetFileTime(QFileDevice* self, QDateTime* newDate, int fileTime);
QTLIBC_API libqt_string QFileDevice_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFileDevice_Tr3(const char* s, const char* c, int n);
QTLIBC_API unsigned char* QFileDevice_Map3(QFileDevice* self, long long offset, long long size, int flags);
QTLIBC_API bool QFileDevice_Open(QFileDevice* self, int mode);
QTLIBC_API bool QFileDevice_Reset(QFileDevice* self);
QTLIBC_API long long QFileDevice_BytesAvailable(const QFileDevice* self);
QTLIBC_API long long QFileDevice_BytesToWrite(const QFileDevice* self);
QTLIBC_API bool QFileDevice_CanReadLine(const QFileDevice* self);
QTLIBC_API bool QFileDevice_WaitForReadyRead(QFileDevice* self, int msecs);
QTLIBC_API bool QFileDevice_WaitForBytesWritten(QFileDevice* self, int msecs);
QTLIBC_API bool QFileDevice_Event(QFileDevice* self, QEvent* event);
QTLIBC_API bool QFileDevice_EventFilter(QFileDevice* self, QObject* watched, QEvent* event);
QTLIBC_API void QFileDevice_Delete(QFileDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
