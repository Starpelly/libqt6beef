#pragma once
#ifndef SRCC_LIBQMETACONTAINER_H
#define SRCC_LIBQMETACONTAINER_H

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
typedef struct QMetaAssociation QMetaAssociation;
typedef struct QMetaContainer QMetaContainer;
typedef struct QMetaSequence QMetaSequence;
typedef struct QMetaType QMetaType;
#endif

#ifdef __cplusplus
typedef QtMetaContainerPrivate::AddRemoveCapability AddRemoveCapability;                           // C++ enum
typedef QtMetaContainerPrivate::IteratorCapability IteratorCapability;                             // C++ enum
typedef QtMetaContainerPrivate::QMetaContainerInterface::Position QMetaContainerInterfacePosition; // C++ enum
#else
typedef unsigned char AddRemoveCapability;             // C ABI enum
typedef unsigned char IteratorCapability;              // C ABI enum
typedef unsigned char QMetaContainerInterfacePosition; // C ABI enum
#endif

QTLIBC_API QMetaContainer* QMetaContainer_new(QMetaContainer* other);
QTLIBC_API QMetaContainer* QMetaContainer_new2(QMetaContainer* other);
QTLIBC_API QMetaContainer* QMetaContainer_new3();
QTLIBC_API QMetaContainer* QMetaContainer_new4(QMetaContainer* param1);
QTLIBC_API void QMetaContainer_CopyAssign(QMetaContainer* self, QMetaContainer* other);
QTLIBC_API void QMetaContainer_MoveAssign(QMetaContainer* self, QMetaContainer* other);
QTLIBC_API bool QMetaContainer_HasInputIterator(const QMetaContainer* self);
QTLIBC_API bool QMetaContainer_HasForwardIterator(const QMetaContainer* self);
QTLIBC_API bool QMetaContainer_HasBidirectionalIterator(const QMetaContainer* self);
QTLIBC_API bool QMetaContainer_HasRandomAccessIterator(const QMetaContainer* self);
QTLIBC_API bool QMetaContainer_HasSize(const QMetaContainer* self);
QTLIBC_API ptrdiff_t QMetaContainer_Size(const QMetaContainer* self, const void* container);
QTLIBC_API bool QMetaContainer_CanClear(const QMetaContainer* self);
QTLIBC_API void QMetaContainer_Clear(const QMetaContainer* self, void* container);
QTLIBC_API bool QMetaContainer_HasIterator(const QMetaContainer* self);
QTLIBC_API void* QMetaContainer_Begin(const QMetaContainer* self, void* container);
QTLIBC_API void* QMetaContainer_End(const QMetaContainer* self, void* container);
QTLIBC_API void QMetaContainer_DestroyIterator(const QMetaContainer* self, const void* iterator);
QTLIBC_API bool QMetaContainer_CompareIterator(const QMetaContainer* self, const void* i, const void* j);
QTLIBC_API void QMetaContainer_CopyIterator(const QMetaContainer* self, void* target, const void* source);
QTLIBC_API void QMetaContainer_AdvanceIterator(const QMetaContainer* self, void* iterator, ptrdiff_t step);
QTLIBC_API ptrdiff_t QMetaContainer_DiffIterator(const QMetaContainer* self, const void* i, const void* j);
QTLIBC_API bool QMetaContainer_HasConstIterator(const QMetaContainer* self);
QTLIBC_API void* QMetaContainer_ConstBegin(const QMetaContainer* self, const void* container);
QTLIBC_API void* QMetaContainer_ConstEnd(const QMetaContainer* self, const void* container);
QTLIBC_API void QMetaContainer_DestroyConstIterator(const QMetaContainer* self, const void* iterator);
QTLIBC_API bool QMetaContainer_CompareConstIterator(const QMetaContainer* self, const void* i, const void* j);
QTLIBC_API void QMetaContainer_CopyConstIterator(const QMetaContainer* self, void* target, const void* source);
QTLIBC_API void QMetaContainer_AdvanceConstIterator(const QMetaContainer* self, void* iterator, ptrdiff_t step);
QTLIBC_API ptrdiff_t QMetaContainer_DiffConstIterator(const QMetaContainer* self, const void* i, const void* j);
QTLIBC_API void QMetaContainer_Delete(QMetaContainer* self);

