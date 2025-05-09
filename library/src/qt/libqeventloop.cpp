#include <QAnyStringView>
#include <QBindingStorage>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QEventLoop>
#include <QEventLoopLocker>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qeventloop.h>
#include "libqeventloop.h"
#include "libqeventloop.hxx"

QEventLoop* QEventLoop_new() {
    return new VirtualQEventLoop();
}

QEventLoop* QEventLoop_new2(QObject* parent) {
    return new VirtualQEventLoop(parent);
}

QMetaObject* QEventLoop_MetaObject(const QEventLoop* self) {
    return (QMetaObject*)self->metaObject();
}

void* QEventLoop_Metacast(QEventLoop* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QEventLoop_Metacall(QEventLoop* self, int param1, int param2, void** param3) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QEventLoop_OnMetacall(QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_Metacall_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QEventLoop_QBaseMetacall(QEventLoop* self, int param1, int param2, void** param3) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_Metacall_IsBase(true);
        return vqeventloop->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QEventLoop_Tr(const char* s) {
    QString _ret = QEventLoop::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QEventLoop_ProcessEvents(QEventLoop* self) {
    return self->processEvents();
}

void QEventLoop_ProcessEvents2(QEventLoop* self, int flags, int maximumTime) {
    self->processEvents(static_cast<QEventLoop::ProcessEventsFlags>(flags), static_cast<int>(maximumTime));
}

int QEventLoop_Exec(QEventLoop* self) {
    return self->exec();
}

bool QEventLoop_IsRunning(const QEventLoop* self) {
    return self->isRunning();
}

void QEventLoop_WakeUp(QEventLoop* self) {
    self->wakeUp();
}

void QEventLoop_Exit(QEventLoop* self) {
    self->exit();
}

void QEventLoop_Quit(QEventLoop* self) {
    self->quit();
}

libqt_string QEventLoop_Tr2(const char* s, const char* c) {
    QString _ret = QEventLoop::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QEventLoop_Tr3(const char* s, const char* c, int n) {
    QString _ret = QEventLoop::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QEventLoop_ProcessEvents1(QEventLoop* self, int flags) {
    return self->processEvents(static_cast<QEventLoop::ProcessEventsFlags>(flags));
}

int QEventLoop_Exec1(QEventLoop* self, int flags) {
    return self->exec(static_cast<QEventLoop::ProcessEventsFlags>(flags));
}

void QEventLoop_Exit1(QEventLoop* self, int returnCode) {
    self->exit(static_cast<int>(returnCode));
}

// Derived class handler implementation
bool QEventLoop_Event(QEventLoop* self, QEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        return vqeventloop->event(event);
    } else {
        return vqeventloop->event(event);
    }
}

// Base class handler implementation
bool QEventLoop_QBaseEvent(QEventLoop* self, QEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_Event_IsBase(true);
        return vqeventloop->event(event);
    } else {
        return vqeventloop->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnEvent(QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_Event_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QEventLoop_EventFilter(QEventLoop* self, QObject* watched, QEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        return vqeventloop->eventFilter(watched, event);
    } else {
        return vqeventloop->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QEventLoop_QBaseEventFilter(QEventLoop* self, QObject* watched, QEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_EventFilter_IsBase(true);
        return vqeventloop->eventFilter(watched, event);
    } else {
        return vqeventloop->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnEventFilter(QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_EventFilter_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventLoop_TimerEvent(QEventLoop* self, QTimerEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->timerEvent(event);
    } else {
        vqeventloop->timerEvent(event);
    }
}

// Base class handler implementation
void QEventLoop_QBaseTimerEvent(QEventLoop* self, QTimerEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_TimerEvent_IsBase(true);
        vqeventloop->timerEvent(event);
    } else {
        vqeventloop->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnTimerEvent(QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_TimerEvent_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventLoop_ChildEvent(QEventLoop* self, QChildEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->childEvent(event);
    } else {
        vqeventloop->childEvent(event);
    }
}

// Base class handler implementation
void QEventLoop_QBaseChildEvent(QEventLoop* self, QChildEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_ChildEvent_IsBase(true);
        vqeventloop->childEvent(event);
    } else {
        vqeventloop->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnChildEvent(QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_ChildEvent_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventLoop_CustomEvent(QEventLoop* self, QEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->customEvent(event);
    } else {
        vqeventloop->customEvent(event);
    }
}

// Base class handler implementation
void QEventLoop_QBaseCustomEvent(QEventLoop* self, QEvent* event) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_CustomEvent_IsBase(true);
        vqeventloop->customEvent(event);
    } else {
        vqeventloop->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnCustomEvent(QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_CustomEvent_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventLoop_ConnectNotify(QEventLoop* self, QMetaMethod* signal) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->connectNotify(*signal);
    } else {
        vqeventloop->connectNotify(*signal);
    }
}

// Base class handler implementation
void QEventLoop_QBaseConnectNotify(QEventLoop* self, QMetaMethod* signal) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_ConnectNotify_IsBase(true);
        vqeventloop->connectNotify(*signal);
    } else {
        vqeventloop->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnConnectNotify(QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_ConnectNotify_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventLoop_DisconnectNotify(QEventLoop* self, QMetaMethod* signal) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->disconnectNotify(*signal);
    } else {
        vqeventloop->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QEventLoop_QBaseDisconnectNotify(QEventLoop* self, QMetaMethod* signal) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_DisconnectNotify_IsBase(true);
        vqeventloop->disconnectNotify(*signal);
    } else {
        vqeventloop->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnDisconnectNotify(QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = dynamic_cast<VirtualQEventLoop*>(self)) {
        vqeventloop->setQEventLoop_DisconnectNotify_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QEventLoop_Sender(const QEventLoop* self) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        return vqeventloop->sender();
    } else {
        return vqeventloop->sender();
    }
}

// Base class handler implementation
QObject* QEventLoop_QBaseSender(const QEventLoop* self) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        vqeventloop->setQEventLoop_Sender_IsBase(true);
        return vqeventloop->sender();
    } else {
        return vqeventloop->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnSender(const QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        vqeventloop->setQEventLoop_Sender_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QEventLoop_SenderSignalIndex(const QEventLoop* self) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        return vqeventloop->senderSignalIndex();
    } else {
        return vqeventloop->senderSignalIndex();
    }
}

// Base class handler implementation
int QEventLoop_QBaseSenderSignalIndex(const QEventLoop* self) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        vqeventloop->setQEventLoop_SenderSignalIndex_IsBase(true);
        return vqeventloop->senderSignalIndex();
    } else {
        return vqeventloop->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnSenderSignalIndex(const QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        vqeventloop->setQEventLoop_SenderSignalIndex_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QEventLoop_Receivers(const QEventLoop* self, const char* signal) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        return vqeventloop->receivers(signal);
    } else {
        return vqeventloop->receivers(signal);
    }
}

// Base class handler implementation
int QEventLoop_QBaseReceivers(const QEventLoop* self, const char* signal) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        vqeventloop->setQEventLoop_Receivers_IsBase(true);
        return vqeventloop->receivers(signal);
    } else {
        return vqeventloop->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnReceivers(const QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        vqeventloop->setQEventLoop_Receivers_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QEventLoop_IsSignalConnected(const QEventLoop* self, QMetaMethod* signal) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        return vqeventloop->isSignalConnected(*signal);
    } else {
        return vqeventloop->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QEventLoop_QBaseIsSignalConnected(const QEventLoop* self, QMetaMethod* signal) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        vqeventloop->setQEventLoop_IsSignalConnected_IsBase(true);
        return vqeventloop->isSignalConnected(*signal);
    } else {
        return vqeventloop->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventLoop_OnIsSignalConnected(const QEventLoop* self, intptr_t slot) {
    if (auto* vqeventloop = const_cast<VirtualQEventLoop*>(dynamic_cast<const VirtualQEventLoop*>(self))) {
        vqeventloop->setQEventLoop_IsSignalConnected_Callback(reinterpret_cast<VirtualQEventLoop::QEventLoop_IsSignalConnected_Callback>(slot));
    }
}

void QEventLoop_Delete(QEventLoop* self) {
    delete self;
}

QEventLoopLocker* QEventLoopLocker_new() {
    return new QEventLoopLocker();
}

QEventLoopLocker* QEventLoopLocker_new2(QEventLoop* loop) {
    return new QEventLoopLocker(loop);
}

QEventLoopLocker* QEventLoopLocker_new3(QThread* thread) {
    return new QEventLoopLocker(thread);
}

void QEventLoopLocker_Delete(QEventLoopLocker* self) {
    delete self;
}
