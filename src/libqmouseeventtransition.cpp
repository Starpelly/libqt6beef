#include <QAbstractAnimation>
#include <QAbstractState>
#include <QAbstractTransition>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QEventTransition>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QMouseEventTransition>
#include <QObject>
#include <QObjectUserData>
#include <QPainterPath>
#include <QState>
#include <QStateMachine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qmouseeventtransition.h>
#include "libqmouseeventtransition.h"
#include "libqmouseeventtransition.hxx"

QMouseEventTransition* QMouseEventTransition_new() {
    return new VirtualQMouseEventTransition();
}

QMouseEventTransition* QMouseEventTransition_new2(QObject* object, int typeVal, int button) {
    return new VirtualQMouseEventTransition(object, static_cast<QEvent::Type>(typeVal), static_cast<Qt::MouseButton>(button));
}

QMouseEventTransition* QMouseEventTransition_new3(QState* sourceState) {
    return new VirtualQMouseEventTransition(sourceState);
}

QMouseEventTransition* QMouseEventTransition_new4(QObject* object, int typeVal, int button, QState* sourceState) {
    return new VirtualQMouseEventTransition(object, static_cast<QEvent::Type>(typeVal), static_cast<Qt::MouseButton>(button), sourceState);
}

QMetaObject* QMouseEventTransition_MetaObject(const QMouseEventTransition* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMouseEventTransition_Metacast(QMouseEventTransition* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMouseEventTransition_Metacall(QMouseEventTransition* self, int param1, int param2, void** param3) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMouseEventTransition_OnMetacall(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_Metacall_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QMouseEventTransition_QBaseMetacall(QMouseEventTransition* self, int param1, int param2, void** param3) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_Metacall_IsBase(true);
        return vqmouseeventtransition->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QMouseEventTransition_Tr(const char* s) {
    QString _ret = QMouseEventTransition::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMouseEventTransition_TrUtf8(const char* s) {
    QString _ret = QMouseEventTransition::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMouseEventTransition_Button(const QMouseEventTransition* self) {
    return static_cast<int>(self->button());
}

void QMouseEventTransition_SetButton(QMouseEventTransition* self, int button) {
    self->setButton(static_cast<Qt::MouseButton>(button));
}

int QMouseEventTransition_ModifierMask(const QMouseEventTransition* self) {
    return static_cast<int>(self->modifierMask());
}

void QMouseEventTransition_SetModifierMask(QMouseEventTransition* self, int modifiers) {
    self->setModifierMask(static_cast<Qt::KeyboardModifiers>(modifiers));
}

QPainterPath* QMouseEventTransition_HitTestPath(const QMouseEventTransition* self) {
    return new QPainterPath(self->hitTestPath());
}

void QMouseEventTransition_SetHitTestPath(QMouseEventTransition* self, QPainterPath* path) {
    self->setHitTestPath(*path);
}

libqt_string QMouseEventTransition_Tr2(const char* s, const char* c) {
    QString _ret = QMouseEventTransition::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMouseEventTransition_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMouseEventTransition::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMouseEventTransition_TrUtf82(const char* s, const char* c) {
    QString _ret = QMouseEventTransition::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMouseEventTransition_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMouseEventTransition::trUtf8(s, c, static_cast<int>(n));
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
void QMouseEventTransition_OnTransition(QMouseEventTransition* self, QEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->onTransition(event);
    } else {
        vqmouseeventtransition->onTransition(event);
    }
}

// Base class handler implementation
void QMouseEventTransition_QBaseOnTransition(QMouseEventTransition* self, QEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_OnTransition_IsBase(true);
        vqmouseeventtransition->onTransition(event);
    } else {
        vqmouseeventtransition->onTransition(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnOnTransition(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_OnTransition_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_OnTransition_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMouseEventTransition_EventTest(QMouseEventTransition* self, QEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        return vqmouseeventtransition->eventTest(event);
    } else {
        return vqmouseeventtransition->eventTest(event);
    }
}

// Base class handler implementation
bool QMouseEventTransition_QBaseEventTest(QMouseEventTransition* self, QEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_EventTest_IsBase(true);
        return vqmouseeventtransition->eventTest(event);
    } else {
        return vqmouseeventtransition->eventTest(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnEventTest(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_EventTest_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_EventTest_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMouseEventTransition_Event(QMouseEventTransition* self, QEvent* e) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        return vqmouseeventtransition->event(e);
    } else {
        return vqmouseeventtransition->event(e);
    }
}

// Base class handler implementation
bool QMouseEventTransition_QBaseEvent(QMouseEventTransition* self, QEvent* e) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_Event_IsBase(true);
        return vqmouseeventtransition->event(e);
    } else {
        return vqmouseeventtransition->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnEvent(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_Event_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMouseEventTransition_EventFilter(QMouseEventTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        return vqmouseeventtransition->eventFilter(watched, event);
    } else {
        return vqmouseeventtransition->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QMouseEventTransition_QBaseEventFilter(QMouseEventTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_EventFilter_IsBase(true);
        return vqmouseeventtransition->eventFilter(watched, event);
    } else {
        return vqmouseeventtransition->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnEventFilter(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_EventFilter_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QMouseEventTransition_TimerEvent(QMouseEventTransition* self, QTimerEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->timerEvent(event);
    } else {
        vqmouseeventtransition->timerEvent(event);
    }
}

// Base class handler implementation
void QMouseEventTransition_QBaseTimerEvent(QMouseEventTransition* self, QTimerEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_TimerEvent_IsBase(true);
        vqmouseeventtransition->timerEvent(event);
    } else {
        vqmouseeventtransition->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnTimerEvent(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_TimerEvent_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMouseEventTransition_ChildEvent(QMouseEventTransition* self, QChildEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->childEvent(event);
    } else {
        vqmouseeventtransition->childEvent(event);
    }
}

// Base class handler implementation
void QMouseEventTransition_QBaseChildEvent(QMouseEventTransition* self, QChildEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_ChildEvent_IsBase(true);
        vqmouseeventtransition->childEvent(event);
    } else {
        vqmouseeventtransition->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnChildEvent(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_ChildEvent_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMouseEventTransition_CustomEvent(QMouseEventTransition* self, QEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->customEvent(event);
    } else {
        vqmouseeventtransition->customEvent(event);
    }
}

// Base class handler implementation
void QMouseEventTransition_QBaseCustomEvent(QMouseEventTransition* self, QEvent* event) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_CustomEvent_IsBase(true);
        vqmouseeventtransition->customEvent(event);
    } else {
        vqmouseeventtransition->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnCustomEvent(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_CustomEvent_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMouseEventTransition_ConnectNotify(QMouseEventTransition* self, QMetaMethod* signal) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->connectNotify(*signal);
    } else {
        vqmouseeventtransition->connectNotify(*signal);
    }
}

// Base class handler implementation
void QMouseEventTransition_QBaseConnectNotify(QMouseEventTransition* self, QMetaMethod* signal) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_ConnectNotify_IsBase(true);
        vqmouseeventtransition->connectNotify(*signal);
    } else {
        vqmouseeventtransition->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnConnectNotify(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_ConnectNotify_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QMouseEventTransition_DisconnectNotify(QMouseEventTransition* self, QMetaMethod* signal) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->disconnectNotify(*signal);
    } else {
        vqmouseeventtransition->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QMouseEventTransition_QBaseDisconnectNotify(QMouseEventTransition* self, QMetaMethod* signal) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_DisconnectNotify_IsBase(true);
        vqmouseeventtransition->disconnectNotify(*signal);
    } else {
        vqmouseeventtransition->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnDisconnectNotify(QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = dynamic_cast<VirtualQMouseEventTransition*>(self)) {
        vqmouseeventtransition->setQMouseEventTransition_DisconnectNotify_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QMouseEventTransition_Sender(const QMouseEventTransition* self) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        return vqmouseeventtransition->sender();
    } else {
        return vqmouseeventtransition->sender();
    }
}

// Base class handler implementation
QObject* QMouseEventTransition_QBaseSender(const QMouseEventTransition* self) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        vqmouseeventtransition->setQMouseEventTransition_Sender_IsBase(true);
        return vqmouseeventtransition->sender();
    } else {
        return vqmouseeventtransition->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnSender(const QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        vqmouseeventtransition->setQMouseEventTransition_Sender_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QMouseEventTransition_SenderSignalIndex(const QMouseEventTransition* self) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        return vqmouseeventtransition->senderSignalIndex();
    } else {
        return vqmouseeventtransition->senderSignalIndex();
    }
}

// Base class handler implementation
int QMouseEventTransition_QBaseSenderSignalIndex(const QMouseEventTransition* self) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        vqmouseeventtransition->setQMouseEventTransition_SenderSignalIndex_IsBase(true);
        return vqmouseeventtransition->senderSignalIndex();
    } else {
        return vqmouseeventtransition->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnSenderSignalIndex(const QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        vqmouseeventtransition->setQMouseEventTransition_SenderSignalIndex_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QMouseEventTransition_Receivers(const QMouseEventTransition* self, const char* signal) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        return vqmouseeventtransition->receivers(signal);
    } else {
        return vqmouseeventtransition->receivers(signal);
    }
}

// Base class handler implementation
int QMouseEventTransition_QBaseReceivers(const QMouseEventTransition* self, const char* signal) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        vqmouseeventtransition->setQMouseEventTransition_Receivers_IsBase(true);
        return vqmouseeventtransition->receivers(signal);
    } else {
        return vqmouseeventtransition->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnReceivers(const QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        vqmouseeventtransition->setQMouseEventTransition_Receivers_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMouseEventTransition_IsSignalConnected(const QMouseEventTransition* self, QMetaMethod* signal) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        return vqmouseeventtransition->isSignalConnected(*signal);
    } else {
        return vqmouseeventtransition->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QMouseEventTransition_QBaseIsSignalConnected(const QMouseEventTransition* self, QMetaMethod* signal) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        vqmouseeventtransition->setQMouseEventTransition_IsSignalConnected_IsBase(true);
        return vqmouseeventtransition->isSignalConnected(*signal);
    } else {
        return vqmouseeventtransition->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMouseEventTransition_OnIsSignalConnected(const QMouseEventTransition* self, intptr_t slot) {
    if (auto* vqmouseeventtransition = const_cast<VirtualQMouseEventTransition*>(dynamic_cast<const VirtualQMouseEventTransition*>(self))) {
        vqmouseeventtransition->setQMouseEventTransition_IsSignalConnected_Callback(reinterpret_cast<VirtualQMouseEventTransition::QMouseEventTransition_IsSignalConnected_Callback>(slot));
    }
}

void QMouseEventTransition_Delete(QMouseEventTransition* self) {
    delete self;
}
