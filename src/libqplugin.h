#pragma once
#ifndef SRCC_LIBQPLUGIN_H
#define SRCC_LIBQPLUGIN_H

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
typedef struct QJsonObject QJsonObject;
typedef struct QStaticPlugin QStaticPlugin;
#endif

QJsonObject* QStaticPlugin_MetaData(const QStaticPlugin* self);
void QStaticPlugin_Delete(QStaticPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
