#include <QByteArray>
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonParseError>
#include <QJsonValue>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qjsondocument.h>
#include "libqjsondocument.h"
#include "libqjsondocument.hxx"

libqt_string QJsonParseError_ErrorString(const QJsonParseError* self) {
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

void QJsonParseError_Delete(QJsonParseError* self) {
    delete self;
}

QJsonDocument* QJsonDocument_new() {
    return new QJsonDocument();
}

QJsonDocument* QJsonDocument_new2(QJsonObject* object) {
    return new QJsonDocument(*object);
}

QJsonDocument* QJsonDocument_new3(QJsonArray* array) {
    return new QJsonDocument(*array);
}

QJsonDocument* QJsonDocument_new4(QJsonDocument* other) {
    return new QJsonDocument(*other);
}

void QJsonDocument_OperatorAssign(QJsonDocument* self, QJsonDocument* other) {
    self->operator=(*other);
}

void QJsonDocument_Swap(QJsonDocument* self, QJsonDocument* other) {
    self->swap(*other);
}

QJsonDocument* QJsonDocument_FromRawData(const char* data, int size) {
    return new QJsonDocument(QJsonDocument::fromRawData(data, static_cast<int>(size)));
}

const char* QJsonDocument_RawData(const QJsonDocument* self, int* size) {
    return (const char*)self->rawData(static_cast<int*>(size));
}

QJsonDocument* QJsonDocument_FromBinaryData(libqt_string data) {
    QByteArray data_QByteArray(data.data, data.len);
    return new QJsonDocument(QJsonDocument::fromBinaryData(data_QByteArray));
}

libqt_string QJsonDocument_ToBinaryData(const QJsonDocument* self) {
    QByteArray _qb = self->toBinaryData();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QJsonDocument* QJsonDocument_FromVariant(QVariant* variant) {
    return new QJsonDocument(QJsonDocument::fromVariant(*variant));
}

QVariant* QJsonDocument_ToVariant(const QJsonDocument* self) {
    return new QVariant(self->toVariant());
}

QJsonDocument* QJsonDocument_FromJson(libqt_string json) {
    QByteArray json_QByteArray(json.data, json.len);
    return new QJsonDocument(QJsonDocument::fromJson(json_QByteArray));
}

libqt_string QJsonDocument_ToJson(const QJsonDocument* self) {
    QByteArray _qb = self->toJson();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QJsonDocument_ToJsonWithFormat(const QJsonDocument* self, int format) {
    QByteArray _qb = self->toJson(static_cast<QJsonDocument::JsonFormat>(format));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QJsonDocument_IsEmpty(const QJsonDocument* self) {
    return self->isEmpty();
}

bool QJsonDocument_IsArray(const QJsonDocument* self) {
    return self->isArray();
}

bool QJsonDocument_IsObject(const QJsonDocument* self) {
    return self->isObject();
}

QJsonObject* QJsonDocument_Object(const QJsonDocument* self) {
    return new QJsonObject(self->object());
}

QJsonArray* QJsonDocument_Array(const QJsonDocument* self) {
    return new QJsonArray(self->array());
}

void QJsonDocument_SetObject(QJsonDocument* self, QJsonObject* object) {
    self->setObject(*object);
}

void QJsonDocument_SetArray(QJsonDocument* self, QJsonArray* array) {
    self->setArray(*array);
}

QJsonValue* QJsonDocument_OperatorSubscript(const QJsonDocument* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QJsonValue(self->operator[](key_QString));
}

QJsonValue* QJsonDocument_OperatorSubscriptWithInt(const QJsonDocument* self, int i) {
    return new QJsonValue(self->operator[](static_cast<int>(i)));
}

bool QJsonDocument_OperatorEqual(const QJsonDocument* self, QJsonDocument* other) {
    return (*self == *other);
}

bool QJsonDocument_OperatorNotEqual(const QJsonDocument* self, QJsonDocument* other) {
    return (*self != *other);
}

bool QJsonDocument_IsNull(const QJsonDocument* self) {
    return self->isNull();
}

QJsonDocument* QJsonDocument_FromRawData3(const char* data, int size, int validation) {
    return new QJsonDocument(QJsonDocument::fromRawData(data, static_cast<int>(size), static_cast<QJsonDocument::DataValidation>(validation)));
}

QJsonDocument* QJsonDocument_FromBinaryData2(libqt_string data, int validation) {
    QByteArray data_QByteArray(data.data, data.len);
    return new QJsonDocument(QJsonDocument::fromBinaryData(data_QByteArray, static_cast<QJsonDocument::DataValidation>(validation)));
}

QJsonDocument* QJsonDocument_FromJson2(libqt_string json, QJsonParseError* errorVal) {
    QByteArray json_QByteArray(json.data, json.len);
    return new QJsonDocument(QJsonDocument::fromJson(json_QByteArray, errorVal));
}

void QJsonDocument_Delete(QJsonDocument* self) {
    delete self;
}
