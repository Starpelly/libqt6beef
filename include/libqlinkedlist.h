#pragma once
#ifndef SRCC_LIBQLINKEDLIST_H
#define SRCC_LIBQLINKEDLIST_H

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
typedef struct QLinkedListData QLinkedListData;
#endif

QLinkedListData* QLinkedListData_new();
void QLinkedListData_Delete(QLinkedListData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
