#include <QAbstractVideoFilter>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
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
#include <QVideoFilterRunnable>
#include <QVideoFrame>
#include <QVideoSurfaceFormat>
#include <qabstractvideofilter.h>
#include "libqabstractvideofilter.h"
#include "libqabstractvideofilter.hxx"

QVideoFrame* QVideoFilterRunnable_Run(QVideoFilterRunnable* self, QVideoFrame* input, QVideoSurfaceFormat* surfaceFormat, int flags) {
    return new QVideoFrame(self->run(input, *surfaceFormat, static_cast<QVideoFilterRunnable::RunFlags>(flags)));
}

void QVideoFilterRunnable_OperatorAssign(QVideoFilterRunnable* self, QVideoFilterRunnable* param1) {
    self->operator=(*param1);
}

void QVideoFilterRunnable_Delete(QVideoFilterRunnable* self) {
    delete self;
}

QAbstractVideoFilter* QAbstractVideoFilter_new() {
    return new VirtualQAbstractVideoFilter();
}

QAbstractVideoFilter* QAbstractVideoFilter_new2(QObject* parent) {
    return new VirtualQAbstractVideoFilter(parent);
}

QMetaObject* QAbstractVideoFilter_MetaObject(const QAbstractVideoFilter* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAbstractVideoFilter_Metacast(QAbstractVideoFilter* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAbstractVideoFilter_Metacall(QAbstractVideoFilter* self, int param1, int param2, void** param3) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractVideoFilter_OnMetacall(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_Metacall_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAbstractVideoFilter_QBaseMetacall(QAbstractVideoFilter* self, int param1, int param2, void** param3) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_Metacall_IsBase(true);
        return vqabstractvideofilter->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAbstractVideoFilter_Tr(const char* s) {
    QString _ret = QAbstractVideoFilter::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractVideoFilter_TrUtf8(const char* s) {
    QString _ret = QAbstractVideoFilter::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAbstractVideoFilter_IsActive(const QAbstractVideoFilter* self) {
    return self->isActive();
}

void QAbstractVideoFilter_SetActive(QAbstractVideoFilter* self, bool v) {
    self->setActive(v);
}

void QAbstractVideoFilter_ActiveChanged(QAbstractVideoFilter* self) {
    self->activeChanged();
}

void QAbstractVideoFilter_Connect_ActiveChanged(QAbstractVideoFilter* self, intptr_t slot) {
    void (*slotFunc)(QAbstractVideoFilter*) = reinterpret_cast<void (*)(QAbstractVideoFilter*)>(slot);
    QAbstractVideoFilter::connect(self, &QAbstractVideoFilter::activeChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAbstractVideoFilter_Tr2(const char* s, const char* c) {
    QString _ret = QAbstractVideoFilter::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractVideoFilter_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAbstractVideoFilter::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractVideoFilter_TrUtf82(const char* s, const char* c) {
    QString _ret = QAbstractVideoFilter::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractVideoFilter_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAbstractVideoFilter::trUtf8(s, c, static_cast<int>(n));
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
QVideoFilterRunnable* QAbstractVideoFilter_CreateFilterRunnable(QAbstractVideoFilter* self) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        return vqabstractvideofilter->createFilterRunnable();
    } else {
        return vqabstractvideofilter->createFilterRunnable();
    }
}

// Base class handler implementation
QVideoFilterRunnable* QAbstractVideoFilter_QBaseCreateFilterRunnable(QAbstractVideoFilter* self) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_CreateFilterRunnable_IsBase(true);
        return vqabstractvideofilter->createFilterRunnable();
    } else {
        return vqabstractvideofilter->createFilterRunnable();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnCreateFilterRunnable(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_CreateFilterRunnable_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_CreateFilterRunnable_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoFilter_Event(QAbstractVideoFilter* self, QEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        return vqabstractvideofilter->event(event);
    } else {
        return vqabstractvideofilter->event(event);
    }
}

// Base class handler implementation
bool QAbstractVideoFilter_QBaseEvent(QAbstractVideoFilter* self, QEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_Event_IsBase(true);
        return vqabstractvideofilter->event(event);
    } else {
        return vqabstractvideofilter->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnEvent(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_Event_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoFilter_EventFilter(QAbstractVideoFilter* self, QObject* watched, QEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        return vqabstractvideofilter->eventFilter(watched, event);
    } else {
        return vqabstractvideofilter->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QAbstractVideoFilter_QBaseEventFilter(QAbstractVideoFilter* self, QObject* watched, QEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_EventFilter_IsBase(true);
        return vqabstractvideofilter->eventFilter(watched, event);
    } else {
        return vqabstractvideofilter->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnEventFilter(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_EventFilter_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoFilter_TimerEvent(QAbstractVideoFilter* self, QTimerEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->timerEvent(event);
    } else {
        vqabstractvideofilter->timerEvent(event);
    }
}

// Base class handler implementation
void QAbstractVideoFilter_QBaseTimerEvent(QAbstractVideoFilter* self, QTimerEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_TimerEvent_IsBase(true);
        vqabstractvideofilter->timerEvent(event);
    } else {
        vqabstractvideofilter->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnTimerEvent(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_TimerEvent_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoFilter_ChildEvent(QAbstractVideoFilter* self, QChildEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->childEvent(event);
    } else {
        vqabstractvideofilter->childEvent(event);
    }
}

// Base class handler implementation
void QAbstractVideoFilter_QBaseChildEvent(QAbstractVideoFilter* self, QChildEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_ChildEvent_IsBase(true);
        vqabstractvideofilter->childEvent(event);
    } else {
        vqabstractvideofilter->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnChildEvent(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_ChildEvent_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoFilter_CustomEvent(QAbstractVideoFilter* self, QEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->customEvent(event);
    } else {
        vqabstractvideofilter->customEvent(event);
    }
}

// Base class handler implementation
void QAbstractVideoFilter_QBaseCustomEvent(QAbstractVideoFilter* self, QEvent* event) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_CustomEvent_IsBase(true);
        vqabstractvideofilter->customEvent(event);
    } else {
        vqabstractvideofilter->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnCustomEvent(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_CustomEvent_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoFilter_ConnectNotify(QAbstractVideoFilter* self, QMetaMethod* signal) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->connectNotify(*signal);
    } else {
        vqabstractvideofilter->connectNotify(*signal);
    }
}

// Base class handler implementation
void QAbstractVideoFilter_QBaseConnectNotify(QAbstractVideoFilter* self, QMetaMethod* signal) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_ConnectNotify_IsBase(true);
        vqabstractvideofilter->connectNotify(*signal);
    } else {
        vqabstractvideofilter->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnConnectNotify(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_ConnectNotify_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoFilter_DisconnectNotify(QAbstractVideoFilter* self, QMetaMethod* signal) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->disconnectNotify(*signal);
    } else {
        vqabstractvideofilter->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QAbstractVideoFilter_QBaseDisconnectNotify(QAbstractVideoFilter* self, QMetaMethod* signal) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_DisconnectNotify_IsBase(true);
        vqabstractvideofilter->disconnectNotify(*signal);
    } else {
        vqabstractvideofilter->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnDisconnectNotify(QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = dynamic_cast<VirtualQAbstractVideoFilter*>(self)) {
        vqabstractvideofilter->setQAbstractVideoFilter_DisconnectNotify_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QAbstractVideoFilter_Sender(const QAbstractVideoFilter* self) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        return vqabstractvideofilter->sender();
    } else {
        return vqabstractvideofilter->sender();
    }
}

// Base class handler implementation
QObject* QAbstractVideoFilter_QBaseSender(const QAbstractVideoFilter* self) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        vqabstractvideofilter->setQAbstractVideoFilter_Sender_IsBase(true);
        return vqabstractvideofilter->sender();
    } else {
        return vqabstractvideofilter->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnSender(const QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        vqabstractvideofilter->setQAbstractVideoFilter_Sender_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QAbstractVideoFilter_SenderSignalIndex(const QAbstractVideoFilter* self) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        return vqabstractvideofilter->senderSignalIndex();
    } else {
        return vqabstractvideofilter->senderSignalIndex();
    }
}

// Base class handler implementation
int QAbstractVideoFilter_QBaseSenderSignalIndex(const QAbstractVideoFilter* self) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        vqabstractvideofilter->setQAbstractVideoFilter_SenderSignalIndex_IsBase(true);
        return vqabstractvideofilter->senderSignalIndex();
    } else {
        return vqabstractvideofilter->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnSenderSignalIndex(const QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        vqabstractvideofilter->setQAbstractVideoFilter_SenderSignalIndex_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QAbstractVideoFilter_Receivers(const QAbstractVideoFilter* self, const char* signal) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        return vqabstractvideofilter->receivers(signal);
    } else {
        return vqabstractvideofilter->receivers(signal);
    }
}

// Base class handler implementation
int QAbstractVideoFilter_QBaseReceivers(const QAbstractVideoFilter* self, const char* signal) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        vqabstractvideofilter->setQAbstractVideoFilter_Receivers_IsBase(true);
        return vqabstractvideofilter->receivers(signal);
    } else {
        return vqabstractvideofilter->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnReceivers(const QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        vqabstractvideofilter->setQAbstractVideoFilter_Receivers_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoFilter_IsSignalConnected(const QAbstractVideoFilter* self, QMetaMethod* signal) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        return vqabstractvideofilter->isSignalConnected(*signal);
    } else {
        return vqabstractvideofilter->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QAbstractVideoFilter_QBaseIsSignalConnected(const QAbstractVideoFilter* self, QMetaMethod* signal) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        vqabstractvideofilter->setQAbstractVideoFilter_IsSignalConnected_IsBase(true);
        return vqabstractvideofilter->isSignalConnected(*signal);
    } else {
        return vqabstractvideofilter->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoFilter_OnIsSignalConnected(const QAbstractVideoFilter* self, intptr_t slot) {
    if (auto* vqabstractvideofilter = const_cast<VirtualQAbstractVideoFilter*>(dynamic_cast<const VirtualQAbstractVideoFilter*>(self))) {
        vqabstractvideofilter->setQAbstractVideoFilter_IsSignalConnected_Callback(reinterpret_cast<VirtualQAbstractVideoFilter::QAbstractVideoFilter_IsSignalConnected_Callback>(slot));
    }
}

void QAbstractVideoFilter_Delete(QAbstractVideoFilter* self) {
    delete self;
}
