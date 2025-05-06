#pragma once
#ifndef SRC_QTC_LIBQTEXTDOCUMENTWRITER_H
#define SRC_QTC_LIBQTEXTDOCUMENTWRITER_H

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
typedef struct QIODevice QIODevice;
typedef struct QTextDocument QTextDocument;
typedef struct QTextDocumentFragment QTextDocumentFragment;
typedef struct QTextDocumentWriter QTextDocumentWriter;
#endif

QTLIBC_API QTextDocumentWriter* QTextDocumentWriter_new();
QTLIBC_API QTextDocumentWriter* QTextDocumentWriter_new2(QIODevice* device, libqt_string format);
QTLIBC_API QTextDocumentWriter* QTextDocumentWriter_new3(libqt_string fileName);
QTLIBC_API QTextDocumentWriter* QTextDocumentWriter_new4(libqt_string fileName, libqt_string format);
QTLIBC_API void QTextDocumentWriter_SetFormat(QTextDocumentWriter* self, libqt_string format);
QTLIBC_API libqt_string QTextDocumentWriter_Format(const QTextDocumentWriter* self);
QTLIBC_API void QTextDocumentWriter_SetDevice(QTextDocumentWriter* self, QIODevice* device);
QTLIBC_API QIODevice* QTextDocumentWriter_Device(const QTextDocumentWriter* self);
QTLIBC_API void QTextDocumentWriter_SetFileName(QTextDocumentWriter* self, libqt_string fileName);
QTLIBC_API libqt_string QTextDocumentWriter_FileName(const QTextDocumentWriter* self);
QTLIBC_API bool QTextDocumentWriter_Write(QTextDocumentWriter* self, QTextDocument* document);
QTLIBC_API bool QTextDocumentWriter_WriteWithFragment(QTextDocumentWriter* self, QTextDocumentFragment* fragment);
QTLIBC_API libqt_list /* of libqt_string */ QTextDocumentWriter_SupportedDocumentFormats();
QTLIBC_API void QTextDocumentWriter_Delete(QTextDocumentWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
