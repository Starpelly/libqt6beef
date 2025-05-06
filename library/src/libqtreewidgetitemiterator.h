#pragma once
#ifndef SRCC_LIBQTREEWIDGETITEMITERATOR_H
#define SRCC_LIBQTREEWIDGETITEMITERATOR_H

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
typedef struct QTreeWidget QTreeWidget;
typedef struct QTreeWidgetItem QTreeWidgetItem;
typedef struct QTreeWidgetItemIterator QTreeWidgetItemIterator;
#endif

#ifdef __cplusplus
typedef QTreeWidgetItemIterator::IteratorFlag IteratorFlag;   // C++ enum
typedef QTreeWidgetItemIterator::IteratorFlags IteratorFlags; // C++ QFlags
#else
typedef int IteratorFlag;  // C ABI enum
typedef int IteratorFlags; // C ABI QFlags
#endif

QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_new(QTreeWidgetItemIterator* it);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_new2(QTreeWidget* widget);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_new3(QTreeWidgetItem* item);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_new4(QTreeWidget* widget, int flags);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_new5(QTreeWidgetItem* item, int flags);
QTLIBC_API void QTreeWidgetItemIterator_OperatorAssign(QTreeWidgetItemIterator* self, QTreeWidgetItemIterator* it);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorPlusPlus(QTreeWidgetItemIterator* self);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorPlusPlusWithInt(QTreeWidgetItemIterator* self, int param1);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorPlusAssign(QTreeWidgetItemIterator* self, int n);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorMinusMinus(QTreeWidgetItemIterator* self);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorMinusMinusWithInt(QTreeWidgetItemIterator* self, int param1);
QTLIBC_API QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorMinusAssign(QTreeWidgetItemIterator* self, int n);
QTLIBC_API QTreeWidgetItem* QTreeWidgetItemIterator_OperatorMultiply(const QTreeWidgetItemIterator* self);
QTLIBC_API void QTreeWidgetItemIterator_Delete(QTreeWidgetItemIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
