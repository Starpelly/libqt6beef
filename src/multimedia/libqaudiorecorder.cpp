#include <QAudioEncoderSettings>
#include <QAudioRecorder>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaBindableInterface>
#include <QMediaObject>
#include <QMediaRecorder>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QVideoEncoderSettings>
#include <qaudiorecorder.h>
#include "libqaudiorecorder.h"
#include "libqaudiorecorder.hxx"

QAudioRecorder* QAudioRecorder_new() {
    return new VirtualQAudioRecorder();
}

QAudioRecorder* QAudioRecorder_new2(QObject* parent) {
    return new VirtualQAudioRecorder(parent);
}

QMetaObject* QAudioRecorder_MetaObject(const QAudioRecorder* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioRecorder_Metacast(QAudioRecorder* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioRecorder_Metacall(QAudioRecorder* self, int param1, int param2, void** param3) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAudioRecorder_OnMetacall(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_Metacall_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAudioRecorder_QBaseMetacall(QAudioRecorder* self, int param1, int param2, void** param3) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_Metacall_IsBase(true);
        return vqaudiorecorder->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAudioRecorder_Tr(const char* s) {
    QString _ret = QAudioRecorder::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRecorder_TrUtf8(const char* s) {
    QString _ret = QAudioRecorder::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QAudioRecorder_AudioInputs(const QAudioRecorder* self) {
    QStringList _ret = self->audioInputs();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QString _lv_ret = _ret[i];
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _lv_b = _lv_ret.toUtf8();
        libqt_string _lv_str;
        _lv_str.len = _lv_b.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QAudioRecorder_DefaultAudioInput(const QAudioRecorder* self) {
    QString _ret = self->defaultAudioInput();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRecorder_AudioInputDescription(const QAudioRecorder* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    QString _ret = self->audioInputDescription(name_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRecorder_AudioInput(const QAudioRecorder* self) {
    QString _ret = self->audioInput();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QAudioRecorder_SetAudioInput(QAudioRecorder* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->setAudioInput(name_QString);
}

void QAudioRecorder_AudioInputChanged(QAudioRecorder* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->audioInputChanged(name_QString);
}

void QAudioRecorder_Connect_AudioInputChanged(QAudioRecorder* self, intptr_t slot) {
    void (*slotFunc)(QAudioRecorder*, libqt_string) = reinterpret_cast<void (*)(QAudioRecorder*, libqt_string)>(slot);
    QAudioRecorder::connect(self, &QAudioRecorder::audioInputChanged, [self, slotFunc](const QString& name) {
        const QString name_ret = name;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray name_b = name_ret.toUtf8();
        libqt_string name_str;
        name_str.len = name_b.length();
        name_str.data = static_cast<char*>(malloc((name_str.len + 1) * sizeof(char)));
        memcpy(name_str.data, name_b.data(), name_str.len);
        name_str.data[name_str.len] = '\0';
        libqt_string sigval1 = name_str;
        slotFunc(self, sigval1);
    });
}

void QAudioRecorder_AvailableAudioInputsChanged(QAudioRecorder* self) {
    self->availableAudioInputsChanged();
}

void QAudioRecorder_Connect_AvailableAudioInputsChanged(QAudioRecorder* self, intptr_t slot) {
    void (*slotFunc)(QAudioRecorder*) = reinterpret_cast<void (*)(QAudioRecorder*)>(slot);
    QAudioRecorder::connect(self, &QAudioRecorder::availableAudioInputsChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAudioRecorder_Tr2(const char* s, const char* c) {
    QString _ret = QAudioRecorder::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRecorder_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioRecorder::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRecorder_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioRecorder::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioRecorder_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioRecorder::trUtf8(s, c, static_cast<int>(n));
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
QMediaObject* QAudioRecorder_MediaObject(const QAudioRecorder* self) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        return vqaudiorecorder->mediaObject();
    } else {
        return vqaudiorecorder->mediaObject();
    }
}

// Base class handler implementation
QMediaObject* QAudioRecorder_QBaseMediaObject(const QAudioRecorder* self) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_MediaObject_IsBase(true);
        return vqaudiorecorder->mediaObject();
    } else {
        return vqaudiorecorder->mediaObject();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnMediaObject(const QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_MediaObject_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_MediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioRecorder_SetMediaObject(QAudioRecorder* self, QMediaObject* object) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        return vqaudiorecorder->setMediaObject(object);
    } else {
        return vqaudiorecorder->setMediaObject(object);
    }
}

// Base class handler implementation
bool QAudioRecorder_QBaseSetMediaObject(QAudioRecorder* self, QMediaObject* object) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_SetMediaObject_IsBase(true);
        return vqaudiorecorder->setMediaObject(object);
    } else {
        return vqaudiorecorder->setMediaObject(object);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnSetMediaObject(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_SetMediaObject_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_SetMediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioRecorder_Event(QAudioRecorder* self, QEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        return vqaudiorecorder->event(event);
    } else {
        return vqaudiorecorder->event(event);
    }
}

// Base class handler implementation
bool QAudioRecorder_QBaseEvent(QAudioRecorder* self, QEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_Event_IsBase(true);
        return vqaudiorecorder->event(event);
    } else {
        return vqaudiorecorder->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnEvent(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_Event_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioRecorder_EventFilter(QAudioRecorder* self, QObject* watched, QEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        return vqaudiorecorder->eventFilter(watched, event);
    } else {
        return vqaudiorecorder->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QAudioRecorder_QBaseEventFilter(QAudioRecorder* self, QObject* watched, QEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_EventFilter_IsBase(true);
        return vqaudiorecorder->eventFilter(watched, event);
    } else {
        return vqaudiorecorder->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnEventFilter(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_EventFilter_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioRecorder_TimerEvent(QAudioRecorder* self, QTimerEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->timerEvent(event);
    } else {
        vqaudiorecorder->timerEvent(event);
    }
}

// Base class handler implementation
void QAudioRecorder_QBaseTimerEvent(QAudioRecorder* self, QTimerEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_TimerEvent_IsBase(true);
        vqaudiorecorder->timerEvent(event);
    } else {
        vqaudiorecorder->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnTimerEvent(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_TimerEvent_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioRecorder_ChildEvent(QAudioRecorder* self, QChildEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->childEvent(event);
    } else {
        vqaudiorecorder->childEvent(event);
    }
}

// Base class handler implementation
void QAudioRecorder_QBaseChildEvent(QAudioRecorder* self, QChildEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_ChildEvent_IsBase(true);
        vqaudiorecorder->childEvent(event);
    } else {
        vqaudiorecorder->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnChildEvent(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_ChildEvent_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioRecorder_CustomEvent(QAudioRecorder* self, QEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->customEvent(event);
    } else {
        vqaudiorecorder->customEvent(event);
    }
}

// Base class handler implementation
void QAudioRecorder_QBaseCustomEvent(QAudioRecorder* self, QEvent* event) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_CustomEvent_IsBase(true);
        vqaudiorecorder->customEvent(event);
    } else {
        vqaudiorecorder->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnCustomEvent(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_CustomEvent_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioRecorder_ConnectNotify(QAudioRecorder* self, QMetaMethod* signal) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->connectNotify(*signal);
    } else {
        vqaudiorecorder->connectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioRecorder_QBaseConnectNotify(QAudioRecorder* self, QMetaMethod* signal) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_ConnectNotify_IsBase(true);
        vqaudiorecorder->connectNotify(*signal);
    } else {
        vqaudiorecorder->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnConnectNotify(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_ConnectNotify_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAudioRecorder_DisconnectNotify(QAudioRecorder* self, QMetaMethod* signal) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->disconnectNotify(*signal);
    } else {
        vqaudiorecorder->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QAudioRecorder_QBaseDisconnectNotify(QAudioRecorder* self, QMetaMethod* signal) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_DisconnectNotify_IsBase(true);
        vqaudiorecorder->disconnectNotify(*signal);
    } else {
        vqaudiorecorder->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnDisconnectNotify(QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = dynamic_cast<VirtualQAudioRecorder*>(self)) {
        vqaudiorecorder->setQAudioRecorder_DisconnectNotify_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QAudioRecorder_Sender(const QAudioRecorder* self) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        return vqaudiorecorder->sender();
    } else {
        return vqaudiorecorder->sender();
    }
}

// Base class handler implementation
QObject* QAudioRecorder_QBaseSender(const QAudioRecorder* self) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_Sender_IsBase(true);
        return vqaudiorecorder->sender();
    } else {
        return vqaudiorecorder->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnSender(const QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_Sender_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioRecorder_SenderSignalIndex(const QAudioRecorder* self) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        return vqaudiorecorder->senderSignalIndex();
    } else {
        return vqaudiorecorder->senderSignalIndex();
    }
}

// Base class handler implementation
int QAudioRecorder_QBaseSenderSignalIndex(const QAudioRecorder* self) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_SenderSignalIndex_IsBase(true);
        return vqaudiorecorder->senderSignalIndex();
    } else {
        return vqaudiorecorder->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnSenderSignalIndex(const QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_SenderSignalIndex_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QAudioRecorder_Receivers(const QAudioRecorder* self, const char* signal) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        return vqaudiorecorder->receivers(signal);
    } else {
        return vqaudiorecorder->receivers(signal);
    }
}

// Base class handler implementation
int QAudioRecorder_QBaseReceivers(const QAudioRecorder* self, const char* signal) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_Receivers_IsBase(true);
        return vqaudiorecorder->receivers(signal);
    } else {
        return vqaudiorecorder->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnReceivers(const QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_Receivers_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAudioRecorder_IsSignalConnected(const QAudioRecorder* self, QMetaMethod* signal) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        return vqaudiorecorder->isSignalConnected(*signal);
    } else {
        return vqaudiorecorder->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QAudioRecorder_QBaseIsSignalConnected(const QAudioRecorder* self, QMetaMethod* signal) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_IsSignalConnected_IsBase(true);
        return vqaudiorecorder->isSignalConnected(*signal);
    } else {
        return vqaudiorecorder->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAudioRecorder_OnIsSignalConnected(const QAudioRecorder* self, intptr_t slot) {
    if (auto* vqaudiorecorder = const_cast<VirtualQAudioRecorder*>(dynamic_cast<const VirtualQAudioRecorder*>(self))) {
        vqaudiorecorder->setQAudioRecorder_IsSignalConnected_Callback(reinterpret_cast<VirtualQAudioRecorder::QAudioRecorder_IsSignalConnected_Callback>(slot));
    }
}

void QAudioRecorder_Delete(QAudioRecorder* self) {
    delete self;
}
