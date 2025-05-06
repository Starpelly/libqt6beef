#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QPair>
#include <QRadioTunerControl>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qradiotunercontrol.h>
#include "libqradiotunercontrol.h"
#include "libqradiotunercontrol.hxx"

QMetaObject* QRadioTunerControl_MetaObject(const QRadioTunerControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QRadioTunerControl_Metacast(QRadioTunerControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QRadioTunerControl_Metacall(QRadioTunerControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QRadioTunerControl_Tr(const char* s) {
    QString _ret = QRadioTunerControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioTunerControl_TrUtf8(const char* s) {
    QString _ret = QRadioTunerControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QRadioTunerControl_State(const QRadioTunerControl* self) {
    return static_cast<int>(self->state());
}

int QRadioTunerControl_Band(const QRadioTunerControl* self) {
    return static_cast<int>(self->band());
}

void QRadioTunerControl_SetBand(QRadioTunerControl* self, int b) {
    self->setBand(static_cast<QRadioTuner::Band>(b));
}

bool QRadioTunerControl_IsBandSupported(const QRadioTunerControl* self, int b) {
    return self->isBandSupported(static_cast<QRadioTuner::Band>(b));
}

int QRadioTunerControl_Frequency(const QRadioTunerControl* self) {
    return self->frequency();
}

int QRadioTunerControl_FrequencyStep(const QRadioTunerControl* self, int b) {
    return self->frequencyStep(static_cast<QRadioTuner::Band>(b));
}

libqt_pair /* tuple of int and int */ QRadioTunerControl_FrequencyRange(const QRadioTunerControl* self, int b) {
    QPair<int, int> _ret = self->frequencyRange(static_cast<QRadioTuner::Band>(b));
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

void QRadioTunerControl_SetFrequency(QRadioTunerControl* self, int frequency) {
    self->setFrequency(static_cast<int>(frequency));
}

bool QRadioTunerControl_IsStereo(const QRadioTunerControl* self) {
    return self->isStereo();
}

int QRadioTunerControl_StereoMode(const QRadioTunerControl* self) {
    return static_cast<int>(self->stereoMode());
}

void QRadioTunerControl_SetStereoMode(QRadioTunerControl* self, int mode) {
    self->setStereoMode(static_cast<QRadioTuner::StereoMode>(mode));
}

int QRadioTunerControl_SignalStrength(const QRadioTunerControl* self) {
    return self->signalStrength();
}

int QRadioTunerControl_Volume(const QRadioTunerControl* self) {
    return self->volume();
}

void QRadioTunerControl_SetVolume(QRadioTunerControl* self, int volume) {
    self->setVolume(static_cast<int>(volume));
}

bool QRadioTunerControl_IsMuted(const QRadioTunerControl* self) {
    return self->isMuted();
}

void QRadioTunerControl_SetMuted(QRadioTunerControl* self, bool muted) {
    self->setMuted(muted);
}

bool QRadioTunerControl_IsSearching(const QRadioTunerControl* self) {
    return self->isSearching();
}

bool QRadioTunerControl_IsAntennaConnected(const QRadioTunerControl* self) {
    return self->isAntennaConnected();
}

void QRadioTunerControl_SearchForward(QRadioTunerControl* self) {
    self->searchForward();
}

void QRadioTunerControl_SearchBackward(QRadioTunerControl* self) {
    self->searchBackward();
}

void QRadioTunerControl_SearchAllStations(QRadioTunerControl* self, int searchMode) {
    self->searchAllStations(static_cast<QRadioTuner::SearchMode>(searchMode));
}

void QRadioTunerControl_CancelSearch(QRadioTunerControl* self) {
    self->cancelSearch();
}

void QRadioTunerControl_Start(QRadioTunerControl* self) {
    self->start();
}

void QRadioTunerControl_Stop(QRadioTunerControl* self) {
    self->stop();
}

int QRadioTunerControl_Error(const QRadioTunerControl* self) {
    return static_cast<int>(self->error());
}

libqt_string QRadioTunerControl_ErrorString(const QRadioTunerControl* self) {
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

void QRadioTunerControl_StateChanged(QRadioTunerControl* self, int state) {
    self->stateChanged(static_cast<QRadioTuner::State>(state));
}

void QRadioTunerControl_Connect_StateChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, int) = reinterpret_cast<void (*)(QRadioTunerControl*, int)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::stateChanged, [self, slotFunc](QRadioTuner::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_BandChanged(QRadioTunerControl* self, int band) {
    self->bandChanged(static_cast<QRadioTuner::Band>(band));
}

void QRadioTunerControl_Connect_BandChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, int) = reinterpret_cast<void (*)(QRadioTunerControl*, int)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::bandChanged, [self, slotFunc](QRadioTuner::Band band) {
        int sigval1 = static_cast<int>(band);
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_FrequencyChanged(QRadioTunerControl* self, int frequency) {
    self->frequencyChanged(static_cast<int>(frequency));
}

void QRadioTunerControl_Connect_FrequencyChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, int) = reinterpret_cast<void (*)(QRadioTunerControl*, int)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::frequencyChanged, [self, slotFunc](int frequency) {
        int sigval1 = frequency;
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_StereoStatusChanged(QRadioTunerControl* self, bool stereo) {
    self->stereoStatusChanged(stereo);
}

void QRadioTunerControl_Connect_StereoStatusChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, bool) = reinterpret_cast<void (*)(QRadioTunerControl*, bool)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::stereoStatusChanged, [self, slotFunc](bool stereo) {
        bool sigval1 = stereo;
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_SearchingChanged(QRadioTunerControl* self, bool searching) {
    self->searchingChanged(searching);
}

void QRadioTunerControl_Connect_SearchingChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, bool) = reinterpret_cast<void (*)(QRadioTunerControl*, bool)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::searchingChanged, [self, slotFunc](bool searching) {
        bool sigval1 = searching;
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_SignalStrengthChanged(QRadioTunerControl* self, int signalStrength) {
    self->signalStrengthChanged(static_cast<int>(signalStrength));
}

void QRadioTunerControl_Connect_SignalStrengthChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, int) = reinterpret_cast<void (*)(QRadioTunerControl*, int)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::signalStrengthChanged, [self, slotFunc](int signalStrength) {
        int sigval1 = signalStrength;
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_VolumeChanged(QRadioTunerControl* self, int volume) {
    self->volumeChanged(static_cast<int>(volume));
}

void QRadioTunerControl_Connect_VolumeChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, int) = reinterpret_cast<void (*)(QRadioTunerControl*, int)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::volumeChanged, [self, slotFunc](int volume) {
        int sigval1 = volume;
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_MutedChanged(QRadioTunerControl* self, bool muted) {
    self->mutedChanged(muted);
}

void QRadioTunerControl_Connect_MutedChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, bool) = reinterpret_cast<void (*)(QRadioTunerControl*, bool)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::mutedChanged, [self, slotFunc](bool muted) {
        bool sigval1 = muted;
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_ErrorWithErr(QRadioTunerControl* self, int err) {
    self->error(static_cast<QRadioTuner::Error>(err));
}

void QRadioTunerControl_Connect_ErrorWithErr(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, int) = reinterpret_cast<void (*)(QRadioTunerControl*, int)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::error, [self, slotFunc](QRadioTuner::Error err) {
        int sigval1 = static_cast<int>(err);
        slotFunc(self, sigval1);
    });
}

void QRadioTunerControl_StationFound(QRadioTunerControl* self, int frequency, libqt_string stationId) {
    QString stationId_QString = QString::fromUtf8(stationId.data, stationId.len);
    self->stationFound(static_cast<int>(frequency), stationId_QString);
}

void QRadioTunerControl_Connect_StationFound(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, int, libqt_string) = reinterpret_cast<void (*)(QRadioTunerControl*, int, libqt_string)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::stationFound, [self, slotFunc](int frequency, QString stationId) {
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

void QRadioTunerControl_AntennaConnectedChanged(QRadioTunerControl* self, bool connectionStatus) {
    self->antennaConnectedChanged(connectionStatus);
}

void QRadioTunerControl_Connect_AntennaConnectedChanged(QRadioTunerControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioTunerControl*, bool) = reinterpret_cast<void (*)(QRadioTunerControl*, bool)>(slot);
    QRadioTunerControl::connect(self, &QRadioTunerControl::antennaConnectedChanged, [self, slotFunc](bool connectionStatus) {
        bool sigval1 = connectionStatus;
        slotFunc(self, sigval1);
    });
}

libqt_string QRadioTunerControl_Tr2(const char* s, const char* c) {
    QString _ret = QRadioTunerControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioTunerControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QRadioTunerControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioTunerControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QRadioTunerControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioTunerControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QRadioTunerControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QRadioTunerControl_Event(QRadioTunerControl* self, QEvent* event) {
    return self->event(event);
}

bool QRadioTunerControl_EventFilter(QRadioTunerControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QRadioTunerControl_Delete(QRadioTunerControl* self) {
    delete self;
}
