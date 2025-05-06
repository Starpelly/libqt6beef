#pragma once
#ifndef SRCC_LIBQTEMPORARYDIR_H
#define SRCC_LIBQTEMPORARYDIR_H

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
typedef struct QTemporaryDir QTemporaryDir;
#endif

QTemporaryDir* QTemporaryDir_new();
QTemporaryDir* QTemporaryDir_new2(libqt_string templateName);
bool QTemporaryDir_IsValid(const QTemporaryDir* self);
libqt_string QTemporaryDir_ErrorString(const QTemporaryDir* self);
bool QTemporaryDir_AutoRemove(const QTemporaryDir* self);
void QTemporaryDir_SetAutoRemove(QTemporaryDir* self, bool b);
bool QTemporaryDir_Remove(QTemporaryDir* self);
libqt_string QTemporaryDir_Path(const QTemporaryDir* self);
libqt_string QTemporaryDir_FilePath(const QTemporaryDir* self, libqt_string fileName);
void QTemporaryDir_Delete(QTemporaryDir* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
