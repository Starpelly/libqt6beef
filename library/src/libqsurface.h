#pragma once
#ifndef SRCC_LIBQSURFACE_H
#define SRCC_LIBQSURFACE_H

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
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
#endif

#ifdef __cplusplus
typedef QSurface::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QSurface::SurfaceClass SurfaceClass;     // C++ enum
typedef QSurface::SurfaceType SurfaceType;       // C++ enum
#else
typedef int SurfaceClass;    // C ABI enum
typedef int SurfaceType;     // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API int QSurface_SurfaceClass(const QSurface* self);
QTLIBC_API QSurfaceFormat* QSurface_Format(const QSurface* self);
QTLIBC_API int QSurface_SurfaceType(const QSurface* self);
QTLIBC_API bool QSurface_SupportsOpenGL(const QSurface* self);
QTLIBC_API QSize* QSurface_Size(const QSurface* self);
QTLIBC_API void QSurface_Delete(QSurface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
