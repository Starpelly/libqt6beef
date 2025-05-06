#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMetaDataWriterControl>
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
#include <qmetadatawritercontrol.h>
#include "libqmetadatawritercontrol.h"
#include "libqmetadatawritercontrol.hxx"

QMetaObject* QMetaDataWriterControl_MetaObject(const QMetaDataWriterControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMetaDataWriterControl_Metacast(QMetaDataWriterControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMetaDataWriterControl_Metacall(QMetaDataWriterControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMetaDataWriterControl_Tr(const char* s) {
    QString _ret = QMetaDataWriterControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMetaDataWriterControl_TrUtf8(const char* s) {
    QString _ret = QMetaDataWriterControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMetaDataWriterControl_IsWritable(const QMetaDataWriterControl* self) {
    return self->isWritable();
}

bool QMetaDataWriterControl_IsMetaDataAvailable(const QMetaDataWriterControl* self) {
    return self->isMetaDataAvailable();
}

QVariant* QMetaDataWriterControl_MetaData(const QMetaDataWriterControl* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QVariant(self->metaData(key_QString));
}

void QMetaDataWriterControl_SetMetaData(QMetaDataWriterControl* self, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->setMetaData(key_QString, *value);
}

libqt_list /* of libqt_string */ QMetaDataWriterControl_AvailableMetaData(const QMetaDataWriterControl* self) {
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

void QMetaDataWriterControl_MetaDataChanged(QMetaDataWriterControl* self) {
    self->metaDataChanged();
}

void QMetaDataWriterControl_Connect_MetaDataChanged(QMetaDataWriterControl* self, intptr_t slot) {
    void (*slotFunc)(QMetaDataWriterControl*) = reinterpret_cast<void (*)(QMetaDataWriterControl*)>(slot);
    QMetaDataWriterControl::connect(self, &QMetaDataWriterControl::metaDataChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QMetaDataWriterControl_MetaDataChanged2(QMetaDataWriterControl* self, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->metaDataChanged(key_QString, *value);
}

void QMetaDataWriterControl_Connect_MetaDataChanged2(QMetaDataWriterControl* self, intptr_t slot) {
    void (*slotFunc)(QMetaDataWriterControl*, libqt_string, QVariant*) = reinterpret_cast<void (*)(QMetaDataWriterControl*, libqt_string, QVariant*)>(slot);
    QMetaDataWriterControl::connect(self, &QMetaDataWriterControl::metaDataChanged, [self, slotFunc](const QString& key, const QVariant& value) {
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

void QMetaDataWriterControl_WritableChanged(QMetaDataWriterControl* self, bool writable) {
    self->writableChanged(writable);
}

void QMetaDataWriterControl_Connect_WritableChanged(QMetaDataWriterControl* self, intptr_t slot) {
    void (*slotFunc)(QMetaDataWriterControl*, bool) = reinterpret_cast<void (*)(QMetaDataWriterControl*, bool)>(slot);
    QMetaDataWriterControl::connect(self, &QMetaDataWriterControl::writableChanged, [self, slotFunc](bool writable) {
        bool sigval1 = writable;
        slotFunc(self, sigval1);
    });
}

void QMetaDataWriterControl_MetaDataAvailableChanged(QMetaDataWriterControl* self, bool available) {
    self->metaDataAvailableChanged(available);
}

void QMetaDataWriterControl_Connect_MetaDataAvailableChanged(QMetaDataWriterControl* self, intptr_t slot) {
    void (*slotFunc)(QMetaDataWriterControl*, bool) = reinterpret_cast<void (*)(QMetaDataWriterControl*, bool)>(slot);
    QMetaDataWriterControl::connect(self, &QMetaDataWriterControl::metaDataAvailableChanged, [self, slotFunc](bool available) {
        bool sigval1 = available;
        slotFunc(self, sigval1);
    });
}

libqt_string QMetaDataWriterControl_Tr2(const char* s, const char* c) {
    QString _ret = QMetaDataWriterControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMetaDataWriterControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMetaDataWriterControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMetaDataWriterControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMetaDataWriterControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMetaDataWriterControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMetaDataWriterControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMetaDataWriterControl_Event(QMetaDataWriterControl* self, QEvent* event) {
    return self->event(event);
}

bool QMetaDataWriterControl_EventFilter(QMetaDataWriterControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMetaDataWriterControl_Delete(QMetaDataWriterControl* self) {
    delete self;
}
