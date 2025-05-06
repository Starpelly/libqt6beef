#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QPicture>
#include <QPictureFormatPlugin>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qpictureformatplugin.h>
#include "libqpictureformatplugin.h"
#include "libqpictureformatplugin.hxx"

QPictureFormatPlugin* QPictureFormatPlugin_new() {
    return new VirtualQPictureFormatPlugin();
}

QPictureFormatPlugin* QPictureFormatPlugin_new2(QObject* parent) {
    return new VirtualQPictureFormatPlugin(parent);
}

QMetaObject* QPictureFormatPlugin_MetaObject(const QPictureFormatPlugin* self) {
    return (QMetaObject*)self->metaObject();
}

void* QPictureFormatPlugin_Metacast(QPictureFormatPlugin* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QPictureFormatPlugin_Metacall(QPictureFormatPlugin* self, int param1, int param2, void** param3) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QPictureFormatPlugin_OnMetacall(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_Metacall_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QPictureFormatPlugin_QBaseMetacall(QPictureFormatPlugin* self, int param1, int param2, void** param3) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_Metacall_IsBase(true);
        return vqpictureformatplugin->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QPictureFormatPlugin_Tr(const char* s) {
    QString _ret = QPictureFormatPlugin::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QPictureFormatPlugin_TrUtf8(const char* s) {
    QString _ret = QPictureFormatPlugin::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QPictureFormatPlugin_Tr2(const char* s, const char* c) {
    QString _ret = QPictureFormatPlugin::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QPictureFormatPlugin_Tr3(const char* s, const char* c, int n) {
    QString _ret = QPictureFormatPlugin::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QPictureFormatPlugin_TrUtf82(const char* s, const char* c) {
    QString _ret = QPictureFormatPlugin::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QPictureFormatPlugin_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QPictureFormatPlugin::trUtf8(s, c, static_cast<int>(n));
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
bool QPictureFormatPlugin_LoadPicture(QPictureFormatPlugin* self, libqt_string format, libqt_string filename, QPicture* pic) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    QString filename_QString = QString::fromUtf8(filename.data, filename.len);
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        return vqpictureformatplugin->loadPicture(format_QString, filename_QString, pic);
    } else {
        return vqpictureformatplugin->loadPicture(format_QString, filename_QString, pic);
    }
}

// Base class handler implementation
bool QPictureFormatPlugin_QBaseLoadPicture(QPictureFormatPlugin* self, libqt_string format, libqt_string filename, QPicture* pic) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    QString filename_QString = QString::fromUtf8(filename.data, filename.len);
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_LoadPicture_IsBase(true);
        return vqpictureformatplugin->loadPicture(format_QString, filename_QString, pic);
    } else {
        return vqpictureformatplugin->loadPicture(format_QString, filename_QString, pic);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnLoadPicture(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_LoadPicture_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_LoadPicture_Callback>(slot));
    }
}

// Derived class handler implementation
bool QPictureFormatPlugin_SavePicture(QPictureFormatPlugin* self, libqt_string format, libqt_string filename, QPicture* pic) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    QString filename_QString = QString::fromUtf8(filename.data, filename.len);
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        return vqpictureformatplugin->savePicture(format_QString, filename_QString, *pic);
    } else {
        return vqpictureformatplugin->savePicture(format_QString, filename_QString, *pic);
    }
}

// Base class handler implementation
bool QPictureFormatPlugin_QBaseSavePicture(QPictureFormatPlugin* self, libqt_string format, libqt_string filename, QPicture* pic) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    QString filename_QString = QString::fromUtf8(filename.data, filename.len);
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_SavePicture_IsBase(true);
        return vqpictureformatplugin->savePicture(format_QString, filename_QString, *pic);
    } else {
        return vqpictureformatplugin->savePicture(format_QString, filename_QString, *pic);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnSavePicture(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_SavePicture_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_SavePicture_Callback>(slot));
    }
}

