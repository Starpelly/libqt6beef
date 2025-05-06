#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaObject>
#include <QMediaRecorder>
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
#include <QVideoFrame>
#include <QVideoProbe>
#include <qvideoprobe.h>
#include "libqvideoprobe.h"
#include "libqvideoprobe.hxx"

QVideoProbe* QVideoProbe_new() {
    return new VirtualQVideoProbe();
}

QVideoProbe* QVideoProbe_new2(QObject* parent) {
    return new VirtualQVideoProbe(parent);
}

QMetaObject* QVideoProbe_MetaObject(const QVideoProbe* self) {
    return (QMetaObject*)self->metaObject();
}

void* QVideoProbe_Metacast(QVideoProbe* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QVideoProbe_Metacall(QVideoProbe* self, int param1, int param2, void** param3) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QVideoProbe_OnMetacall(QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_Metacall_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QVideoProbe_QBaseMetacall(QVideoProbe* self, int param1, int param2, void** param3) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_Metacall_IsBase(true);
        return vqvideoprobe->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QVideoProbe_Tr(const char* s) {
    QString _ret = QVideoProbe::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoProbe_TrUtf8(const char* s) {
    QString _ret = QVideoProbe::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QVideoProbe_SetSource(QVideoProbe* self, QMediaObject* source) {
    return self->setSource(source);
}

bool QVideoProbe_SetSourceWithSource(QVideoProbe* self, QMediaRecorder* source) {
    return self->setSource(source);
}

bool QVideoProbe_IsActive(const QVideoProbe* self) {
    return self->isActive();
}

void QVideoProbe_VideoFrameProbed(QVideoProbe* self, QVideoFrame* frame) {
    self->videoFrameProbed(*frame);
}

void QVideoProbe_Connect_VideoFrameProbed(QVideoProbe* self, intptr_t slot) {
    void (*slotFunc)(QVideoProbe*, QVideoFrame*) = reinterpret_cast<void (*)(QVideoProbe*, QVideoFrame*)>(slot);
    QVideoProbe::connect(self, &QVideoProbe::videoFrameProbed, [self, slotFunc](const QVideoFrame& frame) {
        const QVideoFrame& frame_ret = frame;
        // Cast returned reference into pointer
        QVideoFrame* sigval1 = const_cast<QVideoFrame*>(&frame_ret);
        slotFunc(self, sigval1);
    });
}

void QVideoProbe_Flush(QVideoProbe* self) {
    self->flush();
}

void QVideoProbe_Connect_Flush(QVideoProbe* self, intptr_t slot) {
    void (*slotFunc)(QVideoProbe*) = reinterpret_cast<void (*)(QVideoProbe*)>(slot);
    QVideoProbe::connect(self, &QVideoProbe::flush, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QVideoProbe_Tr2(const char* s, const char* c) {
    QString _ret = QVideoProbe::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoProbe_Tr3(const char* s, const char* c, int n) {
    QString _ret = QVideoProbe::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoProbe_TrUtf82(const char* s, const char* c) {
    QString _ret = QVideoProbe::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoProbe_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QVideoProbe::trUtf8(s, c, static_cast<int>(n));
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
bool QVideoProbe_Event(QVideoProbe* self, QEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        return vqvideoprobe->event(event);
    } else {
        return vqvideoprobe->event(event);
    }
}

// Base class handler implementation
bool QVideoProbe_QBaseEvent(QVideoProbe* self, QEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_Event_IsBase(true);
        return vqvideoprobe->event(event);
    } else {
        return vqvideoprobe->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnEvent(QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_Event_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QVideoProbe_EventFilter(QVideoProbe* self, QObject* watched, QEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        return vqvideoprobe->eventFilter(watched, event);
    } else {
        return vqvideoprobe->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QVideoProbe_QBaseEventFilter(QVideoProbe* self, QObject* watched, QEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_EventFilter_IsBase(true);
        return vqvideoprobe->eventFilter(watched, event);
    } else {
        return vqvideoprobe->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnEventFilter(QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_EventFilter_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QVideoProbe_TimerEvent(QVideoProbe* self, QTimerEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->timerEvent(event);
    } else {
        vqvideoprobe->timerEvent(event);
    }
}

// Base class handler implementation
void QVideoProbe_QBaseTimerEvent(QVideoProbe* self, QTimerEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_TimerEvent_IsBase(true);
        vqvideoprobe->timerEvent(event);
    } else {
        vqvideoprobe->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnTimerEvent(QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_TimerEvent_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QVideoProbe_ChildEvent(QVideoProbe* self, QChildEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->childEvent(event);
    } else {
        vqvideoprobe->childEvent(event);
    }
}

// Base class handler implementation
void QVideoProbe_QBaseChildEvent(QVideoProbe* self, QChildEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_ChildEvent_IsBase(true);
        vqvideoprobe->childEvent(event);
    } else {
        vqvideoprobe->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnChildEvent(QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_ChildEvent_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QVideoProbe_CustomEvent(QVideoProbe* self, QEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->customEvent(event);
    } else {
        vqvideoprobe->customEvent(event);
    }
}

// Base class handler implementation
void QVideoProbe_QBaseCustomEvent(QVideoProbe* self, QEvent* event) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_CustomEvent_IsBase(true);
        vqvideoprobe->customEvent(event);
    } else {
        vqvideoprobe->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnCustomEvent(QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_CustomEvent_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QVideoProbe_ConnectNotify(QVideoProbe* self, QMetaMethod* signal) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->connectNotify(*signal);
    } else {
        vqvideoprobe->connectNotify(*signal);
    }
}

// Base class handler implementation
void QVideoProbe_QBaseConnectNotify(QVideoProbe* self, QMetaMethod* signal) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_ConnectNotify_IsBase(true);
        vqvideoprobe->connectNotify(*signal);
    } else {
        vqvideoprobe->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnConnectNotify(QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_ConnectNotify_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QVideoProbe_DisconnectNotify(QVideoProbe* self, QMetaMethod* signal) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->disconnectNotify(*signal);
    } else {
        vqvideoprobe->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QVideoProbe_QBaseDisconnectNotify(QVideoProbe* self, QMetaMethod* signal) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_DisconnectNotify_IsBase(true);
        vqvideoprobe->disconnectNotify(*signal);
    } else {
        vqvideoprobe->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnDisconnectNotify(QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = dynamic_cast<VirtualQVideoProbe*>(self)) {
        vqvideoprobe->setQVideoProbe_DisconnectNotify_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QVideoProbe_Sender(const QVideoProbe* self) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        return vqvideoprobe->sender();
    } else {
        return vqvideoprobe->sender();
    }
}

// Base class handler implementation
QObject* QVideoProbe_QBaseSender(const QVideoProbe* self) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        vqvideoprobe->setQVideoProbe_Sender_IsBase(true);
        return vqvideoprobe->sender();
    } else {
        return vqvideoprobe->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnSender(const QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        vqvideoprobe->setQVideoProbe_Sender_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QVideoProbe_SenderSignalIndex(const QVideoProbe* self) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        return vqvideoprobe->senderSignalIndex();
    } else {
        return vqvideoprobe->senderSignalIndex();
    }
}

// Base class handler implementation
int QVideoProbe_QBaseSenderSignalIndex(const QVideoProbe* self) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        vqvideoprobe->setQVideoProbe_SenderSignalIndex_IsBase(true);
        return vqvideoprobe->senderSignalIndex();
    } else {
        return vqvideoprobe->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnSenderSignalIndex(const QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        vqvideoprobe->setQVideoProbe_SenderSignalIndex_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QVideoProbe_Receivers(const QVideoProbe* self, const char* signal) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        return vqvideoprobe->receivers(signal);
    } else {
        return vqvideoprobe->receivers(signal);
    }
}

// Base class handler implementation
int QVideoProbe_QBaseReceivers(const QVideoProbe* self, const char* signal) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        vqvideoprobe->setQVideoProbe_Receivers_IsBase(true);
        return vqvideoprobe->receivers(signal);
    } else {
        return vqvideoprobe->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnReceivers(const QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        vqvideoprobe->setQVideoProbe_Receivers_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QVideoProbe_IsSignalConnected(const QVideoProbe* self, QMetaMethod* signal) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        return vqvideoprobe->isSignalConnected(*signal);
    } else {
        return vqvideoprobe->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QVideoProbe_QBaseIsSignalConnected(const QVideoProbe* self, QMetaMethod* signal) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        vqvideoprobe->setQVideoProbe_IsSignalConnected_IsBase(true);
        return vqvideoprobe->isSignalConnected(*signal);
    } else {
        return vqvideoprobe->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QVideoProbe_OnIsSignalConnected(const QVideoProbe* self, intptr_t slot) {
    if (auto* vqvideoprobe = const_cast<VirtualQVideoProbe*>(dynamic_cast<const VirtualQVideoProbe*>(self))) {
        vqvideoprobe->setQVideoProbe_IsSignalConnected_Callback(reinterpret_cast<VirtualQVideoProbe::QVideoProbe_IsSignalConnected_Callback>(slot));
    }
}

void QVideoProbe_Delete(QVideoProbe* self) {
    delete self;
}
