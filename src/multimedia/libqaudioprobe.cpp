#include <QAudioBuffer>
#include <QAudioProbe>
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
#include <qaudioprobe.h>
#include "libqaudioprobe.h"
#include "libqaudioprobe.hxx"

QAudioProbe* QAudioProbe_new() {
    return new VirtualQAudioProbe();
}

QAudioProbe* QAudioProbe_new2(QObject* parent) {
    return new VirtualQAudioProbe(parent);
}

QMetaObject* QAudioProbe_MetaObject(const QAudioProbe* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioProbe_Metacast(QAudioProbe* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioProbe_Metacall(QAudioProbe* self, int param1, int param2, void** param3) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAudioProbe_OnMetacall(QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_Metacall_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAudioProbe_QBaseMetacall(QAudioProbe* self, int param1, int param2, void** param3) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_Metacall_IsBase(true);
        return vqaudioprobe->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAudioProbe_Tr(const char* s) {
    QString _ret = QAudioProbe::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioProbe_TrUtf8(const char* s) {
    QString _ret = QAudioProbe::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAudioProbe_SetSource(QAudioProbe* self, QMediaObject* source) {
    return self->setSource(source);
}

bool QAudioProbe_SetSourceWithSource(QAudioProbe* self, QMediaRecorder* source) {
    return self->setSource(source);
}

bool QAudioProbe_IsActive(const QAudioProbe* self) {
    return self->isActive();
}

void QAudioProbe_AudioBufferProbed(QAudioProbe* self, QAudioBuffer* buffer) {
    self->audioBufferProbed(*buffer);
}

void QAudioProbe_Connect_AudioBufferProbed(QAudioProbe* self, intptr_t slot) {
    void (*slotFunc)(QAudioProbe*, QAudioBuffer*) = reinterpret_cast<void (*)(QAudioProbe*, QAudioBuffer*)>(slot);
    QAudioProbe::connect(self, &QAudioProbe::audioBufferProbed, [self, slotFunc](const QAudioBuffer& buffer) {
        const QAudioBuffer& buffer_ret = buffer;
        // Cast returned reference into pointer
        QAudioBuffer* sigval1 = const_cast<QAudioBuffer*>(&buffer_ret);
        slotFunc(self, sigval1);
    });
}

void QAudioProbe_Flush(QAudioProbe* self) {
    self->flush();
}

void QAudioProbe_Connect_Flush(QAudioProbe* self, intptr_t slot) {
    void (*slotFunc)(QAudioProbe*) = reinterpret_cast<void (*)(QAudioProbe*)>(slot);
    QAudioProbe::connect(self, &QAudioProbe::flush, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAudioProbe_Tr2(const char* s, const char* c) {
    QString _ret = QAudioProbe::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioProbe_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioProbe::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioProbe_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioProbe::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioProbe_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioProbe::trUtf8(s, c, static_cast<int>(n));
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
bool QAudioProbe_Event(QAudioProbe* self, QEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        return vqaudioprobe->event(event);
    } else {
        return vqaudioprobe->event(event);
    }
}

// Base class handler implementation
bool QAudioProbe_QBaseEvent(QAudioProbe* self, QEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_Event_IsBase(true);
        return vqaudioprobe->event(event);
    } else {
        return vqaudioprobe->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnEvent(QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_Event_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioProbe_EventFilter(QAudioProbe* self, QObject* watched, QEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        return vqaudioprobe->eventFilter(watched, event);
    } else {
        return vqaudioprobe->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QAudioProbe_QBaseEventFilter(QAudioProbe* self, QObject* watched, QEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_EventFilter_IsBase(true);
        return vqaudioprobe->eventFilter(watched, event);
    } else {
        return vqaudioprobe->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnEventFilter(QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_EventFilter_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioProbe_TimerEvent(QAudioProbe* self, QTimerEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->timerEvent(event);
    } else {
        vqaudioprobe->timerEvent(event);
    }
}

// Base class handler implementation
void QAudioProbe_QBaseTimerEvent(QAudioProbe* self, QTimerEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_TimerEvent_IsBase(true);
        vqaudioprobe->timerEvent(event);
    } else {
        vqaudioprobe->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnTimerEvent(QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_TimerEvent_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioProbe_ChildEvent(QAudioProbe* self, QChildEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->childEvent(event);
    } else {
        vqaudioprobe->childEvent(event);
    }
}

// Base class handler implementation
void QAudioProbe_QBaseChildEvent(QAudioProbe* self, QChildEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_ChildEvent_IsBase(true);
        vqaudioprobe->childEvent(event);
    } else {
        vqaudioprobe->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnChildEvent(QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_ChildEvent_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioProbe_CustomEvent(QAudioProbe* self, QEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->customEvent(event);
    } else {
        vqaudioprobe->customEvent(event);
    }
}

// Base class handler implementation
void QAudioProbe_QBaseCustomEvent(QAudioProbe* self, QEvent* event) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_CustomEvent_IsBase(true);
        vqaudioprobe->customEvent(event);
    } else {
        vqaudioprobe->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnCustomEvent(QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_CustomEvent_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioProbe_ConnectNotify(QAudioProbe* self, QMetaMethod* signal) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->connectNotify(*signal);
    } else {
        vqaudioprobe->connectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioProbe_QBaseConnectNotify(QAudioProbe* self, QMetaMethod* signal) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_ConnectNotify_IsBase(true);
        vqaudioprobe->connectNotify(*signal);
    } else {
        vqaudioprobe->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnConnectNotify(QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_ConnectNotify_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioProbe_DisconnectNotify(QAudioProbe* self, QMetaMethod* signal) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->disconnectNotify(*signal);
    } else {
        vqaudioprobe->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioProbe_QBaseDisconnectNotify(QAudioProbe* self, QMetaMethod* signal) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_DisconnectNotify_IsBase(true);
        vqaudioprobe->disconnectNotify(*signal);
    } else {
        vqaudioprobe->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnDisconnectNotify(QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = dynamic_cast<VirtualQAudioProbe*>(self)) {
        vqaudioprobe->setQAudioProbe_DisconnectNotify_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QAudioProbe_Sender(const QAudioProbe* self) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        return vqaudioprobe->sender();
    } else {
        return vqaudioprobe->sender();
    }
}

// Base class handler implementation
QObject* QAudioProbe_QBaseSender(const QAudioProbe* self) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        vqaudioprobe->setQAudioProbe_Sender_IsBase(true);
        return vqaudioprobe->sender();
    } else {
        return vqaudioprobe->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnSender(const QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        vqaudioprobe->setQAudioProbe_Sender_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioProbe_SenderSignalIndex(const QAudioProbe* self) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        return vqaudioprobe->senderSignalIndex();
    } else {
        return vqaudioprobe->senderSignalIndex();
    }
}

// Base class handler implementation
int QAudioProbe_QBaseSenderSignalIndex(const QAudioProbe* self) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        vqaudioprobe->setQAudioProbe_SenderSignalIndex_IsBase(true);
        return vqaudioprobe->senderSignalIndex();
    } else {
        return vqaudioprobe->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnSenderSignalIndex(const QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        vqaudioprobe->setQAudioProbe_SenderSignalIndex_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioProbe_Receivers(const QAudioProbe* self, const char* signal) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        return vqaudioprobe->receivers(signal);
    } else {
        return vqaudioprobe->receivers(signal);
    }
}

// Base class handler implementation
int QAudioProbe_QBaseReceivers(const QAudioProbe* self, const char* signal) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        vqaudioprobe->setQAudioProbe_Receivers_IsBase(true);
        return vqaudioprobe->receivers(signal);
    } else {
        return vqaudioprobe->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnReceivers(const QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        vqaudioprobe->setQAudioProbe_Receivers_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioProbe_IsSignalConnected(const QAudioProbe* self, QMetaMethod* signal) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        return vqaudioprobe->isSignalConnected(*signal);
    } else {
        return vqaudioprobe->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QAudioProbe_QBaseIsSignalConnected(const QAudioProbe* self, QMetaMethod* signal) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        vqaudioprobe->setQAudioProbe_IsSignalConnected_IsBase(true);
        return vqaudioprobe->isSignalConnected(*signal);
    } else {
        return vqaudioprobe->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioProbe_OnIsSignalConnected(const QAudioProbe* self, intptr_t slot) {
    if (auto* vqaudioprobe = const_cast<VirtualQAudioProbe*>(dynamic_cast<const VirtualQAudioProbe*>(self))) {
        vqaudioprobe->setQAudioProbe_IsSignalConnected_Callback(reinterpret_cast<VirtualQAudioProbe::QAudioProbe_IsSignalConnected_Callback>(slot));
    }
}

void QAudioProbe_Delete(QAudioProbe* self) {
    delete self;
}
