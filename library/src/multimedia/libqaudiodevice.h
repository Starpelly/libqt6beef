#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIODEVICE_H
#define SRC_MULTIMEDIAC_LIBQAUDIODEVICE_H

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
typedef struct QAudioDevice QAudioDevice;
typedef struct QAudioFormat QAudioFormat;
#endif

#ifdef __cplusplus
typedef QAudioDevice::Mode Mode;                     // C++ enum
typedef QAudioDevice::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef int Mode;            // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QAudioDevice* QAudioDevice_new();
QTLIBC_API QAudioDevice* QAudioDevice_new2(QAudioDevice* other);
QTLIBC_API void QAudioDevice_Swap(QAudioDevice* self, QAudioDevice* other);
QTLIBC_API void QAudioDevice_OperatorAssign(QAudioDevice* self, QAudioDevice* other);
QTLIBC_API bool QAudioDevice_OperatorEqual(const QAudioDevice* self, QAudioDevice* other);
QTLIBC_API bool QAudioDevice_OperatorNotEqual(const QAudioDevice* self, QAudioDevice* other);
QTLIBC_API bool QAudioDevice_IsNull(const QAudioDevice* self);
QTLIBC_API libqt_string QAudioDevice_Id(const QAudioDevice* self);
QTLIBC_API libqt_string QAudioDevice_Description(const QAudioDevice* self);
QTLIBC_API bool QAudioDevice_IsDefault(const QAudioDevice* self);
QTLIBC_API int QAudioDevice_Mode(const QAudioDevice* self);
QTLIBC_API bool QAudioDevice_IsFormatSupported(const QAudioDevice* self, QAudioFormat* format);
QTLIBC_API QAudioFormat* QAudioDevice_PreferredFormat(const QAudioDevice* self);
QTLIBC_API int QAudioDevice_MinimumSampleRate(const QAudioDevice* self);
QTLIBC_API int QAudioDevice_MaximumSampleRate(const QAudioDevice* self);
QTLIBC_API int QAudioDevice_MinimumChannelCount(const QAudioDevice* self);
QTLIBC_API int QAudioDevice_MaximumChannelCount(const QAudioDevice* self);
QTLIBC_API libqt_list /* of uint16_t */ QAudioDevice_SupportedSampleFormats(const QAudioDevice* self);
QTLIBC_API uint32_t QAudioDevice_ChannelConfiguration(const QAudioDevice* self);
QTLIBC_API void QAudioDevice_Delete(QAudioDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
