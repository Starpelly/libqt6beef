#pragma once
#ifndef SRCC_LIBQSHAREDDATA_H
#define SRCC_LIBQSHAREDDATA_H

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
typedef struct QSharedData QSharedData;
#endif

QSharedData* QSharedData_new();
QSharedData* QSharedData_new2(QSharedData* param1);
void QSharedData_Delete(QSharedData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