QTLIBC_API QMetaSequence* QMetaSequence_new(QMetaSequence* other);
QTLIBC_API QMetaSequence* QMetaSequence_new2(QMetaSequence* other);
QTLIBC_API QMetaSequence* QMetaSequence_new3();
QTLIBC_API void QMetaSequence_CopyAssign(QMetaSequence* self, QMetaSequence* other);
QTLIBC_API void QMetaSequence_MoveAssign(QMetaSequence* self, QMetaSequence* other);
QTLIBC_API QMetaType* QMetaSequence_ValueMetaType(const QMetaSequence* self);
QTLIBC_API bool QMetaSequence_IsSortable(const QMetaSequence* self);
QTLIBC_API bool QMetaSequence_CanAddValueAtBegin(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_AddValueAtBegin(const QMetaSequence* self, void* container, const void* value);
QTLIBC_API bool QMetaSequence_CanAddValueAtEnd(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_AddValueAtEnd(const QMetaSequence* self, void* container, const void* value);
QTLIBC_API bool QMetaSequence_CanRemoveValueAtBegin(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_RemoveValueAtBegin(const QMetaSequence* self, void* container);
QTLIBC_API bool QMetaSequence_CanRemoveValueAtEnd(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_RemoveValueAtEnd(const QMetaSequence* self, void* container);
QTLIBC_API bool QMetaSequence_CanGetValueAtIndex(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_ValueAtIndex(const QMetaSequence* self, const void* container, ptrdiff_t index, void* result);
QTLIBC_API bool QMetaSequence_CanSetValueAtIndex(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_SetValueAtIndex(const QMetaSequence* self, void* container, ptrdiff_t index, const void* value);
QTLIBC_API bool QMetaSequence_CanAddValue(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_AddValue(const QMetaSequence* self, void* container, const void* value);
QTLIBC_API bool QMetaSequence_CanRemoveValue(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_RemoveValue(const QMetaSequence* self, void* container);
QTLIBC_API bool QMetaSequence_CanGetValueAtIterator(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_ValueAtIterator(const QMetaSequence* self, const void* iterator, void* result);
QTLIBC_API bool QMetaSequence_CanSetValueAtIterator(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_SetValueAtIterator(const QMetaSequence* self, const void* iterator, const void* value);
QTLIBC_API bool QMetaSequence_CanInsertValueAtIterator(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_InsertValueAtIterator(const QMetaSequence* self, void* container, const void* iterator, const void* value);
QTLIBC_API bool QMetaSequence_CanEraseValueAtIterator(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_EraseValueAtIterator(const QMetaSequence* self, void* container, const void* iterator);
QTLIBC_API bool QMetaSequence_CanEraseRangeAtIterator(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_EraseRangeAtIterator(const QMetaSequence* self, void* container, const void* iterator1, const void* iterator2);
QTLIBC_API bool QMetaSequence_CanGetValueAtConstIterator(const QMetaSequence* self);
QTLIBC_API void QMetaSequence_ValueAtConstIterator(const QMetaSequence* self, const void* iterator, void* result);
QTLIBC_API void QMetaSequence_Delete(QMetaSequence* self);

QTLIBC_API QMetaAssociation* QMetaAssociation_new(QMetaAssociation* other);
QTLIBC_API QMetaAssociation* QMetaAssociation_new2(QMetaAssociation* other);
QTLIBC_API QMetaAssociation* QMetaAssociation_new3();
QTLIBC_API void QMetaAssociation_CopyAssign(QMetaAssociation* self, QMetaAssociation* other);
QTLIBC_API void QMetaAssociation_MoveAssign(QMetaAssociation* self, QMetaAssociation* other);
QTLIBC_API QMetaType* QMetaAssociation_KeyMetaType(const QMetaAssociation* self);
QTLIBC_API QMetaType* QMetaAssociation_MappedMetaType(const QMetaAssociation* self);
QTLIBC_API bool QMetaAssociation_CanInsertKey(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_InsertKey(const QMetaAssociation* self, void* container, const void* key);
QTLIBC_API bool QMetaAssociation_CanRemoveKey(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_RemoveKey(const QMetaAssociation* self, void* container, const void* key);
QTLIBC_API bool QMetaAssociation_CanContainsKey(const QMetaAssociation* self);
QTLIBC_API bool QMetaAssociation_ContainsKey(const QMetaAssociation* self, const void* container, const void* key);
QTLIBC_API bool QMetaAssociation_CanGetMappedAtKey(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_MappedAtKey(const QMetaAssociation* self, const void* container, const void* key, void* mapped);
QTLIBC_API bool QMetaAssociation_CanSetMappedAtKey(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_SetMappedAtKey(const QMetaAssociation* self, void* container, const void* key, const void* mapped);
QTLIBC_API bool QMetaAssociation_CanGetKeyAtIterator(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_KeyAtIterator(const QMetaAssociation* self, const void* iterator, void* key);
QTLIBC_API bool QMetaAssociation_CanGetKeyAtConstIterator(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_KeyAtConstIterator(const QMetaAssociation* self, const void* iterator, void* key);
QTLIBC_API bool QMetaAssociation_CanGetMappedAtIterator(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_MappedAtIterator(const QMetaAssociation* self, const void* iterator, void* mapped);
QTLIBC_API bool QMetaAssociation_CanGetMappedAtConstIterator(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_MappedAtConstIterator(const QMetaAssociation* self, const void* iterator, void* mapped);
QTLIBC_API bool QMetaAssociation_CanSetMappedAtIterator(const QMetaAssociation* self);
QTLIBC_API void QMetaAssociation_SetMappedAtIterator(const QMetaAssociation* self, const void* iterator, const void* mapped);
QTLIBC_API bool QMetaAssociation_CanCreateIteratorAtKey(const QMetaAssociation* self);
QTLIBC_API void* QMetaAssociation_CreateIteratorAtKey(const QMetaAssociation* self, void* container, const void* key);
QTLIBC_API bool QMetaAssociation_CanCreateConstIteratorAtKey(const QMetaAssociation* self);
QTLIBC_API void* QMetaAssociation_CreateConstIteratorAtKey(const QMetaAssociation* self, const void* container, const void* key);
QTLIBC_API void QMetaAssociation_Delete(QMetaAssociation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
