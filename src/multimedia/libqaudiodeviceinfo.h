#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIODEVICEINFO_H
#define SRC_MULTIMEDIAC_LIBQAUDIODEVICEINFO_H

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
typedef struct QAudioDeviceInfo QAudioDeviceInfo;
typedef struct QAudioFormat QAudioFormat;
#endif

QAudioDeviceInfo* QAudioDeviceInfo_new();
QAudioDeviceInfo* QAudioDeviceInfo_new2(QAudioDeviceInfo* other);
void QAudioDeviceInfo_OperatorAssign(QAudioDeviceInfo* self, QAudioDeviceInfo* other);
bool QAudioDeviceInfo_OperatorEqual(const QAudioDeviceInfo* self, QAudioDeviceInfo* other);
bool QAudioDeviceInfo_OperatorNotEqual(const QAudioDeviceInfo* self, QAudioDeviceInfo* other);
bool QAudioDeviceInfo_IsNull(const QAudioDeviceInfo* self);
libqt_string QAudioDeviceInfo_DeviceName(const QAudioDeviceInfo* self);
bool QAudioDeviceInfo_IsFormatSupported(const QAudioDeviceInfo* self, QAudioFormat* format);
QAudioFormat* QAudioDeviceInfo_PreferredFormat(const QAudioDeviceInfo* self);
QAudioFormat* QAudioDeviceInfo_NearestFormat(const QAudioDeviceInfo* self, QAudioFormat* format);
libqt_list /* of libqt_string */ QAudioDeviceInfo_SupportedCodecs(const QAudioDeviceInfo* self);
libqt_list /* of int */ QAudioDeviceInfo_SupportedSampleRates(const QAudioDeviceInfo* self);
libqt_list /* of int */ QAudioDeviceInfo_SupportedChannelCounts(const QAudioDeviceInfo* self);
libqt_list /* of int */ QAudioDeviceInfo_SupportedSampleSizes(const QAudioDeviceInfo* self);
libqt_list /* of int */ QAudioDeviceInfo_SupportedByteOrders(const QAudioDeviceInfo* self);
libqt_list /* of int */ QAudioDeviceInfo_SupportedSampleTypes(const QAudioDeviceInfo* self);
libqt_string QAudioDeviceInfo_Realm(const QAudioDeviceInfo* self);
QAudioDeviceInfo* QAudioDeviceInfo_DefaultInputDevice();
QAudioDeviceInfo* QAudioDeviceInfo_DefaultOutputDevice();
libqt_list /* of QAudioDeviceInfo* */ QAudioDeviceInfo_AvailableDevices(int mode);
void QAudioDeviceInfo_Delete(QAudioDeviceInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
