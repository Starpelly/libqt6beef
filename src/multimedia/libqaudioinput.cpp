#include <QAudioDeviceInfo>
#include <QAudioFormat>
#include <QAudioInput>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
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
#include <qaudioinput.h>
#include "libqaudioinput.h"
#include "libqaudioinput.hxx"

QAudioInput* QAudioInput_new() {
    return new VirtualQAudioInput();
}

QAudioInput* QAudioInput_new2(QAudioDeviceInfo* audioDeviceInfo) {
    return new VirtualQAudioInput(*audioDeviceInfo);
}

QAudioInput* QAudioInput_new3(QAudioFormat* format) {
    return new VirtualQAudioInput(*format);
}

QAudioInput* QAudioInput_new4(QAudioFormat* format, QObject* parent) {
    return new VirtualQAudioInput(*format, parent);
}

QAudioInput* QAudioInput_new5(QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format) {
    return new VirtualQAudioInput(*audioDeviceInfo, *format);
}

QAudioInput* QAudioInput_new6(QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
    return new VirtualQAudioInput(*audioDeviceInfo, *format, parent);
}

QMetaObject* QAudioInput_MetaObject(const QAudioInput* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioInput_Metacast(QAudioInput* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioInput_Metacall(QAudioInput* self, int param1, int param2, void** param3) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAudioInput_OnMetacall(QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_Metacall_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAudioInput_QBaseMetacall(QAudioInput* self, int param1, int param2, void** param3) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_Metacall_IsBase(true);
        return vqaudioinput->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAudioInput_Tr(const char* s) {
    QString _ret = QAudioInput::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInput_TrUtf8(const char* s) {
    QString _ret = QAudioInput::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QAudioFormat* QAudioInput_Format(const QAudioInput* self) {
    return new QAudioFormat(self->format());
}

void QAudioInput_Start(QAudioInput* self, QIODevice* device) {
    self->start(device);
}

QIODevice* QAudioInput_Start2(QAudioInput* self) {
    return self->start();
}

void QAudioInput_Stop(QAudioInput* self) {
    self->stop();
}

void QAudioInput_Reset(QAudioInput* self) {
    self->reset();
}

void QAudioInput_Suspend(QAudioInput* self) {
    self->suspend();
}

void QAudioInput_Resume(QAudioInput* self) {
    self->resume();
}

void QAudioInput_SetBufferSize(QAudioInput* self, int bytes) {
    self->setBufferSize(static_cast<int>(bytes));
}

int QAudioInput_BufferSize(const QAudioInput* self) {
    return self->bufferSize();
}

int QAudioInput_BytesReady(const QAudioInput* self) {
    return self->bytesReady();
}

int QAudioInput_PeriodSize(const QAudioInput* self) {
    return self->periodSize();
}

void QAudioInput_SetNotifyInterval(QAudioInput* self, int milliSeconds) {
    self->setNotifyInterval(static_cast<int>(milliSeconds));
}

int QAudioInput_NotifyInterval(const QAudioInput* self) {
    return self->notifyInterval();
}

void QAudioInput_SetVolume(QAudioInput* self, double volume) {
    self->setVolume(static_cast<qreal>(volume));
}

double QAudioInput_Volume(const QAudioInput* self) {
    return static_cast<double>(self->volume());
}

long long QAudioInput_ProcessedUSecs(const QAudioInput* self) {
    return static_cast<long long>(self->processedUSecs());
}

long long QAudioInput_ElapsedUSecs(const QAudioInput* self) {
    return static_cast<long long>(self->elapsedUSecs());
}

int QAudioInput_Error(const QAudioInput* self) {
    return static_cast<int>(self->error());
}

int QAudioInput_State(const QAudioInput* self) {
    return static_cast<int>(self->state());
}

void QAudioInput_StateChanged(QAudioInput* self, int state) {
    self->stateChanged(static_cast<QAudio::State>(state));
}

void QAudioInput_Connect_StateChanged(QAudioInput* self, intptr_t slot) {
    void (*slotFunc)(QAudioInput*, int) = reinterpret_cast<void (*)(QAudioInput*, int)>(slot);
    QAudioInput::connect(self, &QAudioInput::stateChanged, [self, slotFunc](QAudio::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QAudioInput_Notify(QAudioInput* self) {
    self->notify();
}

void QAudioInput_Connect_Notify(QAudioInput* self, intptr_t slot) {
    void (*slotFunc)(QAudioInput*) = reinterpret_cast<void (*)(QAudioInput*)>(slot);
    QAudioInput::connect(self, &QAudioInput::notify, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAudioInput_Tr2(const char* s, const char* c) {
    QString _ret = QAudioInput::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInput_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioInput::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInput_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioInput::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInput_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioInput::trUtf8(s, c, static_cast<int>(n));
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
bool QAudioInput_Event(QAudioInput* self, QEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        return vqaudioinput->event(event);
    } else {
        return vqaudioinput->event(event);
    }
}

// Base class handler implementation
bool QAudioInput_QBaseEvent(QAudioInput* self, QEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_Event_IsBase(true);
        return vqaudioinput->event(event);
    } else {
        return vqaudioinput->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnEvent(QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_Event_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioInput_EventFilter(QAudioInput* self, QObject* watched, QEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        return vqaudioinput->eventFilter(watched, event);
    } else {
        return vqaudioinput->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QAudioInput_QBaseEventFilter(QAudioInput* self, QObject* watched, QEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_EventFilter_IsBase(true);
        return vqaudioinput->eventFilter(watched, event);
    } else {
        return vqaudioinput->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnEventFilter(QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_EventFilter_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioInput_TimerEvent(QAudioInput* self, QTimerEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->timerEvent(event);
    } else {
        vqaudioinput->timerEvent(event);
    }
}

// Base class handler implementation
void QAudioInput_QBaseTimerEvent(QAudioInput* self, QTimerEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_TimerEvent_IsBase(true);
        vqaudioinput->timerEvent(event);
    } else {
        vqaudioinput->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnTimerEvent(QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_TimerEvent_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioInput_ChildEvent(QAudioInput* self, QChildEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->childEvent(event);
    } else {
        vqaudioinput->childEvent(event);
    }
}

// Base class handler implementation
void QAudioInput_QBaseChildEvent(QAudioInput* self, QChildEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_ChildEvent_IsBase(true);
        vqaudioinput->childEvent(event);
    } else {
        vqaudioinput->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnChildEvent(QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_ChildEvent_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioInput_CustomEvent(QAudioInput* self, QEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->customEvent(event);
    } else {
        vqaudioinput->customEvent(event);
    }
}

// Base class handler implementation
void QAudioInput_QBaseCustomEvent(QAudioInput* self, QEvent* event) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_CustomEvent_IsBase(true);
        vqaudioinput->customEvent(event);
    } else {
        vqaudioinput->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnCustomEvent(QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_CustomEvent_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioInput_ConnectNotify(QAudioInput* self, QMetaMethod* signal) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->connectNotify(*signal);
    } else {
        vqaudioinput->connectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioInput_QBaseConnectNotify(QAudioInput* self, QMetaMethod* signal) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_ConnectNotify_IsBase(true);
        vqaudioinput->connectNotify(*signal);
    } else {
        vqaudioinput->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnConnectNotify(QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_ConnectNotify_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioInput_DisconnectNotify(QAudioInput* self, QMetaMethod* signal) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->disconnectNotify(*signal);
    } else {
        vqaudioinput->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioInput_QBaseDisconnectNotify(QAudioInput* self, QMetaMethod* signal) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_DisconnectNotify_IsBase(true);
        vqaudioinput->disconnectNotify(*signal);
    } else {
        vqaudioinput->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnDisconnectNotify(QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = dynamic_cast<VirtualQAudioInput*>(self)) {
        vqaudioinput->setQAudioInput_DisconnectNotify_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QAudioInput_Sender(const QAudioInput* self) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        return vqaudioinput->sender();
    } else {
        return vqaudioinput->sender();
    }
}

// Base class handler implementation
QObject* QAudioInput_QBaseSender(const QAudioInput* self) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        vqaudioinput->setQAudioInput_Sender_IsBase(true);
        return vqaudioinput->sender();
    } else {
        return vqaudioinput->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnSender(const QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        vqaudioinput->setQAudioInput_Sender_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioInput_SenderSignalIndex(const QAudioInput* self) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        return vqaudioinput->senderSignalIndex();
    } else {
        return vqaudioinput->senderSignalIndex();
    }
}

// Base class handler implementation
int QAudioInput_QBaseSenderSignalIndex(const QAudioInput* self) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        vqaudioinput->setQAudioInput_SenderSignalIndex_IsBase(true);
        return vqaudioinput->senderSignalIndex();
    } else {
        return vqaudioinput->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnSenderSignalIndex(const QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        vqaudioinput->setQAudioInput_SenderSignalIndex_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioInput_Receivers(const QAudioInput* self, const char* signal) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        return vqaudioinput->receivers(signal);
    } else {
        return vqaudioinput->receivers(signal);
    }
}

// Base class handler implementation
int QAudioInput_QBaseReceivers(const QAudioInput* self, const char* signal) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        vqaudioinput->setQAudioInput_Receivers_IsBase(true);
        return vqaudioinput->receivers(signal);
    } else {
        return vqaudioinput->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnReceivers(const QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        vqaudioinput->setQAudioInput_Receivers_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioInput_IsSignalConnected(const QAudioInput* self, QMetaMethod* signal) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        return vqaudioinput->isSignalConnected(*signal);
    } else {
        return vqaudioinput->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QAudioInput_QBaseIsSignalConnected(const QAudioInput* self, QMetaMethod* signal) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        vqaudioinput->setQAudioInput_IsSignalConnected_IsBase(true);
        return vqaudioinput->isSignalConnected(*signal);
    } else {
        return vqaudioinput->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioInput_OnIsSignalConnected(const QAudioInput* self, intptr_t slot) {
    if (auto* vqaudioinput = const_cast<VirtualQAudioInput*>(dynamic_cast<const VirtualQAudioInput*>(self))) {
        vqaudioinput->setQAudioInput_IsSignalConnected_Callback(reinterpret_cast<VirtualQAudioInput::QAudioInput_IsSignalConnected_Callback>(slot));
    }
}

void QAudioInput_Delete(QAudioInput* self) {
    delete self;
}
