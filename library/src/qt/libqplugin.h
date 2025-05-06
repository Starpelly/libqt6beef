#pragma once
#ifndef SRC_QTC_LIBQPLUGIN_H
#define SRC_QTC_LIBQPLUGIN_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPluginMetaData__ElfNoteHeader)
typedef QPluginMetaData::ElfNoteHeader QPluginMetaData__ElfNoteHeader;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPluginMetaData__Header)
typedef QPluginMetaData::Header QPluginMetaData__Header;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPluginMetaData__MagicHeader)
typedef QPluginMetaData::MagicHeader QPluginMetaData__MagicHeader;
#endif
#else
typedef struct QJsonObject QJsonObject;
typedef struct QPluginMetaData QPluginMetaData;
typedef struct QPluginMetaData__ElfNoteHeader QPluginMetaData__ElfNoteHeader;
typedef struct QPluginMetaData__Header QPluginMetaData__Header;
typedef struct QPluginMetaData__MagicHeader QPluginMetaData__MagicHeader;
typedef struct QStaticPlugin QStaticPlugin;
#endif

QTLIBC_API unsigned char QPluginMetaData_ArchRequirements();
QTLIBC_API void QPluginMetaData_Delete(QPluginMetaData* self);

QTLIBC_API QStaticPlugin* QStaticPlugin_new(QStaticPlugin* other);
QTLIBC_API QStaticPlugin* QStaticPlugin_new2(QStaticPlugin* other);
QTLIBC_API void QStaticPlugin_CopyAssign(QStaticPlugin* self, QStaticPlugin* other);
QTLIBC_API void QStaticPlugin_MoveAssign(QStaticPlugin* self, QStaticPlugin* other);
QTLIBC_API QJsonObject* QStaticPlugin_MetaData(const QStaticPlugin* self);
QTLIBC_API void QStaticPlugin_Delete(QStaticPlugin* self);

QTLIBC_API QPluginMetaData__Header* QPluginMetaData__Header_new(QPluginMetaData__Header* other);
QTLIBC_API QPluginMetaData__Header* QPluginMetaData__Header_new2(QPluginMetaData__Header* other);
QTLIBC_API QPluginMetaData__Header* QPluginMetaData__Header_new3(QPluginMetaData__Header* param1);
QTLIBC_API void QPluginMetaData__Header_CopyAssign(QPluginMetaData__Header* self, QPluginMetaData__Header* other);
QTLIBC_API void QPluginMetaData__Header_MoveAssign(QPluginMetaData__Header* self, QPluginMetaData__Header* other);
QTLIBC_API void QPluginMetaData__Header_Delete(QPluginMetaData__Header* self);

QTLIBC_API QPluginMetaData__MagicHeader* QPluginMetaData__MagicHeader_new(QPluginMetaData__MagicHeader* other);
QTLIBC_API QPluginMetaData__MagicHeader* QPluginMetaData__MagicHeader_new2(QPluginMetaData__MagicHeader* other);
QTLIBC_API QPluginMetaData__MagicHeader* QPluginMetaData__MagicHeader_new3();
QTLIBC_API void QPluginMetaData__MagicHeader_CopyAssign(QPluginMetaData__MagicHeader* self, QPluginMetaData__MagicHeader* other);
QTLIBC_API void QPluginMetaData__MagicHeader_MoveAssign(QPluginMetaData__MagicHeader* self, QPluginMetaData__MagicHeader* other);
QTLIBC_API void QPluginMetaData__MagicHeader_Delete(QPluginMetaData__MagicHeader* self);

QTLIBC_API QPluginMetaData__ElfNoteHeader* QPluginMetaData__ElfNoteHeader_new(QPluginMetaData__ElfNoteHeader* other);
QTLIBC_API QPluginMetaData__ElfNoteHeader* QPluginMetaData__ElfNoteHeader_new2(QPluginMetaData__ElfNoteHeader* other);
QTLIBC_API QPluginMetaData__ElfNoteHeader* QPluginMetaData__ElfNoteHeader_new3(unsigned int payloadSize);
QTLIBC_API QPluginMetaData__ElfNoteHeader* QPluginMetaData__ElfNoteHeader_new4(QPluginMetaData__ElfNoteHeader* param1);
QTLIBC_API void QPluginMetaData__ElfNoteHeader_CopyAssign(QPluginMetaData__ElfNoteHeader* self, QPluginMetaData__ElfNoteHeader* other);
QTLIBC_API void QPluginMetaData__ElfNoteHeader_MoveAssign(QPluginMetaData__ElfNoteHeader* self, QPluginMetaData__ElfNoteHeader* other);
QTLIBC_API void QPluginMetaData__ElfNoteHeader_Delete(QPluginMetaData__ElfNoteHeader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
