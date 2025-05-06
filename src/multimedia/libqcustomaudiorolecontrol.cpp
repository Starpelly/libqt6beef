#include <QByteArray>
#include <QChildEvent>
#include <QCustomAudioRoleControl>
#include <QEvent>
#include <QList>
#include <QMediaControl>
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
#include <qcustomaudiorolecontrol.h>
#include "libqcustomaudiorolecontrol.h"
#include "libqcustomaudiorolecontrol.hxx"

QMetaObject* QCustomAudioRoleControl_MetaObject(const QCustomAudioRoleControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCustomAudioRoleControl_Metacast(QCustomAudioRoleControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCustomAudioRoleControl_Metacall(QCustomAudioRoleControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCustomAudioRoleControl_Tr(const char* s) {
    QString _ret = QCustomAudioRoleControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCustomAudioRoleControl_TrUtf8(const char* s) {
    QString _ret = QCustomAudioRoleControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCustomAudioRoleControl_CustomAudioRole(const QCustomAudioRoleControl* self) {
    QString _ret = self->customAudioRole();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QCustomAudioRoleControl_SetCustomAudioRole(QCustomAudioRoleControl* self, libqt_string role) {
    QString role_QString = QString::fromUtf8(role.data, role.len);
    self->setCustomAudioRole(role_QString);
}

libqt_list /* of libqt_string */ QCustomAudioRoleControl_SupportedCustomAudioRoles(const QCustomAudioRoleControl* self) {
    QStringList _ret = self->supportedCustomAudioRoles();
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

void QCustomAudioRoleControl_CustomAudioRoleChanged(QCustomAudioRoleControl* self, libqt_string role) {
    QString role_QString = QString::fromUtf8(role.data, role.len);
    self->customAudioRoleChanged(role_QString);
}

void QCustomAudioRoleControl_Connect_CustomAudioRoleChanged(QCustomAudioRoleControl* self, intptr_t slot) {
    void (*slotFunc)(QCustomAudioRoleControl*, libqt_string) = reinterpret_cast<void (*)(QCustomAudioRoleControl*, libqt_string)>(slot);
    QCustomAudioRoleControl::connect(self, &QCustomAudioRoleControl::customAudioRoleChanged, [self, slotFunc](const QString& role) {
        const QString role_ret = role;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray role_b = role_ret.toUtf8();
        libqt_string role_str;
        role_str.len = role_b.length();
        role_str.data = static_cast<char*>(malloc((role_str.len + 1) * sizeof(char)));
        memcpy(role_str.data, role_b.data(), role_str.len);
        role_str.data[role_str.len] = '\0';
        libqt_string sigval1 = role_str;
        slotFunc(self, sigval1);
    });
}

libqt_string QCustomAudioRoleControl_Tr2(const char* s, const char* c) {
    QString _ret = QCustomAudioRoleControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCustomAudioRoleControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCustomAudioRoleControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCustomAudioRoleControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCustomAudioRoleControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCustomAudioRoleControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCustomAudioRoleControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCustomAudioRoleControl_Event(QCustomAudioRoleControl* self, QEvent* event) {
    return self->event(event);
}

bool QCustomAudioRoleControl_EventFilter(QCustomAudioRoleControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCustomAudioRoleControl_Delete(QCustomAudioRoleControl* self) {
    delete self;
}
