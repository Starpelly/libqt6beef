#include <QByteArray>
#include <QByteArrayMatcher>
#include <QStaticByteArrayMatcherBase>
#include <qbytearraymatcher.h>
#include "libqbytearraymatcher.h"
#include "libqbytearraymatcher.hxx"

QByteArrayMatcher* QByteArrayMatcher_new() {
    return new QByteArrayMatcher();
}

QByteArrayMatcher* QByteArrayMatcher_new2(libqt_string pattern) {
    QByteArray pattern_QByteArray(pattern.data, pattern.len);
    return new QByteArrayMatcher(pattern_QByteArray);
}

QByteArrayMatcher* QByteArrayMatcher_new3(const char* pattern, int length) {
    return new QByteArrayMatcher(pattern, static_cast<int>(length));
}

QByteArrayMatcher* QByteArrayMatcher_new4(QByteArrayMatcher* other) {
    return new QByteArrayMatcher(*other);
}

void QByteArrayMatcher_OperatorAssign(QByteArrayMatcher* self, QByteArrayMatcher* other) {
    self->operator=(*other);
}

void QByteArrayMatcher_SetPattern(QByteArrayMatcher* self, libqt_string pattern) {
    QByteArray pattern_QByteArray(pattern.data, pattern.len);
    self->setPattern(pattern_QByteArray);
}

int QByteArrayMatcher_IndexIn(const QByteArrayMatcher* self, libqt_string ba) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return self->indexIn(ba_QByteArray);
}

int QByteArrayMatcher_IndexIn2(const QByteArrayMatcher* self, const char* str, int lenVal) {
    return self->indexIn(str, static_cast<int>(lenVal));
}

libqt_string QByteArrayMatcher_Pattern(const QByteArrayMatcher* self) {
    QByteArray _qb = self->pattern();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QByteArrayMatcher_IndexIn22(const QByteArrayMatcher* self, libqt_string ba, int from) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return self->indexIn(ba_QByteArray, static_cast<int>(from));
}

int QByteArrayMatcher_IndexIn3(const QByteArrayMatcher* self, const char* str, int lenVal, int from) {
    return self->indexIn(str, static_cast<int>(lenVal), static_cast<int>(from));
}

void QByteArrayMatcher_Delete(QByteArrayMatcher* self) {
    delete self;
}

QStaticByteArrayMatcherBase* QStaticByteArrayMatcherBase_new(QStaticByteArrayMatcherBase* other) {
    return new QStaticByteArrayMatcherBase(*other);
}

QStaticByteArrayMatcherBase* QStaticByteArrayMatcherBase_new2(QStaticByteArrayMatcherBase* other) {
    return new QStaticByteArrayMatcherBase(std::move(*other));
}

void QStaticByteArrayMatcherBase_CopyAssign(QStaticByteArrayMatcherBase* self, QStaticByteArrayMatcherBase* other) {
    *self = *other;
}

void QStaticByteArrayMatcherBase_MoveAssign(QStaticByteArrayMatcherBase* self, QStaticByteArrayMatcherBase* other) {
    *self = std::move(*other);
}

void QStaticByteArrayMatcherBase_Delete(QStaticByteArrayMatcherBase* self) {
    delete self;
}
