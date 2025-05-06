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
#include <QVideoDeviceSelectorControl>
#include <qvideodeviceselectorcontrol.h>
#include "libqvideodeviceselectorcontrol.h"
#include "libqvideodeviceselectorcontrol.hxx"

QMetaObject* QVideoDeviceSelectorControl_MetaObject(const QVideoDeviceSelectorControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QVideoDeviceSelectorControl_Metacast(QVideoDeviceSelectorControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QVideoDeviceSelectorControl_Metacall(QVideoDeviceSelectorControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QVideoDeviceSelectorControl_Tr(const char* s) {
    QString _ret = QVideoDeviceSelectorControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoDeviceSelectorControl_TrUtf8(const char* s) {
    QString _ret = QVideoDeviceSelectorControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QVideoDeviceSelectorControl_DeviceCount(const QVideoDeviceSelectorControl* self) {
    return self->deviceCount();
}

libqt_string QVideoDeviceSelectorControl_DeviceName(const QVideoDeviceSelectorControl* self, int index) {
    QString _ret = self->deviceName(static_cast<int>(index));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoDeviceSelectorControl_DeviceDescription(const QVideoDeviceSelectorControl* self, int index) {
    QString _ret = self->deviceDescription(static_cast<int>(index));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QVideoDeviceSelectorControl_DefaultDevice(const QVideoDeviceSelectorControl* self) {
    return self->defaultDevice();
}

int QVideoDeviceSelectorControl_SelectedDevice(const QVideoDeviceSelectorControl* self) {
    return self->selectedDevice();
}

void QVideoDeviceSelectorControl_SetSelectedDevice(QVideoDeviceSelectorControl* self, int index) {
    self->setSelectedDevice(static_cast<int>(index));
}

void QVideoDeviceSelectorControl_SelectedDeviceChanged(QVideoDeviceSelectorControl* self, int index) {
    self->selectedDeviceChanged(static_cast<int>(index));
}

void QVideoDeviceSelectorControl_Connect_SelectedDeviceChanged(QVideoDeviceSelectorControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoDeviceSelectorControl*, int) = reinterpret_cast<void (*)(QVideoDeviceSelectorControl*, int)>(slot);
    QVideoDeviceSelectorControl::connect(self, &QVideoDeviceSelectorControl::selectedDeviceChanged, [self, slotFunc](int index) {
        int sigval1 = index;
        slotFunc(self, sigval1);
    });
}

void QVideoDeviceSelectorControl_SelectedDeviceChangedWithName(QVideoDeviceSelectorControl* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->selectedDeviceChanged(name_QString);
}

void QVideoDeviceSelectorControl_Connect_SelectedDeviceChangedWithName(QVideoDeviceSelectorControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoDeviceSelectorControl*, libqt_string) = reinterpret_cast<void (*)(QVideoDeviceSelectorControl*, libqt_string)>(slot);
    QVideoDeviceSelectorControl::connect(self, &QVideoDeviceSelectorControl::selectedDeviceChanged, [self, slotFunc](const QString& name) {
        const QString name_ret = name;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray name_b = name_ret.toUtf8();
        libqt_string name_str;
        name_str.len = name_b.length();
        name_str.data = static_cast<char*>(malloc((name_str.len + 1) * sizeof(char)));
        memcpy(name_str.data, name_b.data(), name_str.len);
        name_str.data[name_str.len] = '\0';
        libqt_string sigval1 = name_str;
        slotFunc(self, sigval1);
    });
}

void QVideoDeviceSelectorControl_DevicesChanged(QVideoDeviceSelectorControl* self) {
    self->devicesChanged();
}

void QVideoDeviceSelectorControl_Connect_DevicesChanged(QVideoDeviceSelectorControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoDeviceSelectorControl*) = reinterpret_cast<void (*)(QVideoDeviceSelectorControl*)>(slot);
    QVideoDeviceSelectorControl::connect(self, &QVideoDeviceSelectorControl::devicesChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QVideoDeviceSelectorControl_Tr2(const char* s, const char* c) {
    QString _ret = QVideoDeviceSelectorControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoDeviceSelectorControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QVideoDeviceSelectorControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoDeviceSelectorControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QVideoDeviceSelectorControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoDeviceSelectorControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QVideoDeviceSelectorControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QVideoDeviceSelectorControl_Event(QVideoDeviceSelectorControl* self, QEvent* event) {
    return self->event(event);
}

bool QVideoDeviceSelectorControl_EventFilter(QVideoDeviceSelectorControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QVideoDeviceSelectorControl_Delete(QVideoDeviceSelectorControl* self) {
    delete self;
}
