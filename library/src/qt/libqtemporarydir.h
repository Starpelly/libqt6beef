#pragma once
#ifndef SRC_QTC_LIBQTEMPORARYDIR_H
#define SRC_QTC_LIBQTEMPORARYDIR_H

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

QTLIBC_API QTemporaryDir* QTemporaryDir_new();
QTLIBC_API QTemporaryDir* QTemporaryDir_new2(libqt_string templateName);
QTLIBC_API void QTemporaryDir_Swap(QTemporaryDir* self, QTemporaryDir* other);
QTLIBC_API bool QTemporaryDir_IsValid(const QTemporaryDir* self);
QTLIBC_API libqt_string QTemporaryDir_ErrorString(const QTemporaryDir* self);
QTLIBC_API bool QTemporaryDir_AutoRemove(const QTemporaryDir* self);
QTLIBC_API void QTemporaryDir_SetAutoRemove(QTemporaryDir* self, bool b);
QTLIBC_API bool QTemporaryDir_Remove(QTemporaryDir* self);
QTLIBC_API libqt_string QTemporaryDir_Path(const QTemporaryDir* self);
QTLIBC_API libqt_string QTemporaryDir_FilePath(const QTemporaryDir* self, libqt_string fileName);
QTLIBC_API void QTemporaryDir_Delete(QTemporaryDir* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
