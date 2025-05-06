#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQAUDIOBUFFER_H
#define SRC_QT_MULTIMEDIAC_LIBQAUDIOBUFFER_H

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
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioFormat QAudioFormat;
#endif

#ifdef __cplusplus
typedef QAudioBuffer::F32M F32M; // C++ QFlags
typedef QAudioBuffer::F32S F32S; // C++ QFlags
typedef QAudioBuffer::S16M S16M; // C++ QFlags
typedef QAudioBuffer::S16S S16S; // C++ QFlags
typedef QAudioBuffer::S32M S32M; // C++ QFlags
typedef QAudioBuffer::S32S S32S; // C++ QFlags
typedef QAudioBuffer::U8M U8M;   // C++ QFlags
typedef QAudioBuffer::U8S U8S;   // C++ QFlags
#else

#endif

QTLIBC_API QAudioBuffer* QAudioBuffer_new();
QTLIBC_API QAudioBuffer* QAudioBuffer_new2(QAudioBuffer* other);
QTLIBC_API QAudioBuffer* QAudioBuffer_new3(libqt_string data, QAudioFormat* format);
QTLIBC_API QAudioBuffer* QAudioBuffer_new4(int numFrames, QAudioFormat* format);
QTLIBC_API QAudioBuffer* QAudioBuffer_new5(libqt_string data, QAudioFormat* format, long long startTime);
QTLIBC_API QAudioBuffer* QAudioBuffer_new6(int numFrames, QAudioFormat* format, long long startTime);
QTLIBC_API void QAudioBuffer_OperatorAssign(QAudioBuffer* self, QAudioBuffer* other);
QTLIBC_API void QAudioBuffer_Swap(QAudioBuffer* self, QAudioBuffer* other);
QTLIBC_API bool QAudioBuffer_IsValid(const QAudioBuffer* self);
QTLIBC_API void QAudioBuffer_Detach(QAudioBuffer* self);
QTLIBC_API QAudioFormat* QAudioBuffer_Format(const QAudioBuffer* self);
QTLIBC_API ptrdiff_t QAudioBuffer_FrameCount(const QAudioBuffer* self);
QTLIBC_API ptrdiff_t QAudioBuffer_SampleCount(const QAudioBuffer* self);
QTLIBC_API ptrdiff_t QAudioBuffer_ByteCount(const QAudioBuffer* self);
QTLIBC_API long long QAudioBuffer_Duration(const QAudioBuffer* self);
QTLIBC_API long long QAudioBuffer_StartTime(const QAudioBuffer* self);
QTLIBC_API void QAudioBuffer_Delete(QAudioBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
