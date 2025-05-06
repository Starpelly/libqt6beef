#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMediaNetworkAccessControl>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QNetworkConfiguration>
#include <QObject>
#include <QObjectUserData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qmedianetworkaccesscontrol.h>
#include "libqmedianetworkaccesscontrol.h"
#include "libqmedianetworkaccesscontrol.hxx"

QMetaObject* QMediaNetworkAccessControl_MetaObject(const QMediaNetworkAccessControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaNetworkAccessControl_Metacast(QMediaNetworkAccessControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaNetworkAccessControl_Metacall(QMediaNetworkAccessControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaNetworkAccessControl_Tr(const char* s) {
    QString _ret = QMediaNetworkAccessControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaNetworkAccessControl_TrUtf8(const char* s) {
    QString _ret = QMediaNetworkAccessControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QMediaNetworkAccessControl_SetConfigurations(QMediaNetworkAccessControl* self, libqt_list /* of QNetworkConfiguration* */ configuration) {
    QList<QNetworkConfiguration> configuration_QList;
    configuration_QList.reserve(configuration.len);
    QNetworkConfiguration** configuration_arr = static_cast<QNetworkConfiguration**>(configuration.data);
    for (size_t i = 0; i < configuration.len; ++i) {
        configuration_QList.push_back(*(configuration_arr[i]));
    }
    self->setConfigurations(configuration_QList);
}

QNetworkConfiguration* QMediaNetworkAccessControl_CurrentConfiguration(const QMediaNetworkAccessControl* self) {
    return new QNetworkConfiguration(self->currentConfiguration());
}

void QMediaNetworkAccessControl_ConfigurationChanged(QMediaNetworkAccessControl* self, QNetworkConfiguration* configuration) {
    self->configurationChanged(*configuration);
}

void QMediaNetworkAccessControl_Connect_ConfigurationChanged(QMediaNetworkAccessControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaNetworkAccessControl*, QNetworkConfiguration*) = reinterpret_cast<void (*)(QMediaNetworkAccessControl*, QNetworkConfiguration*)>(slot);
    QMediaNetworkAccessControl::connect(self, &QMediaNetworkAccessControl::configurationChanged, [self, slotFunc](const QNetworkConfiguration& configuration) {
        const QNetworkConfiguration& configuration_ret = configuration;
        // Cast returned reference into pointer
        QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&configuration_ret);
        slotFunc(self, sigval1);
    });
}

libqt_string QMediaNetworkAccessControl_Tr2(const char* s, const char* c) {
    QString _ret = QMediaNetworkAccessControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaNetworkAccessControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaNetworkAccessControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaNetworkAccessControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaNetworkAccessControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaNetworkAccessControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaNetworkAccessControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaNetworkAccessControl_Event(QMediaNetworkAccessControl* self, QEvent* event) {
    return self->event(event);
}

bool QMediaNetworkAccessControl_EventFilter(QMediaNetworkAccessControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaNetworkAccessControl_Delete(QMediaNetworkAccessControl* self) {
    delete self;
}
