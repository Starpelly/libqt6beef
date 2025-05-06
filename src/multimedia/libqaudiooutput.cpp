#include <QAudioDeviceInfo>
#include <QAudioFormat>
#include <QAudioOutput>
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
#include <qaudiooutput.h>
#include "libqaudiooutput.h"
#include "libqaudiooutput.hxx"

QAudioOutput* QAudioOutput_new() {
    return new VirtualQAudioOutput();
}

QAudioOutput* QAudioOutput_new2(QAudioDeviceInfo* audioDeviceInfo) {
    return new VirtualQAudioOutput(*audioDeviceInfo);
}

QAudioOutput* QAudioOutput_new3(QAudioFormat* format) {
    return new VirtualQAudioOutput(*format);
}

QAudioOutput* QAudioOutput_new4(QAudioFormat* format, QObject* parent) {
    return new VirtualQAudioOutput(*format, parent);
}

QAudioOutput* QAudioOutput_new5(QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format) {
    return new VirtualQAudioOutput(*audioDeviceInfo, *format);
}

QAudioOutput* QAudioOutput_new6(QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
    return new VirtualQAudioOutput(*audioDeviceInfo, *format, parent);
}

QMetaObject* QAudioOutput_MetaObject(const QAudioOutput* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioOutput_Metacast(QAudioOutput* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioOutput_Metacall(QAudioOutput* self, int param1, int param2, void** param3) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAudioOutput_OnMetacall(QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_Metacall_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAudioOutput_QBaseMetacall(QAudioOutput* self, int param1, int param2, void** param3) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_Metacall_IsBase(true);
        return vqaudiooutput->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAudioOutput_Tr(const char* s) {
    QString _ret = QAudioOutput::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutput_TrUtf8(const char* s) {
    QString _ret = QAudioOutput::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QAudioFormat* QAudioOutput_Format(const QAudioOutput* self) {
    return new QAudioFormat(self->format());
}

void QAudioOutput_Start(QAudioOutput* self, QIODevice* device) {
    self->start(device);
}

QIODevice* QAudioOutput_Start2(QAudioOutput* self) {
    return self->start();
}

void QAudioOutput_Stop(QAudioOutput* self) {
    self->stop();
}

void QAudioOutput_Reset(QAudioOutput* self) {
    self->reset();
}

void QAudioOutput_Suspend(QAudioOutput* self) {
    self->suspend();
}

void QAudioOutput_Resume(QAudioOutput* self) {
    self->resume();
}

void QAudioOutput_SetBufferSize(QAudioOutput* self, int bytes) {
    self->setBufferSize(static_cast<int>(bytes));
}

int QAudioOutput_BufferSize(const QAudioOutput* self) {
    return self->bufferSize();
}

int QAudioOutput_BytesFree(const QAudioOutput* self) {
    return self->bytesFree();
}

int QAudioOutput_PeriodSize(const QAudioOutput* self) {
    return self->periodSize();
}

void QAudioOutput_SetNotifyInterval(QAudioOutput* self, int milliSeconds) {
    self->setNotifyInterval(static_cast<int>(milliSeconds));
}

int QAudioOutput_NotifyInterval(const QAudioOutput* self) {
    return self->notifyInterval();
}

long long QAudioOutput_ProcessedUSecs(const QAudioOutput* self) {
    return static_cast<long long>(self->processedUSecs());
}

long long QAudioOutput_ElapsedUSecs(const QAudioOutput* self) {
    return static_cast<long long>(self->elapsedUSecs());
}

int QAudioOutput_Error(const QAudioOutput* self) {
    return static_cast<int>(self->error());
}

int QAudioOutput_State(const QAudioOutput* self) {
    return static_cast<int>(self->state());
}

void QAudioOutput_SetVolume(QAudioOutput* self, double volume) {
    self->setVolume(static_cast<double>(volume));
}

double QAudioOutput_Volume(const QAudioOutput* self) {
    return static_cast<double>(self->volume());
}

libqt_string QAudioOutput_Category(const QAudioOutput* self) {
    QString _ret = self->category();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QAudioOutput_SetCategory(QAudioOutput* self, libqt_string category) {
    QString category_QString = QString::fromUtf8(category.data, category.len);
    self->setCategory(category_QString);
}

void QAudioOutput_StateChanged(QAudioOutput* self, int state) {
    self->stateChanged(static_cast<QAudio::State>(state));
}

void QAudioOutput_Connect_StateChanged(QAudioOutput* self, intptr_t slot) {
    void (*slotFunc)(QAudioOutput*, int) = reinterpret_cast<void (*)(QAudioOutput*, int)>(slot);
    QAudioOutput::connect(self, &QAudioOutput::stateChanged, [self, slotFunc](QAudio::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QAudioOutput_Notify(QAudioOutput* self) {
    self->notify();
}

void QAudioOutput_Connect_Notify(QAudioOutput* self, intptr_t slot) {
    void (*slotFunc)(QAudioOutput*) = reinterpret_cast<void (*)(QAudioOutput*)>(slot);
    QAudioOutput::connect(self, &QAudioOutput::notify, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAudioOutput_Tr2(const char* s, const char* c) {
    QString _ret = QAudioOutput::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutput_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioOutput::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutput_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioOutput::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutput_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioOutput::trUtf8(s, c, static_cast<int>(n));
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
bool QAudioOutput_Event(QAudioOutput* self, QEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        return vqaudiooutput->event(event);
    } else {
        return vqaudiooutput->event(event);
    }
}

// Base class handler implementation
bool QAudioOutput_QBaseEvent(QAudioOutput* self, QEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_Event_IsBase(true);
        return vqaudiooutput->event(event);
    } else {
        return vqaudiooutput->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnEvent(QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_Event_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioOutput_EventFilter(QAudioOutput* self, QObject* watched, QEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        return vqaudiooutput->eventFilter(watched, event);
    } else {
        return vqaudiooutput->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QAudioOutput_QBaseEventFilter(QAudioOutput* self, QObject* watched, QEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_EventFilter_IsBase(true);
        return vqaudiooutput->eventFilter(watched, event);
    } else {
        return vqaudiooutput->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnEventFilter(QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_EventFilter_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioOutput_TimerEvent(QAudioOutput* self, QTimerEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->timerEvent(event);
    } else {
        vqaudiooutput->timerEvent(event);
    }
}

// Base class handler implementation
void QAudioOutput_QBaseTimerEvent(QAudioOutput* self, QTimerEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_TimerEvent_IsBase(true);
        vqaudiooutput->timerEvent(event);
    } else {
        vqaudiooutput->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnTimerEvent(QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_TimerEvent_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioOutput_ChildEvent(QAudioOutput* self, QChildEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->childEvent(event);
    } else {
        vqaudiooutput->childEvent(event);
    }
}

// Base class handler implementation
void QAudioOutput_QBaseChildEvent(QAudioOutput* self, QChildEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_ChildEvent_IsBase(true);
        vqaudiooutput->childEvent(event);
    } else {
        vqaudiooutput->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnChildEvent(QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_ChildEvent_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioOutput_CustomEvent(QAudioOutput* self, QEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->customEvent(event);
    } else {
        vqaudiooutput->customEvent(event);
    }
}

// Base class handler implementation
void QAudioOutput_QBaseCustomEvent(QAudioOutput* self, QEvent* event) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_CustomEvent_IsBase(true);
        vqaudiooutput->customEvent(event);
    } else {
        vqaudiooutput->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnCustomEvent(QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_CustomEvent_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioOutput_ConnectNotify(QAudioOutput* self, QMetaMethod* signal) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->connectNotify(*signal);
    } else {
        vqaudiooutput->connectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioOutput_QBaseConnectNotify(QAudioOutput* self, QMetaMethod* signal) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_ConnectNotify_IsBase(true);
        vqaudiooutput->connectNotify(*signal);
    } else {
        vqaudiooutput->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnConnectNotify(QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_ConnectNotify_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioOutput_DisconnectNotify(QAudioOutput* self, QMetaMethod* signal) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->disconnectNotify(*signal);
    } else {
        vqaudiooutput->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioOutput_QBaseDisconnectNotify(QAudioOutput* self, QMetaMethod* signal) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_DisconnectNotify_IsBase(true);
        vqaudiooutput->disconnectNotify(*signal);
    } else {
        vqaudiooutput->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnDisconnectNotify(QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = dynamic_cast<VirtualQAudioOutput*>(self)) {
        vqaudiooutput->setQAudioOutput_DisconnectNotify_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QAudioOutput_Sender(const QAudioOutput* self) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        return vqaudiooutput->sender();
    } else {
        return vqaudiooutput->sender();
    }
}

// Base class handler implementation
QObject* QAudioOutput_QBaseSender(const QAudioOutput* self) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        vqaudiooutput->setQAudioOutput_Sender_IsBase(true);
        return vqaudiooutput->sender();
    } else {
        return vqaudiooutput->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnSender(const QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        vqaudiooutput->setQAudioOutput_Sender_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioOutput_SenderSignalIndex(const QAudioOutput* self) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        return vqaudiooutput->senderSignalIndex();
    } else {
        return vqaudiooutput->senderSignalIndex();
    }
}

// Base class handler implementation
int QAudioOutput_QBaseSenderSignalIndex(const QAudioOutput* self) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        vqaudiooutput->setQAudioOutput_SenderSignalIndex_IsBase(true);
        return vqaudiooutput->senderSignalIndex();
    } else {
        return vqaudiooutput->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnSenderSignalIndex(const QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        vqaudiooutput->setQAudioOutput_SenderSignalIndex_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioOutput_Receivers(const QAudioOutput* self, const char* signal) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        return vqaudiooutput->receivers(signal);
    } else {
        return vqaudiooutput->receivers(signal);
    }
}

// Base class handler implementation
int QAudioOutput_QBaseReceivers(const QAudioOutput* self, const char* signal) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        vqaudiooutput->setQAudioOutput_Receivers_IsBase(true);
        return vqaudiooutput->receivers(signal);
    } else {
        return vqaudiooutput->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnReceivers(const QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        vqaudiooutput->setQAudioOutput_Receivers_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioOutput_IsSignalConnected(const QAudioOutput* self, QMetaMethod* signal) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        return vqaudiooutput->isSignalConnected(*signal);
    } else {
        return vqaudiooutput->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QAudioOutput_QBaseIsSignalConnected(const QAudioOutput* self, QMetaMethod* signal) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        vqaudiooutput->setQAudioOutput_IsSignalConnected_IsBase(true);
        return vqaudiooutput->isSignalConnected(*signal);
    } else {
        return vqaudiooutput->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioOutput_OnIsSignalConnected(const QAudioOutput* self, intptr_t slot) {
    if (auto* vqaudiooutput = const_cast<VirtualQAudioOutput*>(dynamic_cast<const VirtualQAudioOutput*>(self))) {
        vqaudiooutput->setQAudioOutput_IsSignalConnected_Callback(reinterpret_cast<VirtualQAudioOutput::QAudioOutput_IsSignalConnected_Callback>(slot));
    }
}

void QAudioOutput_Delete(QAudioOutput* self) {
    delete self;
}
