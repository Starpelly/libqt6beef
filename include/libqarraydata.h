#pragma once
#ifndef SRCC_LIBQARRAYDATA_H
#define SRCC_LIBQARRAYDATA_H

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
typedef struct QArrayData QArrayData;
#endif

#ifdef __cplusplus
typedef QArrayData::AllocationOption AllocationOption;                            // C++ enum
typedef QArrayData::AllocationOptions AllocationOptions;                          // C++ QFlags
typedef QtPrivate::QContainerImplHelper::CutResult QContainerImplHelperCutResult; // C++ enum
#else
typedef int AllocationOption;              // C ABI enum
typedef int AllocationOptions;             // C ABI QFlags
typedef int QContainerImplHelperCutResult; // C ABI enum
#endif

void* QArrayData_Data(QArrayData* self);
const void* QArrayData_Data2(const QArrayData* self);
bool QArrayData_IsMutable(const QArrayData* self);
size_t QArrayData_DetachCapacity(const QArrayData* self, size_t newSize);
int QArrayData_DetachFlags(const QArrayData* self);
int QArrayData_CloneFlags(const QArrayData* self);
QArrayData* QArrayData_Allocate(size_t objectSize, size_t alignment, size_t capacity);
QArrayData* QArrayData_ReallocateUnaligned(QArrayData* data, size_t objectSize, size_t newCapacity);
void QArrayData_Deallocate(QArrayData* data, size_t objectSize, size_t alignment);
QArrayData* QArrayData_SharedNull();
QArrayData* QArrayData_Allocate4(size_t objectSize, size_t alignment, size_t capacity, int options);
QArrayData* QArrayData_ReallocateUnaligned4(QArrayData* data, size_t objectSize, size_t newCapacity, int newOptions);
void QArrayData_Delete(QArrayData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
