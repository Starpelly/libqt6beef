#include <QByteArray>
#include <QCryptographicHash>
#include <QIODevice>
#include <qcryptographichash.h>
#include "libqcryptographichash.h"
#include "libqcryptographichash.hxx"

QCryptographicHash* QCryptographicHash_new(int method) {
    return new QCryptographicHash(static_cast<QCryptographicHash::Algorithm>(method));
}

void QCryptographicHash_Reset(QCryptographicHash* self) {
    self->reset();
}

void QCryptographicHash_AddData(QCryptographicHash* self, const char* data, int length) {
    self->addData(data, static_cast<int>(length));
}

void QCryptographicHash_AddDataWithData(QCryptographicHash* self, libqt_string data) {
    QByteArray data_QByteArray(data.data, data.len);
    self->addData(data_QByteArray);
}

bool QCryptographicHash_AddDataWithDevice(QCryptographicHash* self, QIODevice* device) {
    return self->addData(device);
}

libqt_string QCryptographicHash_Result(const QCryptographicHash* self) {
    QByteArray _qb = self->result();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCryptographicHash_Hash(libqt_string data, int method) {
    QByteArray data_QByteArray(data.data, data.len);
    QByteArray _qb = QCryptographicHash::hash(data_QByteArray, static_cast<QCryptographicHash::Algorithm>(method));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QCryptographicHash_HashLength(int method) {
    return QCryptographicHash::hashLength(static_cast<QCryptographicHash::Algorithm>(method));
}

void QCryptographicHash_Delete(QCryptographicHash* self) {
    delete self;
}
