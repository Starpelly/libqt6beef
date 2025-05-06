#pragma once
#ifndef SRCC_LIBQGENERICPLUGINFACTORY_H
#define SRCC_LIBQGENERICPLUGINFACTORY_H

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
typedef struct QGenericPluginFactory QGenericPluginFactory;
typedef struct QObject QObject;
#endif

QTLIBC_API QGenericPluginFactory* QGenericPluginFactory_new(QGenericPluginFactory* other);
QTLIBC_API QGenericPluginFactory* QGenericPluginFactory_new2(QGenericPluginFactory* other);
QTLIBC_API void QGenericPluginFactory_CopyAssign(QGenericPluginFactory* self, QGenericPluginFactory* other);
QTLIBC_API void QGenericPluginFactory_MoveAssign(QGenericPluginFactory* self, QGenericPluginFactory* other);
QTLIBC_API libqt_list /* of libqt_string */ QGenericPluginFactory_Keys();
QTLIBC_API QObject* QGenericPluginFactory_Create(libqt_string param1, libqt_string param2);
QTLIBC_API void QGenericPluginFactory_Delete(QGenericPluginFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
