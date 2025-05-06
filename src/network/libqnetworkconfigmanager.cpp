#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QNetworkConfiguration>
#include <QNetworkConfigurationManager>
#include <QObject>
#include <QObjectUserData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qnetworkconfigmanager.h>
#include "libqnetworkconfigmanager.h"
#include "libqnetworkconfigmanager.hxx"

QNetworkConfigurationManager* QNetworkConfigurationManager_new() {
    return new VirtualQNetworkConfigurationManager();
}

QNetworkConfigurationManager* QNetworkConfigurationManager_new2(QObject* parent) {
    return new VirtualQNetworkConfigurationManager(parent);
}

QMetaObject* QNetworkConfigurationManager_MetaObject(const QNetworkConfigurationManager* self) {
    return (QMetaObject*)self->metaObject();
}

void* QNetworkConfigurationManager_Metacast(QNetworkConfigurationManager* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QNetworkConfigurationManager_Metacall(QNetworkConfigurationManager* self, int param1, int param2, void** param3) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QNetworkConfigurationManager_OnMetacall(QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_Metacall_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QNetworkConfigurationManager_QBaseMetacall(QNetworkConfigurationManager* self, int param1, int param2, void** param3) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_Metacall_IsBase(true);
        return vqnetworkconfigurationmanager->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QNetworkConfigurationManager_Tr(const char* s) {
    QString _ret = QNetworkConfigurationManager::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkConfigurationManager_TrUtf8(const char* s) {
    QString _ret = QNetworkConfigurationManager::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QNetworkConfigurationManager_Capabilities(const QNetworkConfigurationManager* self) {
    return static_cast<int>(self->capabilities());
}

QNetworkConfiguration* QNetworkConfigurationManager_DefaultConfiguration(const QNetworkConfigurationManager* self) {
    return new QNetworkConfiguration(self->defaultConfiguration());
}

libqt_list /* of QNetworkConfiguration* */ QNetworkConfigurationManager_AllConfigurations(const QNetworkConfigurationManager* self) {
    QList<QNetworkConfiguration> _ret = self->allConfigurations();
    // Convert QList<> from C++ memory to manually-managed C memory
    QNetworkConfiguration** _arr = static_cast<QNetworkConfiguration**>(malloc(sizeof(QNetworkConfiguration*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QNetworkConfiguration(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QNetworkConfiguration* QNetworkConfigurationManager_ConfigurationFromIdentifier(const QNetworkConfigurationManager* self, libqt_string identifier) {
    QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);
    return new QNetworkConfiguration(self->configurationFromIdentifier(identifier_QString));
}

bool QNetworkConfigurationManager_IsOnline(const QNetworkConfigurationManager* self) {
    return self->isOnline();
}

void QNetworkConfigurationManager_UpdateConfigurations(QNetworkConfigurationManager* self) {
    self->updateConfigurations();
}

void QNetworkConfigurationManager_ConfigurationAdded(QNetworkConfigurationManager* self, QNetworkConfiguration* config) {
    self->configurationAdded(*config);
}

void QNetworkConfigurationManager_Connect_ConfigurationAdded(QNetworkConfigurationManager* self, intptr_t slot) {
    void (*slotFunc)(QNetworkConfigurationManager*, QNetworkConfiguration*) = reinterpret_cast<void (*)(QNetworkConfigurationManager*, QNetworkConfiguration*)>(slot);
    QNetworkConfigurationManager::connect(self, &QNetworkConfigurationManager::configurationAdded, [self, slotFunc](const QNetworkConfiguration& config) {
        const QNetworkConfiguration& config_ret = config;
        // Cast returned reference into pointer
        QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&config_ret);
        slotFunc(self, sigval1);
    });
}

void QNetworkConfigurationManager_ConfigurationRemoved(QNetworkConfigurationManager* self, QNetworkConfiguration* config) {
    self->configurationRemoved(*config);
}

void QNetworkConfigurationManager_Connect_ConfigurationRemoved(QNetworkConfigurationManager* self, intptr_t slot) {
    void (*slotFunc)(QNetworkConfigurationManager*, QNetworkConfiguration*) = reinterpret_cast<void (*)(QNetworkConfigurationManager*, QNetworkConfiguration*)>(slot);
    QNetworkConfigurationManager::connect(self, &QNetworkConfigurationManager::configurationRemoved, [self, slotFunc](const QNetworkConfiguration& config) {
        const QNetworkConfiguration& config_ret = config;
        // Cast returned reference into pointer
        QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&config_ret);
        slotFunc(self, sigval1);
    });
}

void QNetworkConfigurationManager_ConfigurationChanged(QNetworkConfigurationManager* self, QNetworkConfiguration* config) {
    self->configurationChanged(*config);
}

void QNetworkConfigurationManager_Connect_ConfigurationChanged(QNetworkConfigurationManager* self, intptr_t slot) {
    void (*slotFunc)(QNetworkConfigurationManager*, QNetworkConfiguration*) = reinterpret_cast<void (*)(QNetworkConfigurationManager*, QNetworkConfiguration*)>(slot);
    QNetworkConfigurationManager::connect(self, &QNetworkConfigurationManager::configurationChanged, [self, slotFunc](const QNetworkConfiguration& config) {
        const QNetworkConfiguration& config_ret = config;
        // Cast returned reference into pointer
        QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&config_ret);
        slotFunc(self, sigval1);
    });
}

void QNetworkConfigurationManager_OnlineStateChanged(QNetworkConfigurationManager* self, bool isOnline) {
    self->onlineStateChanged(isOnline);
}

void QNetworkConfigurationManager_Connect_OnlineStateChanged(QNetworkConfigurationManager* self, intptr_t slot) {
    void (*slotFunc)(QNetworkConfigurationManager*, bool) = reinterpret_cast<void (*)(QNetworkConfigurationManager*, bool)>(slot);
    QNetworkConfigurationManager::connect(self, &QNetworkConfigurationManager::onlineStateChanged, [self, slotFunc](bool isOnline) {
        bool sigval1 = isOnline;
        slotFunc(self, sigval1);
    });
}

void QNetworkConfigurationManager_UpdateCompleted(QNetworkConfigurationManager* self) {
    self->updateCompleted();
}

void QNetworkConfigurationManager_Connect_UpdateCompleted(QNetworkConfigurationManager* self, intptr_t slot) {
    void (*slotFunc)(QNetworkConfigurationManager*) = reinterpret_cast<void (*)(QNetworkConfigurationManager*)>(slot);
    QNetworkConfigurationManager::connect(self, &QNetworkConfigurationManager::updateCompleted, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QNetworkConfigurationManager_Tr2(const char* s, const char* c) {
    QString _ret = QNetworkConfigurationManager::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkConfigurationManager_Tr3(const char* s, const char* c, int n) {
    QString _ret = QNetworkConfigurationManager::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkConfigurationManager_TrUtf82(const char* s, const char* c) {
    QString _ret = QNetworkConfigurationManager::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkConfigurationManager_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QNetworkConfigurationManager::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of QNetworkConfiguration* */ QNetworkConfigurationManager_AllConfigurations1(const QNetworkConfigurationManager* self, int flags) {
    QList<QNetworkConfiguration> _ret = self->allConfigurations(static_cast<QNetworkConfiguration::StateFlags>(flags));
    // Convert QList<> from C++ memory to manually-managed C memory
    QNetworkConfiguration** _arr = static_cast<QNetworkConfiguration**>(malloc(sizeof(QNetworkConfiguration*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QNetworkConfiguration(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

// Derived class handler implementation
bool QNetworkConfigurationManager_Event(QNetworkConfigurationManager* self, QEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        return vqnetworkconfigurationmanager->event(event);
    } else {
        return vqnetworkconfigurationmanager->event(event);
    }
}

// Base class handler implementation
bool QNetworkConfigurationManager_QBaseEvent(QNetworkConfigurationManager* self, QEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_Event_IsBase(true);
        return vqnetworkconfigurationmanager->event(event);
    } else {
        return vqnetworkconfigurationmanager->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnEvent(QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_Event_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QNetworkConfigurationManager_EventFilter(QNetworkConfigurationManager* self, QObject* watched, QEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        return vqnetworkconfigurationmanager->eventFilter(watched, event);
    } else {
        return vqnetworkconfigurationmanager->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QNetworkConfigurationManager_QBaseEventFilter(QNetworkConfigurationManager* self, QObject* watched, QEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_EventFilter_IsBase(true);
        return vqnetworkconfigurationmanager->eventFilter(watched, event);
    } else {
        return vqnetworkconfigurationmanager->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnEventFilter(QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_EventFilter_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkConfigurationManager_TimerEvent(QNetworkConfigurationManager* self, QTimerEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->timerEvent(event);
    } else {
        vqnetworkconfigurationmanager->timerEvent(event);
    }
}

// Base class handler implementation
void QNetworkConfigurationManager_QBaseTimerEvent(QNetworkConfigurationManager* self, QTimerEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_TimerEvent_IsBase(true);
        vqnetworkconfigurationmanager->timerEvent(event);
    } else {
        vqnetworkconfigurationmanager->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnTimerEvent(QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_TimerEvent_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkConfigurationManager_ChildEvent(QNetworkConfigurationManager* self, QChildEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->childEvent(event);
    } else {
        vqnetworkconfigurationmanager->childEvent(event);
    }
}

// Base class handler implementation
void QNetworkConfigurationManager_QBaseChildEvent(QNetworkConfigurationManager* self, QChildEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_ChildEvent_IsBase(true);
        vqnetworkconfigurationmanager->childEvent(event);
    } else {
        vqnetworkconfigurationmanager->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnChildEvent(QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_ChildEvent_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkConfigurationManager_CustomEvent(QNetworkConfigurationManager* self, QEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->customEvent(event);
    } else {
        vqnetworkconfigurationmanager->customEvent(event);
    }
}

// Base class handler implementation
void QNetworkConfigurationManager_QBaseCustomEvent(QNetworkConfigurationManager* self, QEvent* event) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_CustomEvent_IsBase(true);
        vqnetworkconfigurationmanager->customEvent(event);
    } else {
        vqnetworkconfigurationmanager->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnCustomEvent(QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_CustomEvent_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkConfigurationManager_ConnectNotify(QNetworkConfigurationManager* self, QMetaMethod* signal) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->connectNotify(*signal);
    } else {
        vqnetworkconfigurationmanager->connectNotify(*signal);
    }
}

// Base class handler implementation
void QNetworkConfigurationManager_QBaseConnectNotify(QNetworkConfigurationManager* self, QMetaMethod* signal) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_ConnectNotify_IsBase(true);
        vqnetworkconfigurationmanager->connectNotify(*signal);
    } else {
        vqnetworkconfigurationmanager->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnConnectNotify(QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_ConnectNotify_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkConfigurationManager_DisconnectNotify(QNetworkConfigurationManager* self, QMetaMethod* signal) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->disconnectNotify(*signal);
    } else {
        vqnetworkconfigurationmanager->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QNetworkConfigurationManager_QBaseDisconnectNotify(QNetworkConfigurationManager* self, QMetaMethod* signal) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_DisconnectNotify_IsBase(true);
        vqnetworkconfigurationmanager->disconnectNotify(*signal);
    } else {
        vqnetworkconfigurationmanager->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnDisconnectNotify(QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = dynamic_cast<VirtualQNetworkConfigurationManager*>(self)) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_DisconnectNotify_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QNetworkConfigurationManager_Sender(const QNetworkConfigurationManager* self) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        return vqnetworkconfigurationmanager->sender();
    } else {
        return vqnetworkconfigurationmanager->sender();
    }
}

// Base class handler implementation
QObject* QNetworkConfigurationManager_QBaseSender(const QNetworkConfigurationManager* self) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_Sender_IsBase(true);
        return vqnetworkconfigurationmanager->sender();
    } else {
        return vqnetworkconfigurationmanager->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnSender(const QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_Sender_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QNetworkConfigurationManager_SenderSignalIndex(const QNetworkConfigurationManager* self) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        return vqnetworkconfigurationmanager->senderSignalIndex();
    } else {
        return vqnetworkconfigurationmanager->senderSignalIndex();
    }
}

// Base class handler implementation
int QNetworkConfigurationManager_QBaseSenderSignalIndex(const QNetworkConfigurationManager* self) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_SenderSignalIndex_IsBase(true);
        return vqnetworkconfigurationmanager->senderSignalIndex();
    } else {
        return vqnetworkconfigurationmanager->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnSenderSignalIndex(const QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_SenderSignalIndex_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QNetworkConfigurationManager_Receivers(const QNetworkConfigurationManager* self, const char* signal) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        return vqnetworkconfigurationmanager->receivers(signal);
    } else {
        return vqnetworkconfigurationmanager->receivers(signal);
    }
}

// Base class handler implementation
int QNetworkConfigurationManager_QBaseReceivers(const QNetworkConfigurationManager* self, const char* signal) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_Receivers_IsBase(true);
        return vqnetworkconfigurationmanager->receivers(signal);
    } else {
        return vqnetworkconfigurationmanager->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnReceivers(const QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_Receivers_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QNetworkConfigurationManager_IsSignalConnected(const QNetworkConfigurationManager* self, QMetaMethod* signal) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        return vqnetworkconfigurationmanager->isSignalConnected(*signal);
    } else {
        return vqnetworkconfigurationmanager->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QNetworkConfigurationManager_QBaseIsSignalConnected(const QNetworkConfigurationManager* self, QMetaMethod* signal) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_IsSignalConnected_IsBase(true);
        return vqnetworkconfigurationmanager->isSignalConnected(*signal);
    } else {
        return vqnetworkconfigurationmanager->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkConfigurationManager_OnIsSignalConnected(const QNetworkConfigurationManager* self, intptr_t slot) {
    if (auto* vqnetworkconfigurationmanager = const_cast<VirtualQNetworkConfigurationManager*>(dynamic_cast<const VirtualQNetworkConfigurationManager*>(self))) {
        vqnetworkconfigurationmanager->setQNetworkConfigurationManager_IsSignalConnected_Callback(reinterpret_cast<VirtualQNetworkConfigurationManager::QNetworkConfigurationManager_IsSignalConnected_Callback>(slot));
    }
}

void QNetworkConfigurationManager_Delete(QNetworkConfigurationManager* self) {
    delete self;
}
