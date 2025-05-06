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
#include <QRadioDataControl>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qradiodatacontrol.h>
#include "libqradiodatacontrol.h"
#include "libqradiodatacontrol.hxx"

QMetaObject* QRadioDataControl_MetaObject(const QRadioDataControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QRadioDataControl_Metacast(QRadioDataControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QRadioDataControl_Metacall(QRadioDataControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QRadioDataControl_Tr(const char* s) {
    QString _ret = QRadioDataControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioDataControl_TrUtf8(const char* s) {
    QString _ret = QRadioDataControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioDataControl_StationId(const QRadioDataControl* self) {
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

int QRadioDataControl_ProgramType(const QRadioDataControl* self) {
    return static_cast<int>(self->programType());
}

libqt_string QRadioDataControl_ProgramTypeName(const QRadioDataControl* self) {
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

libqt_string QRadioDataControl_StationName(const QRadioDataControl* self) {
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

libqt_string QRadioDataControl_RadioText(const QRadioDataControl* self) {
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

void QRadioDataControl_SetAlternativeFrequenciesEnabled(QRadioDataControl* self, bool enabled) {
    self->setAlternativeFrequenciesEnabled(enabled);
}

bool QRadioDataControl_IsAlternativeFrequenciesEnabled(const QRadioDataControl* self) {
    return self->isAlternativeFrequenciesEnabled();
}

int QRadioDataControl_Error(const QRadioDataControl* self) {
    return static_cast<int>(self->error());
}

libqt_string QRadioDataControl_ErrorString(const QRadioDataControl* self) {
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

void QRadioDataControl_StationIdChanged(QRadioDataControl* self, libqt_string stationId) {
    QString stationId_QString = QString::fromUtf8(stationId.data, stationId.len);
    self->stationIdChanged(stationId_QString);
}

void QRadioDataControl_Connect_StationIdChanged(QRadioDataControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioDataControl*, libqt_string) = reinterpret_cast<void (*)(QRadioDataControl*, libqt_string)>(slot);
    QRadioDataControl::connect(self, &QRadioDataControl::stationIdChanged, [self, slotFunc](QString stationId) {
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

void QRadioDataControl_ProgramTypeChanged(QRadioDataControl* self, int programType) {
    self->programTypeChanged(static_cast<QRadioData::ProgramType>(programType));
}

void QRadioDataControl_Connect_ProgramTypeChanged(QRadioDataControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioDataControl*, int) = reinterpret_cast<void (*)(QRadioDataControl*, int)>(slot);
    QRadioDataControl::connect(self, &QRadioDataControl::programTypeChanged, [self, slotFunc](QRadioData::ProgramType programType) {
        int sigval1 = static_cast<int>(programType);
        slotFunc(self, sigval1);
    });
}

void QRadioDataControl_ProgramTypeNameChanged(QRadioDataControl* self, libqt_string programTypeName) {
    QString programTypeName_QString = QString::fromUtf8(programTypeName.data, programTypeName.len);
    self->programTypeNameChanged(programTypeName_QString);
}

void QRadioDataControl_Connect_ProgramTypeNameChanged(QRadioDataControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioDataControl*, libqt_string) = reinterpret_cast<void (*)(QRadioDataControl*, libqt_string)>(slot);
    QRadioDataControl::connect(self, &QRadioDataControl::programTypeNameChanged, [self, slotFunc](QString programTypeName) {
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

void QRadioDataControl_StationNameChanged(QRadioDataControl* self, libqt_string stationName) {
    QString stationName_QString = QString::fromUtf8(stationName.data, stationName.len);
    self->stationNameChanged(stationName_QString);
}

void QRadioDataControl_Connect_StationNameChanged(QRadioDataControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioDataControl*, libqt_string) = reinterpret_cast<void (*)(QRadioDataControl*, libqt_string)>(slot);
    QRadioDataControl::connect(self, &QRadioDataControl::stationNameChanged, [self, slotFunc](QString stationName) {
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

void QRadioDataControl_RadioTextChanged(QRadioDataControl* self, libqt_string radioText) {
    QString radioText_QString = QString::fromUtf8(radioText.data, radioText.len);
    self->radioTextChanged(radioText_QString);
}

void QRadioDataControl_Connect_RadioTextChanged(QRadioDataControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioDataControl*, libqt_string) = reinterpret_cast<void (*)(QRadioDataControl*, libqt_string)>(slot);
    QRadioDataControl::connect(self, &QRadioDataControl::radioTextChanged, [self, slotFunc](QString radioText) {
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

void QRadioDataControl_AlternativeFrequenciesEnabledChanged(QRadioDataControl* self, bool enabled) {
    self->alternativeFrequenciesEnabledChanged(enabled);
}

void QRadioDataControl_Connect_AlternativeFrequenciesEnabledChanged(QRadioDataControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioDataControl*, bool) = reinterpret_cast<void (*)(QRadioDataControl*, bool)>(slot);
    QRadioDataControl::connect(self, &QRadioDataControl::alternativeFrequenciesEnabledChanged, [self, slotFunc](bool enabled) {
        bool sigval1 = enabled;
        slotFunc(self, sigval1);
    });
}

void QRadioDataControl_ErrorWithErr(QRadioDataControl* self, int err) {
    self->error(static_cast<QRadioData::Error>(err));
}

void QRadioDataControl_Connect_ErrorWithErr(QRadioDataControl* self, intptr_t slot) {
    void (*slotFunc)(QRadioDataControl*, int) = reinterpret_cast<void (*)(QRadioDataControl*, int)>(slot);
    QRadioDataControl::connect(self, &QRadioDataControl::error, [self, slotFunc](QRadioData::Error err) {
        int sigval1 = static_cast<int>(err);
        slotFunc(self, sigval1);
    });
}

libqt_string QRadioDataControl_Tr2(const char* s, const char* c) {
    QString _ret = QRadioDataControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioDataControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QRadioDataControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioDataControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QRadioDataControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QRadioDataControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QRadioDataControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QRadioDataControl_Event(QRadioDataControl* self, QEvent* event) {
    return self->event(event);
}

bool QRadioDataControl_EventFilter(QRadioDataControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QRadioDataControl_Delete(QRadioDataControl* self) {
    delete self;
}
