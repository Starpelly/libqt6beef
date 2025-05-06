#pragma once
#ifndef SRC_QTC_LIBQRANDOM_H
#define SRC_QTC_LIBQRANDOM_H

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
typedef struct QRandomGenerator QRandomGenerator;
typedef struct QRandomGenerator64 QRandomGenerator64;
#endif

#ifdef __cplusplus
typedef QRandomGenerator64::result_type result_type; // C++ QFlags
#else
typedef uint64_t result_type; // C ABI QFlags
#endif

QTLIBC_API QRandomGenerator* QRandomGenerator_new();
QTLIBC_API QRandomGenerator* QRandomGenerator_new2(const unsigned int* seedBuffer, ptrdiff_t lenVal);
QTLIBC_API QRandomGenerator* QRandomGenerator_new3(const unsigned int* begin, const unsigned int* end);
QTLIBC_API QRandomGenerator* QRandomGenerator_new4(QRandomGenerator* other);
QTLIBC_API QRandomGenerator* QRandomGenerator_new5(unsigned int seedValue);
QTLIBC_API void QRandomGenerator_OperatorAssign(QRandomGenerator* self, QRandomGenerator* other);
QTLIBC_API unsigned int QRandomGenerator_Generate(QRandomGenerator* self);
QTLIBC_API unsigned long long QRandomGenerator_Generate64(QRandomGenerator* self);
QTLIBC_API double QRandomGenerator_GenerateDouble(QRandomGenerator* self);
QTLIBC_API double QRandomGenerator_Bounded(QRandomGenerator* self, double highest);
QTLIBC_API unsigned int QRandomGenerator_BoundedWithHighest(QRandomGenerator* self, unsigned int highest);
QTLIBC_API unsigned int QRandomGenerator_Bounded2(QRandomGenerator* self, unsigned int lowest, unsigned int highest);
QTLIBC_API int QRandomGenerator_Bounded3(QRandomGenerator* self, int highest);
QTLIBC_API int QRandomGenerator_Bounded4(QRandomGenerator* self, int lowest, int highest);
QTLIBC_API unsigned long long QRandomGenerator_Bounded5(QRandomGenerator* self, unsigned long long highest);
QTLIBC_API unsigned long long QRandomGenerator_Bounded6(QRandomGenerator* self, unsigned long long lowest, unsigned long long highest);
QTLIBC_API long long QRandomGenerator_Bounded7(QRandomGenerator* self, long long highest);
QTLIBC_API long long QRandomGenerator_Bounded8(QRandomGenerator* self, long long lowest, long long highest);
QTLIBC_API long long QRandomGenerator_Bounded9(QRandomGenerator* self, int lowest, long long highest);
QTLIBC_API long long QRandomGenerator_Bounded10(QRandomGenerator* self, long long lowest, int highest);
QTLIBC_API unsigned long long QRandomGenerator_Bounded11(QRandomGenerator* self, unsigned int lowest, unsigned long long highest);
QTLIBC_API unsigned long long QRandomGenerator_Bounded12(QRandomGenerator* self, unsigned long long lowest, unsigned int highest);
QTLIBC_API void QRandomGenerator_Generate2(QRandomGenerator* self, unsigned int* begin, unsigned int* end);
QTLIBC_API unsigned int QRandomGenerator_OperatorCall(QRandomGenerator* self);
QTLIBC_API void QRandomGenerator_Seed(QRandomGenerator* self);
QTLIBC_API void QRandomGenerator_Discard(QRandomGenerator* self, unsigned long long z);
QTLIBC_API unsigned int QRandomGenerator_Min();
QTLIBC_API unsigned int QRandomGenerator_Max();
QTLIBC_API QRandomGenerator* QRandomGenerator_System();
QTLIBC_API QRandomGenerator* QRandomGenerator_Global();
QTLIBC_API QRandomGenerator* QRandomGenerator_SecurelySeeded();
QTLIBC_API void QRandomGenerator_Seed1(QRandomGenerator* self, unsigned int s);
QTLIBC_API void QRandomGenerator_Delete(QRandomGenerator* self);

QTLIBC_API QRandomGenerator64* QRandomGenerator64_new();
QTLIBC_API QRandomGenerator64* QRandomGenerator64_new2(const unsigned int* seedBuffer, ptrdiff_t lenVal);
QTLIBC_API QRandomGenerator64* QRandomGenerator64_new3(const unsigned int* begin, const unsigned int* end);
QTLIBC_API QRandomGenerator64* QRandomGenerator64_new4(QRandomGenerator* other);
QTLIBC_API QRandomGenerator64* QRandomGenerator64_new5(QRandomGenerator64* param1);
QTLIBC_API QRandomGenerator64* QRandomGenerator64_new6(unsigned int seedValue);
QTLIBC_API unsigned long long QRandomGenerator64_Generate(QRandomGenerator64* self);
QTLIBC_API unsigned long long QRandomGenerator64_OperatorCall(QRandomGenerator64* self);
QTLIBC_API void QRandomGenerator64_Discard(QRandomGenerator64* self, unsigned long long z);
QTLIBC_API unsigned long long QRandomGenerator64_Min();
QTLIBC_API unsigned long long QRandomGenerator64_Max();
QTLIBC_API QRandomGenerator64* QRandomGenerator64_System();
QTLIBC_API QRandomGenerator64* QRandomGenerator64_Global();
QTLIBC_API QRandomGenerator64* QRandomGenerator64_SecurelySeeded();
QTLIBC_API void QRandomGenerator64_OperatorAssign(QRandomGenerator64* self, QRandomGenerator64* param1);
QTLIBC_API void QRandomGenerator64_Delete(QRandomGenerator64* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
