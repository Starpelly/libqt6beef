#pragma once
#ifndef SRC_QTC_LIBQVARIANT_H
#define SRC_QTC_LIBQVARIANT_H

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
typedef struct QBitArray QBitArray;
typedef struct QChar QChar;
typedef struct QDataStream QDataStream;
typedef struct QDate QDate;
typedef struct QDateTime QDateTime;
typedef struct QEasingCurve QEasingCurve;
typedef struct QJsonArray QJsonArray;
typedef struct QJsonDocument QJsonDocument;
typedef struct QJsonObject QJsonObject;
typedef struct QJsonValue QJsonValue;
typedef struct QLine QLine;
typedef struct QLineF QLineF;
typedef struct QLocale QLocale;
typedef struct QMetaType QMetaType;
typedef struct QModelIndex QModelIndex;
typedef struct QPartialOrdering QPartialOrdering;
typedef struct QPersistentModelIndex QPersistentModelIndex;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegularExpression QRegularExpression;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTime QTime;
typedef struct QUrl QUrl;
typedef struct QUuid QUuid;
typedef struct QVariant QVariant;
typedef struct QVariantConstPointer QVariantConstPointer;
#endif

#ifdef __cplusplus
typedef QVariant::DataPtr DataPtr; // C++ QFlags
typedef QVariant::Type Type;       // C++ enum
#else
typedef unsigned char Type; // C ABI enum
#endif

