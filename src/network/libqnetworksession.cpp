#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QNetworkConfiguration>
#include <QNetworkInterface>
#include <QNetworkSession>
#include <QObject>
#include <QObjectUserData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qnetworksession.h>
#include "libqnetworksession.h"
#include "libqnetworksession.hxx"

QNetworkSession* QNetworkSession_new(QNetworkConfiguration* connConfig) {
    return new VirtualQNetworkSession(*connConfig);
}

QNetworkSession* QNetworkSession_new2(QNetworkConfiguration* connConfig, QObject* parent) {
    return new VirtualQNetworkSession(*connConfig, parent);
}

QMetaObject* QNetworkSession_MetaObject(const QNetworkSession* self) {
    return (QMetaObject*)self->metaObject();
}

void* QNetworkSession_Metacast(QNetworkSession* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QNetworkSession_Metacall(QNetworkSession* self, int param1, int param2, void** param3) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QNetworkSession_OnMetacall(QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_Metacall_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QNetworkSession_QBaseMetacall(QNetworkSession* self, int param1, int param2, void** param3) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_Metacall_IsBase(true);
        return vqnetworksession->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QNetworkSession_Tr(const char* s) {
    QString _ret = QNetworkSession::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkSession_TrUtf8(const char* s) {
    QString _ret = QNetworkSession::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QNetworkSession_IsOpen(const QNetworkSession* self) {
    return self->isOpen();
}

QNetworkConfiguration* QNetworkSession_Configuration(const QNetworkSession* self) {
    return new QNetworkConfiguration(self->configuration());
}

QNetworkInterface* QNetworkSession_Interface(const QNetworkSession* self) {
    return new QNetworkInterface(self->interface());
}

int QNetworkSession_State(const QNetworkSession* self) {
    return static_cast<int>(self->state());
}

int QNetworkSession_Error(const QNetworkSession* self) {
    return static_cast<int>(self->error());
}

libqt_string QNetworkSession_ErrorString(const QNetworkSession* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QVariant* QNetworkSession_SessionProperty(const QNetworkSession* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QVariant(self->sessionProperty(key_QString));
}

void QNetworkSession_SetSessionProperty(QNetworkSession* self, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->setSessionProperty(key_QString, *value);
}

unsigned long long QNetworkSession_BytesWritten(const QNetworkSession* self) {
    return static_cast<unsigned long long>(self->bytesWritten());
}

unsigned long long QNetworkSession_BytesReceived(const QNetworkSession* self) {
    return static_cast<unsigned long long>(self->bytesReceived());
}

unsigned long long QNetworkSession_ActiveTime(const QNetworkSession* self) {
    return static_cast<unsigned long long>(self->activeTime());
}

int QNetworkSession_UsagePolicies(const QNetworkSession* self) {
    return static_cast<int>(self->usagePolicies());
}

bool QNetworkSession_WaitForOpened(QNetworkSession* self) {
    return self->waitForOpened();
}

void QNetworkSession_Open(QNetworkSession* self) {
    self->open();
}

void QNetworkSession_Close(QNetworkSession* self) {
    self->close();
}

void QNetworkSession_Stop(QNetworkSession* self) {
    self->stop();
}

void QNetworkSession_Migrate(QNetworkSession* self) {
    self->migrate();
}

void QNetworkSession_Ignore(QNetworkSession* self) {
    self->ignore();
}

void QNetworkSession_Accept(QNetworkSession* self) {
    self->accept();
}

void QNetworkSession_Reject(QNetworkSession* self) {
    self->reject();
}

void QNetworkSession_StateChanged(QNetworkSession* self, int param1) {
    self->stateChanged(static_cast<QNetworkSession::State>(param1));
}

void QNetworkSession_Connect_StateChanged(QNetworkSession* self, intptr_t slot) {
    void (*slotFunc)(QNetworkSession*, int) = reinterpret_cast<void (*)(QNetworkSession*, int)>(slot);
    QNetworkSession::connect(self, &QNetworkSession::stateChanged, [self, slotFunc](QNetworkSession::State param1) {
        int sigval1 = static_cast<int>(param1);
        slotFunc(self, sigval1);
    });
}

void QNetworkSession_Opened(QNetworkSession* self) {
    self->opened();
}

void QNetworkSession_Connect_Opened(QNetworkSession* self, intptr_t slot) {
    void (*slotFunc)(QNetworkSession*) = reinterpret_cast<void (*)(QNetworkSession*)>(slot);
    QNetworkSession::connect(self, &QNetworkSession::opened, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QNetworkSession_Closed(QNetworkSession* self) {
    self->closed();
}

void QNetworkSession_Connect_Closed(QNetworkSession* self, intptr_t slot) {
    void (*slotFunc)(QNetworkSession*) = reinterpret_cast<void (*)(QNetworkSession*)>(slot);
    QNetworkSession::connect(self, &QNetworkSession::closed, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QNetworkSession_ErrorWithQNetworkSessionSessionError(QNetworkSession* self, int param1) {
    self->error(static_cast<QNetworkSession::SessionError>(param1));
}

void QNetworkSession_Connect_ErrorWithQNetworkSessionSessionError(QNetworkSession* self, intptr_t slot) {
    void (*slotFunc)(QNetworkSession*, int) = reinterpret_cast<void (*)(QNetworkSession*, int)>(slot);
    QNetworkSession::connect(self, &QNetworkSession::error, [self, slotFunc](QNetworkSession::SessionError param1) {
        int sigval1 = static_cast<int>(param1);
        slotFunc(self, sigval1);
    });
}

void QNetworkSession_PreferredConfigurationChanged(QNetworkSession* self, QNetworkConfiguration* config, bool isSeamless) {
    self->preferredConfigurationChanged(*config, isSeamless);
}

void QNetworkSession_Connect_PreferredConfigurationChanged(QNetworkSession* self, intptr_t slot) {
    void (*slotFunc)(QNetworkSession*, QNetworkConfiguration*, bool) = reinterpret_cast<void (*)(QNetworkSession*, QNetworkConfiguration*, bool)>(slot);
    QNetworkSession::connect(self, &QNetworkSession::preferredConfigurationChanged, [self, slotFunc](const QNetworkConfiguration& config, bool isSeamless) {
        const QNetworkConfiguration& config_ret = config;
        // Cast returned reference into pointer
        QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&config_ret);
        bool sigval2 = isSeamless;
        slotFunc(self, sigval1, sigval2);
    });
}

void QNetworkSession_NewConfigurationActivated(QNetworkSession* self) {
    self->newConfigurationActivated();
}

void QNetworkSession_Connect_NewConfigurationActivated(QNetworkSession* self, intptr_t slot) {
    void (*slotFunc)(QNetworkSession*) = reinterpret_cast<void (*)(QNetworkSession*)>(slot);
    QNetworkSession::connect(self, &QNetworkSession::newConfigurationActivated, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QNetworkSession_UsagePoliciesChanged(QNetworkSession* self, int usagePolicies) {
    self->usagePoliciesChanged(static_cast<QNetworkSession::UsagePolicies>(usagePolicies));
}

void QNetworkSession_Connect_UsagePoliciesChanged(QNetworkSession* self, intptr_t slot) {
    void (*slotFunc)(QNetworkSession*, int) = reinterpret_cast<void (*)(QNetworkSession*, int)>(slot);
    QNetworkSession::connect(self, &QNetworkSession::usagePoliciesChanged, [self, slotFunc](QNetworkSession::UsagePolicies usagePolicies) {
        int sigval1 = static_cast<int>(usagePolicies);
        slotFunc(self, sigval1);
    });
}

libqt_string QNetworkSession_Tr2(const char* s, const char* c) {
    QString _ret = QNetworkSession::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkSession_Tr3(const char* s, const char* c, int n) {
    QString _ret = QNetworkSession::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkSession_TrUtf82(const char* s, const char* c) {
    QString _ret = QNetworkSession::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkSession_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QNetworkSession::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QNetworkSession_WaitForOpened1(QNetworkSession* self, int msecs) {
    return self->waitForOpened(static_cast<int>(msecs));
}

// Derived class handler implementation
void QNetworkSession_ConnectNotify(QNetworkSession* self, QMetaMethod* signal) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->connectNotify(*signal);
    } else {
        vqnetworksession->connectNotify(*signal);
    }
}

// Base class handler implementation
void QNetworkSession_QBaseConnectNotify(QNetworkSession* self, QMetaMethod* signal) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_ConnectNotify_IsBase(true);
        vqnetworksession->connectNotify(*signal);
    } else {
        vqnetworksession->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnConnectNotify(QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_ConnectNotify_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkSession_DisconnectNotify(QNetworkSession* self, QMetaMethod* signal) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->disconnectNotify(*signal);
    } else {
        vqnetworksession->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QNetworkSession_QBaseDisconnectNotify(QNetworkSession* self, QMetaMethod* signal) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_DisconnectNotify_IsBase(true);
        vqnetworksession->disconnectNotify(*signal);
    } else {
        vqnetworksession->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnDisconnectNotify(QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_DisconnectNotify_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
bool QNetworkSession_Event(QNetworkSession* self, QEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        return vqnetworksession->event(event);
    } else {
        return vqnetworksession->event(event);
    }
}

// Base class handler implementation
bool QNetworkSession_QBaseEvent(QNetworkSession* self, QEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_Event_IsBase(true);
        return vqnetworksession->event(event);
    } else {
        return vqnetworksession->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnEvent(QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_Event_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QNetworkSession_EventFilter(QNetworkSession* self, QObject* watched, QEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        return vqnetworksession->eventFilter(watched, event);
    } else {
        return vqnetworksession->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QNetworkSession_QBaseEventFilter(QNetworkSession* self, QObject* watched, QEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_EventFilter_IsBase(true);
        return vqnetworksession->eventFilter(watched, event);
    } else {
        return vqnetworksession->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnEventFilter(QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_EventFilter_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkSession_TimerEvent(QNetworkSession* self, QTimerEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->timerEvent(event);
    } else {
        vqnetworksession->timerEvent(event);
    }
}

// Base class handler implementation
void QNetworkSession_QBaseTimerEvent(QNetworkSession* self, QTimerEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_TimerEvent_IsBase(true);
        vqnetworksession->timerEvent(event);
    } else {
        vqnetworksession->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnTimerEvent(QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_TimerEvent_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkSession_ChildEvent(QNetworkSession* self, QChildEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->childEvent(event);
    } else {
        vqnetworksession->childEvent(event);
    }
}

// Base class handler implementation
void QNetworkSession_QBaseChildEvent(QNetworkSession* self, QChildEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_ChildEvent_IsBase(true);
        vqnetworksession->childEvent(event);
    } else {
        vqnetworksession->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnChildEvent(QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_ChildEvent_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QNetworkSession_CustomEvent(QNetworkSession* self, QEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->customEvent(event);
    } else {
        vqnetworksession->customEvent(event);
    }
}

// Base class handler implementation
void QNetworkSession_QBaseCustomEvent(QNetworkSession* self, QEvent* event) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_CustomEvent_IsBase(true);
        vqnetworksession->customEvent(event);
    } else {
        vqnetworksession->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnCustomEvent(QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = dynamic_cast<VirtualQNetworkSession*>(self)) {
        vqnetworksession->setQNetworkSession_CustomEvent_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QNetworkSession_Sender(const QNetworkSession* self) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        return vqnetworksession->sender();
    } else {
        return vqnetworksession->sender();
    }
}

// Base class handler implementation
QObject* QNetworkSession_QBaseSender(const QNetworkSession* self) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        vqnetworksession->setQNetworkSession_Sender_IsBase(true);
        return vqnetworksession->sender();
    } else {
        return vqnetworksession->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnSender(const QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        vqnetworksession->setQNetworkSession_Sender_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QNetworkSession_SenderSignalIndex(const QNetworkSession* self) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        return vqnetworksession->senderSignalIndex();
    } else {
        return vqnetworksession->senderSignalIndex();
    }
}

// Base class handler implementation
int QNetworkSession_QBaseSenderSignalIndex(const QNetworkSession* self) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        vqnetworksession->setQNetworkSession_SenderSignalIndex_IsBase(true);
        return vqnetworksession->senderSignalIndex();
    } else {
        return vqnetworksession->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnSenderSignalIndex(const QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        vqnetworksession->setQNetworkSession_SenderSignalIndex_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QNetworkSession_Receivers(const QNetworkSession* self, const char* signal) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        return vqnetworksession->receivers(signal);
    } else {
        return vqnetworksession->receivers(signal);
    }
}

// Base class handler implementation
int QNetworkSession_QBaseReceivers(const QNetworkSession* self, const char* signal) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        vqnetworksession->setQNetworkSession_Receivers_IsBase(true);
        return vqnetworksession->receivers(signal);
    } else {
        return vqnetworksession->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnReceivers(const QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        vqnetworksession->setQNetworkSession_Receivers_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QNetworkSession_IsSignalConnected(const QNetworkSession* self, QMetaMethod* signal) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        return vqnetworksession->isSignalConnected(*signal);
    } else {
        return vqnetworksession->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QNetworkSession_QBaseIsSignalConnected(const QNetworkSession* self, QMetaMethod* signal) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        vqnetworksession->setQNetworkSession_IsSignalConnected_IsBase(true);
        return vqnetworksession->isSignalConnected(*signal);
    } else {
        return vqnetworksession->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QNetworkSession_OnIsSignalConnected(const QNetworkSession* self, intptr_t slot) {
    if (auto* vqnetworksession = const_cast<VirtualQNetworkSession*>(dynamic_cast<const VirtualQNetworkSession*>(self))) {
        vqnetworksession->setQNetworkSession_IsSignalConnected_Callback(reinterpret_cast<VirtualQNetworkSession::QNetworkSession_IsSignalConnected_Callback>(slot));
    }
}

void QNetworkSession_Delete(QNetworkSession* self) {
    delete self;
}
