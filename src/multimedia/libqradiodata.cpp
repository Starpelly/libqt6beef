#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaBindableInterface>
#include <QMediaObject>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QRadioData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qradiodata.h>
#include "libqradiodata.h"
#include "libqradiodata.hxx"

QRadioData* QRadioData_new(QMediaObject* mediaObject) {
    return new VirtualQRadioData(mediaObject);
}

QRadioData* QRadioData_new2(QMediaObject* mediaObject, QObject* parent) {
    return new VirtualQRadioData(mediaObject, parent);
}

QMetaObject* QRadioData_MetaObject(const QRadioData* self) {
    return (QMetaObject*)self->metaObject();
}

void* QRadioData_Metacast(QRadioData* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QRadioData_Metacall(QRadioData* self, int param1, int param2, void** param3) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QRadioData_OnMetacall(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_Metacall_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QRadioData_QBaseMetacall(QRadioData* self, int param1, int param2, void** param3) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_Metacall_IsBase(true);
        return vqradiodata->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QRadioData_Tr(const char* s) {
    QString _ret = QRadioData::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioData_TrUtf8(const char* s) {
    QString _ret = QRadioData::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QRadioData_Availability(const QRadioData* self) {
    return static_cast<int>(self->availability());
}

libqt_string QRadioData_StationId(const QRadioData* self) {
    QString _ret = self->stationId();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QRadioData_ProgramType(const QRadioData* self) {
    return static_cast<int>(self->programType());
}

libqt_string QRadioData_ProgramTypeName(const QRadioData* self) {
    QString _ret = self->programTypeName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioData_StationName(const QRadioData* self) {
    QString _ret = self->stationName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioData_RadioText(const QRadioData* self) {
    QString _ret = self->radioText();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QRadioData_IsAlternativeFrequenciesEnabled(const QRadioData* self) {
    return self->isAlternativeFrequenciesEnabled();
}

int QRadioData_Error(const QRadioData* self) {
    return static_cast<int>(self->error());
}

libqt_string QRadioData_ErrorString(const QRadioData* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QRadioData_SetAlternativeFrequenciesEnabled(QRadioData* self, bool enabled) {
    self->setAlternativeFrequenciesEnabled(enabled);
}

void QRadioData_StationIdChanged(QRadioData* self, libqt_string stationId) {
    QString stationId_QString = QString::fromUtf8(stationId.data, stationId.len);
    self->stationIdChanged(stationId_QString);
}

void QRadioData_Connect_StationIdChanged(QRadioData* self, intptr_t slot) {
    void (*slotFunc)(QRadioData*, libqt_string) = reinterpret_cast<void (*)(QRadioData*, libqt_string)>(slot);
    QRadioData::connect(self, &QRadioData::stationIdChanged, [self, slotFunc](QString stationId) {
        QString stationId_ret = stationId;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray stationId_b = stationId_ret.toUtf8();
        libqt_string stationId_str;
        stationId_str.len = stationId_b.length();
        stationId_str.data = static_cast<char*>(malloc((stationId_str.len + 1) * sizeof(char)));
        memcpy(stationId_str.data, stationId_b.data(), stationId_str.len);
        stationId_str.data[stationId_str.len] = '\0';
        libqt_string sigval1 = stationId_str;
        slotFunc(self, sigval1);
    });
}

void QRadioData_ProgramTypeChanged(QRadioData* self, int programType) {
    self->programTypeChanged(static_cast<QRadioData::ProgramType>(programType));
}

void QRadioData_Connect_ProgramTypeChanged(QRadioData* self, intptr_t slot) {
    void (*slotFunc)(QRadioData*, int) = reinterpret_cast<void (*)(QRadioData*, int)>(slot);
    QRadioData::connect(self, &QRadioData::programTypeChanged, [self, slotFunc](QRadioData::ProgramType programType) {
        int sigval1 = static_cast<int>(programType);
        slotFunc(self, sigval1);
    });
}

void QRadioData_ProgramTypeNameChanged(QRadioData* self, libqt_string programTypeName) {
    QString programTypeName_QString = QString::fromUtf8(programTypeName.data, programTypeName.len);
    self->programTypeNameChanged(programTypeName_QString);
}

void QRadioData_Connect_ProgramTypeNameChanged(QRadioData* self, intptr_t slot) {
    void (*slotFunc)(QRadioData*, libqt_string) = reinterpret_cast<void (*)(QRadioData*, libqt_string)>(slot);
    QRadioData::connect(self, &QRadioData::programTypeNameChanged, [self, slotFunc](QString programTypeName) {
        QString programTypeName_ret = programTypeName;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray programTypeName_b = programTypeName_ret.toUtf8();
        libqt_string programTypeName_str;
        programTypeName_str.len = programTypeName_b.length();
        programTypeName_str.data = static_cast<char*>(malloc((programTypeName_str.len + 1) * sizeof(char)));
        memcpy(programTypeName_str.data, programTypeName_b.data(), programTypeName_str.len);
        programTypeName_str.data[programTypeName_str.len] = '\0';
        libqt_string sigval1 = programTypeName_str;
        slotFunc(self, sigval1);
    });
}

void QRadioData_StationNameChanged(QRadioData* self, libqt_string stationName) {
    QString stationName_QString = QString::fromUtf8(stationName.data, stationName.len);
    self->stationNameChanged(stationName_QString);
}

void QRadioData_Connect_StationNameChanged(QRadioData* self, intptr_t slot) {
    void (*slotFunc)(QRadioData*, libqt_string) = reinterpret_cast<void (*)(QRadioData*, libqt_string)>(slot);
    QRadioData::connect(self, &QRadioData::stationNameChanged, [self, slotFunc](QString stationName) {
        QString stationName_ret = stationName;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray stationName_b = stationName_ret.toUtf8();
        libqt_string stationName_str;
        stationName_str.len = stationName_b.length();
        stationName_str.data = static_cast<char*>(malloc((stationName_str.len + 1) * sizeof(char)));
        memcpy(stationName_str.data, stationName_b.data(), stationName_str.len);
        stationName_str.data[stationName_str.len] = '\0';
        libqt_string sigval1 = stationName_str;
        slotFunc(self, sigval1);
    });
}

void QRadioData_RadioTextChanged(QRadioData* self, libqt_string radioText) {
    QString radioText_QString = QString::fromUtf8(radioText.data, radioText.len);
    self->radioTextChanged(radioText_QString);
}

void QRadioData_Connect_RadioTextChanged(QRadioData* self, intptr_t slot) {
    void (*slotFunc)(QRadioData*, libqt_string) = reinterpret_cast<void (*)(QRadioData*, libqt_string)>(slot);
    QRadioData::connect(self, &QRadioData::radioTextChanged, [self, slotFunc](QString radioText) {
        QString radioText_ret = radioText;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray radioText_b = radioText_ret.toUtf8();
        libqt_string radioText_str;
        radioText_str.len = radioText_b.length();
        radioText_str.data = static_cast<char*>(malloc((radioText_str.len + 1) * sizeof(char)));
        memcpy(radioText_str.data, radioText_b.data(), radioText_str.len);
        radioText_str.data[radioText_str.len] = '\0';
        libqt_string sigval1 = radioText_str;
        slotFunc(self, sigval1);
    });
}

void QRadioData_AlternativeFrequenciesEnabledChanged(QRadioData* self, bool enabled) {
    self->alternativeFrequenciesEnabledChanged(enabled);
}

void QRadioData_Connect_AlternativeFrequenciesEnabledChanged(QRadioData* self, intptr_t slot) {
    void (*slotFunc)(QRadioData*, bool) = reinterpret_cast<void (*)(QRadioData*, bool)>(slot);
    QRadioData::connect(self, &QRadioData::alternativeFrequenciesEnabledChanged, [self, slotFunc](bool enabled) {
        bool sigval1 = enabled;
        slotFunc(self, sigval1);
    });
}

void QRadioData_ErrorWithErrorVal(QRadioData* self, int errorVal) {
    self->error(static_cast<QRadioData::Error>(errorVal));
}

void QRadioData_Connect_ErrorWithErrorVal(QRadioData* self, intptr_t slot) {
    void (*slotFunc)(QRadioData*, int) = reinterpret_cast<void (*)(QRadioData*, int)>(slot);
    QRadioData::connect(self, &QRadioData::error, [self, slotFunc](QRadioData::Error errorVal) {
        int sigval1 = static_cast<int>(errorVal);
        slotFunc(self, sigval1);
    });
}

libqt_string QRadioData_Tr2(const char* s, const char* c) {
    QString _ret = QRadioData::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioData_Tr3(const char* s, const char* c, int n) {
    QString _ret = QRadioData::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioData_TrUtf82(const char* s, const char* c) {
    QString _ret = QRadioData::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioData_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QRadioData::trUtf8(s, c, static_cast<int>(n));
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
QMediaObject* QRadioData_MediaObject(const QRadioData* self) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        return vqradiodata->mediaObject();
    } else {
        return vqradiodata->mediaObject();
    }
}

// Base class handler implementation
QMediaObject* QRadioData_QBaseMediaObject(const QRadioData* self) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_MediaObject_IsBase(true);
        return vqradiodata->mediaObject();
    } else {
        return vqradiodata->mediaObject();
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnMediaObject(const QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_MediaObject_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_MediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioData_SetMediaObject(QRadioData* self, QMediaObject* mediaObject) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        return vqradiodata->setMediaObject(mediaObject);
    } else {
        return vqradiodata->setMediaObject(mediaObject);
    }
}

// Base class handler implementation
bool QRadioData_QBaseSetMediaObject(QRadioData* self, QMediaObject* mediaObject) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_SetMediaObject_IsBase(true);
        return vqradiodata->setMediaObject(mediaObject);
    } else {
        return vqradiodata->setMediaObject(mediaObject);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnSetMediaObject(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_SetMediaObject_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_SetMediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioData_Event(QRadioData* self, QEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        return vqradiodata->event(event);
    } else {
        return vqradiodata->event(event);
    }
}

// Base class handler implementation
bool QRadioData_QBaseEvent(QRadioData* self, QEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_Event_IsBase(true);
        return vqradiodata->event(event);
    } else {
        return vqradiodata->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnEvent(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_Event_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioData_EventFilter(QRadioData* self, QObject* watched, QEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        return vqradiodata->eventFilter(watched, event);
    } else {
        return vqradiodata->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QRadioData_QBaseEventFilter(QRadioData* self, QObject* watched, QEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_EventFilter_IsBase(true);
        return vqradiodata->eventFilter(watched, event);
    } else {
        return vqradiodata->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnEventFilter(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_EventFilter_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioData_TimerEvent(QRadioData* self, QTimerEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->timerEvent(event);
    } else {
        vqradiodata->timerEvent(event);
    }
}

// Base class handler implementation
void QRadioData_QBaseTimerEvent(QRadioData* self, QTimerEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_TimerEvent_IsBase(true);
        vqradiodata->timerEvent(event);
    } else {
        vqradiodata->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnTimerEvent(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_TimerEvent_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioData_ChildEvent(QRadioData* self, QChildEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->childEvent(event);
    } else {
        vqradiodata->childEvent(event);
    }
}

// Base class handler implementation
void QRadioData_QBaseChildEvent(QRadioData* self, QChildEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_ChildEvent_IsBase(true);
        vqradiodata->childEvent(event);
    } else {
        vqradiodata->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnChildEvent(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_ChildEvent_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioData_CustomEvent(QRadioData* self, QEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->customEvent(event);
    } else {
        vqradiodata->customEvent(event);
    }
}

// Base class handler implementation
void QRadioData_QBaseCustomEvent(QRadioData* self, QEvent* event) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_CustomEvent_IsBase(true);
        vqradiodata->customEvent(event);
    } else {
        vqradiodata->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnCustomEvent(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_CustomEvent_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioData_ConnectNotify(QRadioData* self, QMetaMethod* signal) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->connectNotify(*signal);
    } else {
        vqradiodata->connectNotify(*signal);
    }
}

// Base class handler implementation
void QRadioData_QBaseConnectNotify(QRadioData* self, QMetaMethod* signal) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_ConnectNotify_IsBase(true);
        vqradiodata->connectNotify(*signal);
    } else {
        vqradiodata->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnConnectNotify(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_ConnectNotify_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioData_DisconnectNotify(QRadioData* self, QMetaMethod* signal) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->disconnectNotify(*signal);
    } else {
        vqradiodata->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QRadioData_QBaseDisconnectNotify(QRadioData* self, QMetaMethod* signal) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_DisconnectNotify_IsBase(true);
        vqradiodata->disconnectNotify(*signal);
    } else {
        vqradiodata->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnDisconnectNotify(QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = dynamic_cast<VirtualQRadioData*>(self)) {
        vqradiodata->setQRadioData_DisconnectNotify_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QRadioData_Sender(const QRadioData* self) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        return vqradiodata->sender();
    } else {
        return vqradiodata->sender();
    }
}

// Base class handler implementation
QObject* QRadioData_QBaseSender(const QRadioData* self) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_Sender_IsBase(true);
        return vqradiodata->sender();
    } else {
        return vqradiodata->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnSender(const QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_Sender_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QRadioData_SenderSignalIndex(const QRadioData* self) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        return vqradiodata->senderSignalIndex();
    } else {
        return vqradiodata->senderSignalIndex();
    }
}

// Base class handler implementation
int QRadioData_QBaseSenderSignalIndex(const QRadioData* self) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_SenderSignalIndex_IsBase(true);
        return vqradiodata->senderSignalIndex();
    } else {
        return vqradiodata->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnSenderSignalIndex(const QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_SenderSignalIndex_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QRadioData_Receivers(const QRadioData* self, const char* signal) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        return vqradiodata->receivers(signal);
    } else {
        return vqradiodata->receivers(signal);
    }
}

// Base class handler implementation
int QRadioData_QBaseReceivers(const QRadioData* self, const char* signal) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_Receivers_IsBase(true);
        return vqradiodata->receivers(signal);
    } else {
        return vqradiodata->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnReceivers(const QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_Receivers_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioData_IsSignalConnected(const QRadioData* self, QMetaMethod* signal) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        return vqradiodata->isSignalConnected(*signal);
    } else {
        return vqradiodata->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QRadioData_QBaseIsSignalConnected(const QRadioData* self, QMetaMethod* signal) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_IsSignalConnected_IsBase(true);
        return vqradiodata->isSignalConnected(*signal);
    } else {
        return vqradiodata->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioData_OnIsSignalConnected(const QRadioData* self, intptr_t slot) {
    if (auto* vqradiodata = const_cast<VirtualQRadioData*>(dynamic_cast<const VirtualQRadioData*>(self))) {
        vqradiodata->setQRadioData_IsSignalConnected_Callback(reinterpret_cast<VirtualQRadioData::QRadioData_IsSignalConnected_Callback>(slot));
    }
}

void QRadioData_Delete(QRadioData* self) {
    delete self;
}
