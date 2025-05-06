#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQAUDIOFORMAT_H
#define SRC_QT_MULTIMEDIAC_LIBQAUDIOFORMAT_H

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
typedef struct QAudioFormat QAudioFormat;
#endif

#ifdef __cplusplus
typedef QAudioFormat::AudioChannelPosition AudioChannelPosition; // C++ enum
typedef QAudioFormat::ChannelConfig ChannelConfig;               // C++ enum
typedef QAudioFormat::SampleFormat SampleFormat;                 // C++ enum
#else
typedef int AudioChannelPosition;   // C ABI enum
typedef uint16_t SampleFormat;      // C ABI enum
typedef unsigned int ChannelConfig; // C ABI enum
#endif

QTLIBC_API QAudioFormat* QAudioFormat_new(QAudioFormat* other);
QTLIBC_API QAudioFormat* QAudioFormat_new2(QAudioFormat* other);
QTLIBC_API QAudioFormat* QAudioFormat_new3();
QTLIBC_API QAudioFormat* QAudioFormat_new4(QAudioFormat* param1);
QTLIBC_API void QAudioFormat_CopyAssign(QAudioFormat* self, QAudioFormat* other);
QTLIBC_API void QAudioFormat_MoveAssign(QAudioFormat* self, QAudioFormat* other);
QTLIBC_API bool QAudioFormat_IsValid(const QAudioFormat* self);
QTLIBC_API void QAudioFormat_SetSampleRate(QAudioFormat* self, int sampleRate);
QTLIBC_API int QAudioFormat_SampleRate(const QAudioFormat* self);
QTLIBC_API void QAudioFormat_SetChannelConfig(QAudioFormat* self, uint32_t config);
QTLIBC_API uint32_t QAudioFormat_ChannelConfig(const QAudioFormat* self);
QTLIBC_API void QAudioFormat_SetChannelCount(QAudioFormat* self, int channelCount);
QTLIBC_API int QAudioFormat_ChannelCount(const QAudioFormat* self);
QTLIBC_API int QAudioFormat_ChannelOffset(const QAudioFormat* self, int channel);
QTLIBC_API void QAudioFormat_SetSampleFormat(QAudioFormat* self, uint16_t f);
QTLIBC_API uint16_t QAudioFormat_SampleFormat(const QAudioFormat* self);
QTLIBC_API int QAudioFormat_BytesForDuration(const QAudioFormat* self, long long microseconds);
QTLIBC_API long long QAudioFormat_DurationForBytes(const QAudioFormat* self, int byteCount);
QTLIBC_API int QAudioFormat_BytesForFrames(const QAudioFormat* self, int frameCount);
QTLIBC_API int QAudioFormat_FramesForBytes(const QAudioFormat* self, int byteCount);
QTLIBC_API int QAudioFormat_FramesForDuration(const QAudioFormat* self, long long microseconds);
QTLIBC_API long long QAudioFormat_DurationForFrames(const QAudioFormat* self, int frameCount);
QTLIBC_API int QAudioFormat_BytesPerFrame(const QAudioFormat* self);
QTLIBC_API int QAudioFormat_BytesPerSample(const QAudioFormat* self);
QTLIBC_API float QAudioFormat_NormalizedSampleValue(const QAudioFormat* self, const void* sample);
QTLIBC_API uint32_t QAudioFormat_DefaultChannelConfigForChannelCount(int channelCount);
QTLIBC_API void QAudioFormat_Delete(QAudioFormat* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
