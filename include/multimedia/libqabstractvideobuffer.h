#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQABSTRACTVIDEOBUFFER_H
#define SRC_MULTIMEDIAC_LIBQABSTRACTVIDEOBUFFER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QAbstractPlanarVideoBuffer QAbstractPlanarVideoBuffer;
typedef struct QAbstractVideoBuffer QAbstractVideoBuffer;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QAbstractVideoBuffer::HandleType HandleType; // C++ enum
typedef QAbstractVideoBuffer::MapMode MapMode;       // C++ enum
#else
typedef int HandleType; // C ABI enum
typedef int MapMode;    // C ABI enum
#endif

QAbstractVideoBuffer* QAbstractVideoBuffer_new(int typeVal);
void QAbstractVideoBuffer_Release(QAbstractVideoBuffer* self);
void QAbstractVideoBuffer_OnRelease(QAbstractVideoBuffer* self, intptr_t slot);
void QAbstractVideoBuffer_QBaseRelease(QAbstractVideoBuffer* self);
int QAbstractVideoBuffer_HandleType(const QAbstractVideoBuffer* self);
int QAbstractVideoBuffer_MapMode(const QAbstractVideoBuffer* self);
void QAbstractVideoBuffer_OnMapMode(const QAbstractVideoBuffer* self, intptr_t slot);
int QAbstractVideoBuffer_QBaseMapMode(const QAbstractVideoBuffer* self);
void QAbstractVideoBuffer_Unmap(QAbstractVideoBuffer* self);
void QAbstractVideoBuffer_OnUnmap(QAbstractVideoBuffer* self, intptr_t slot);
void QAbstractVideoBuffer_QBaseUnmap(QAbstractVideoBuffer* self);
QVariant* QAbstractVideoBuffer_Handle(const QAbstractVideoBuffer* self);
void QAbstractVideoBuffer_OnHandle(const QAbstractVideoBuffer* self, intptr_t slot);
QVariant* QAbstractVideoBuffer_QBaseHandle(const QAbstractVideoBuffer* self);
void QAbstractVideoBuffer_Delete(QAbstractVideoBuffer* self);

QAbstractPlanarVideoBuffer* QAbstractPlanarVideoBuffer_new(int typeVal);
unsigned char* QAbstractPlanarVideoBuffer_Map(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
void QAbstractPlanarVideoBuffer_OnMap(QAbstractPlanarVideoBuffer* self, intptr_t slot);
unsigned char* QAbstractPlanarVideoBuffer_QBaseMap(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);
void QAbstractPlanarVideoBuffer_Release(QAbstractPlanarVideoBuffer* self);
void QAbstractPlanarVideoBuffer_OnRelease(QAbstractPlanarVideoBuffer* self, intptr_t slot);
void QAbstractPlanarVideoBuffer_QBaseRelease(QAbstractPlanarVideoBuffer* self);
int QAbstractPlanarVideoBuffer_MapMode(const QAbstractPlanarVideoBuffer* self);
void QAbstractPlanarVideoBuffer_OnMapMode(const QAbstractPlanarVideoBuffer* self, intptr_t slot);
int QAbstractPlanarVideoBuffer_QBaseMapMode(const QAbstractPlanarVideoBuffer* self);
void QAbstractPlanarVideoBuffer_Unmap(QAbstractPlanarVideoBuffer* self);
void QAbstractPlanarVideoBuffer_OnUnmap(QAbstractPlanarVideoBuffer* self, intptr_t slot);
void QAbstractPlanarVideoBuffer_QBaseUnmap(QAbstractPlanarVideoBuffer* self);
QVariant* QAbstractPlanarVideoBuffer_Handle(const QAbstractPlanarVideoBuffer* self);
void QAbstractPlanarVideoBuffer_OnHandle(const QAbstractPlanarVideoBuffer* self, intptr_t slot);
QVariant* QAbstractPlanarVideoBuffer_QBaseHandle(const QAbstractPlanarVideoBuffer* self);
void QAbstractPlanarVideoBuffer_Delete(QAbstractPlanarVideoBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
