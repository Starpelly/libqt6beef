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

QTextDocumentFragment* QTextDocumentFragment_new();
QTextDocumentFragment* QTextDocumentFragment_new2(QTextDocument* document);
QTextDocumentFragment* QTextDocumentFragment_new3(QTextCursor* range);
QTextDocumentFragment* QTextDocumentFragment_new4(QTextDocumentFragment* rhs);
void QTextDocumentFragment_OperatorAssign(QTextDocumentFragment* self, QTextDocumentFragment* rhs);
bool QTextDocumentFragment_IsEmpty(const QTextDocumentFragment* self);
libqt_string QTextDocumentFragment_ToPlainText(const QTextDocumentFragment* self);
libqt_string QTextDocumentFragment_ToHtml(const QTextDocumentFragment* self);
QTextDocumentFragment* QTextDocumentFragment_FromPlainText(libqt_string plainText);
QTextDocumentFragment* QTextDocumentFragment_FromHtml(libqt_string html);
QTextDocumentFragment* QTextDocumentFragment_FromHtml2(libqt_string html, QTextDocument* resourceProvider);
libqt_string QTextDocumentFragment_ToHtml1(const QTextDocumentFragment* self, libqt_string encoding);
void QTextDocumentFragment_Delete(QTextDocumentFragment* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
