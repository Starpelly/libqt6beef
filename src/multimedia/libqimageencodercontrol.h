#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQIMAGEENCODERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQIMAGEENCODERCONTROL_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImageEncoderControl QImageEncoderControl;
typedef struct QImageEncoderSettings QImageEncoderSettings;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QImageEncoderControl_MetaObject(const QImageEncoderControl* self);
void* QImageEncoderControl_Metacast(QImageEncoderControl* self, const char* param1);
int QImageEncoderControl_Metacall(QImageEncoderControl* self, int param1, int param2, void** param3);
libqt_string QImageEncoderControl_Tr(const char* s);
libqt_string QImageEncoderControl_TrUtf8(const char* s);
libqt_list /* of libqt_string */ QImageEncoderControl_SupportedImageCodecs(const QImageEncoderControl* self);
libqt_string QImageEncoderControl_ImageCodecDescription(const QImageEncoderControl* self, libqt_string codec);
libqt_list /* of QSize* */ QImageEncoderControl_SupportedResolutions(const QImageEncoderControl* self, QImageEncoderSettings* settings, bool* continuous);
QImageEncoderSettings* QImageEncoderControl_ImageSettings(const QImageEncoderControl* self);
void QImageEncoderControl_SetImageSettings(QImageEncoderControl* self, QImageEncoderSettings* settings);
libqt_string QImageEncoderControl_Tr2(const char* s, const char* c);
libqt_string QImageEncoderControl_Tr3(const char* s, const char* c, int n);
libqt_string QImageEncoderControl_TrUtf82(const char* s, const char* c);
libqt_string QImageEncoderControl_TrUtf83(const char* s, const char* c, int n);
bool QImageEncoderControl_Event(QImageEncoderControl* self, QEvent* event);
bool QImageEncoderControl_EventFilter(QImageEncoderControl* self, QObject* watched, QEvent* event);
void QImageEncoderControl_Delete(QImageEncoderControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
