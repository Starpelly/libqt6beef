#include <QByteArray>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextCursor>
#include <QTextDocument>
#include <QTextDocumentFragment>
#include <qtextdocumentfragment.h>
#include "libqtextdocumentfragment.h"
#include "libqtextdocumentfragment.hxx"

QTextDocumentFragment* QTextDocumentFragment_new() {
    return new QTextDocumentFragment();
}

QTextDocumentFragment* QTextDocumentFragment_new2(QTextDocument* document) {
    return new QTextDocumentFragment(document);
}

QTextDocumentFragment* QTextDocumentFragment_new3(QTextCursor* range) {
    return new QTextDocumentFragment(*range);
}

QTextDocumentFragment* QTextDocumentFragment_new4(QTextDocumentFragment* rhs) {
    return new QTextDocumentFragment(*rhs);
}

void QTextDocumentFragment_OperatorAssign(QTextDocumentFragment* self, QTextDocumentFragment* rhs) {
    self->operator=(*rhs);
}

bool QTextDocumentFragment_IsEmpty(const QTextDocumentFragment* self) {
    return self->isEmpty();
}

libqt_string QTextDocumentFragment_ToPlainText(const QTextDocumentFragment* self) {
    QString _ret = self->toPlainText();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QTextDocumentFragment_ToHtml(const QTextDocumentFragment* self) {
    QString _ret = self->toHtml();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QTextDocumentFragment* QTextDocumentFragment_FromPlainText(libqt_string plainText) {
    QString plainText_QString = QString::fromUtf8(plainText.data, plainText.len);
    return new QTextDocumentFragment(QTextDocumentFragment::fromPlainText(plainText_QString));
}

QTextDocumentFragment* QTextDocumentFragment_FromHtml(libqt_string html) {
    QString html_QString = QString::fromUtf8(html.data, html.len);
    return new QTextDocumentFragment(QTextDocumentFragment::fromHtml(html_QString));
}

QTextDocumentFragment* QTextDocumentFragment_FromHtml2(libqt_string html, QTextDocument* resourceProvider) {
    QString html_QString = QString::fromUtf8(html.data, html.len);
    return new QTextDocumentFragment(QTextDocumentFragment::fromHtml(html_QString, resourceProvider));
}

libqt_string QTextDocumentFragment_ToHtml1(const QTextDocumentFragment* self, libqt_string encoding) {
    QByteArray encoding_QByteArray(encoding.data, encoding.len);
    QString _ret = self->toHtml(encoding_QByteArray);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QTextDocumentFragment_Delete(QTextDocumentFragment* self) {
    delete self;
}
