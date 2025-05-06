#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QSound>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qsound.h>
#include "libqsound.h"
#include "libqsound.hxx"

QSound* QSound_new(libqt_string filename) {
    QString filename_QString = QString::fromUtf8(filename.data, filename.len);
    return new VirtualQSound(filename_QString);
}

QSound* QSound_new2(libqt_string filename, QObject* parent) {
    QString filename_QString = QString::fromUtf8(filename.data, filename.len);
    return new VirtualQSound(filename_QString, parent);
}

QMetaObject* QSound_MetaObject(const QSound* self) {
    return (QMetaObject*)self->metaObject();
}

void* QSound_Metacast(QSound* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QSound_Metacall(QSound* self, int param1, int param2, void** param3) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QSound_OnMetacall(QSound* self, intptr_t slot) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_Metacall_Callback(reinterpret_cast<VirtualQSound::QSound_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QSound_QBaseMetacall(QSound* self, int param1, int param2, void** param3) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_Metacall_IsBase(true);
        return vqsound->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QSound_Tr(const char* s) {
    QString _ret = QSound::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QSound_TrUtf8(const char* s) {
    QString _ret = QSound::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QSound_Play(libqt_string filename) {
    QString filename_QString = QString::fromUtf8(filename.data, filename.len);
    QSound::play(filename_QString);
}

int QSound_Loops(const QSound* self) {
    return self->loops();
}

int QSound_LoopsRemaining(const QSound* self) {
    return self->loopsRemaining();
}

void QSound_SetLoops(QSound* self, int loops) {
    self->setLoops(static_cast<int>(loops));
}

libqt_string QSound_FileName(const QSound* self) {
    QString _ret = self->fileName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QSound_IsFinished(const QSound* self) {
    return self->isFinished();
}

void QSound_Play2(QSound* self) {
    self->play();
}

void QSound_Stop(QSound* self) {
    self->stop();
}

libqt_string QSound_Tr2(const char* s, const char* c) {
    QString _ret = QSound::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QSound_Tr3(const char* s, const char* c, int n) {
    QString _ret = QSound::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QSound_TrUtf82(const char* s, const char* c) {
    QString _ret = QSound::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QSound_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QSound::trUtf8(s, c, static_cast<int>(n));
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
bool QSound_Event(QSound* self, QEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        return vqsound->event(event);
    } else {
        return vqsound->event(event);
    }
}

// Base class handler implementation
bool QSound_QBaseEvent(QSound* self, QEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_Event_IsBase(true);
        return vqsound->event(event);
    } else {
        return vqsound->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnEvent(QSound* self, intptr_t slot) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_Event_Callback(reinterpret_cast<VirtualQSound::QSound_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QSound_EventFilter(QSound* self, QObject* watched, QEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        return vqsound->eventFilter(watched, event);
    } else {
        return vqsound->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QSound_QBaseEventFilter(QSound* self, QObject* watched, QEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_EventFilter_IsBase(true);
        return vqsound->eventFilter(watched, event);
    } else {
        return vqsound->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnEventFilter(QSound* self, intptr_t slot) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_EventFilter_Callback(reinterpret_cast<VirtualQSound::QSound_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QSound_TimerEvent(QSound* self, QTimerEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->timerEvent(event);
    } else {
        vqsound->timerEvent(event);
    }
}

// Base class handler implementation
void QSound_QBaseTimerEvent(QSound* self, QTimerEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_TimerEvent_IsBase(true);
        vqsound->timerEvent(event);
    } else {
        vqsound->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnTimerEvent(QSound* self, intptr_t slot) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_TimerEvent_Callback(reinterpret_cast<VirtualQSound::QSound_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QSound_ChildEvent(QSound* self, QChildEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->childEvent(event);
    } else {
        vqsound->childEvent(event);
    }
}

// Base class handler implementation
void QSound_QBaseChildEvent(QSound* self, QChildEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_ChildEvent_IsBase(true);
        vqsound->childEvent(event);
    } else {
        vqsound->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnChildEvent(QSound* self, intptr_t slot) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_ChildEvent_Callback(reinterpret_cast<VirtualQSound::QSound_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QSound_CustomEvent(QSound* self, QEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->customEvent(event);
    } else {
        vqsound->customEvent(event);
    }
}

// Base class handler implementation
void QSound_QBaseCustomEvent(QSound* self, QEvent* event) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_CustomEvent_IsBase(true);
        vqsound->customEvent(event);
    } else {
        vqsound->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnCustomEvent(QSound* self, intptr_t slot) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_CustomEvent_Callback(reinterpret_cast<VirtualQSound::QSound_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QSound_ConnectNotify(QSound* self, QMetaMethod* signal) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->connectNotify(*signal);
    } else {
        vqsound->connectNotify(*signal);
    }
}

// Base class handler implementation
void QSound_QBaseConnectNotify(QSound* self, QMetaMethod* signal) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_ConnectNotify_IsBase(true);
        vqsound->connectNotify(*signal);
    } else {
        vqsound->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnConnectNotify(QSound* self, intptr_t slot) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_ConnectNotify_Callback(reinterpret_cast<VirtualQSound::QSound_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QSound_DisconnectNotify(QSound* self, QMetaMethod* signal) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->disconnectNotify(*signal);
    } else {
        vqsound->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QSound_QBaseDisconnectNotify(QSound* self, QMetaMethod* signal) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_DisconnectNotify_IsBase(true);
        vqsound->disconnectNotify(*signal);
    } else {
        vqsound->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnDisconnectNotify(QSound* self, intptr_t slot) {
    if (auto* vqsound = dynamic_cast<VirtualQSound*>(self)) {
        vqsound->setQSound_DisconnectNotify_Callback(reinterpret_cast<VirtualQSound::QSound_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QSound_Sender(const QSound* self) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        return vqsound->sender();
    } else {
        return vqsound->sender();
    }
}

// Base class handler implementation
QObject* QSound_QBaseSender(const QSound* self) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        vqsound->setQSound_Sender_IsBase(true);
        return vqsound->sender();
    } else {
        return vqsound->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnSender(const QSound* self, intptr_t slot) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        vqsound->setQSound_Sender_Callback(reinterpret_cast<VirtualQSound::QSound_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QSound_SenderSignalIndex(const QSound* self) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        return vqsound->senderSignalIndex();
    } else {
        return vqsound->senderSignalIndex();
    }
}

// Base class handler implementation
int QSound_QBaseSenderSignalIndex(const QSound* self) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        vqsound->setQSound_SenderSignalIndex_IsBase(true);
        return vqsound->senderSignalIndex();
    } else {
        return vqsound->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnSenderSignalIndex(const QSound* self, intptr_t slot) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        vqsound->setQSound_SenderSignalIndex_Callback(reinterpret_cast<VirtualQSound::QSound_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QSound_Receivers(const QSound* self, const char* signal) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        return vqsound->receivers(signal);
    } else {
        return vqsound->receivers(signal);
    }
}

// Base class handler implementation
int QSound_QBaseReceivers(const QSound* self, const char* signal) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        vqsound->setQSound_Receivers_IsBase(true);
        return vqsound->receivers(signal);
    } else {
        return vqsound->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnReceivers(const QSound* self, intptr_t slot) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        vqsound->setQSound_Receivers_Callback(reinterpret_cast<VirtualQSound::QSound_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QSound_IsSignalConnected(const QSound* self, QMetaMethod* signal) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        return vqsound->isSignalConnected(*signal);
    } else {
        return vqsound->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QSound_QBaseIsSignalConnected(const QSound* self, QMetaMethod* signal) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        vqsound->setQSound_IsSignalConnected_IsBase(true);
        return vqsound->isSignalConnected(*signal);
    } else {
        return vqsound->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QSound_OnIsSignalConnected(const QSound* self, intptr_t slot) {
    if (auto* vqsound = const_cast<VirtualQSound*>(dynamic_cast<const VirtualQSound*>(self))) {
        vqsound->setQSound_IsSignalConnected_Callback(reinterpret_cast<VirtualQSound::QSound_IsSignalConnected_Callback>(slot));
    }
}

void QSound_Delete(QSound* self) {
    delete self;
}
