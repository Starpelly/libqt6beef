#include <QAbstractAudioDeviceInfo>
#include <QAbstractAudioInput>
#include <QAbstractAudioOutput>
#include <QAudioSystemFactoryInterface>
#include <QAudioSystemPlugin>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
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
#include <qaudiosystemplugin.h>
#include "libqaudiosystemplugin.h"
#include "libqaudiosystemplugin.hxx"

libqt_list /* of libqt_string */ QAudioSystemFactoryInterface_AvailableDevices(const QAudioSystemFactoryInterface* self, int param1) {
    QList<QByteArray> _ret = self->availableDevices(static_cast<QAudio::Mode>(param1));
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QByteArray _lv_qb = _ret[i];
        libqt_string _lv_str;
        _lv_str.len = _lv_qb.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_qb.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QAbstractAudioInput* QAudioSystemFactoryInterface_CreateInput(QAudioSystemFactoryInterface* self, libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    return self->createInput(device_QByteArray);
}

QAbstractAudioOutput* QAudioSystemFactoryInterface_CreateOutput(QAudioSystemFactoryInterface* self, libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    return self->createOutput(device_QByteArray);
}

QAbstractAudioDeviceInfo* QAudioSystemFactoryInterface_CreateDeviceInfo(QAudioSystemFactoryInterface* self, libqt_string device, int mode) {
    QByteArray device_QByteArray(device.data, device.len);
    return self->createDeviceInfo(device_QByteArray, static_cast<QAudio::Mode>(mode));
}

void QAudioSystemFactoryInterface_OperatorAssign(QAudioSystemFactoryInterface* self, QAudioSystemFactoryInterface* param1) {
    self->operator=(*param1);
}

void QAudioSystemFactoryInterface_Delete(QAudioSystemFactoryInterface* self) {
    delete self;
}

QAudioSystemPlugin* QAudioSystemPlugin_new() {
    return new VirtualQAudioSystemPlugin();
}

QAudioSystemPlugin* QAudioSystemPlugin_new2(QObject* parent) {
    return new VirtualQAudioSystemPlugin(parent);
}

QMetaObject* QAudioSystemPlugin_MetaObject(const QAudioSystemPlugin* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioSystemPlugin_Metacast(QAudioSystemPlugin* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioSystemPlugin_Metacall(QAudioSystemPlugin* self, int param1, int param2, void** param3) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAudioSystemPlugin_OnMetacall(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_Metacall_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAudioSystemPlugin_QBaseMetacall(QAudioSystemPlugin* self, int param1, int param2, void** param3) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_Metacall_IsBase(true);
        return vqaudiosystemplugin->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAudioSystemPlugin_Tr(const char* s) {
    QString _ret = QAudioSystemPlugin::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioSystemPlugin_TrUtf8(const char* s) {
    QString _ret = QAudioSystemPlugin::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioSystemPlugin_Tr2(const char* s, const char* c) {
    QString _ret = QAudioSystemPlugin::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioSystemPlugin_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioSystemPlugin::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioSystemPlugin_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioSystemPlugin::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioSystemPlugin_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioSystemPlugin::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

// Derived class handler implementation
libqt_list /* of libqt_string */ QAudioSystemPlugin_AvailableDevices(const QAudioSystemPlugin* self, int param1) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        QList<QByteArray> _ret = vqaudiosystemplugin->availableDevices(static_cast<QAudio::Mode>(param1));
        // Convert QList<> from C++ memory to manually-managed C memory
        libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            QByteArray _lv_qb = _ret[i];
            libqt_string _lv_str;
            _lv_str.len = _lv_qb.length();
            _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
            memcpy(_lv_str.data, _lv_qb.data(), _lv_str.len);
            _lv_str.data[_lv_str.len] = '\0';
            _arr[i] = _lv_str;
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QList<QByteArray> _ret = vqaudiosystemplugin->availableDevices(static_cast<QAudio::Mode>(param1));
        // Convert QList<> from C++ memory to manually-managed C memory
        libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            QByteArray _lv_qb = _ret[i];
            libqt_string _lv_str;
            _lv_str.len = _lv_qb.length();
            _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
            memcpy(_lv_str.data, _lv_qb.data(), _lv_str.len);
            _lv_str.data[_lv_str.len] = '\0';
            _arr[i] = _lv_str;
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    }
}

// Base class handler implementation
libqt_list /* of libqt_string */ QAudioSystemPlugin_QBaseAvailableDevices(const QAudioSystemPlugin* self, int param1) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_AvailableDevices_IsBase(true);
        QList<QByteArray> _ret = vqaudiosystemplugin->availableDevices(static_cast<QAudio::Mode>(param1));
        // Convert QList<> from C++ memory to manually-managed C memory
        libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            QByteArray _lv_qb = _ret[i];
            libqt_string _lv_str;
            _lv_str.len = _lv_qb.length();
            _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
            memcpy(_lv_str.data, _lv_qb.data(), _lv_str.len);
            _lv_str.data[_lv_str.len] = '\0';
            _arr[i] = _lv_str;
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QList<QByteArray> _ret = vqaudiosystemplugin->availableDevices(static_cast<QAudio::Mode>(param1));
        // Convert QList<> from C++ memory to manually-managed C memory
        libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            QByteArray _lv_qb = _ret[i];
            libqt_string _lv_str;
            _lv_str.len = _lv_qb.length();
            _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
            memcpy(_lv_str.data, _lv_qb.data(), _lv_str.len);
            _lv_str.data[_lv_str.len] = '\0';
            _arr[i] = _lv_str;
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnAvailableDevices(const QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_AvailableDevices_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_AvailableDevices_Callback>(slot));
    }
}

// Derived class handler implementation
QAbstractAudioInput* QAudioSystemPlugin_CreateInput(QAudioSystemPlugin* self, libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        return vqaudiosystemplugin->createInput(device_QByteArray);
    } else {
        return vqaudiosystemplugin->createInput(device_QByteArray);
    }
}

// Base class handler implementation
QAbstractAudioInput* QAudioSystemPlugin_QBaseCreateInput(QAudioSystemPlugin* self, libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_CreateInput_IsBase(true);
        return vqaudiosystemplugin->createInput(device_QByteArray);
    } else {
        return vqaudiosystemplugin->createInput(device_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnCreateInput(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_CreateInput_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_CreateInput_Callback>(slot));
    }
}

// Derived class handler implementation
QAbstractAudioOutput* QAudioSystemPlugin_CreateOutput(QAudioSystemPlugin* self, libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        return vqaudiosystemplugin->createOutput(device_QByteArray);
    } else {
        return vqaudiosystemplugin->createOutput(device_QByteArray);
    }
}

// Base class handler implementation
QAbstractAudioOutput* QAudioSystemPlugin_QBaseCreateOutput(QAudioSystemPlugin* self, libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_CreateOutput_IsBase(true);
        return vqaudiosystemplugin->createOutput(device_QByteArray);
    } else {
        return vqaudiosystemplugin->createOutput(device_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnCreateOutput(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_CreateOutput_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_CreateOutput_Callback>(slot));
    }
}

// Derived class handler implementation
QAbstractAudioDeviceInfo* QAudioSystemPlugin_CreateDeviceInfo(QAudioSystemPlugin* self, libqt_string device, int mode) {
    QByteArray device_QByteArray(device.data, device.len);
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        return vqaudiosystemplugin->createDeviceInfo(device_QByteArray, static_cast<QAudio::Mode>(mode));
    } else {
        return vqaudiosystemplugin->createDeviceInfo(device_QByteArray, static_cast<QAudio::Mode>(mode));
    }
}