QTLIBC_API QVariant* QVariant_new();
QTLIBC_API QVariant* QVariant_new2(QMetaType* typeVal);
QTLIBC_API QVariant* QVariant_new3(QVariant* other);
QTLIBC_API QVariant* QVariant_new4(int i);
QTLIBC_API QVariant* QVariant_new5(unsigned int ui);
QTLIBC_API QVariant* QVariant_new6(long long ll);
QTLIBC_API QVariant* QVariant_new7(unsigned long long ull);
QTLIBC_API QVariant* QVariant_new8(bool b);
QTLIBC_API QVariant* QVariant_new9(double d);
QTLIBC_API QVariant* QVariant_new10(float f);
QTLIBC_API QVariant* QVariant_new11(const char* str);
QTLIBC_API QVariant* QVariant_new12(libqt_string bytearray);
QTLIBC_API QVariant* QVariant_new13(QBitArray* bitarray);
QTLIBC_API QVariant* QVariant_new14(libqt_string stringVal);
QTLIBC_API QVariant* QVariant_new15(libqt_list /* of libqt_string */ stringlist);
QTLIBC_API QVariant* QVariant_new16(QChar* qchar);
QTLIBC_API QVariant* QVariant_new17(QDate* date);
QTLIBC_API QVariant* QVariant_new18(QTime* time);
QTLIBC_API QVariant* QVariant_new19(QDateTime* datetime);
QTLIBC_API QVariant* QVariant_new20(libqt_map /* of libqt_string to QVariant* */ mapVal);
QTLIBC_API QVariant* QVariant_new21(libqt_map /* of libqt_string to QVariant* */ hash);
QTLIBC_API QVariant* QVariant_new22(QSize* size);
QTLIBC_API QVariant* QVariant_new23(QSizeF* size);
QTLIBC_API QVariant* QVariant_new24(QPoint* pt);
QTLIBC_API QVariant* QVariant_new25(QPointF* pt);
QTLIBC_API QVariant* QVariant_new26(QLine* line);
QTLIBC_API QVariant* QVariant_new27(QLineF* line);
QTLIBC_API QVariant* QVariant_new28(QRect* rect);
QTLIBC_API QVariant* QVariant_new29(QRectF* rect);
QTLIBC_API QVariant* QVariant_new30(QLocale* locale);
QTLIBC_API QVariant* QVariant_new31(QRegularExpression* re);
QTLIBC_API QVariant* QVariant_new32(QEasingCurve* easing);
QTLIBC_API QVariant* QVariant_new33(QUuid* uuid);
QTLIBC_API QVariant* QVariant_new34(QUrl* url);
QTLIBC_API QVariant* QVariant_new35(QJsonValue* jsonValue);
QTLIBC_API QVariant* QVariant_new36(QJsonObject* jsonObject);
QTLIBC_API QVariant* QVariant_new37(QJsonArray* jsonArray);
QTLIBC_API QVariant* QVariant_new38(QJsonDocument* jsonDocument);
QTLIBC_API QVariant* QVariant_new39(QModelIndex* modelIndex);
QTLIBC_API QVariant* QVariant_new40(QPersistentModelIndex* modelIndex);
QTLIBC_API QVariant* QVariant_new41(int typeVal);
QTLIBC_API QVariant* QVariant_new42(QMetaType* typeVal, const void* copyVal);
QTLIBC_API void QVariant_OperatorAssign(QVariant* self, QVariant* other);
QTLIBC_API void QVariant_Swap(QVariant* self, QVariant* other);
QTLIBC_API int QVariant_UserType(const QVariant* self);
QTLIBC_API int QVariant_TypeId(const QVariant* self);
QTLIBC_API const char* QVariant_TypeName(const QVariant* self);
QTLIBC_API QMetaType* QVariant_MetaType(const QVariant* self);
QTLIBC_API bool QVariant_CanConvert(const QVariant* self, QMetaType* targetType);
QTLIBC_API bool QVariant_Convert(QVariant* self, QMetaType* typeVal);
QTLIBC_API bool QVariant_CanView(const QVariant* self, QMetaType* targetType);
QTLIBC_API bool QVariant_CanConvertWithTargetTypeId(const QVariant* self, int targetTypeId);
QTLIBC_API bool QVariant_ConvertWithTargetTypeId(QVariant* self, int targetTypeId);
QTLIBC_API bool QVariant_IsValid(const QVariant* self);
QTLIBC_API bool QVariant_IsNull(const QVariant* self);
QTLIBC_API void QVariant_Clear(QVariant* self);
QTLIBC_API void QVariant_Detach(QVariant* self);
QTLIBC_API bool QVariant_IsDetached(const QVariant* self);
QTLIBC_API int QVariant_ToInt(const QVariant* self);
QTLIBC_API unsigned int QVariant_ToUInt(const QVariant* self);
QTLIBC_API long long QVariant_ToLongLong(const QVariant* self);
QTLIBC_API unsigned long long QVariant_ToULongLong(const QVariant* self);
QTLIBC_API bool QVariant_ToBool(const QVariant* self);
QTLIBC_API double QVariant_ToDouble(const QVariant* self);
QTLIBC_API float QVariant_ToFloat(const QVariant* self);
QTLIBC_API double QVariant_ToReal(const QVariant* self);
QTLIBC_API libqt_string QVariant_ToByteArray(const QVariant* self);
QTLIBC_API QBitArray* QVariant_ToBitArray(const QVariant* self);
QTLIBC_API libqt_string QVariant_ToString(const QVariant* self);
QTLIBC_API libqt_list /* of libqt_string */ QVariant_ToStringList(const QVariant* self);
QTLIBC_API QChar* QVariant_ToChar(const QVariant* self);
QTLIBC_API QDate* QVariant_ToDate(const QVariant* self);
QTLIBC_API QTime* QVariant_ToTime(const QVariant* self);
QTLIBC_API QDateTime* QVariant_ToDateTime(const QVariant* self);
QTLIBC_API libqt_map /* of libqt_string to QVariant* */ QVariant_ToMap(const QVariant* self);
QTLIBC_API libqt_map /* of libqt_string to QVariant* */ QVariant_ToHash(const QVariant* self);
QTLIBC_API QPoint* QVariant_ToPoint(const QVariant* self);
QTLIBC_API QPointF* QVariant_ToPointF(const QVariant* self);
QTLIBC_API QRect* QVariant_ToRect(const QVariant* self);
QTLIBC_API QSize* QVariant_ToSize(const QVariant* self);
QTLIBC_API QSizeF* QVariant_ToSizeF(const QVariant* self);
QTLIBC_API QLine* QVariant_ToLine(const QVariant* self);
QTLIBC_API QLineF* QVariant_ToLineF(const QVariant* self);
QTLIBC_API QRectF* QVariant_ToRectF(const QVariant* self);
QTLIBC_API QLocale* QVariant_ToLocale(const QVariant* self);
QTLIBC_API QRegularExpression* QVariant_ToRegularExpression(const QVariant* self);
QTLIBC_API QEasingCurve* QVariant_ToEasingCurve(const QVariant* self);
QTLIBC_API QUuid* QVariant_ToUuid(const QVariant* self);
QTLIBC_API QUrl* QVariant_ToUrl(const QVariant* self);
QTLIBC_API QJsonValue* QVariant_ToJsonValue(const QVariant* self);
QTLIBC_API QJsonObject* QVariant_ToJsonObject(const QVariant* self);
QTLIBC_API QJsonArray* QVariant_ToJsonArray(const QVariant* self);
QTLIBC_API QJsonDocument* QVariant_ToJsonDocument(const QVariant* self);
QTLIBC_API QModelIndex* QVariant_ToModelIndex(const QVariant* self);
QTLIBC_API QPersistentModelIndex* QVariant_ToPersistentModelIndex(const QVariant* self);
QTLIBC_API void QVariant_Load(QVariant* self, QDataStream* ds);
QTLIBC_API void QVariant_Save(const QVariant* self, QDataStream* ds);
QTLIBC_API int QVariant_Type(const QVariant* self);
QTLIBC_API const char* QVariant_TypeToName(int typeId);
QTLIBC_API int QVariant_NameToType(const char* name);
QTLIBC_API void* QVariant_Data(QVariant* self);
QTLIBC_API const void* QVariant_ConstData(const QVariant* self);
QTLIBC_API const void* QVariant_Data2(const QVariant* self);
QTLIBC_API void QVariant_SetValue(QVariant* self, QVariant* avalue);
QTLIBC_API QPartialOrdering* QVariant_Compare(QVariant* lhs, QVariant* rhs);
QTLIBC_API int QVariant_ToInt1(const QVariant* self, bool* ok);
QTLIBC_API unsigned int QVariant_ToUInt1(const QVariant* self, bool* ok);
QTLIBC_API long long QVariant_ToLongLong1(const QVariant* self, bool* ok);
QTLIBC_API unsigned long long QVariant_ToULongLong1(const QVariant* self, bool* ok);
QTLIBC_API double QVariant_ToDouble1(const QVariant* self, bool* ok);
QTLIBC_API float QVariant_ToFloat1(const QVariant* self, bool* ok);
QTLIBC_API double QVariant_ToReal1(const QVariant* self, bool* ok);
QTLIBC_API void QVariant_Delete(QVariant* self);

QTLIBC_API QVariantConstPointer* QVariantConstPointer_new(QVariant* variant);
QTLIBC_API QVariantConstPointer* QVariantConstPointer_new2(QVariantConstPointer* param1);
QTLIBC_API QVariant* QVariantConstPointer_OperatorMultiply(const QVariantConstPointer* self);
QTLIBC_API QVariant* QVariantConstPointer_OperatorMinusGreater(const QVariantConstPointer* self);
QTLIBC_API void QVariantConstPointer_OperatorAssign(QVariantConstPointer* self, QVariantConstPointer* param1);
QTLIBC_API void QVariantConstPointer_Delete(QVariantConstPointer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
