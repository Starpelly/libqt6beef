#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMetaDataReaderControl>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qmetadatareadercontrol.h>
#include "libqmetadatareadercontrol.h"
#include "libqmetadatareadercontrol.hxx"

QMetaObject* QMetaDataReaderControl_MetaObject(const QMetaDataReaderControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMetaDataReaderControl_Metacast(QMetaDataReaderControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMetaDataReaderControl_Metacall(QMetaDataReaderControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMetaDataReaderControl_Tr(const char* s) {
    QString _ret = QMetaDataReaderControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMetaDataReaderControl_TrUtf8(const char* s) {
    QString _ret = QMetaDataReaderControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMetaDataReaderControl_IsMetaDataAvailable(const QMetaDataReaderControl* self) {
    return self->isMetaDataAvailable();
}

QVariant* QMetaDataReaderControl_MetaData(const QMetaDataReaderControl* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QVariant(self->metaData(key_QString));
}

libqt_list /* of libqt_string */ QMetaDataReaderControl_AvailableMetaData(const QMetaDataReaderControl* self) {
    QStringList _ret = self->availableMetaData();
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

void QMetaDataReaderControl_MetaDataChanged(QMetaDataReaderControl* self) {
    self->metaDataChanged();
}

void QMetaDataReaderControl_Connect_MetaDataChanged(QMetaDataReaderControl* self, intptr_t slot) {
    void (*slotFunc)(QMetaDataReaderControl*) = reinterpret_cast<void (*)(QMetaDataReaderControl*)>(slot);
    QMetaDataReaderControl::connect(self, &QMetaDataReaderControl::metaDataChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QMetaDataReaderControl_MetaDataChanged2(QMetaDataReaderControl* self, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->metaDataChanged(key_QString, *value);
}

void QMetaDataReaderControl_Connect_MetaDataChanged2(QMetaDataReaderControl* self, intptr_t slot) {
    void (*slotFunc)(QMetaDataReaderControl*, libqt_string, QVariant*) = reinterpret_cast<void (*)(QMetaDataReaderControl*, libqt_string, QVariant*)>(slot);
    QMetaDataReaderControl::connect(self, &QMetaDataReaderControl::metaDataChanged, [self, slotFunc](const QString& key, const QVariant& value) {
        const QString key_ret = key;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray key_b = key_ret.toUtf8();
        libqt_string key_str;
        key_str.len = key_b.length();
        key_str.data = static_cast<char*>(malloc((key_str.len + 1) * sizeof(char)));
        memcpy(key_str.data, key_b.data(), key_str.len);
        key_str.data[key_str.len] = '\0';
        libqt_string sigval1 = key_str;
        const QVariant& value_ret = value;
        // Cast returned reference into pointer
        QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
        slotFunc(self, sigval1, sigval2);
    });
}

void QMetaDataReaderControl_MetaDataAvailableChanged(QMetaDataReaderControl* self, bool available) {
    self->metaDataAvailableChanged(available);
}

void QMetaDataReaderControl_Connect_MetaDataAvailableChanged(QMetaDataReaderControl* self, intptr_t slot) {
    void (*slotFunc)(QMetaDataReaderControl*, bool) = reinterpret_cast<void (*)(QMetaDataReaderControl*, bool)>(slot);
    QMetaDataReaderControl::connect(self, &QMetaDataReaderControl::metaDataAvailableChanged, [self, slotFunc](bool available) {
        bool sigval1 = available;
        slotFunc(self, sigval1);
    });
}

libqt_string QMetaDataReaderControl_Tr2(const char* s, const char* c) {
    QString _ret = QMetaDataReaderControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMetaDataReaderControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMetaDataReaderControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMetaDataReaderControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMetaDataReaderControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMetaDataReaderControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMetaDataReaderControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMetaDataReaderControl_Event(QMetaDataReaderControl* self, QEvent* event) {
    return self->event(event);
}

bool QMetaDataReaderControl_EventFilter(QMetaDataReaderControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMetaDataReaderControl_Delete(QMetaDataReaderControl* self) {
    delete self;
}
