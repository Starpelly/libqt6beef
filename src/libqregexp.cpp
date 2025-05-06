#include <QList>
#include <QRegExp>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qregexp.h>
#include "libqregexp.h"
#include "libqregexp.hxx"

QRegExp* QRegExp_new() {
    return new QRegExp();
}

QRegExp* QRegExp_new2(libqt_string pattern) {
    QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
    return new QRegExp(pattern_QString);
}

QRegExp* QRegExp_new3(QRegExp* rx) {
    return new QRegExp(*rx);
}

QRegExp* QRegExp_new4(libqt_string pattern, int cs) {
    QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
    return new QRegExp(pattern_QString, static_cast<Qt::CaseSensitivity>(cs));
}

QRegExp* QRegExp_new5(libqt_string pattern, int cs, int syntax) {
    QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
    return new QRegExp(pattern_QString, static_cast<Qt::CaseSensitivity>(cs), static_cast<QRegExp::PatternSyntax>(syntax));
}

void QRegExp_OperatorAssign(QRegExp* self, QRegExp* rx) {
    self->operator=(*rx);
}

void QRegExp_Swap(QRegExp* self, QRegExp* other) {
    self->swap(*other);
}

bool QRegExp_OperatorEqual(const QRegExp* self, QRegExp* rx) {
    return (*self == *rx);
}

bool QRegExp_OperatorNotEqual(const QRegExp* self, QRegExp* rx) {
    return (*self != *rx);
}

bool QRegExp_IsEmpty(const QRegExp* self) {
    return self->isEmpty();
}

bool QRegExp_IsValid(const QRegExp* self) {
    return self->isValid();
}

libqt_string QRegExp_Pattern(const QRegExp* self) {
    QString _ret = self->pattern();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QRegExp_SetPattern(QRegExp* self, libqt_string pattern) {
    QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
    self->setPattern(pattern_QString);
}

int QRegExp_CaseSensitivity(const QRegExp* self) {
    return static_cast<int>(self->caseSensitivity());
}

void QRegExp_SetCaseSensitivity(QRegExp* self, int cs) {
    self->setCaseSensitivity(static_cast<Qt::CaseSensitivity>(cs));
}

int QRegExp_PatternSyntax(const QRegExp* self) {
    return static_cast<int>(self->patternSyntax());
}

void QRegExp_SetPatternSyntax(QRegExp* self, int syntax) {
    self->setPatternSyntax(static_cast<QRegExp::PatternSyntax>(syntax));
}

bool QRegExp_IsMinimal(const QRegExp* self) {
    return self->isMinimal();
}

void QRegExp_SetMinimal(QRegExp* self, bool minimal) {
    self->setMinimal(minimal);
}

bool QRegExp_ExactMatch(const QRegExp* self, libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    return self->exactMatch(str_QString);
}

int QRegExp_IndexIn(const QRegExp* self, libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    return self->indexIn(str_QString);
}

int QRegExp_LastIndexIn(const QRegExp* self, libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    return self->lastIndexIn(str_QString);
}

int QRegExp_MatchedLength(const QRegExp* self) {
    return self->matchedLength();
}

int QRegExp_CaptureCount(const QRegExp* self) {
    return self->captureCount();
}

libqt_list /* of libqt_string */ QRegExp_CapturedTexts(const QRegExp* self) {
    QStringList _ret = self->capturedTexts();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QString _lv_ret = _ret[i];
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _lv_b = _lv_ret.toUtf8();
        libqt_string _lv_str;
        _lv_str.len = _lv_b.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of libqt_string */ QRegExp_CapturedTexts2(QRegExp* self) {
    QStringList _ret = self->capturedTexts();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QString _lv_ret = _ret[i];
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _lv_b = _lv_ret.toUtf8();
        libqt_string _lv_str;
        _lv_str.len = _lv_b.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QRegExp_Cap(const QRegExp* self) {
    QString _ret = self->cap();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRegExp_Cap2(QRegExp* self) {
    QString _ret = self->cap();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QRegExp_Pos(const QRegExp* self) {
    return self->pos();
}

int QRegExp_Pos2(QRegExp* self) {
    return self->pos();
}

libqt_string QRegExp_ErrorString(const QRegExp* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRegExp_ErrorString2(QRegExp* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRegExp_Escape(libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QString _ret = QRegExp::escape(str_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QRegExp_IndexIn2(const QRegExp* self, libqt_string str, int offset) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    return self->indexIn(str_QString, static_cast<int>(offset));
}

int QRegExp_IndexIn3(const QRegExp* self, libqt_string str, int offset, int caretMode) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    return self->indexIn(str_QString, static_cast<int>(offset), static_cast<QRegExp::CaretMode>(caretMode));
}

int QRegExp_LastIndexIn2(const QRegExp* self, libqt_string str, int offset) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    return self->lastIndexIn(str_QString, static_cast<int>(offset));
}

int QRegExp_LastIndexIn3(const QRegExp* self, libqt_string str, int offset, int caretMode) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    return self->lastIndexIn(str_QString, static_cast<int>(offset), static_cast<QRegExp::CaretMode>(caretMode));
}

libqt_string QRegExp_Cap1(const QRegExp* self, int nth) {
    QString _ret = self->cap(static_cast<int>(nth));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRegExp_Cap1WithNth(QRegExp* self, int nth) {
    QString _ret = self->cap(static_cast<int>(nth));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QRegExp_Pos1(const QRegExp* self, int nth) {
    return self->pos(static_cast<int>(nth));
}

int QRegExp_Pos1WithNth(QRegExp* self, int nth) {
    return self->pos(static_cast<int>(nth));
}

void QRegExp_Delete(QRegExp* self) {
    delete self;
}
