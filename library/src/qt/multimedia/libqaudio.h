#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQAUDIO_H
#define SRC_QT_MULTIMEDIAC_LIBQAUDIO_H

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

#endif

#ifdef __cplusplus
typedef QAudio::Error Error;             // C++ enum
typedef QAudio::State State;             // C++ enum
typedef QAudio::VolumeScale VolumeScale; // C++ enum
#else
typedef int Error;       // C ABI enum
typedef int State;       // C ABI enum
typedef int VolumeScale; // C ABI enum
#endif

#ifdef __cplusplus
} /* extern C */
#endif

#endif
