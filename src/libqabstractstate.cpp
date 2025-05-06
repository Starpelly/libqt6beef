#include <QAbstractState>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
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
#include <qabstractstate.h>
#include "libqabstractstate.h"
#include "libqabstractstate.hxx"

QMetaObject* QAbstractState_MetaObject(const QAbstractState* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAbstractState_Metacast(QAbstractState* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAbstractState_Metacall(QAbstractState* self, int param1, int param2, void** param3) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnMetacall(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_Metacall_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAbstractState_QBaseMetacall(QAbstractState* self, int param1, int param2, void** param3) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_Metacall_IsBase(true);
        return vqabstractstate->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAbstractState_Tr(const char* s) {
    QString _ret = QAbstractState::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractState_TrUtf8(const char* s) {
    QString _ret = QAbstractState::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QState* QAbstractState_ParentState(const QAbstractState* self) {
    return self->parentState();
}

QStateMachine* QAbstractState_Machine(const QAbstractState* self) {
    return self->machine();
}

bool QAbstractState_Active(const QAbstractState* self) {
    return self->active();
}

void QAbstractState_ActiveChanged(QAbstractState* self, bool active) {
    self->activeChanged(active);
}

void QAbstractState_Connect_ActiveChanged(QAbstractState* self, intptr_t slot) {
    void (*slotFunc)(QAbstractState*, bool) = reinterpret_cast<void (*)(QAbstractState*, bool)>(slot);
    QAbstractState::connect(self, &QAbstractState::activeChanged, [self, slotFunc](bool active) {
        bool sigval1 = active;
        slotFunc(self, sigval1);
    });
}

void QAbstractState_OnEntry(QAbstractState* self, QEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->onEntry(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnOnEntry(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_OnEntry_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_OnEntry_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QAbstractState_QBaseOnEntry(QAbstractState* self, QEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_OnEntry_IsBase(true);
        vqabstractstate->onEntry(event);
    }
}

void QAbstractState_OnExit(QAbstractState* self, QEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->onExit(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnOnExit(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_OnExit_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_OnExit_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QAbstractState_QBaseOnExit(QAbstractState* self, QEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_OnExit_IsBase(true);
        vqabstractstate->onExit(event);
    }
}

bool QAbstractState_Event(QAbstractState* self, QEvent* e) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        return vqabstractstate->event(e);
    }
    return {};
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnEvent(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_Event_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_Event_Callback>(slot));
    }
}

// Virtual base class handler implementation
bool QAbstractState_QBaseEvent(QAbstractState* self, QEvent* e) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_Event_IsBase(true);
        return vqabstractstate->event(e);
    }
    return {};
}

libqt_string QAbstractState_Tr2(const char* s, const char* c) {
    QString _ret = QAbstractState::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractState_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAbstractState::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractState_TrUtf82(const char* s, const char* c) {
    QString _ret = QAbstractState::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractState_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAbstractState::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAbstractState_EventFilter(QAbstractState* self, QObject* watched, QEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        return self->eventFilter(watched, event);
    } else {
        return self->eventFilter(watched, event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnEventFilter(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_EventFilter_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_EventFilter_Callback>(slot));
    }
}

// Virtual base class handler implementation
bool QAbstractState_QBaseEventFilter(QAbstractState* self, QObject* watched, QEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_EventFilter_IsBase(true);
        return vqabstractstate->eventFilter(watched, event);
    } else {
        return self->eventFilter(watched, event);
    }
}

void QAbstractState_TimerEvent(QAbstractState* self, QTimerEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->timerEvent(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnTimerEvent(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_TimerEvent_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_TimerEvent_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QAbstractState_QBaseTimerEvent(QAbstractState* self, QTimerEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_TimerEvent_IsBase(true);
        vqabstractstate->timerEvent(event);
    }
}

void QAbstractState_ChildEvent(QAbstractState* self, QChildEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->childEvent(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnChildEvent(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_ChildEvent_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_ChildEvent_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QAbstractState_QBaseChildEvent(QAbstractState* self, QChildEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_ChildEvent_IsBase(true);
        vqabstractstate->childEvent(event);
    }
}

void QAbstractState_CustomEvent(QAbstractState* self, QEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->customEvent(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnCustomEvent(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_CustomEvent_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_CustomEvent_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QAbstractState_QBaseCustomEvent(QAbstractState* self, QEvent* event) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_CustomEvent_IsBase(true);
        vqabstractstate->customEvent(event);
    }
}

void QAbstractState_ConnectNotify(QAbstractState* self, QMetaMethod* signal) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->connectNotify(*signal);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnConnectNotify(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_ConnectNotify_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_ConnectNotify_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QAbstractState_QBaseConnectNotify(QAbstractState* self, QMetaMethod* signal) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_ConnectNotify_IsBase(true);
        vqabstractstate->connectNotify(*signal);
    }
}

void QAbstractState_DisconnectNotify(QAbstractState* self, QMetaMethod* signal) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->disconnectNotify(*signal);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractState_OnDisconnectNotify(QAbstractState* self, intptr_t slot) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_DisconnectNotify_Callback(reinterpret_cast<VirtualQAbstractState::QAbstractState_DisconnectNotify_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QAbstractState_QBaseDisconnectNotify(QAbstractState* self, QMetaMethod* signal) {
    if (auto* vqabstractstate = dynamic_cast<VirtualQAbstractState*>(self)) {
        vqabstractstate->setQAbstractState_DisconnectNotify_IsBase(true);
        vqabstractstate->disconnectNotify(*signal);
    }
}

void QAbstractState_Delete(QAbstractState* self) {
    delete self;
}
