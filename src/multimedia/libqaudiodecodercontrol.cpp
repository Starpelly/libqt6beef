#include <QAudioBuffer>
#include <QAudioDecoderControl>
#include <QAudioFormat>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMediaControl>
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
#include <qaudiodecodercontrol.h>
#include "libqaudiodecodercontrol.h"
#include "libqaudiodecodercontrol.hxx"

QMetaObject* QAudioDecoderControl_MetaObject(const QAudioDecoderControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioDecoderControl_Metacast(QAudioDecoderControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioDecoderControl_Metacall(QAudioDecoderControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QAudioDecoderControl_Tr(const char* s) {
    QString _ret = QAudioDecoderControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioDecoderControl_TrUtf8(const char* s) {
    QString _ret = QAudioDecoderControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QAudioDecoderControl_State(const QAudioDecoderControl* self) {
    return static_cast<int>(self->state());
}

libqt_string QAudioDecoderControl_SourceFilename(const QAudioDecoderControl* self) {
    QString _ret = self->sourceFilename();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QAudioDecoderControl_SetSourceFilename(QAudioDecoderControl* self, libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    self->setSourceFilename(fileName_QString);
}

QIODevice* QAudioDecoderControl_SourceDevice(const QAudioDecoderControl* self) {
    return self->sourceDevice();
}

void QAudioDecoderControl_SetSourceDevice(QAudioDecoderControl* self, QIODevice* device) {
    self->setSourceDevice(device);
}

void QAudioDecoderControl_Start(QAudioDecoderControl* self) {
    self->start();
}

void QAudioDecoderControl_Stop(QAudioDecoderControl* self) {
    self->stop();
}

QAudioFormat* QAudioDecoderControl_AudioFormat(const QAudioDecoderControl* self) {
    return new QAudioFormat(self->audioFormat());
}

void QAudioDecoderControl_SetAudioFormat(QAudioDecoderControl* self, QAudioFormat* format) {
    self->setAudioFormat(*format);
}

QAudioBuffer* QAudioDecoderControl_Read(QAudioDecoderControl* self) {
    return new QAudioBuffer(self->read());
}

bool QAudioDecoderControl_BufferAvailable(const QAudioDecoderControl* self) {
    return self->bufferAvailable();
}

long long QAudioDecoderControl_Position(const QAudioDecoderControl* self) {
    return static_cast<long long>(self->position());
}

long long QAudioDecoderControl_Duration(const QAudioDecoderControl* self) {
    return static_cast<long long>(self->duration());
}

void QAudioDecoderControl_StateChanged(QAudioDecoderControl* self, int newState) {
    self->stateChanged(static_cast<QAudioDecoder::State>(newState));
}

void QAudioDecoderControl_Connect_StateChanged(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*, int) = reinterpret_cast<void (*)(QAudioDecoderControl*, int)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::stateChanged, [self, slotFunc](QAudioDecoder::State newState) {
        int sigval1 = static_cast<int>(newState);
        slotFunc(self, sigval1);
    });
}

void QAudioDecoderControl_FormatChanged(QAudioDecoderControl* self, QAudioFormat* format) {
    self->formatChanged(*format);
}

void QAudioDecoderControl_Connect_FormatChanged(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*, QAudioFormat*) = reinterpret_cast<void (*)(QAudioDecoderControl*, QAudioFormat*)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::formatChanged, [self, slotFunc](const QAudioFormat& format) {
        const QAudioFormat& format_ret = format;
        // Cast returned reference into pointer
        QAudioFormat* sigval1 = const_cast<QAudioFormat*>(&format_ret);
        slotFunc(self, sigval1);
    });
}

void QAudioDecoderControl_SourceChanged(QAudioDecoderControl* self) {
    self->sourceChanged();
}

void QAudioDecoderControl_Connect_SourceChanged(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*) = reinterpret_cast<void (*)(QAudioDecoderControl*)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::sourceChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QAudioDecoderControl_Error(QAudioDecoderControl* self, int errorVal, libqt_string errorString) {
    QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
    self->error(static_cast<int>(errorVal), errorString_QString);
}

void QAudioDecoderControl_Connect_Error(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*, int, libqt_string) = reinterpret_cast<void (*)(QAudioDecoderControl*, int, libqt_string)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::error, [self, slotFunc](int errorVal, const QString& errorString) {
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

void QAudioDecoderControl_BufferReady(QAudioDecoderControl* self) {
    self->bufferReady();
}

void QAudioDecoderControl_Connect_BufferReady(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*) = reinterpret_cast<void (*)(QAudioDecoderControl*)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::bufferReady, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QAudioDecoderControl_BufferAvailableChanged(QAudioDecoderControl* self, bool available) {
    self->bufferAvailableChanged(available);
}

void QAudioDecoderControl_Connect_BufferAvailableChanged(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*, bool) = reinterpret_cast<void (*)(QAudioDecoderControl*, bool)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::bufferAvailableChanged, [self, slotFunc](bool available) {
        bool sigval1 = available;
        slotFunc(self, sigval1);
    });
}

void QAudioDecoderControl_Finished(QAudioDecoderControl* self) {
    self->finished();
}

void QAudioDecoderControl_Connect_Finished(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*) = reinterpret_cast<void (*)(QAudioDecoderControl*)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::finished, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QAudioDecoderControl_PositionChanged(QAudioDecoderControl* self, long long position) {
    self->positionChanged(static_cast<qint64>(position));
}

void QAudioDecoderControl_Connect_PositionChanged(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*, long long) = reinterpret_cast<void (*)(QAudioDecoderControl*, long long)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::positionChanged, [self, slotFunc](qint64 position) {
        long long sigval1 = static_cast<long long>(position);
        slotFunc(self, sigval1);
    });
}

void QAudioDecoderControl_DurationChanged(QAudioDecoderControl* self, long long duration) {
    self->durationChanged(static_cast<qint64>(duration));
}

void QAudioDecoderControl_Connect_DurationChanged(QAudioDecoderControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioDecoderControl*, long long) = reinterpret_cast<void (*)(QAudioDecoderControl*, long long)>(slot);
    QAudioDecoderControl::connect(self, &QAudioDecoderControl::durationChanged, [self, slotFunc](qint64 duration) {
        long long sigval1 = static_cast<long long>(duration);
        slotFunc(self, sigval1);
    });
}

libqt_string QAudioDecoderControl_Tr2(const char* s, const char* c) {
    QString _ret = QAudioDecoderControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioDecoderControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioDecoderControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioDecoderControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioDecoderControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioDecoderControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioDecoderControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAudioDecoderControl_Event(QAudioDecoderControl* self, QEvent* event) {
    return self->event(event);
}

bool QAudioDecoderControl_EventFilter(QAudioDecoderControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QAudioDecoderControl_Delete(QAudioDecoderControl* self) {
    delete self;
}
