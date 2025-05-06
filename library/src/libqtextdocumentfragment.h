#pragma once
#ifndef SRCC_LIBQTEXTDOCUMENTFRAGMENT_H
#define SRCC_LIBQTEXTDOCUMENTFRAGMENT_H

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
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextDocumentFragment QTextDocumentFragment;
#endif

QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_new();
QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_new2(QTextDocument* document);
QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_new3(QTextCursor* range);
QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_new4(QTextDocumentFragment* rhs);
QTLIBC_API void QTextDocumentFragment_OperatorAssign(QTextDocumentFragment* self, QTextDocumentFragment* rhs);
QTLIBC_API bool QTextDocumentFragment_IsEmpty(const QTextDocumentFragment* self);
QTLIBC_API libqt_string QTextDocumentFragment_ToPlainText(const QTextDocumentFragment* self);
QTLIBC_API libqt_string QTextDocumentFragment_ToRawText(const QTextDocumentFragment* self);
QTLIBC_API libqt_string QTextDocumentFragment_ToHtml(const QTextDocumentFragment* self);
QTLIBC_API libqt_string QTextDocumentFragment_ToMarkdown(const QTextDocumentFragment* self);
QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_FromPlainText(libqt_string plainText);
QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_FromHtml(libqt_string html);
QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_FromMarkdown(libqt_string markdown);
QTLIBC_API libqt_string QTextDocumentFragment_ToMarkdown1(const QTextDocumentFragment* self, int features);
QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_FromHtml2(libqt_string html, QTextDocument* resourceProvider);
QTLIBC_API QTextDocumentFragment* QTextDocumentFragment_FromMarkdown2(libqt_string markdown, int features);
QTLIBC_API void QTextDocumentFragment_Delete(QTextDocumentFragment* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
