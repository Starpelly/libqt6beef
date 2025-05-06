#pragma once
#ifndef SRC_NETWORKC_LIBQNETWORKCONFIGURATION_H
#define SRC_NETWORKC_LIBQNETWORKCONFIGURATION_H

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
typedef struct QNetworkConfiguration QNetworkConfiguration;
#endif

#ifdef __cplusplus
typedef QNetworkConfiguration::BearerType BearerType; // C++ enum
typedef QNetworkConfiguration::Purpose Purpose;       // C++ enum
typedef QNetworkConfiguration::StateFlag StateFlag;   // C++ enum
typedef QNetworkConfiguration::StateFlags StateFlags; // C++ QFlags
typedef QNetworkConfiguration::Type Type;             // C++ enum
#else
typedef int BearerType;     // C ABI enum
typedef int Purpose;        // C ABI enum
typedef int StateFlag;      // C ABI enum
typedef int StateFlags;     // C ABI QFlags
typedef unsigned char Type; // C ABI enum
#endif

QNetworkConfiguration* QNetworkConfiguration_new();
QNetworkConfiguration* QNetworkConfiguration_new2(QNetworkConfiguration* other);
void QNetworkConfiguration_OperatorAssign(QNetworkConfiguration* self, QNetworkConfiguration* other);
void QNetworkConfiguration_Swap(QNetworkConfiguration* self, QNetworkConfiguration* other);
bool QNetworkConfiguration_OperatorEqual(const QNetworkConfiguration* self, QNetworkConfiguration* other);
bool QNetworkConfiguration_OperatorNotEqual(const QNetworkConfiguration* self, QNetworkConfiguration* other);
int QNetworkConfiguration_State(const QNetworkConfiguration* self);
int QNetworkConfiguration_Type(const QNetworkConfiguration* self);
int QNetworkConfiguration_Purpose(const QNetworkConfiguration* self);
int QNetworkConfiguration_BearerType(const QNetworkConfiguration* self);
int QNetworkConfiguration_BearerTypeFamily(const QNetworkConfiguration* self);
libqt_string QNetworkConfiguration_BearerTypeName(const QNetworkConfiguration* self);
libqt_string QNetworkConfiguration_Identifier(const QNetworkConfiguration* self);
bool QNetworkConfiguration_IsRoamingAvailable(const QNetworkConfiguration* self);
libqt_list /* of QNetworkConfiguration* */ QNetworkConfiguration_Children(const QNetworkConfiguration* self);
libqt_string QNetworkConfiguration_Name(const QNetworkConfiguration* self);
bool QNetworkConfiguration_IsValid(const QNetworkConfiguration* self);
int QNetworkConfiguration_ConnectTimeout(const QNetworkConfiguration* self);
bool QNetworkConfiguration_SetConnectTimeout(QNetworkConfiguration* self, int timeout);
void QNetworkConfiguration_Delete(QNetworkConfiguration* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
