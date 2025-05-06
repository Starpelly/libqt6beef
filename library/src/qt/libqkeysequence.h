#pragma once
#ifndef SRC_QTC_LIBQKEYSEQUENCE_H
#define SRC_QTC_LIBQKEYSEQUENCE_H

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
typedef struct QKeyCombination QKeyCombination;
typedef struct QKeySequence QKeySequence;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QKeySequence::DataPtr DataPtr;               // C++ QFlags
typedef QKeySequence::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QKeySequence::SequenceFormat SequenceFormat; // C++ enum
typedef QKeySequence::SequenceMatch SequenceMatch;   // C++ enum
typedef QKeySequence::StandardKey StandardKey;       // C++ enum
#else
typedef int SequenceFormat;  // C ABI enum
typedef int SequenceMatch;   // C ABI enum
typedef int StandardKey;     // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QKeySequence* QKeySequence_new();
QTLIBC_API QKeySequence* QKeySequence_new2(libqt_string key);
QTLIBC_API QKeySequence* QKeySequence_new3(int k1);
QTLIBC_API QKeySequence* QKeySequence_new4(QKeyCombination* k1);
QTLIBC_API QKeySequence* QKeySequence_new5(QKeySequence* ks);
QTLIBC_API QKeySequence* QKeySequence_new6(int key);
QTLIBC_API QKeySequence* QKeySequence_new7(libqt_string key, int format);
QTLIBC_API QKeySequence* QKeySequence_new8(int k1, int k2);
QTLIBC_API QKeySequence* QKeySequence_new9(int k1, int k2, int k3);
QTLIBC_API QKeySequence* QKeySequence_new10(int k1, int k2, int k3, int k4);
QTLIBC_API QKeySequence* QKeySequence_new11(QKeyCombination* k1, QKeyCombination* k2);
QTLIBC_API QKeySequence* QKeySequence_new12(QKeyCombination* k1, QKeyCombination* k2, QKeyCombination* k3);
QTLIBC_API QKeySequence* QKeySequence_new13(QKeyCombination* k1, QKeyCombination* k2, QKeyCombination* k3, QKeyCombination* k4);
QTLIBC_API int QKeySequence_Count(const QKeySequence* self);
QTLIBC_API bool QKeySequence_IsEmpty(const QKeySequence* self);
QTLIBC_API libqt_string QKeySequence_ToString(const QKeySequence* self);
QTLIBC_API QKeySequence* QKeySequence_FromString(libqt_string str);
QTLIBC_API libqt_list /* of QKeySequence* */ QKeySequence_ListFromString(libqt_string str);
QTLIBC_API libqt_string QKeySequence_ListToString(libqt_list /* of QKeySequence* */ list);
QTLIBC_API int QKeySequence_Matches(const QKeySequence* self, QKeySequence* seq);
QTLIBC_API QKeySequence* QKeySequence_Mnemonic(libqt_string text);
QTLIBC_API libqt_list /* of QKeySequence* */ QKeySequence_KeyBindings(int key);
QTLIBC_API QVariant* QKeySequence_ToQVariant(const QKeySequence* self);
QTLIBC_API QKeyCombination* QKeySequence_OperatorSubscript(const QKeySequence* self, unsigned int i);
QTLIBC_API void QKeySequence_OperatorAssign(QKeySequence* self, QKeySequence* other);
QTLIBC_API void QKeySequence_Swap(QKeySequence* self, QKeySequence* other);
QTLIBC_API bool QKeySequence_OperatorEqual(const QKeySequence* self, QKeySequence* other);
QTLIBC_API bool QKeySequence_OperatorNotEqual(const QKeySequence* self, QKeySequence* other);
QTLIBC_API bool QKeySequence_OperatorLesser(const QKeySequence* self, QKeySequence* ks);
QTLIBC_API bool QKeySequence_OperatorGreater(const QKeySequence* self, QKeySequence* other);
QTLIBC_API bool QKeySequence_OperatorLesserOrEqual(const QKeySequence* self, QKeySequence* other);
QTLIBC_API bool QKeySequence_OperatorGreaterOrEqual(const QKeySequence* self, QKeySequence* other);
QTLIBC_API bool QKeySequence_IsDetached(const QKeySequence* self);
QTLIBC_API libqt_string QKeySequence_ToString1(const QKeySequence* self, int format);
QTLIBC_API QKeySequence* QKeySequence_FromString2(libqt_string str, int format);
QTLIBC_API libqt_list /* of QKeySequence* */ QKeySequence_ListFromString2(libqt_string str, int format);
QTLIBC_API libqt_string QKeySequence_ListToString2(libqt_list /* of QKeySequence* */ list, int format);
QTLIBC_API void QKeySequence_Delete(QKeySequence* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
