#include <QAbstractAudioDeviceInfo>
#include <QAbstractAudioInput>
#include <QAbstractAudioOutput>
#include <QAudioFormat>
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
#include <qaudiosystem.h>
#include "libqaudiosystem.h"
#include "libqaudiosystem.hxx"

QMetaObject* QAbstractAudioDeviceInfo_MetaObject(const QAbstractAudioDeviceInfo* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAbstractAudioDeviceInfo_Metacast(QAbstractAudioDeviceInfo* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAbstractAudioDeviceInfo_Metacall(QAbstractAudioDeviceInfo* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QAbstractAudioDeviceInfo_Tr(const char* s) {
    QString _ret = QAbstractAudioDeviceInfo::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioDeviceInfo_TrUtf8(const char* s) {
    QString _ret = QAbstractAudioDeviceInfo::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QAudioFormat* QAbstractAudioDeviceInfo_PreferredFormat(const QAbstractAudioDeviceInfo* self) {
    return new QAudioFormat(self->preferredFormat());
}

bool QAbstractAudioDeviceInfo_IsFormatSupported(const QAbstractAudioDeviceInfo* self, QAudioFormat* format) {
    return self->isFormatSupported(*format);
}

libqt_string QAbstractAudioDeviceInfo_DeviceName(const QAbstractAudioDeviceInfo* self) {
    QString _ret = self->deviceName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QAbstractAudioDeviceInfo_SupportedCodecs(QAbstractAudioDeviceInfo* self) {
    QStringList _ret = self->supportedCodecs();
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

libqt_list /* of int */ QAbstractAudioDeviceInfo_SupportedSampleRates(QAbstractAudioDeviceInfo* self) {
    QList<int> _ret = self->supportedSampleRates();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of int */ QAbstractAudioDeviceInfo_SupportedChannelCounts(QAbstractAudioDeviceInfo* self) {
    QList<int> _ret = self->supportedChannelCounts();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of int */ QAbstractAudioDeviceInfo_SupportedSampleSizes(QAbstractAudioDeviceInfo* self) {
    QList<int> _ret = self->supportedSampleSizes();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of int */ QAbstractAudioDeviceInfo_SupportedByteOrders(QAbstractAudioDeviceInfo* self) {
    QList<QAudioFormat::Endian> _ret = self->supportedByteOrders();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = static_cast<int>(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of int */ QAbstractAudioDeviceInfo_SupportedSampleTypes(QAbstractAudioDeviceInfo* self) {
    QList<QAudioFormat::SampleType> _ret = self->supportedSampleTypes();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = static_cast<int>(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QAbstractAudioDeviceInfo_Tr2(const char* s, const char* c) {
    QString _ret = QAbstractAudioDeviceInfo::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioDeviceInfo_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAbstractAudioDeviceInfo::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioDeviceInfo_TrUtf82(const char* s, const char* c) {
    QString _ret = QAbstractAudioDeviceInfo::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioDeviceInfo_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAbstractAudioDeviceInfo::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAbstractAudioDeviceInfo_Event(QAbstractAudioDeviceInfo* self, QEvent* event) {
    return self->event(event);
}

bool QAbstractAudioDeviceInfo_EventFilter(QAbstractAudioDeviceInfo* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QAbstractAudioDeviceInfo_Delete(QAbstractAudioDeviceInfo* self) {
    delete self;
}

QMetaObject* QAbstractAudioOutput_MetaObject(const QAbstractAudioOutput* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAbstractAudioOutput_Metacast(QAbstractAudioOutput* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAbstractAudioOutput_Metacall(QAbstractAudioOutput* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QAbstractAudioOutput_Tr(const char* s) {
    QString _ret = QAbstractAudioOutput::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioOutput_TrUtf8(const char* s) {
    QString _ret = QAbstractAudioOutput::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QAbstractAudioOutput_Start(QAbstractAudioOutput* self, QIODevice* device) {
    self->start(device);
}

QIODevice* QAbstractAudioOutput_Start2(QAbstractAudioOutput* self) {
    return self->start();
}

void QAbstractAudioOutput_Stop(QAbstractAudioOutput* self) {
    self->stop();
}

void QAbstractAudioOutput_Reset(QAbstractAudioOutput* self) {
    self->reset();
}

void QAbstractAudioOutput_Suspend(QAbstractAudioOutput* self) {
    self->suspend();
}

void QAbstractAudioOutput_Resume(QAbstractAudioOutput* self) {
    self->resume();
}

int QAbstractAudioOutput_BytesFree(const QAbstractAudioOutput* self) {
    return self->bytesFree();
}

int QAbstractAudioOutput_PeriodSize(const QAbstractAudioOutput* self) {
    return self->periodSize();
}

void QAbstractAudioOutput_SetBufferSize(QAbstractAudioOutput* self, int value) {
    self->setBufferSize(static_cast<int>(value));
}

int QAbstractAudioOutput_BufferSize(const QAbstractAudioOutput* self) {
    return self->bufferSize();
}

void QAbstractAudioOutput_SetNotifyInterval(QAbstractAudioOutput* self, int milliSeconds) {
    self->setNotifyInterval(static_cast<int>(milliSeconds));
}

int QAbstractAudioOutput_NotifyInterval(const QAbstractAudioOutput* self) {
    return self->notifyInterval();
}

long long QAbstractAudioOutput_ProcessedUSecs(const QAbstractAudioOutput* self) {
    return static_cast<long long>(self->processedUSecs());
}

long long QAbstractAudioOutput_ElapsedUSecs(const QAbstractAudioOutput* self) {
    return static_cast<long long>(self->elapsedUSecs());
}

int QAbstractAudioOutput_Error(const QAbstractAudioOutput* self) {
    return static_cast<int>(self->error());
}

int QAbstractAudioOutput_State(const QAbstractAudioOutput* self) {
    return static_cast<int>(self->state());
}

void QAbstractAudioOutput_SetFormat(QAbstractAudioOutput* self, QAudioFormat* fmt) {
    self->setFormat(*fmt);
}

QAudioFormat* QAbstractAudioOutput_Format(const QAbstractAudioOutput* self) {
    return new QAudioFormat(self->format());
}

void QAbstractAudioOutput_SetVolume(QAbstractAudioOutput* self, double volume) {
    self->setVolume(static_cast<double>(volume));
}

double QAbstractAudioOutput_Volume(const QAbstractAudioOutput* self) {
    return static_cast<double>(self->volume());
}

libqt_string QAbstractAudioOutput_Category(const QAbstractAudioOutput* self) {
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

void QAbstractAudioOutput_SetCategory(QAbstractAudioOutput* self, libqt_string category) {
    QString category_QString = QString::fromUtf8(category.data, category.len);
    self->setCategory(category_QString);
}

void QAbstractAudioOutput_ErrorChanged(QAbstractAudioOutput* self, int errorVal) {
    self->errorChanged(static_cast<QAudio::Error>(errorVal));
}

void QAbstractAudioOutput_Connect_ErrorChanged(QAbstractAudioOutput* self, intptr_t slot) {
    void (*slotFunc)(QAbstractAudioOutput*, int) = reinterpret_cast<void (*)(QAbstractAudioOutput*, int)>(slot);
    QAbstractAudioOutput::connect(self, &QAbstractAudioOutput::errorChanged, [self, slotFunc](QAudio::Error errorVal) {
        int sigval1 = static_cast<int>(errorVal);
        slotFunc(self, sigval1);
    });
}

void QAbstractAudioOutput_StateChanged(QAbstractAudioOutput* self, int state) {
    self->stateChanged(static_cast<QAudio::State>(state));
}

void QAbstractAudioOutput_Connect_StateChanged(QAbstractAudioOutput* self, intptr_t slot) {
    void (*slotFunc)(QAbstractAudioOutput*, int) = reinterpret_cast<void (*)(QAbstractAudioOutput*, int)>(slot);
    QAbstractAudioOutput::connect(self, &QAbstractAudioOutput::stateChanged, [self, slotFunc](QAudio::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QAbstractAudioOutput_Notify(QAbstractAudioOutput* self) {
    self->notify();
}

void QAbstractAudioOutput_Connect_Notify(QAbstractAudioOutput* self, intptr_t slot) {
    void (*slotFunc)(QAbstractAudioOutput*) = reinterpret_cast<void (*)(QAbstractAudioOutput*)>(slot);
    QAbstractAudioOutput::connect(self, &QAbstractAudioOutput::notify, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAbstractAudioOutput_Tr2(const char* s, const char* c) {
    QString _ret = QAbstractAudioOutput::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioOutput_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAbstractAudioOutput::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioOutput_TrUtf82(const char* s, const char* c) {
    QString _ret = QAbstractAudioOutput::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioOutput_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAbstractAudioOutput::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAbstractAudioOutput_Event(QAbstractAudioOutput* self, QEvent* event) {
    return self->event(event);
}

bool QAbstractAudioOutput_EventFilter(QAbstractAudioOutput* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QAbstractAudioOutput_Delete(QAbstractAudioOutput* self) {
    delete self;
}

QMetaObject* QAbstractAudioInput_MetaObject(const QAbstractAudioInput* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAbstractAudioInput_Metacast(QAbstractAudioInput* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAbstractAudioInput_Metacall(QAbstractAudioInput* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QAbstractAudioInput_Tr(const char* s) {
    QString _ret = QAbstractAudioInput::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioInput_TrUtf8(const char* s) {
    QString _ret = QAbstractAudioInput::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QAbstractAudioInput_Start(QAbstractAudioInput* self, QIODevice* device) {
    self->start(device);
}

QIODevice* QAbstractAudioInput_Start2(QAbstractAudioInput* self) {
    return self->start();
}

void QAbstractAudioInput_Stop(QAbstractAudioInput* self) {
    self->stop();
}

void QAbstractAudioInput_Reset(QAbstractAudioInput* self) {
    self->reset();
}

void QAbstractAudioInput_Suspend(QAbstractAudioInput* self) {
    self->suspend();
}

void QAbstractAudioInput_Resume(QAbstractAudioInput* self) {
    self->resume();
}

int QAbstractAudioInput_BytesReady(const QAbstractAudioInput* self) {
    return self->bytesReady();
}

int QAbstractAudioInput_PeriodSize(const QAbstractAudioInput* self) {
    return self->periodSize();
}

void QAbstractAudioInput_SetBufferSize(QAbstractAudioInput* self, int value) {
    self->setBufferSize(static_cast<int>(value));
}

int QAbstractAudioInput_BufferSize(const QAbstractAudioInput* self) {
    return self->bufferSize();
}

void QAbstractAudioInput_SetNotifyInterval(QAbstractAudioInput* self, int milliSeconds) {
    self->setNotifyInterval(static_cast<int>(milliSeconds));
}

int QAbstractAudioInput_NotifyInterval(const QAbstractAudioInput* self) {
    return self->notifyInterval();
}

long long QAbstractAudioInput_ProcessedUSecs(const QAbstractAudioInput* self) {
    return static_cast<long long>(self->processedUSecs());
}

long long QAbstractAudioInput_ElapsedUSecs(const QAbstractAudioInput* self) {
    return static_cast<long long>(self->elapsedUSecs());
}

int QAbstractAudioInput_Error(const QAbstractAudioInput* self) {
    return static_cast<int>(self->error());
}

int QAbstractAudioInput_State(const QAbstractAudioInput* self) {
    return static_cast<int>(self->state());
}

void QAbstractAudioInput_SetFormat(QAbstractAudioInput* self, QAudioFormat* fmt) {
    self->setFormat(*fmt);
}

QAudioFormat* QAbstractAudioInput_Format(const QAbstractAudioInput* self) {
    return new QAudioFormat(self->format());
}

void QAbstractAudioInput_SetVolume(QAbstractAudioInput* self, double volume) {
    self->setVolume(static_cast<double>(volume));
}

double QAbstractAudioInput_Volume(const QAbstractAudioInput* self) {
    return static_cast<double>(self->volume());
}

void QAbstractAudioInput_ErrorChanged(QAbstractAudioInput* self, int errorVal) {
    self->errorChanged(static_cast<QAudio::Error>(errorVal));
}

void QAbstractAudioInput_Connect_ErrorChanged(QAbstractAudioInput* self, intptr_t slot) {
    void (*slotFunc)(QAbstractAudioInput*, int) = reinterpret_cast<void (*)(QAbstractAudioInput*, int)>(slot);
    QAbstractAudioInput::connect(self, &QAbstractAudioInput::errorChanged, [self, slotFunc](QAudio::Error errorVal) {
        int sigval1 = static_cast<int>(errorVal);
        slotFunc(self, sigval1);
    });
}

void QAbstractAudioInput_StateChanged(QAbstractAudioInput* self, int state) {
    self->stateChanged(static_cast<QAudio::State>(state));
}

void QAbstractAudioInput_Connect_StateChanged(QAbstractAudioInput* self, intptr_t slot) {
    void (*slotFunc)(QAbstractAudioInput*, int) = reinterpret_cast<void (*)(QAbstractAudioInput*, int)>(slot);
    QAbstractAudioInput::connect(self, &QAbstractAudioInput::stateChanged, [self, slotFunc](QAudio::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QAbstractAudioInput_Notify(QAbstractAudioInput* self) {
    self->notify();
}

void QAbstractAudioInput_Connect_Notify(QAbstractAudioInput* self, intptr_t slot) {
    void (*slotFunc)(QAbstractAudioInput*) = reinterpret_cast<void (*)(QAbstractAudioInput*)>(slot);
    QAbstractAudioInput::connect(self, &QAbstractAudioInput::notify, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAbstractAudioInput_Tr2(const char* s, const char* c) {
    QString _ret = QAbstractAudioInput::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioInput_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAbstractAudioInput::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioInput_TrUtf82(const char* s, const char* c) {
    QString _ret = QAbstractAudioInput::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractAudioInput_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAbstractAudioInput::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAbstractAudioInput_Event(QAbstractAudioInput* self, QEvent* event) {
    return self->event(event);
}

bool QAbstractAudioInput_EventFilter(QAbstractAudioInput* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QAbstractAudioInput_Delete(QAbstractAudioInput* self) {
    delete self;
}