// Base class handler implementation
QAbstractAudioDeviceInfo* QAudioSystemPlugin_QBaseCreateDeviceInfo(QAudioSystemPlugin* self, libqt_string device, int mode) {
    QByteArray device_QByteArray(device.data, device.len);
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_CreateDeviceInfo_IsBase(true);
        return vqaudiosystemplugin->createDeviceInfo(device_QByteArray, static_cast<QAudio::Mode>(mode));
    } else {
        return vqaudiosystemplugin->createDeviceInfo(device_QByteArray, static_cast<QAudio::Mode>(mode));
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnCreateDeviceInfo(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_CreateDeviceInfo_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_CreateDeviceInfo_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioSystemPlugin_Event(QAudioSystemPlugin* self, QEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        return vqaudiosystemplugin->event(event);
    } else {
        return vqaudiosystemplugin->event(event);
    }
}

// Base class handler implementation
bool QAudioSystemPlugin_QBaseEvent(QAudioSystemPlugin* self, QEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_Event_IsBase(true);
        return vqaudiosystemplugin->event(event);
    } else {
        return vqaudiosystemplugin->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnEvent(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_Event_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioSystemPlugin_EventFilter(QAudioSystemPlugin* self, QObject* watched, QEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        return vqaudiosystemplugin->eventFilter(watched, event);
    } else {
        return vqaudiosystemplugin->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QAudioSystemPlugin_QBaseEventFilter(QAudioSystemPlugin* self, QObject* watched, QEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_EventFilter_IsBase(true);
        return vqaudiosystemplugin->eventFilter(watched, event);
    } else {
        return vqaudiosystemplugin->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnEventFilter(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_EventFilter_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioSystemPlugin_TimerEvent(QAudioSystemPlugin* self, QTimerEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->timerEvent(event);
    } else {
        vqaudiosystemplugin->timerEvent(event);
    }
}

// Base class handler implementation
void QAudioSystemPlugin_QBaseTimerEvent(QAudioSystemPlugin* self, QTimerEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_TimerEvent_IsBase(true);
        vqaudiosystemplugin->timerEvent(event);
    } else {
        vqaudiosystemplugin->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnTimerEvent(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_TimerEvent_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioSystemPlugin_ChildEvent(QAudioSystemPlugin* self, QChildEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->childEvent(event);
    } else {
        vqaudiosystemplugin->childEvent(event);
    }
}

// Base class handler implementation
void QAudioSystemPlugin_QBaseChildEvent(QAudioSystemPlugin* self, QChildEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_ChildEvent_IsBase(true);
        vqaudiosystemplugin->childEvent(event);
    } else {
        vqaudiosystemplugin->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnChildEvent(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_ChildEvent_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioSystemPlugin_CustomEvent(QAudioSystemPlugin* self, QEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->customEvent(event);
    } else {
        vqaudiosystemplugin->customEvent(event);
    }
}

// Base class handler implementation
void QAudioSystemPlugin_QBaseCustomEvent(QAudioSystemPlugin* self, QEvent* event) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_CustomEvent_IsBase(true);
        vqaudiosystemplugin->customEvent(event);
    } else {
        vqaudiosystemplugin->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnCustomEvent(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_CustomEvent_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioSystemPlugin_ConnectNotify(QAudioSystemPlugin* self, QMetaMethod* signal) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->connectNotify(*signal);
    } else {
        vqaudiosystemplugin->connectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioSystemPlugin_QBaseConnectNotify(QAudioSystemPlugin* self, QMetaMethod* signal) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_ConnectNotify_IsBase(true);
        vqaudiosystemplugin->connectNotify(*signal);
    } else {
        vqaudiosystemplugin->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnConnectNotify(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_ConnectNotify_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioSystemPlugin_DisconnectNotify(QAudioSystemPlugin* self, QMetaMethod* signal) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->disconnectNotify(*signal);
    } else {
        vqaudiosystemplugin->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioSystemPlugin_QBaseDisconnectNotify(QAudioSystemPlugin* self, QMetaMethod* signal) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_DisconnectNotify_IsBase(true);
        vqaudiosystemplugin->disconnectNotify(*signal);
    } else {
        vqaudiosystemplugin->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnDisconnectNotify(QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = dynamic_cast<VirtualQAudioSystemPlugin*>(self)) {
        vqaudiosystemplugin->setQAudioSystemPlugin_DisconnectNotify_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QAudioSystemPlugin_Sender(const QAudioSystemPlugin* self) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        return vqaudiosystemplugin->sender();
    } else {
        return vqaudiosystemplugin->sender();
    }
}

// Base class handler implementation
QObject* QAudioSystemPlugin_QBaseSender(const QAudioSystemPlugin* self) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_Sender_IsBase(true);
        return vqaudiosystemplugin->sender();
    } else {
        return vqaudiosystemplugin->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnSender(const QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_Sender_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioSystemPlugin_SenderSignalIndex(const QAudioSystemPlugin* self) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        return vqaudiosystemplugin->senderSignalIndex();
    } else {
        return vqaudiosystemplugin->senderSignalIndex();
    }
}

// Base class handler implementation
int QAudioSystemPlugin_QBaseSenderSignalIndex(const QAudioSystemPlugin* self) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_SenderSignalIndex_IsBase(true);
        return vqaudiosystemplugin->senderSignalIndex();
    } else {
        return vqaudiosystemplugin->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnSenderSignalIndex(const QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_SenderSignalIndex_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioSystemPlugin_Receivers(const QAudioSystemPlugin* self, const char* signal) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        return vqaudiosystemplugin->receivers(signal);
    } else {
        return vqaudiosystemplugin->receivers(signal);
    }
}

// Base class handler implementation
int QAudioSystemPlugin_QBaseReceivers(const QAudioSystemPlugin* self, const char* signal) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_Receivers_IsBase(true);
        return vqaudiosystemplugin->receivers(signal);
    } else {
        return vqaudiosystemplugin->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnReceivers(const QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_Receivers_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioSystemPlugin_IsSignalConnected(const QAudioSystemPlugin* self, QMetaMethod* signal) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        return vqaudiosystemplugin->isSignalConnected(*signal);
    } else {
        return vqaudiosystemplugin->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QAudioSystemPlugin_QBaseIsSignalConnected(const QAudioSystemPlugin* self, QMetaMethod* signal) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_IsSignalConnected_IsBase(true);
        return vqaudiosystemplugin->isSignalConnected(*signal);
    } else {
        return vqaudiosystemplugin->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioSystemPlugin_OnIsSignalConnected(const QAudioSystemPlugin* self, intptr_t slot) {
    if (auto* vqaudiosystemplugin = const_cast<VirtualQAudioSystemPlugin*>(dynamic_cast<const VirtualQAudioSystemPlugin*>(self))) {
        vqaudiosystemplugin->setQAudioSystemPlugin_IsSignalConnected_Callback(reinterpret_cast<VirtualQAudioSystemPlugin::QAudioSystemPlugin_IsSignalConnected_Callback>(slot));
    }
}

void QAudioSystemPlugin_Delete(QAudioSystemPlugin* self) {
    delete self;
}
