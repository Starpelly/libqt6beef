#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQCAMERADEVICE_H
#define SRC_QT_MULTIMEDIAC_LIBQCAMERADEVICE_H

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
typedef struct QCameraDevice QCameraDevice;
typedef struct QCameraFormat QCameraFormat;
typedef struct QSize QSize;
#endif

#ifdef __cplusplus
typedef QCameraDevice::Position Position;             // C++ enum
typedef QCameraDevice::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef int Position;        // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QCameraFormat* QCameraFormat_new();
QTLIBC_API QCameraFormat* QCameraFormat_new2(QCameraFormat* other);
QTLIBC_API void QCameraFormat_OperatorAssign(QCameraFormat* self, QCameraFormat* other);
QTLIBC_API int QCameraFormat_PixelFormat(const QCameraFormat* self);
QTLIBC_API QSize* QCameraFormat_Resolution(const QCameraFormat* self);
QTLIBC_API float QCameraFormat_MinFrameRate(const QCameraFormat* self);
QTLIBC_API float QCameraFormat_MaxFrameRate(const QCameraFormat* self);
QTLIBC_API bool QCameraFormat_IsNull(const QCameraFormat* self);
QTLIBC_API bool QCameraFormat_OperatorEqual(const QCameraFormat* self, QCameraFormat* other);
QTLIBC_API bool QCameraFormat_OperatorNotEqual(const QCameraFormat* self, QCameraFormat* other);
QTLIBC_API void QCameraFormat_Delete(QCameraFormat* self);

QTLIBC_API QCameraDevice* QCameraDevice_new();
QTLIBC_API QCameraDevice* QCameraDevice_new2(QCameraDevice* other);
QTLIBC_API void QCameraDevice_OperatorAssign(QCameraDevice* self, QCameraDevice* other);
QTLIBC_API bool QCameraDevice_OperatorEqual(const QCameraDevice* self, QCameraDevice* other);
QTLIBC_API bool QCameraDevice_OperatorNotEqual(const QCameraDevice* self, QCameraDevice* other);
QTLIBC_API bool QCameraDevice_IsNull(const QCameraDevice* self);
QTLIBC_API libqt_string QCameraDevice_Id(const QCameraDevice* self);
QTLIBC_API libqt_string QCameraDevice_Description(const QCameraDevice* self);
QTLIBC_API bool QCameraDevice_IsDefault(const QCameraDevice* self);
QTLIBC_API int QCameraDevice_Position(const QCameraDevice* self);
QTLIBC_API libqt_list /* of QSize* */ QCameraDevice_PhotoResolutions(const QCameraDevice* self);
QTLIBC_API libqt_list /* of QCameraFormat* */ QCameraDevice_VideoFormats(const QCameraDevice* self);
QTLIBC_API void QCameraDevice_Delete(QCameraDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
