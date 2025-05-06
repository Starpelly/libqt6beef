#include <QAbstractAnimation>
#include <QAbstractState>
#include <QAbstractTransition>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QEventTransition>
#include <QKeyEventTransition>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QState>
#include <QStateMachine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qkeyeventtransition.h>
#include "libqkeyeventtransition.h"
#include "libqkeyeventtransition.hxx"

QKeyEventTransition* QKeyEventTransition_new() {
    return new VirtualQKeyEventTransition();
}

QKeyEventTransition* QKeyEventTransition_new2(QObject* object, int typeVal, int key) {
    return new VirtualQKeyEventTransition(object, static_cast<QEvent::Type>(typeVal), static_cast<int>(key));
}

QKeyEventTransition* QKeyEventTransition_new3(QState* sourceState) {
    return new VirtualQKeyEventTransition(sourceState);
}

QKeyEventTransition* QKeyEventTransition_new4(QObject* object, int typeVal, int key, QState* sourceState) {
    return new VirtualQKeyEventTransition(object, static_cast<QEvent::Type>(typeVal), static_cast<int>(key), sourceState);
}

QMetaObject* QKeyEventTransition_MetaObject(const QKeyEventTransition* self) {
    return (QMetaObject*)self->metaObject();
}

void* QKeyEventTransition_Metacast(QKeyEventTransition* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QKeyEventTransition_Metacall(QKeyEventTransition* self, int param1, int param2, void** param3) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QKeyEventTransition_OnMetacall(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_Metacall_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QKeyEventTransition_QBaseMetacall(QKeyEventTransition* self, int param1, int param2, void** param3) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_Metacall_IsBase(true);
        return vqkeyeventtransition->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QKeyEventTransition_Tr(const char* s) {
    QString _ret = QKeyEventTransition::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QKeyEventTransition_TrUtf8(const char* s) {
    QString _ret = QKeyEventTransition::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QKeyEventTransition_Key(const QKeyEventTransition* self) {
    return self->key();
}

void QKeyEventTransition_SetKey(QKeyEventTransition* self, int key) {
    self->setKey(static_cast<int>(key));
}

int QKeyEventTransition_ModifierMask(const QKeyEventTransition* self) {
    return static_cast<int>(self->modifierMask());
}

void QKeyEventTransition_SetModifierMask(QKeyEventTransition* self, int modifiers) {
    self->setModifierMask(static_cast<Qt::KeyboardModifiers>(modifiers));
}

libqt_string QKeyEventTransition_Tr2(const char* s, const char* c) {
    QString _ret = QKeyEventTransition::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QKeyEventTransition_Tr3(const char* s, const char* c, int n) {
    QString _ret = QKeyEventTransition::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QKeyEventTransition_TrUtf82(const char* s, const char* c) {
    QString _ret = QKeyEventTransition::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QKeyEventTransition_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QKeyEventTransition::trUtf8(s, c, static_cast<int>(n));
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
void QKeyEventTransition_OnTransition(QKeyEventTransition* self, QEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->onTransition(event);
    } else {
        vqkeyeventtransition->onTransition(event);
    }
}

// Base class handler implementation
void QKeyEventTransition_QBaseOnTransition(QKeyEventTransition* self, QEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_OnTransition_IsBase(true);
        vqkeyeventtransition->onTransition(event);
    } else {
        vqkeyeventtransition->onTransition(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnOnTransition(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_OnTransition_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_OnTransition_Callback>(slot));
    }
}

// Derived class handler implementation
bool QKeyEventTransition_EventTest(QKeyEventTransition* self, QEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        return vqkeyeventtransition->eventTest(event);
    } else {
        return vqkeyeventtransition->eventTest(event);
    }
}

// Base class handler implementation
bool QKeyEventTransition_QBaseEventTest(QKeyEventTransition* self, QEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_EventTest_IsBase(true);
        return vqkeyeventtransition->eventTest(event);
    } else {
        return vqkeyeventtransition->eventTest(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnEventTest(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_EventTest_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_EventTest_Callback>(slot));
    }
}

// Derived class handler implementation
bool QKeyEventTransition_Event(QKeyEventTransition* self, QEvent* e) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        return vqkeyeventtransition->event(e);
    } else {
        return vqkeyeventtransition->event(e);
    }
}

// Base class handler implementation
bool QKeyEventTransition_QBaseEvent(QKeyEventTransition* self, QEvent* e) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_Event_IsBase(true);
        return vqkeyeventtransition->event(e);
    } else {
        return vqkeyeventtransition->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnEvent(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_Event_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QKeyEventTransition_EventFilter(QKeyEventTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        return vqkeyeventtransition->eventFilter(watched, event);
    } else {
        return vqkeyeventtransition->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QKeyEventTransition_QBaseEventFilter(QKeyEventTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_EventFilter_IsBase(true);
        return vqkeyeventtransition->eventFilter(watched, event);
    } else {
        return vqkeyeventtransition->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnEventFilter(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_EventFilter_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QKeyEventTransition_TimerEvent(QKeyEventTransition* self, QTimerEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->timerEvent(event);
    } else {
        vqkeyeventtransition->timerEvent(event);
    }
}

// Base class handler implementation
void QKeyEventTransition_QBaseTimerEvent(QKeyEventTransition* self, QTimerEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_TimerEvent_IsBase(true);
        vqkeyeventtransition->timerEvent(event);
    } else {
        vqkeyeventtransition->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnTimerEvent(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_TimerEvent_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QKeyEventTransition_ChildEvent(QKeyEventTransition* self, QChildEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->childEvent(event);
    } else {
        vqkeyeventtransition->childEvent(event);
    }
}

// Base class handler implementation
void QKeyEventTransition_QBaseChildEvent(QKeyEventTransition* self, QChildEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_ChildEvent_IsBase(true);
        vqkeyeventtransition->childEvent(event);
    } else {
        vqkeyeventtransition->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnChildEvent(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_ChildEvent_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QKeyEventTransition_CustomEvent(QKeyEventTransition* self, QEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->customEvent(event);
    } else {
        vqkeyeventtransition->customEvent(event);
    }
}

// Base class handler implementation
void QKeyEventTransition_QBaseCustomEvent(QKeyEventTransition* self, QEvent* event) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_CustomEvent_IsBase(true);
        vqkeyeventtransition->customEvent(event);
    } else {
        vqkeyeventtransition->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnCustomEvent(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_CustomEvent_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QKeyEventTransition_ConnectNotify(QKeyEventTransition* self, QMetaMethod* signal) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->connectNotify(*signal);
    } else {
        vqkeyeventtransition->connectNotify(*signal);
    }
}

// Base class handler implementation
void QKeyEventTransition_QBaseConnectNotify(QKeyEventTransition* self, QMetaMethod* signal) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_ConnectNotify_IsBase(true);
        vqkeyeventtransition->connectNotify(*signal);
    } else {
        vqkeyeventtransition->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnConnectNotify(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_ConnectNotify_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QKeyEventTransition_DisconnectNotify(QKeyEventTransition* self, QMetaMethod* signal) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->disconnectNotify(*signal);
    } else {
        vqkeyeventtransition->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QKeyEventTransition_QBaseDisconnectNotify(QKeyEventTransition* self, QMetaMethod* signal) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_DisconnectNotify_IsBase(true);
        vqkeyeventtransition->disconnectNotify(*signal);
    } else {
        vqkeyeventtransition->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnDisconnectNotify(QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = dynamic_cast<VirtualQKeyEventTransition*>(self)) {
        vqkeyeventtransition->setQKeyEventTransition_DisconnectNotify_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QKeyEventTransition_Sender(const QKeyEventTransition* self) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        return vqkeyeventtransition->sender();
    } else {
        return vqkeyeventtransition->sender();
    }
}

// Base class handler implementation
QObject* QKeyEventTransition_QBaseSender(const QKeyEventTransition* self) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        vqkeyeventtransition->setQKeyEventTransition_Sender_IsBase(true);
        return vqkeyeventtransition->sender();
    } else {
        return vqkeyeventtransition->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnSender(const QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        vqkeyeventtransition->setQKeyEventTransition_Sender_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QKeyEventTransition_SenderSignalIndex(const QKeyEventTransition* self) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        return vqkeyeventtransition->senderSignalIndex();
    } else {
        return vqkeyeventtransition->senderSignalIndex();
    }
}

// Base class handler implementation
int QKeyEventTransition_QBaseSenderSignalIndex(const QKeyEventTransition* self) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        vqkeyeventtransition->setQKeyEventTransition_SenderSignalIndex_IsBase(true);
        return vqkeyeventtransition->senderSignalIndex();
    } else {
        return vqkeyeventtransition->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnSenderSignalIndex(const QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        vqkeyeventtransition->setQKeyEventTransition_SenderSignalIndex_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QKeyEventTransition_Receivers(const QKeyEventTransition* self, const char* signal) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        return vqkeyeventtransition->receivers(signal);
    } else {
        return vqkeyeventtransition->receivers(signal);
    }
}

// Base class handler implementation
int QKeyEventTransition_QBaseReceivers(const QKeyEventTransition* self, const char* signal) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        vqkeyeventtransition->setQKeyEventTransition_Receivers_IsBase(true);
        return vqkeyeventtransition->receivers(signal);
    } else {
        return vqkeyeventtransition->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnReceivers(const QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        vqkeyeventtransition->setQKeyEventTransition_Receivers_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QKeyEventTransition_IsSignalConnected(const QKeyEventTransition* self, QMetaMethod* signal) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        return vqkeyeventtransition->isSignalConnected(*signal);
    } else {
        return vqkeyeventtransition->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QKeyEventTransition_QBaseIsSignalConnected(const QKeyEventTransition* self, QMetaMethod* signal) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        vqkeyeventtransition->setQKeyEventTransition_IsSignalConnected_IsBase(true);
        return vqkeyeventtransition->isSignalConnected(*signal);
    } else {
        return vqkeyeventtransition->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QKeyEventTransition_OnIsSignalConnected(const QKeyEventTransition* self, intptr_t slot) {
    if (auto* vqkeyeventtransition = const_cast<VirtualQKeyEventTransition*>(dynamic_cast<const VirtualQKeyEventTransition*>(self))) {
        vqkeyeventtransition->setQKeyEventTransition_IsSignalConnected_Callback(reinterpret_cast<VirtualQKeyEventTransition::QKeyEventTransition_IsSignalConnected_Callback>(slot));
    }
}

void QKeyEventTransition_Delete(QKeyEventTransition* self) {
    delete self;
}
