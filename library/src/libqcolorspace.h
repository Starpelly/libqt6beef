#pragma once
#ifndef SRCC_LIBQCOLORSPACE_H
#define SRCC_LIBQCOLORSPACE_H

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
typedef struct QColorSpace QColorSpace;
typedef struct QColorTransform QColorTransform;
typedef struct QPointF QPointF;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QColorSpace::NamedColorSpace NamedColorSpace;   // C++ enum
typedef QColorSpace::Primaries Primaries;               // C++ enum
typedef QColorSpace::QtGadgetHelper QtGadgetHelper;     // C++ QFlags
typedef QColorSpace::TransferFunction TransferFunction; // C++ enum
#else
typedef int NamedColorSpace;  // C ABI enum
typedef int Primaries;        // C ABI enum
typedef int TransferFunction; // C ABI enum
typedef void QtGadgetHelper;  // C ABI QFlags
#endif

QTLIBC_API QColorSpace* QColorSpace_new();
QTLIBC_API QColorSpace* QColorSpace_new2(int namedColorSpace);
QTLIBC_API QColorSpace* QColorSpace_new3(int primaries, int transferFunction);
QTLIBC_API QColorSpace* QColorSpace_new4(int primaries, float gamma);
QTLIBC_API QColorSpace* QColorSpace_new5(int primaries, libqt_list /* of uint16_t */ transferFunctionTable);
QTLIBC_API QColorSpace* QColorSpace_new6(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, int transferFunction);
QTLIBC_API QColorSpace* QColorSpace_new7(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, libqt_list /* of uint16_t */ transferFunctionTable);
QTLIBC_API QColorSpace* QColorSpace_new8(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, libqt_list /* of uint16_t */ redTransferFunctionTable, libqt_list /* of uint16_t */ greenTransferFunctionTable, libqt_list /* of uint16_t */ blueTransferFunctionTable);
QTLIBC_API QColorSpace* QColorSpace_new9(QColorSpace* colorSpace);
QTLIBC_API QColorSpace* QColorSpace_new10(int primaries, int transferFunction, float gamma);
QTLIBC_API QColorSpace* QColorSpace_new11(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, int transferFunction, float gamma);
QTLIBC_API void QColorSpace_OperatorAssign(QColorSpace* self, QColorSpace* colorSpace);
QTLIBC_API void QColorSpace_Swap(QColorSpace* self, QColorSpace* colorSpace);
QTLIBC_API int QColorSpace_Primaries(const QColorSpace* self);
QTLIBC_API int QColorSpace_TransferFunction(const QColorSpace* self);
QTLIBC_API float QColorSpace_Gamma(const QColorSpace* self);
QTLIBC_API libqt_string QColorSpace_Description(const QColorSpace* self);
QTLIBC_API void QColorSpace_SetDescription(QColorSpace* self, libqt_string description);
QTLIBC_API void QColorSpace_SetTransferFunction(QColorSpace* self, int transferFunction);
QTLIBC_API void QColorSpace_SetTransferFunctionWithTransferFunctionTable(QColorSpace* self, libqt_list /* of uint16_t */ transferFunctionTable);
QTLIBC_API void QColorSpace_SetTransferFunctions(QColorSpace* self, libqt_list /* of uint16_t */ redTransferFunctionTable, libqt_list /* of uint16_t */ greenTransferFunctionTable, libqt_list /* of uint16_t */ blueTransferFunctionTable);
QTLIBC_API QColorSpace* QColorSpace_WithTransferFunction(const QColorSpace* self, int transferFunction);
QTLIBC_API QColorSpace* QColorSpace_WithTransferFunctionWithTransferFunctionTable(const QColorSpace* self, libqt_list /* of uint16_t */ transferFunctionTable);
QTLIBC_API QColorSpace* QColorSpace_WithTransferFunctions(const QColorSpace* self, libqt_list /* of uint16_t */ redTransferFunctionTable, libqt_list /* of uint16_t */ greenTransferFunctionTable, libqt_list /* of uint16_t */ blueTransferFunctionTable);
QTLIBC_API void QColorSpace_SetPrimaries(QColorSpace* self, int primariesId);
QTLIBC_API void QColorSpace_SetPrimaries2(QColorSpace* self, QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint);
QTLIBC_API void QColorSpace_Detach(QColorSpace* self);
QTLIBC_API bool QColorSpace_IsValid(const QColorSpace* self);
QTLIBC_API QColorSpace* QColorSpace_FromIccProfile(libqt_string iccProfile);
QTLIBC_API libqt_string QColorSpace_IccProfile(const QColorSpace* self);
QTLIBC_API QColorTransform* QColorSpace_TransformationToColorSpace(const QColorSpace* self, QColorSpace* colorspace);
QTLIBC_API QVariant* QColorSpace_ToQVariant(const QColorSpace* self);
QTLIBC_API void QColorSpace_SetTransferFunction2(QColorSpace* self, int transferFunction, float gamma);
QTLIBC_API QColorSpace* QColorSpace_WithTransferFunction2(const QColorSpace* self, int transferFunction, float gamma);
QTLIBC_API void QColorSpace_Delete(QColorSpace* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