// Derived class handler implementation
bool QPictureFormatPlugin_InstallIOHandler(QPictureFormatPlugin* self, libqt_string format) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        return vqpictureformatplugin->installIOHandler(format_QString);
    } else {
        return vqpictureformatplugin->installIOHandler(format_QString);
    }
}

// Base class handler implementation
bool QPictureFormatPlugin_QBaseInstallIOHandler(QPictureFormatPlugin* self, libqt_string format) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_InstallIOHandler_IsBase(true);
        return vqpictureformatplugin->installIOHandler(format_QString);
    } else {
        return vqpictureformatplugin->installIOHandler(format_QString);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnInstallIOHandler(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_InstallIOHandler_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_InstallIOHandler_Callback>(slot));
    }
}

// Derived class handler implementation
bool QPictureFormatPlugin_Event(QPictureFormatPlugin* self, QEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        return vqpictureformatplugin->event(event);
    } else {
        return vqpictureformatplugin->event(event);
    }
}

// Base class handler implementation
bool QPictureFormatPlugin_QBaseEvent(QPictureFormatPlugin* self, QEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_Event_IsBase(true);
        return vqpictureformatplugin->event(event);
    } else {
        return vqpictureformatplugin->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnEvent(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_Event_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QPictureFormatPlugin_EventFilter(QPictureFormatPlugin* self, QObject* watched, QEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        return vqpictureformatplugin->eventFilter(watched, event);
    } else {
        return vqpictureformatplugin->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QPictureFormatPlugin_QBaseEventFilter(QPictureFormatPlugin* self, QObject* watched, QEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_EventFilter_IsBase(true);
        return vqpictureformatplugin->eventFilter(watched, event);
    } else {
        return vqpictureformatplugin->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnEventFilter(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_EventFilter_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QPictureFormatPlugin_TimerEvent(QPictureFormatPlugin* self, QTimerEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->timerEvent(event);
    } else {
        vqpictureformatplugin->timerEvent(event);
    }
}

// Base class handler implementation
void QPictureFormatPlugin_QBaseTimerEvent(QPictureFormatPlugin* self, QTimerEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_TimerEvent_IsBase(true);
        vqpictureformatplugin->timerEvent(event);
    } else {
        vqpictureformatplugin->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnTimerEvent(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_TimerEvent_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QPictureFormatPlugin_ChildEvent(QPictureFormatPlugin* self, QChildEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->childEvent(event);
    } else {
        vqpictureformatplugin->childEvent(event);
    }
}

// Base class handler implementation
void QPictureFormatPlugin_QBaseChildEvent(QPictureFormatPlugin* self, QChildEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_ChildEvent_IsBase(true);
        vqpictureformatplugin->childEvent(event);
    } else {
        vqpictureformatplugin->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnChildEvent(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_ChildEvent_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QPictureFormatPlugin_CustomEvent(QPictureFormatPlugin* self, QEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->customEvent(event);
    } else {
        vqpictureformatplugin->customEvent(event);
    }
}

// Base class handler implementation
void QPictureFormatPlugin_QBaseCustomEvent(QPictureFormatPlugin* self, QEvent* event) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_CustomEvent_IsBase(true);
        vqpictureformatplugin->customEvent(event);
    } else {
        vqpictureformatplugin->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnCustomEvent(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_CustomEvent_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QPictureFormatPlugin_ConnectNotify(QPictureFormatPlugin* self, QMetaMethod* signal) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->connectNotify(*signal);
    } else {
        vqpictureformatplugin->connectNotify(*signal);
    }
}

// Base class handler implementation
void QPictureFormatPlugin_QBaseConnectNotify(QPictureFormatPlugin* self, QMetaMethod* signal) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_ConnectNotify_IsBase(true);
        vqpictureformatplugin->connectNotify(*signal);
    } else {
        vqpictureformatplugin->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnConnectNotify(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_ConnectNotify_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QPictureFormatPlugin_DisconnectNotify(QPictureFormatPlugin* self, QMetaMethod* signal) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->disconnectNotify(*signal);
    } else {
        vqpictureformatplugin->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QPictureFormatPlugin_QBaseDisconnectNotify(QPictureFormatPlugin* self, QMetaMethod* signal) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_DisconnectNotify_IsBase(true);
        vqpictureformatplugin->disconnectNotify(*signal);
    } else {
        vqpictureformatplugin->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnDisconnectNotify(QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = dynamic_cast<VirtualQPictureFormatPlugin*>(self)) {
        vqpictureformatplugin->setQPictureFormatPlugin_DisconnectNotify_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QPictureFormatPlugin_Sender(const QPictureFormatPlugin* self) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        return vqpictureformatplugin->sender();
    } else {
        return vqpictureformatplugin->sender();
    }
}

// Base class handler implementation
QObject* QPictureFormatPlugin_QBaseSender(const QPictureFormatPlugin* self) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        vqpictureformatplugin->setQPictureFormatPlugin_Sender_IsBase(true);
        return vqpictureformatplugin->sender();
    } else {
        return vqpictureformatplugin->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnSender(const QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        vqpictureformatplugin->setQPictureFormatPlugin_Sender_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QPictureFormatPlugin_SenderSignalIndex(const QPictureFormatPlugin* self) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        return vqpictureformatplugin->senderSignalIndex();
    } else {
        return vqpictureformatplugin->senderSignalIndex();
    }
}

// Base class handler implementation
int QPictureFormatPlugin_QBaseSenderSignalIndex(const QPictureFormatPlugin* self) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        vqpictureformatplugin->setQPictureFormatPlugin_SenderSignalIndex_IsBase(true);
        return vqpictureformatplugin->senderSignalIndex();
    } else {
        return vqpictureformatplugin->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnSenderSignalIndex(const QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        vqpictureformatplugin->setQPictureFormatPlugin_SenderSignalIndex_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QPictureFormatPlugin_Receivers(const QPictureFormatPlugin* self, const char* signal) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        return vqpictureformatplugin->receivers(signal);
    } else {
        return vqpictureformatplugin->receivers(signal);
    }
}

// Base class handler implementation
int QPictureFormatPlugin_QBaseReceivers(const QPictureFormatPlugin* self, const char* signal) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        vqpictureformatplugin->setQPictureFormatPlugin_Receivers_IsBase(true);
        return vqpictureformatplugin->receivers(signal);
    } else {
        return vqpictureformatplugin->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnReceivers(const QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        vqpictureformatplugin->setQPictureFormatPlugin_Receivers_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QPictureFormatPlugin_IsSignalConnected(const QPictureFormatPlugin* self, QMetaMethod* signal) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        return vqpictureformatplugin->isSignalConnected(*signal);
    } else {
        return vqpictureformatplugin->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QPictureFormatPlugin_QBaseIsSignalConnected(const QPictureFormatPlugin* self, QMetaMethod* signal) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        vqpictureformatplugin->setQPictureFormatPlugin_IsSignalConnected_IsBase(true);
        return vqpictureformatplugin->isSignalConnected(*signal);
    } else {
        return vqpictureformatplugin->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QPictureFormatPlugin_OnIsSignalConnected(const QPictureFormatPlugin* self, intptr_t slot) {
    if (auto* vqpictureformatplugin = const_cast<VirtualQPictureFormatPlugin*>(dynamic_cast<const VirtualQPictureFormatPlugin*>(self))) {
        vqpictureformatplugin->setQPictureFormatPlugin_IsSignalConnected_Callback(reinterpret_cast<VirtualQPictureFormatPlugin::QPictureFormatPlugin_IsSignalConnected_Callback>(slot));
    }
}

void QPictureFormatPlugin_Delete(QPictureFormatPlugin* self) {
    delete self;
}
