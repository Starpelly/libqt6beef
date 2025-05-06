#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaObject>
#include <QMediaService>
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
#include <qmediaobject.h>
#include "libqmediaobject.h"
#include "libqmediaobject.hxx"

QMetaObject* QMediaObject_MetaObject(const QMediaObject* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaObject_Metacast(QMediaObject* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaObject_Metacall(QMediaObject* self, int param1, int param2, void** param3) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnMetacall(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Metacall_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QMediaObject_QBaseMetacall(QMediaObject* self, int param1, int param2, void** param3) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Metacall_IsBase(true);
        return vqmediaobject->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QMediaObject_Tr(const char* s) {
    QString _ret = QMediaObject::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaObject_TrUtf8(const char* s) {
    QString _ret = QMediaObject::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaObject_IsAvailable(const QMediaObject* self) {
    if (auto* vqmediaobject = dynamic_cast<const VirtualQMediaObject*>(self)) {
        return self->isAvailable();
    } else {
        return self->isAvailable();
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnIsAvailable(const QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = const_cast<VirtualQMediaObject*>(dynamic_cast<const VirtualQMediaObject*>(self))) {
        vqmediaobject->setQMediaObject_IsAvailable_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_IsAvailable_Callback>(slot));
    }
}

// Virtual base class handler implementation
bool QMediaObject_QBaseIsAvailable(const QMediaObject* self) {
    if (auto* vqmediaobject = dynamic_cast<const VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_IsAvailable_IsBase(true);
        return vqmediaobject->isAvailable();
    } else {
        return self->isAvailable();
    }
}

int QMediaObject_Availability(const QMediaObject* self) {
    if (auto* vqmediaobject = dynamic_cast<const VirtualQMediaObject*>(self)) {
        return static_cast<int>(self->availability());
    } else {
        return static_cast<int>(self->availability());
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnAvailability(const QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = const_cast<VirtualQMediaObject*>(dynamic_cast<const VirtualQMediaObject*>(self))) {
        vqmediaobject->setQMediaObject_Availability_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_Availability_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QMediaObject_QBaseAvailability(const QMediaObject* self) {
    if (auto* vqmediaobject = dynamic_cast<const VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Availability_IsBase(true);
        return static_cast<int>(vqmediaobject->availability());
    } else {
        return static_cast<int>(self->availability());
    }
}

QMediaService* QMediaObject_Service(const QMediaObject* self) {
    if (auto* vqmediaobject = dynamic_cast<const VirtualQMediaObject*>(self)) {
        return self->service();
    } else {
        return self->service();
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnService(const QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = const_cast<VirtualQMediaObject*>(dynamic_cast<const VirtualQMediaObject*>(self))) {
        vqmediaobject->setQMediaObject_Service_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_Service_Callback>(slot));
    }
}

// Virtual base class handler implementation
QMediaService* QMediaObject_QBaseService(const QMediaObject* self) {
    if (auto* vqmediaobject = dynamic_cast<const VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Service_IsBase(true);
        return vqmediaobject->service();
    } else {
        return self->service();
    }
}

int QMediaObject_NotifyInterval(const QMediaObject* self) {
    return self->notifyInterval();
}

void QMediaObject_SetNotifyInterval(QMediaObject* self, int milliSeconds) {
    self->setNotifyInterval(static_cast<int>(milliSeconds));
}

bool QMediaObject_Bind(QMediaObject* self, QObject* param1) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        return self->bind(param1);
    } else {
        return self->bind(param1);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnBind(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Bind_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_Bind_Callback>(slot));
    }
}

// Virtual base class handler implementation
bool QMediaObject_QBaseBind(QMediaObject* self, QObject* param1) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Bind_IsBase(true);
        return vqmediaobject->bind(param1);
    } else {
        return self->bind(param1);
    }
}

void QMediaObject_Unbind(QMediaObject* self, QObject* param1) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        self->unbind(param1);
    } else {
        self->unbind(param1);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnUnbind(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Unbind_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_Unbind_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QMediaObject_QBaseUnbind(QMediaObject* self, QObject* param1) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Unbind_IsBase(true);
        vqmediaobject->unbind(param1);
    } else {
        self->unbind(param1);
    }
}

bool QMediaObject_IsMetaDataAvailable(const QMediaObject* self) {
    return self->isMetaDataAvailable();
}

QVariant* QMediaObject_MetaData(const QMediaObject* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QVariant(self->metaData(key_QString));
}

libqt_list /* of libqt_string */ QMediaObject_AvailableMetaData(const QMediaObject* self) {
    QStringList _ret = self->availableMetaData();
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

void QMediaObject_NotifyIntervalChanged(QMediaObject* self, int milliSeconds) {
    self->notifyIntervalChanged(static_cast<int>(milliSeconds));
}

void QMediaObject_Connect_NotifyIntervalChanged(QMediaObject* self, intptr_t slot) {
    void (*slotFunc)(QMediaObject*, int) = reinterpret_cast<void (*)(QMediaObject*, int)>(slot);
    QMediaObject::connect(self, &QMediaObject::notifyIntervalChanged, [self, slotFunc](int milliSeconds) {
        int sigval1 = milliSeconds;
        slotFunc(self, sigval1);
    });
}

void QMediaObject_MetaDataAvailableChanged(QMediaObject* self, bool available) {
    self->metaDataAvailableChanged(available);
}

void QMediaObject_Connect_MetaDataAvailableChanged(QMediaObject* self, intptr_t slot) {
    void (*slotFunc)(QMediaObject*, bool) = reinterpret_cast<void (*)(QMediaObject*, bool)>(slot);
    QMediaObject::connect(self, &QMediaObject::metaDataAvailableChanged, [self, slotFunc](bool available) {
        bool sigval1 = available;
        slotFunc(self, sigval1);
    });
}

void QMediaObject_MetaDataChanged(QMediaObject* self) {
    self->metaDataChanged();
}

void QMediaObject_Connect_MetaDataChanged(QMediaObject* self, intptr_t slot) {
    void (*slotFunc)(QMediaObject*) = reinterpret_cast<void (*)(QMediaObject*)>(slot);
    QMediaObject::connect(self, &QMediaObject::metaDataChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QMediaObject_MetaDataChanged2(QMediaObject* self, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->metaDataChanged(key_QString, *value);
}

void QMediaObject_Connect_MetaDataChanged2(QMediaObject* self, intptr_t slot) {
    void (*slotFunc)(QMediaObject*, libqt_string, QVariant*) = reinterpret_cast<void (*)(QMediaObject*, libqt_string, QVariant*)>(slot);
    QMediaObject::connect(self, &QMediaObject::metaDataChanged, [self, slotFunc](const QString& key, const QVariant& value) {
        const QString key_ret = key;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray key_b = key_ret.toUtf8();
        libqt_string key_str;
        key_str.len = key_b.length();
        key_str.data = static_cast<char*>(malloc((key_str.len + 1) * sizeof(char)));
        memcpy(key_str.data, key_b.data(), key_str.len);
        key_str.data[key_str.len] = '\0';
        libqt_string sigval1 = key_str;
        const QVariant& value_ret = value;
        // Cast returned reference into pointer
        QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
        slotFunc(self, sigval1, sigval2);
    });
}

void QMediaObject_AvailabilityChanged(QMediaObject* self, bool available) {
    self->availabilityChanged(available);
}

void QMediaObject_Connect_AvailabilityChanged(QMediaObject* self, intptr_t slot) {
    void (*slotFunc)(QMediaObject*, bool) = reinterpret_cast<void (*)(QMediaObject*, bool)>(slot);
    QMediaObject::connect(self, &QMediaObject::availabilityChanged, [self, slotFunc](bool available) {
        bool sigval1 = available;
        slotFunc(self, sigval1);
    });
}

void QMediaObject_AvailabilityChangedWithAvailability(QMediaObject* self, int availability) {
    self->availabilityChanged(static_cast<QMultimedia::AvailabilityStatus>(availability));
}

void QMediaObject_Connect_AvailabilityChangedWithAvailability(QMediaObject* self, intptr_t slot) {
    void (*slotFunc)(QMediaObject*, int) = reinterpret_cast<void (*)(QMediaObject*, int)>(slot);
    QMediaObject::connect(self, &QMediaObject::availabilityChanged, [self, slotFunc](QMultimedia::AvailabilityStatus availability) {
        int sigval1 = static_cast<int>(availability);
        slotFunc(self, sigval1);
    });
}

libqt_string QMediaObject_Tr2(const char* s, const char* c) {
    QString _ret = QMediaObject::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaObject_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaObject::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaObject_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaObject::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaObject_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaObject::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaObject_Event(QMediaObject* self, QEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        return self->event(event);
    } else {
        return self->event(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnEvent(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Event_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_Event_Callback>(slot));
    }
}

// Virtual base class handler implementation
bool QMediaObject_QBaseEvent(QMediaObject* self, QEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_Event_IsBase(true);
        return vqmediaobject->event(event);
    } else {
        return self->event(event);
    }
}

bool QMediaObject_EventFilter(QMediaObject* self, QObject* watched, QEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        return self->eventFilter(watched, event);
    } else {
        return self->eventFilter(watched, event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnEventFilter(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_EventFilter_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_EventFilter_Callback>(slot));
    }
}

// Virtual base class handler implementation
bool QMediaObject_QBaseEventFilter(QMediaObject* self, QObject* watched, QEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_EventFilter_IsBase(true);
        return vqmediaobject->eventFilter(watched, event);
    } else {
        return self->eventFilter(watched, event);
    }
}

void QMediaObject_TimerEvent(QMediaObject* self, QTimerEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->timerEvent(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnTimerEvent(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_TimerEvent_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_TimerEvent_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QMediaObject_QBaseTimerEvent(QMediaObject* self, QTimerEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_TimerEvent_IsBase(true);
        vqmediaobject->timerEvent(event);
    }
}

void QMediaObject_ChildEvent(QMediaObject* self, QChildEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->childEvent(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnChildEvent(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_ChildEvent_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_ChildEvent_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QMediaObject_QBaseChildEvent(QMediaObject* self, QChildEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_ChildEvent_IsBase(true);
        vqmediaobject->childEvent(event);
    }
}

void QMediaObject_CustomEvent(QMediaObject* self, QEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->customEvent(event);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnCustomEvent(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_CustomEvent_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_CustomEvent_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QMediaObject_QBaseCustomEvent(QMediaObject* self, QEvent* event) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_CustomEvent_IsBase(true);
        vqmediaobject->customEvent(event);
    }
}

void QMediaObject_ConnectNotify(QMediaObject* self, QMetaMethod* signal) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->connectNotify(*signal);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnConnectNotify(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_ConnectNotify_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_ConnectNotify_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QMediaObject_QBaseConnectNotify(QMediaObject* self, QMetaMethod* signal) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_ConnectNotify_IsBase(true);
        vqmediaobject->connectNotify(*signal);
    }
}

void QMediaObject_DisconnectNotify(QMediaObject* self, QMetaMethod* signal) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->disconnectNotify(*signal);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaObject_OnDisconnectNotify(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_DisconnectNotify_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_DisconnectNotify_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QMediaObject_QBaseDisconnectNotify(QMediaObject* self, QMetaMethod* signal) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_DisconnectNotify_IsBase(true);
        vqmediaobject->disconnectNotify(*signal);
    }
}

// Derived class handler implementation
void QMediaObject_AddPropertyWatch(QMediaObject* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->addPropertyWatch(name_QByteArray);
    } else {
        vqmediaobject->addPropertyWatch(name_QByteArray);
    }
}

// Base class handler implementation
void QMediaObject_QBaseAddPropertyWatch(QMediaObject* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_AddPropertyWatch_IsBase(true);
        vqmediaobject->addPropertyWatch(name_QByteArray);
    } else {
        vqmediaobject->addPropertyWatch(name_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaObject_OnAddPropertyWatch(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_AddPropertyWatch_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_AddPropertyWatch_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaObject_RemovePropertyWatch(QMediaObject* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->removePropertyWatch(name_QByteArray);
    } else {
        vqmediaobject->removePropertyWatch(name_QByteArray);
    }
}

// Base class handler implementation
void QMediaObject_QBaseRemovePropertyWatch(QMediaObject* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_RemovePropertyWatch_IsBase(true);
        vqmediaobject->removePropertyWatch(name_QByteArray);
    } else {
        vqmediaobject->removePropertyWatch(name_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaObject_OnRemovePropertyWatch(QMediaObject* self, intptr_t slot) {
    if (auto* vqmediaobject = dynamic_cast<VirtualQMediaObject*>(self)) {
        vqmediaobject->setQMediaObject_RemovePropertyWatch_Callback(reinterpret_cast<VirtualQMediaObject::QMediaObject_RemovePropertyWatch_Callback>(slot));
    }
}

void QMediaObject_Delete(QMediaObject* self) {
    delete self;
}
