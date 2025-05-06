#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOBUFFER_H
#define SRC_MULTIMEDIAC_LIBQAUDIOBUFFER_H

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
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioFormat QAudioFormat;
#endif

#ifdef __cplusplus
typedef QAudioBuffer::S16S S16S; // C++ QFlags
typedef QAudioBuffer::S16U S16U; // C++ QFlags
typedef QAudioBuffer::S32F S32F; // C++ QFlags
typedef QAudioBuffer::S8S S8S;   // C++ QFlags
typedef QAudioBuffer::S8U S8U;   // C++ QFlags
#else

#endif

QAudioBuffer* QAudioBuffer_new();
QAudioBuffer* QAudioBuffer_new2(QAudioBuffer* other);
QAudioBuffer* QAudioBuffer_new3(libqt_string data, QAudioFormat* format);
QAudioBuffer* QAudioBuffer_new4(int numFrames, QAudioFormat* format);
QAudioBuffer* QAudioBuffer_new5(libqt_string data, QAudioFormat* format, long long startTime);
QAudioBuffer* QAudioBuffer_new6(int numFrames, QAudioFormat* format, long long startTime);
void QAudioBuffer_OperatorAssign(QAudioBuffer* self, QAudioBuffer* other);
bool QAudioBuffer_IsValid(const QAudioBuffer* self);
QAudioFormat* QAudioBuffer_Format(const QAudioBuffer* self);
int QAudioBuffer_FrameCount(const QAudioBuffer* self);
int QAudioBuffer_SampleCount(const QAudioBuffer* self);
int QAudioBuffer_ByteCount(const QAudioBuffer* self);
long long QAudioBuffer_Duration(const QAudioBuffer* self);
long long QAudioBuffer_StartTime(const QAudioBuffer* self);
const void* QAudioBuffer_ConstData(const QAudioBuffer* self);
const void* QAudioBuffer_Data(const QAudioBuffer* self);
void* QAudioBuffer_Data2(QAudioBuffer* self);
void QAudioBuffer_Delete(QAudioBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
