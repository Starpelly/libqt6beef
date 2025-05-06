#include <QAudioRoleControl>
#include <QByteArray>
#include <QChildEvent>
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
#include <qaudiorolecontrol.h>
#include "libqaudiorolecontrol.h"
#include "libqaudiorolecontrol.hxx"

QMetaObject* QAudioRoleControl_MetaObject(const QAudioRoleControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioRoleControl_Metacast(QAudioRoleControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioRoleControl_Metacall(QAudioRoleControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QAudioRoleControl_Tr(const char* s) {
    QString _ret = QAudioRoleControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRoleControl_TrUtf8(const char* s) {
    QString _ret = QAudioRoleControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QAudioRoleControl_AudioRole(const QAudioRoleControl* self) {
    return static_cast<int>(self->audioRole());
}

void QAudioRoleControl_SetAudioRole(QAudioRoleControl* self, int role) {
    self->setAudioRole(static_cast<QAudio::Role>(role));
}

libqt_list /* of int */ QAudioRoleControl_SupportedAudioRoles(const QAudioRoleControl* self) {
    QList<QAudio::Role> _ret = self->supportedAudioRoles();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = static_cast<int>(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QAudioRoleControl_AudioRoleChanged(QAudioRoleControl* self, int role) {
    self->audioRoleChanged(static_cast<QAudio::Role>(role));
}

void QAudioRoleControl_Connect_AudioRoleChanged(QAudioRoleControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioRoleControl*, int) = reinterpret_cast<void (*)(QAudioRoleControl*, int)>(slot);
    QAudioRoleControl::connect(self, &QAudioRoleControl::audioRoleChanged, [self, slotFunc](QAudio::Role role) {
        int sigval1 = static_cast<int>(role);
        slotFunc(self, sigval1);
    });
}

libqt_string QAudioRoleControl_Tr2(const char* s, const char* c) {
    QString _ret = QAudioRoleControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRoleControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioRoleControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRoleControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioRoleControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRoleControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioRoleControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAudioRoleControl_Event(QAudioRoleControl* self, QEvent* event) {
    return self->event(event);
}

bool QAudioRoleControl_EventFilter(QAudioRoleControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QAudioRoleControl_Delete(QAudioRoleControl* self) {
    delete self;
}
