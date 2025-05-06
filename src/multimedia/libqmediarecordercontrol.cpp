#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMediaRecorderControl>
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
#include <QUrl>
#include <QVariant>
#include <qmediarecordercontrol.h>
#include "libqmediarecordercontrol.h"
#include "libqmediarecordercontrol.hxx"

QMetaObject* QMediaRecorderControl_MetaObject(const QMediaRecorderControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaRecorderControl_Metacast(QMediaRecorderControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaRecorderControl_Metacall(QMediaRecorderControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaRecorderControl_Tr(const char* s) {
    QString _ret = QMediaRecorderControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaRecorderControl_TrUtf8(const char* s) {
    QString _ret = QMediaRecorderControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QUrl* QMediaRecorderControl_OutputLocation(const QMediaRecorderControl* self) {
    return new QUrl(self->outputLocation());
}

bool QMediaRecorderControl_SetOutputLocation(QMediaRecorderControl* self, QUrl* location) {
    return self->setOutputLocation(*location);
}

int QMediaRecorderControl_State(const QMediaRecorderControl* self) {
    return static_cast<int>(self->state());
}

int QMediaRecorderControl_Status(const QMediaRecorderControl* self) {
    return static_cast<int>(self->status());
}

long long QMediaRecorderControl_Duration(const QMediaRecorderControl* self) {
    return static_cast<long long>(self->duration());
}

bool QMediaRecorderControl_IsMuted(const QMediaRecorderControl* self) {
    return self->isMuted();
}

double QMediaRecorderControl_Volume(const QMediaRecorderControl* self) {
    return static_cast<double>(self->volume());
}

void QMediaRecorderControl_ApplySettings(QMediaRecorderControl* self) {
    self->applySettings();
}

void QMediaRecorderControl_StateChanged(QMediaRecorderControl* self, int state) {
    self->stateChanged(static_cast<QMediaRecorder::State>(state));
}

void QMediaRecorderControl_Connect_StateChanged(QMediaRecorderControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorderControl*, int) = reinterpret_cast<void (*)(QMediaRecorderControl*, int)>(slot);
    QMediaRecorderControl::connect(self, &QMediaRecorderControl::stateChanged, [self, slotFunc](QMediaRecorder::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorderControl_StatusChanged(QMediaRecorderControl* self, int status) {
    self->statusChanged(static_cast<QMediaRecorder::Status>(status));
}

void QMediaRecorderControl_Connect_StatusChanged(QMediaRecorderControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorderControl*, int) = reinterpret_cast<void (*)(QMediaRecorderControl*, int)>(slot);
    QMediaRecorderControl::connect(self, &QMediaRecorderControl::statusChanged, [self, slotFunc](QMediaRecorder::Status status) {
        int sigval1 = static_cast<int>(status);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorderControl_DurationChanged(QMediaRecorderControl* self, long long position) {
    self->durationChanged(static_cast<qint64>(position));
}

void QMediaRecorderControl_Connect_DurationChanged(QMediaRecorderControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorderControl*, long long) = reinterpret_cast<void (*)(QMediaRecorderControl*, long long)>(slot);
    QMediaRecorderControl::connect(self, &QMediaRecorderControl::durationChanged, [self, slotFunc](qint64 position) {
        long long sigval1 = static_cast<long long>(position);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorderControl_MutedChanged(QMediaRecorderControl* self, bool muted) {
    self->mutedChanged(muted);
}

void QMediaRecorderControl_Connect_MutedChanged(QMediaRecorderControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorderControl*, bool) = reinterpret_cast<void (*)(QMediaRecorderControl*, bool)>(slot);
    QMediaRecorderControl::connect(self, &QMediaRecorderControl::mutedChanged, [self, slotFunc](bool muted) {
        bool sigval1 = muted;
        slotFunc(self, sigval1);
    });
}

void QMediaRecorderControl_VolumeChanged(QMediaRecorderControl* self, double volume) {
    self->volumeChanged(static_cast<qreal>(volume));
}

void QMediaRecorderControl_Connect_VolumeChanged(QMediaRecorderControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorderControl*, double) = reinterpret_cast<void (*)(QMediaRecorderControl*, double)>(slot);
    QMediaRecorderControl::connect(self, &QMediaRecorderControl::volumeChanged, [self, slotFunc](qreal volume) {
        double sigval1 = static_cast<double>(volume);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorderControl_ActualLocationChanged(QMediaRecorderControl* self, QUrl* location) {
    self->actualLocationChanged(*location);
}

void QMediaRecorderControl_Connect_ActualLocationChanged(QMediaRecorderControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorderControl*, QUrl*) = reinterpret_cast<void (*)(QMediaRecorderControl*, QUrl*)>(slot);
    QMediaRecorderControl::connect(self, &QMediaRecorderControl::actualLocationChanged, [self, slotFunc](const QUrl& location) {
        const QUrl& location_ret = location;
        // Cast returned reference into pointer
        QUrl* sigval1 = const_cast<QUrl*>(&location_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorderControl_Error(QMediaRecorderControl* self, int errorVal, libqt_string errorString) {
    QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
    self->error(static_cast<int>(errorVal), errorString_QString);
}

void QMediaRecorderControl_Connect_Error(QMediaRecorderControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorderControl*, int, libqt_string) = reinterpret_cast<void (*)(QMediaRecorderControl*, int, libqt_string)>(slot);
    QMediaRecorderControl::connect(self, &QMediaRecorderControl::error, [self, slotFunc](int errorVal, const QString& errorString) {
        int sigval1 = errorVal;
        const QString errorString_ret = errorString;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray errorString_b = errorString_ret.toUtf8();
        libqt_string errorString_str;
        errorString_str.len = errorString_b.length();
        errorString_str.data = static_cast<char*>(malloc((errorString_str.len + 1) * sizeof(char)));
        memcpy(errorString_str.data, errorString_b.data(), errorString_str.len);
        errorString_str.data[errorString_str.len] = '\0';
        libqt_string sigval2 = errorString_str;
        slotFunc(self, sigval1, sigval2);
    });
}

void QMediaRecorderControl_SetState(QMediaRecorderControl* self, int state) {
    self->setState(static_cast<QMediaRecorder::State>(state));
}

void QMediaRecorderControl_SetMuted(QMediaRecorderControl* self, bool muted) {
    self->setMuted(muted);
}

void QMediaRecorderControl_SetVolume(QMediaRecorderControl* self, double volume) {
    self->setVolume(static_cast<qreal>(volume));
}

libqt_string QMediaRecorderControl_Tr2(const char* s, const char* c) {
    QString _ret = QMediaRecorderControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaRecorderControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaRecorderControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaRecorderControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaRecorderControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaRecorderControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaRecorderControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaRecorderControl_Event(QMediaRecorderControl* self, QEvent* event) {
    return self->event(event);
}

bool QMediaRecorderControl_EventFilter(QMediaRecorderControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaRecorderControl_Delete(QMediaRecorderControl* self) {
    delete self;
}
