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
#include <QPair>
#include <QRadioData>
#include <QRadioTuner>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qradiotuner.h>
#include "libqradiotuner.h"
#include "libqradiotuner.hxx"

QRadioTuner* QRadioTuner_new() {
    return new VirtualQRadioTuner();
}

QRadioTuner* QRadioTuner_new2(QObject* parent) {
    return new VirtualQRadioTuner(parent);
}

QMetaObject* QRadioTuner_MetaObject(const QRadioTuner* self) {
    return (QMetaObject*)self->metaObject();
}

void* QRadioTuner_Metacast(QRadioTuner* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QRadioTuner_Metacall(QRadioTuner* self, int param1, int param2, void** param3) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QRadioTuner_OnMetacall(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_Metacall_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QRadioTuner_QBaseMetacall(QRadioTuner* self, int param1, int param2, void** param3) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_Metacall_IsBase(true);
        return vqradiotuner->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QRadioTuner_Tr(const char* s) {
    QString _ret = QRadioTuner::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioTuner_TrUtf8(const char* s) {
    QString _ret = QRadioTuner::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QRadioTuner_State(const QRadioTuner* self) {
    return static_cast<int>(self->state());
}

int QRadioTuner_Band(const QRadioTuner* self) {
    return static_cast<int>(self->band());
}

bool QRadioTuner_IsBandSupported(const QRadioTuner* self, int b) {
    return self->isBandSupported(static_cast<QRadioTuner::Band>(b));
}

int QRadioTuner_Frequency(const QRadioTuner* self) {
    return self->frequency();
}

int QRadioTuner_FrequencyStep(const QRadioTuner* self, int band) {
    return self->frequencyStep(static_cast<QRadioTuner::Band>(band));
}

libqt_pair /* tuple of int and int */ QRadioTuner_FrequencyRange(const QRadioTuner* self, int band) {
    QPair<int, int> _ret = self->frequencyRange(static_cast<QRadioTuner::Band>(band));
    // Convert QPair<> from C++ memory to manually-managed C memory
    int* _first = static_cast<int*>(malloc(sizeof(int)));
    int* _second = static_cast<int*>(malloc(sizeof(int)));
    *_first = _ret.first;
    *_second = _ret.second;
    libqt_pair _out;
    _out.first = static_cast<void*>(_first);
    _out.second = static_cast<void*>(_second);
    return _out;
}

bool QRadioTuner_IsStereo(const QRadioTuner* self) {
    return self->isStereo();
}

void QRadioTuner_SetStereoMode(QRadioTuner* self, int mode) {
    self->setStereoMode(static_cast<QRadioTuner::StereoMode>(mode));
}

int QRadioTuner_StereoMode(const QRadioTuner* self) {
    return static_cast<int>(self->stereoMode());
}

int QRadioTuner_SignalStrength(const QRadioTuner* self) {
    return self->signalStrength();
}

int QRadioTuner_Volume(const QRadioTuner* self) {
    return self->volume();
}

bool QRadioTuner_IsMuted(const QRadioTuner* self) {
    return self->isMuted();
}

bool QRadioTuner_IsSearching(const QRadioTuner* self) {
    return self->isSearching();
}

bool QRadioTuner_IsAntennaConnected(const QRadioTuner* self) {
    return self->isAntennaConnected();
}

int QRadioTuner_Error(const QRadioTuner* self) {
    return static_cast<int>(self->error());
}

libqt_string QRadioTuner_ErrorString(const QRadioTuner* self) {
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

QRadioData* QRadioTuner_RadioData(const QRadioTuner* self) {
    return self->radioData();
}

void QRadioTuner_SearchForward(QRadioTuner* self) {
    self->searchForward();
}

void QRadioTuner_SearchBackward(QRadioTuner* self) {
    self->searchBackward();
}

void QRadioTuner_SearchAllStations(QRadioTuner* self) {
    self->searchAllStations();
}

void QRadioTuner_CancelSearch(QRadioTuner* self) {
    self->cancelSearch();
}

void QRadioTuner_SetBand(QRadioTuner* self, int band) {
    self->setBand(static_cast<QRadioTuner::Band>(band));
}

void QRadioTuner_SetFrequency(QRadioTuner* self, int frequency) {
    self->setFrequency(static_cast<int>(frequency));
}

void QRadioTuner_SetVolume(QRadioTuner* self, int volume) {
    self->setVolume(static_cast<int>(volume));
}

void QRadioTuner_SetMuted(QRadioTuner* self, bool muted) {
    self->setMuted(muted);
}

void QRadioTuner_Start(QRadioTuner* self) {
    self->start();
}

void QRadioTuner_Stop(QRadioTuner* self) {
    self->stop();
}

void QRadioTuner_StateChanged(QRadioTuner* self, int state) {
    self->stateChanged(static_cast<QRadioTuner::State>(state));
}

void QRadioTuner_Connect_StateChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, int) = reinterpret_cast<void (*)(QRadioTuner*, int)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::stateChanged, [self, slotFunc](QRadioTuner::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_BandChanged(QRadioTuner* self, int band) {
    self->bandChanged(static_cast<QRadioTuner::Band>(band));
}

void QRadioTuner_Connect_BandChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, int) = reinterpret_cast<void (*)(QRadioTuner*, int)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::bandChanged, [self, slotFunc](QRadioTuner::Band band) {
        int sigval1 = static_cast<int>(band);
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_FrequencyChanged(QRadioTuner* self, int frequency) {
    self->frequencyChanged(static_cast<int>(frequency));
}

void QRadioTuner_Connect_FrequencyChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, int) = reinterpret_cast<void (*)(QRadioTuner*, int)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::frequencyChanged, [self, slotFunc](int frequency) {
        int sigval1 = frequency;
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_StereoStatusChanged(QRadioTuner* self, bool stereo) {
    self->stereoStatusChanged(stereo);
}

void QRadioTuner_Connect_StereoStatusChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, bool) = reinterpret_cast<void (*)(QRadioTuner*, bool)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::stereoStatusChanged, [self, slotFunc](bool stereo) {
        bool sigval1 = stereo;
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_SearchingChanged(QRadioTuner* self, bool searching) {
    self->searchingChanged(searching);
}

void QRadioTuner_Connect_SearchingChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, bool) = reinterpret_cast<void (*)(QRadioTuner*, bool)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::searchingChanged, [self, slotFunc](bool searching) {
        bool sigval1 = searching;
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_SignalStrengthChanged(QRadioTuner* self, int signalStrength) {
    self->signalStrengthChanged(static_cast<int>(signalStrength));
}

void QRadioTuner_Connect_SignalStrengthChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, int) = reinterpret_cast<void (*)(QRadioTuner*, int)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::signalStrengthChanged, [self, slotFunc](int signalStrength) {
        int sigval1 = signalStrength;
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_VolumeChanged(QRadioTuner* self, int volume) {
    self->volumeChanged(static_cast<int>(volume));
}

void QRadioTuner_Connect_VolumeChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, int) = reinterpret_cast<void (*)(QRadioTuner*, int)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::volumeChanged, [self, slotFunc](int volume) {
        int sigval1 = volume;
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_MutedChanged(QRadioTuner* self, bool muted) {
    self->mutedChanged(muted);
}

void QRadioTuner_Connect_MutedChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, bool) = reinterpret_cast<void (*)(QRadioTuner*, bool)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::mutedChanged, [self, slotFunc](bool muted) {
        bool sigval1 = muted;
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_StationFound(QRadioTuner* self, int frequency, libqt_string stationId) {
    QString stationId_QString = QString::fromUtf8(stationId.data, stationId.len);
    self->stationFound(static_cast<int>(frequency), stationId_QString);
}

void QRadioTuner_Connect_StationFound(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, int, libqt_string) = reinterpret_cast<void (*)(QRadioTuner*, int, libqt_string)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::stationFound, [self, slotFunc](int frequency, QString stationId) {
        int sigval1 = frequency;
        QString stationId_ret = stationId;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray stationId_b = stationId_ret.toUtf8();
        libqt_string stationId_str;
        stationId_str.len = stationId_b.length();
        stationId_str.data = static_cast<char*>(malloc((stationId_str.len + 1) * sizeof(char)));
        memcpy(stationId_str.data, stationId_b.data(), stationId_str.len);
        stationId_str.data[stationId_str.len] = '\0';
        libqt_string sigval2 = stationId_str;
        slotFunc(self, sigval1, sigval2);
    });
}

void QRadioTuner_AntennaConnectedChanged(QRadioTuner* self, bool connectionStatus) {
    self->antennaConnectedChanged(connectionStatus);
}

void QRadioTuner_Connect_AntennaConnectedChanged(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, bool) = reinterpret_cast<void (*)(QRadioTuner*, bool)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::antennaConnectedChanged, [self, slotFunc](bool connectionStatus) {
        bool sigval1 = connectionStatus;
        slotFunc(self, sigval1);
    });
}

void QRadioTuner_ErrorWithErrorVal(QRadioTuner* self, int errorVal) {
    self->error(static_cast<QRadioTuner::Error>(errorVal));
}

void QRadioTuner_Connect_ErrorWithErrorVal(QRadioTuner* self, intptr_t slot) {
    void (*slotFunc)(QRadioTuner*, int) = reinterpret_cast<void (*)(QRadioTuner*, int)>(slot);
    QRadioTuner::connect(self, &QRadioTuner::error, [self, slotFunc](QRadioTuner::Error errorVal) {
        int sigval1 = static_cast<int>(errorVal);
        slotFunc(self, sigval1);
    });
}

libqt_string QRadioTuner_Tr2(const char* s, const char* c) {
    QString _ret = QRadioTuner::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioTuner_Tr3(const char* s, const char* c, int n) {
    QString _ret = QRadioTuner::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioTuner_TrUtf82(const char* s, const char* c) {
    QString _ret = QRadioTuner::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioTuner_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QRadioTuner::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QRadioTuner_SearchAllStations1(QRadioTuner* self, int searchMode) {
    self->searchAllStations(static_cast<QRadioTuner::SearchMode>(searchMode));
}

// Derived class handler implementation
int QRadioTuner_Availability(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        return static_cast<int>(vqradiotuner->availability());
    } else {
        return static_cast<int>(vqradiotuner->availability());
    }
}

// Base class handler implementation
int QRadioTuner_QBaseAvailability(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_Availability_IsBase(true);
        return static_cast<int>(vqradiotuner->availability());
    } else {
        return static_cast<int>(vqradiotuner->availability());
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnAvailability(const QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_Availability_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_Availability_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioTuner_IsAvailable(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        return vqradiotuner->isAvailable();
    } else {
        return vqradiotuner->isAvailable();
    }
}

// Base class handler implementation
bool QRadioTuner_QBaseIsAvailable(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_IsAvailable_IsBase(true);
        return vqradiotuner->isAvailable();
    } else {
        return vqradiotuner->isAvailable();
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnIsAvailable(const QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_IsAvailable_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_IsAvailable_Callback>(slot));
    }
}

// Derived class handler implementation
QMediaService* QRadioTuner_Service(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        return vqradiotuner->service();
    } else {
        return vqradiotuner->service();
    }
}

// Base class handler implementation
QMediaService* QRadioTuner_QBaseService(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_Service_IsBase(true);
        return vqradiotuner->service();
    } else {
        return vqradiotuner->service();
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnService(const QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_Service_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_Service_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioTuner_Bind(QRadioTuner* self, QObject* param1) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        return vqradiotuner->bind(param1);
    } else {
        return vqradiotuner->bind(param1);
    }
}

// Base class handler implementation
bool QRadioTuner_QBaseBind(QRadioTuner* self, QObject* param1) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_Bind_IsBase(true);
        return vqradiotuner->bind(param1);
    } else {
        return vqradiotuner->bind(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnBind(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_Bind_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_Bind_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioTuner_Unbind(QRadioTuner* self, QObject* param1) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->unbind(param1);
    } else {
        vqradiotuner->unbind(param1);
    }
}

// Base class handler implementation
void QRadioTuner_QBaseUnbind(QRadioTuner* self, QObject* param1) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_Unbind_IsBase(true);
        vqradiotuner->unbind(param1);
    } else {
        vqradiotuner->unbind(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnUnbind(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_Unbind_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_Unbind_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioTuner_Event(QRadioTuner* self, QEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        return vqradiotuner->event(event);
    } else {
        return vqradiotuner->event(event);
    }
}

// Base class handler implementation
bool QRadioTuner_QBaseEvent(QRadioTuner* self, QEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_Event_IsBase(true);
        return vqradiotuner->event(event);
    } else {
        return vqradiotuner->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnEvent(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_Event_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioTuner_EventFilter(QRadioTuner* self, QObject* watched, QEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        return vqradiotuner->eventFilter(watched, event);
    } else {
        return vqradiotuner->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QRadioTuner_QBaseEventFilter(QRadioTuner* self, QObject* watched, QEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_EventFilter_IsBase(true);
        return vqradiotuner->eventFilter(watched, event);
    } else {
        return vqradiotuner->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnEventFilter(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_EventFilter_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioTuner_TimerEvent(QRadioTuner* self, QTimerEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->timerEvent(event);
    } else {
        vqradiotuner->timerEvent(event);
    }
}

// Base class handler implementation
void QRadioTuner_QBaseTimerEvent(QRadioTuner* self, QTimerEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_TimerEvent_IsBase(true);
        vqradiotuner->timerEvent(event);
    } else {
        vqradiotuner->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnTimerEvent(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_TimerEvent_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioTuner_ChildEvent(QRadioTuner* self, QChildEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->childEvent(event);
    } else {
        vqradiotuner->childEvent(event);
    }
}

// Base class handler implementation
void QRadioTuner_QBaseChildEvent(QRadioTuner* self, QChildEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_ChildEvent_IsBase(true);
        vqradiotuner->childEvent(event);
    } else {
        vqradiotuner->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnChildEvent(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_ChildEvent_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioTuner_CustomEvent(QRadioTuner* self, QEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->customEvent(event);
    } else {
        vqradiotuner->customEvent(event);
    }
}

// Base class handler implementation
void QRadioTuner_QBaseCustomEvent(QRadioTuner* self, QEvent* event) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_CustomEvent_IsBase(true);
        vqradiotuner->customEvent(event);
    } else {
        vqradiotuner->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnCustomEvent(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_CustomEvent_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioTuner_ConnectNotify(QRadioTuner* self, QMetaMethod* signal) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->connectNotify(*signal);
    } else {
        vqradiotuner->connectNotify(*signal);
    }
}

// Base class handler implementation
void QRadioTuner_QBaseConnectNotify(QRadioTuner* self, QMetaMethod* signal) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_ConnectNotify_IsBase(true);
        vqradiotuner->connectNotify(*signal);
    } else {
        vqradiotuner->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnConnectNotify(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_ConnectNotify_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioTuner_DisconnectNotify(QRadioTuner* self, QMetaMethod* signal) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->disconnectNotify(*signal);
    } else {
        vqradiotuner->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QRadioTuner_QBaseDisconnectNotify(QRadioTuner* self, QMetaMethod* signal) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_DisconnectNotify_IsBase(true);
        vqradiotuner->disconnectNotify(*signal);
    } else {
        vqradiotuner->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnDisconnectNotify(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_DisconnectNotify_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioTuner_AddPropertyWatch(QRadioTuner* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->addPropertyWatch(name_QByteArray);
    } else {
        vqradiotuner->addPropertyWatch(name_QByteArray);
    }
}

// Base class handler implementation
void QRadioTuner_QBaseAddPropertyWatch(QRadioTuner* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_AddPropertyWatch_IsBase(true);
        vqradiotuner->addPropertyWatch(name_QByteArray);
    } else {
        vqradiotuner->addPropertyWatch(name_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnAddPropertyWatch(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_AddPropertyWatch_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_AddPropertyWatch_Callback>(slot));
    }
}

// Derived class handler implementation
void QRadioTuner_RemovePropertyWatch(QRadioTuner* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->removePropertyWatch(name_QByteArray);
    } else {
        vqradiotuner->removePropertyWatch(name_QByteArray);
    }
}

// Base class handler implementation
void QRadioTuner_QBaseRemovePropertyWatch(QRadioTuner* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_RemovePropertyWatch_IsBase(true);
        vqradiotuner->removePropertyWatch(name_QByteArray);
    } else {
        vqradiotuner->removePropertyWatch(name_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnRemovePropertyWatch(QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = dynamic_cast<VirtualQRadioTuner*>(self)) {
        vqradiotuner->setQRadioTuner_RemovePropertyWatch_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_RemovePropertyWatch_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QRadioTuner_Sender(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        return vqradiotuner->sender();
    } else {
        return vqradiotuner->sender();
    }
}

// Base class handler implementation
QObject* QRadioTuner_QBaseSender(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_Sender_IsBase(true);
        return vqradiotuner->sender();
    } else {
        return vqradiotuner->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnSender(const QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_Sender_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QRadioTuner_SenderSignalIndex(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        return vqradiotuner->senderSignalIndex();
    } else {
        return vqradiotuner->senderSignalIndex();
    }
}

// Base class handler implementation
int QRadioTuner_QBaseSenderSignalIndex(const QRadioTuner* self) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_SenderSignalIndex_IsBase(true);
        return vqradiotuner->senderSignalIndex();
    } else {
        return vqradiotuner->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnSenderSignalIndex(const QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_SenderSignalIndex_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QRadioTuner_Receivers(const QRadioTuner* self, const char* signal) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        return vqradiotuner->receivers(signal);
    } else {
        return vqradiotuner->receivers(signal);
    }
}

// Base class handler implementation
int QRadioTuner_QBaseReceivers(const QRadioTuner* self, const char* signal) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_Receivers_IsBase(true);
        return vqradiotuner->receivers(signal);
    } else {
        return vqradiotuner->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnReceivers(const QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_Receivers_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QRadioTuner_IsSignalConnected(const QRadioTuner* self, QMetaMethod* signal) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        return vqradiotuner->isSignalConnected(*signal);
    } else {
        return vqradiotuner->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QRadioTuner_QBaseIsSignalConnected(const QRadioTuner* self, QMetaMethod* signal) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_IsSignalConnected_IsBase(true);
        return vqradiotuner->isSignalConnected(*signal);
    } else {
        return vqradiotuner->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QRadioTuner_OnIsSignalConnected(const QRadioTuner* self, intptr_t slot) {
    if (auto* vqradiotuner = const_cast<VirtualQRadioTuner*>(dynamic_cast<const VirtualQRadioTuner*>(self))) {
        vqradiotuner->setQRadioTuner_IsSignalConnected_Callback(reinterpret_cast<VirtualQRadioTuner::QRadioTuner_IsSignalConnected_Callback>(slot));
    }
}

void QRadioTuner_Delete(QRadioTuner* self) {
    delete self;
}
