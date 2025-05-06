#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAINFO_H
#define SRC_MULTIMEDIAC_LIBQCAMERAINFO_H

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
typedef struct QCamera QCamera;
typedef struct QCameraInfo QCameraInfo;
#endif

QCameraInfo* QCameraInfo_new();
QCameraInfo* QCameraInfo_new2(QCamera* camera);
QCameraInfo* QCameraInfo_new3(QCameraInfo* other);
QCameraInfo* QCameraInfo_new4(libqt_string name);
void QCameraInfo_OperatorAssign(QCameraInfo* self, QCameraInfo* other);
bool QCameraInfo_OperatorEqual(const QCameraInfo* self, QCameraInfo* other);
bool QCameraInfo_OperatorNotEqual(const QCameraInfo* self, QCameraInfo* other);
bool QCameraInfo_IsNull(const QCameraInfo* self);
libqt_string QCameraInfo_DeviceName(const QCameraInfo* self);
libqt_string QCameraInfo_Description(const QCameraInfo* self);
int QCameraInfo_Position(const QCameraInfo* self);
int QCameraInfo_Orientation(const QCameraInfo* self);
QCameraInfo* QCameraInfo_DefaultCamera();
libqt_list /* of QCameraInfo* */ QCameraInfo_AvailableCameras();
libqt_list /* of QCameraInfo* */ QCameraInfo_AvailableCameras1(int position);
void QCameraInfo_Delete(QCameraInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
