#include <QAudioEncoderSettings>
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
#include <qmediarecorder.h>
#include "libqmediarecorder.h"
#include "libqmediarecorder.hxx"

QMediaRecorder* QMediaRecorder_new(QMediaObject* mediaObject) {
    return new VirtualQMediaRecorder(mediaObject);
}

QMediaRecorder* QMediaRecorder_new2(QMediaObject* mediaObject, QObject* parent) {
    return new VirtualQMediaRecorder(mediaObject, parent);
}

QMetaObject* QMediaRecorder_MetaObject(const QMediaRecorder* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaRecorder_Metacast(QMediaRecorder* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaRecorder_Metacall(QMediaRecorder* self, int param1, int param2, void** param3) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaRecorder_OnMetacall(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_Metacall_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QMediaRecorder_QBaseMetacall(QMediaRecorder* self, int param1, int param2, void** param3) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_Metacall_IsBase(true);
        return vqmediarecorder->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QMediaRecorder_Tr(const char* s) {
    QString _ret = QMediaRecorder::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaRecorder_TrUtf8(const char* s) {
    QString _ret = QMediaRecorder::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaRecorder_IsAvailable(const QMediaRecorder* self) {
    return self->isAvailable();
}

int QMediaRecorder_Availability(const QMediaRecorder* self) {
    return static_cast<int>(self->availability());
}

QUrl* QMediaRecorder_OutputLocation(const QMediaRecorder* self) {
    return new QUrl(self->outputLocation());
}

bool QMediaRecorder_SetOutputLocation(QMediaRecorder* self, QUrl* location) {
    return self->setOutputLocation(*location);
}

QUrl* QMediaRecorder_ActualLocation(const QMediaRecorder* self) {
    return new QUrl(self->actualLocation());
}

int QMediaRecorder_State(const QMediaRecorder* self) {
    return static_cast<int>(self->state());
}

int QMediaRecorder_Status(const QMediaRecorder* self) {
    return static_cast<int>(self->status());
}

int QMediaRecorder_Error(const QMediaRecorder* self) {
    return static_cast<int>(self->error());
}

libqt_string QMediaRecorder_ErrorString(const QMediaRecorder* self) {
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

long long QMediaRecorder_Duration(const QMediaRecorder* self) {
    return static_cast<long long>(self->duration());
}

bool QMediaRecorder_IsMuted(const QMediaRecorder* self) {
    return self->isMuted();
}

double QMediaRecorder_Volume(const QMediaRecorder* self) {
    return static_cast<double>(self->volume());
}

libqt_list /* of libqt_string */ QMediaRecorder_SupportedContainers(const QMediaRecorder* self) {
    QStringList _ret = self->supportedContainers();
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

libqt_string QMediaRecorder_ContainerDescription(const QMediaRecorder* self, libqt_string format) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    QString _ret = self->containerDescription(format_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QMediaRecorder_SupportedAudioCodecs(const QMediaRecorder* self) {
    QStringList _ret = self->supportedAudioCodecs();
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

libqt_string QMediaRecorder_AudioCodecDescription(const QMediaRecorder* self, libqt_string codecName) {
    QString codecName_QString = QString::fromUtf8(codecName.data, codecName.len);
    QString _ret = self->audioCodecDescription(codecName_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of int */ QMediaRecorder_SupportedAudioSampleRates(const QMediaRecorder* self) {
    QList<int> _ret = self->supportedAudioSampleRates();
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

libqt_list /* of libqt_string */ QMediaRecorder_SupportedVideoCodecs(const QMediaRecorder* self) {
    QStringList _ret = self->supportedVideoCodecs();
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

libqt_string QMediaRecorder_VideoCodecDescription(const QMediaRecorder* self, libqt_string codecName) {
    QString codecName_QString = QString::fromUtf8(codecName.data, codecName.len);
    QString _ret = self->videoCodecDescription(codecName_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of QSize* */ QMediaRecorder_SupportedResolutions(const QMediaRecorder* self) {
    QList<QSize> _ret = self->supportedResolutions();
    // Convert QList<> from C++ memory to manually-managed C memory
    QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QSize(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of double */ QMediaRecorder_SupportedFrameRates(const QMediaRecorder* self) {
    QList<qreal> _ret = self->supportedFrameRates();
    // Convert QList<> from C++ memory to manually-managed C memory
    double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QAudioEncoderSettings* QMediaRecorder_AudioSettings(const QMediaRecorder* self) {
    return new QAudioEncoderSettings(self->audioSettings());
}

QVideoEncoderSettings* QMediaRecorder_VideoSettings(const QMediaRecorder* self) {
    return new QVideoEncoderSettings(self->videoSettings());
}

libqt_string QMediaRecorder_ContainerFormat(const QMediaRecorder* self) {
    QString _ret = self->containerFormat();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QMediaRecorder_SetAudioSettings(QMediaRecorder* self, QAudioEncoderSettings* audioSettings) {
    self->setAudioSettings(*audioSettings);
}

void QMediaRecorder_SetVideoSettings(QMediaRecorder* self, QVideoEncoderSettings* videoSettings) {
    self->setVideoSettings(*videoSettings);
}

void QMediaRecorder_SetContainerFormat(QMediaRecorder* self, libqt_string container) {
    QString container_QString = QString::fromUtf8(container.data, container.len);
    self->setContainerFormat(container_QString);
}

void QMediaRecorder_SetEncodingSettings(QMediaRecorder* self, QAudioEncoderSettings* audioSettings) {
    self->setEncodingSettings(*audioSettings);
}

bool QMediaRecorder_IsMetaDataAvailable(const QMediaRecorder* self) {
    return self->isMetaDataAvailable();
}

bool QMediaRecorder_IsMetaDataWritable(const QMediaRecorder* self) {
    return self->isMetaDataWritable();
}

QVariant* QMediaRecorder_MetaData(const QMediaRecorder* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QVariant(self->metaData(key_QString));
}

void QMediaRecorder_SetMetaData(QMediaRecorder* self, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->setMetaData(key_QString, *value);
}

libqt_list /* of libqt_string */ QMediaRecorder_AvailableMetaData(const QMediaRecorder* self) {
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

void QMediaRecorder_Record(QMediaRecorder* self) {
    self->record();
}

void QMediaRecorder_Pause(QMediaRecorder* self) {
    self->pause();
}

void QMediaRecorder_Stop(QMediaRecorder* self) {
    self->stop();
}

void QMediaRecorder_SetMuted(QMediaRecorder* self, bool muted) {
    self->setMuted(muted);
}

void QMediaRecorder_SetVolume(QMediaRecorder* self, double volume) {
    self->setVolume(static_cast<qreal>(volume));
}

void QMediaRecorder_StateChanged(QMediaRecorder* self, int state) {
    self->stateChanged(static_cast<QMediaRecorder::State>(state));
}

void QMediaRecorder_Connect_StateChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, int) = reinterpret_cast<void (*)(QMediaRecorder*, int)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::stateChanged, [self, slotFunc](QMediaRecorder::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_StatusChanged(QMediaRecorder* self, int status) {
    self->statusChanged(static_cast<QMediaRecorder::Status>(status));
}

void QMediaRecorder_Connect_StatusChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, int) = reinterpret_cast<void (*)(QMediaRecorder*, int)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::statusChanged, [self, slotFunc](QMediaRecorder::Status status) {
        int sigval1 = static_cast<int>(status);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_DurationChanged(QMediaRecorder* self, long long duration) {
    self->durationChanged(static_cast<qint64>(duration));
}

void QMediaRecorder_Connect_DurationChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, long long) = reinterpret_cast<void (*)(QMediaRecorder*, long long)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::durationChanged, [self, slotFunc](qint64 duration) {
        long long sigval1 = static_cast<long long>(duration);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_MutedChanged(QMediaRecorder* self, bool muted) {
    self->mutedChanged(muted);
}

void QMediaRecorder_Connect_MutedChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, bool) = reinterpret_cast<void (*)(QMediaRecorder*, bool)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::mutedChanged, [self, slotFunc](bool muted) {
        bool sigval1 = muted;
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_VolumeChanged(QMediaRecorder* self, double volume) {
    self->volumeChanged(static_cast<qreal>(volume));
}

void QMediaRecorder_Connect_VolumeChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, double) = reinterpret_cast<void (*)(QMediaRecorder*, double)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::volumeChanged, [self, slotFunc](qreal volume) {
        double sigval1 = static_cast<double>(volume);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_ActualLocationChanged(QMediaRecorder* self, QUrl* location) {
    self->actualLocationChanged(*location);
}

void QMediaRecorder_Connect_ActualLocationChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, QUrl*) = reinterpret_cast<void (*)(QMediaRecorder*, QUrl*)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::actualLocationChanged, [self, slotFunc](const QUrl& location) {
        const QUrl& location_ret = location;
        // Cast returned reference into pointer
        QUrl* sigval1 = const_cast<QUrl*>(&location_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_ErrorWithErrorVal(QMediaRecorder* self, int errorVal) {
    self->error(static_cast<QMediaRecorder::Error>(errorVal));
}

void QMediaRecorder_Connect_ErrorWithErrorVal(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, int) = reinterpret_cast<void (*)(QMediaRecorder*, int)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::error, [self, slotFunc](QMediaRecorder::Error errorVal) {
        int sigval1 = static_cast<int>(errorVal);
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_MetaDataAvailableChanged(QMediaRecorder* self, bool available) {
    self->metaDataAvailableChanged(available);
}

void QMediaRecorder_Connect_MetaDataAvailableChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, bool) = reinterpret_cast<void (*)(QMediaRecorder*, bool)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::metaDataAvailableChanged, [self, slotFunc](bool available) {
        bool sigval1 = available;
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_MetaDataWritableChanged(QMediaRecorder* self, bool writable) {
    self->metaDataWritableChanged(writable);
}

void QMediaRecorder_Connect_MetaDataWritableChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, bool) = reinterpret_cast<void (*)(QMediaRecorder*, bool)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::metaDataWritableChanged, [self, slotFunc](bool writable) {
        bool sigval1 = writable;
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_MetaDataChanged(QMediaRecorder* self) {
    self->metaDataChanged();
}

void QMediaRecorder_Connect_MetaDataChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*) = reinterpret_cast<void (*)(QMediaRecorder*)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::metaDataChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QMediaRecorder_MetaDataChanged2(QMediaRecorder* self, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->metaDataChanged(key_QString, *value);
}

void QMediaRecorder_Connect_MetaDataChanged2(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, libqt_string, QVariant*) = reinterpret_cast<void (*)(QMediaRecorder*, libqt_string, QVariant*)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::metaDataChanged, [self, slotFunc](const QString& key, const QVariant& value) {
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

void QMediaRecorder_AvailabilityChanged(QMediaRecorder* self, bool available) {
    self->availabilityChanged(available);
}

void QMediaRecorder_Connect_AvailabilityChanged(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, bool) = reinterpret_cast<void (*)(QMediaRecorder*, bool)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::availabilityChanged, [self, slotFunc](bool available) {
        bool sigval1 = available;
        slotFunc(self, sigval1);
    });
}

void QMediaRecorder_AvailabilityChangedWithAvailability(QMediaRecorder* self, int availability) {
    self->availabilityChanged(static_cast<QMultimedia::AvailabilityStatus>(availability));
}

void QMediaRecorder_Connect_AvailabilityChangedWithAvailability(QMediaRecorder* self, intptr_t slot) {
    void (*slotFunc)(QMediaRecorder*, int) = reinterpret_cast<void (*)(QMediaRecorder*, int)>(slot);
    QMediaRecorder::connect(self, &QMediaRecorder::availabilityChanged, [self, slotFunc](QMultimedia::AvailabilityStatus availability) {
        int sigval1 = static_cast<int>(availability);
        slotFunc(self, sigval1);
    });
}

libqt_string QMediaRecorder_Tr2(const char* s, const char* c) {
    QString _ret = QMediaRecorder::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaRecorder_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaRecorder::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaRecorder_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaRecorder::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaRecorder_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaRecorder::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of int */ QMediaRecorder_SupportedAudioSampleRates1(const QMediaRecorder* self, QAudioEncoderSettings* settings) {
    QList<int> _ret = self->supportedAudioSampleRates(*settings);
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

libqt_list /* of int */ QMediaRecorder_SupportedAudioSampleRates2(const QMediaRecorder* self, QAudioEncoderSettings* settings, bool* continuous) {
    QList<int> _ret = self->supportedAudioSampleRates(*settings, continuous);
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

libqt_list /* of QSize* */ QMediaRecorder_SupportedResolutions1(const QMediaRecorder* self, QVideoEncoderSettings* settings) {
    QList<QSize> _ret = self->supportedResolutions(*settings);
    // Convert QList<> from C++ memory to manually-managed C memory
    QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QSize(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QSize* */ QMediaRecorder_SupportedResolutions2(const QMediaRecorder* self, QVideoEncoderSettings* settings, bool* continuous) {
    QList<QSize> _ret = self->supportedResolutions(*settings, continuous);
    // Convert QList<> from C++ memory to manually-managed C memory
    QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QSize(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of double */ QMediaRecorder_SupportedFrameRates1(const QMediaRecorder* self, QVideoEncoderSettings* settings) {
    QList<qreal> _ret = self->supportedFrameRates(*settings);
    // Convert QList<> from C++ memory to manually-managed C memory
    double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of double */ QMediaRecorder_SupportedFrameRates2(const QMediaRecorder* self, QVideoEncoderSettings* settings, bool* continuous) {
    QList<qreal> _ret = self->supportedFrameRates(*settings, continuous);
    // Convert QList<> from C++ memory to manually-managed C memory
    double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QMediaRecorder_SetEncodingSettings2(QMediaRecorder* self, QAudioEncoderSettings* audioSettings, QVideoEncoderSettings* videoSettings) {
    self->setEncodingSettings(*audioSettings, *videoSettings);
}

void QMediaRecorder_SetEncodingSettings3(QMediaRecorder* self, QAudioEncoderSettings* audioSettings, QVideoEncoderSettings* videoSettings, libqt_string containerMimeType) {
    QString containerMimeType_QString = QString::fromUtf8(containerMimeType.data, containerMimeType.len);
    self->setEncodingSettings(*audioSettings, *videoSettings, containerMimeType_QString);
}

// Derived class handler implementation
QMediaObject* QMediaRecorder_MediaObject(const QMediaRecorder* self) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        return vqmediarecorder->mediaObject();
    } else {
        return vqmediarecorder->mediaObject();
    }
}

// Base class handler implementation
QMediaObject* QMediaRecorder_QBaseMediaObject(const QMediaRecorder* self) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_MediaObject_IsBase(true);
        return vqmediarecorder->mediaObject();
    } else {
        return vqmediarecorder->mediaObject();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnMediaObject(const QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_MediaObject_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_MediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaRecorder_SetMediaObject(QMediaRecorder* self, QMediaObject* object) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        return vqmediarecorder->setMediaObject(object);
    } else {
        return vqmediarecorder->setMediaObject(object);
    }
}

// Base class handler implementation
bool QMediaRecorder_QBaseSetMediaObject(QMediaRecorder* self, QMediaObject* object) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_SetMediaObject_IsBase(true);
        return vqmediarecorder->setMediaObject(object);
    } else {
        return vqmediarecorder->setMediaObject(object);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnSetMediaObject(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_SetMediaObject_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_SetMediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaRecorder_Event(QMediaRecorder* self, QEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        return vqmediarecorder->event(event);
    } else {
        return vqmediarecorder->event(event);
    }
}

// Base class handler implementation
bool QMediaRecorder_QBaseEvent(QMediaRecorder* self, QEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_Event_IsBase(true);
        return vqmediarecorder->event(event);
    } else {
        return vqmediarecorder->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnEvent(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_Event_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaRecorder_EventFilter(QMediaRecorder* self, QObject* watched, QEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        return vqmediarecorder->eventFilter(watched, event);
    } else {
        return vqmediarecorder->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QMediaRecorder_QBaseEventFilter(QMediaRecorder* self, QObject* watched, QEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_EventFilter_IsBase(true);
        return vqmediarecorder->eventFilter(watched, event);
    } else {
        return vqmediarecorder->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnEventFilter(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_EventFilter_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaRecorder_TimerEvent(QMediaRecorder* self, QTimerEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->timerEvent(event);
    } else {
        vqmediarecorder->timerEvent(event);
    }
}

// Base class handler implementation
void QMediaRecorder_QBaseTimerEvent(QMediaRecorder* self, QTimerEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_TimerEvent_IsBase(true);
        vqmediarecorder->timerEvent(event);
    } else {
        vqmediarecorder->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnTimerEvent(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_TimerEvent_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaRecorder_ChildEvent(QMediaRecorder* self, QChildEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->childEvent(event);
    } else {
        vqmediarecorder->childEvent(event);
    }
}

// Base class handler implementation
void QMediaRecorder_QBaseChildEvent(QMediaRecorder* self, QChildEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_ChildEvent_IsBase(true);
        vqmediarecorder->childEvent(event);
    } else {
        vqmediarecorder->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnChildEvent(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_ChildEvent_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaRecorder_CustomEvent(QMediaRecorder* self, QEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->customEvent(event);
    } else {
        vqmediarecorder->customEvent(event);
    }
}

// Base class handler implementation
void QMediaRecorder_QBaseCustomEvent(QMediaRecorder* self, QEvent* event) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_CustomEvent_IsBase(true);
        vqmediarecorder->customEvent(event);
    } else {
        vqmediarecorder->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnCustomEvent(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_CustomEvent_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaRecorder_ConnectNotify(QMediaRecorder* self, QMetaMethod* signal) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->connectNotify(*signal);
    } else {
        vqmediarecorder->connectNotify(*signal);
    }
}

// Base class handler implementation
void QMediaRecorder_QBaseConnectNotify(QMediaRecorder* self, QMetaMethod* signal) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_ConnectNotify_IsBase(true);
        vqmediarecorder->connectNotify(*signal);
    } else {
        vqmediarecorder->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnConnectNotify(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_ConnectNotify_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaRecorder_DisconnectNotify(QMediaRecorder* self, QMetaMethod* signal) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->disconnectNotify(*signal);
    } else {
        vqmediarecorder->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QMediaRecorder_QBaseDisconnectNotify(QMediaRecorder* self, QMetaMethod* signal) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_DisconnectNotify_IsBase(true);
        vqmediarecorder->disconnectNotify(*signal);
    } else {
        vqmediarecorder->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnDisconnectNotify(QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = dynamic_cast<VirtualQMediaRecorder*>(self)) {
        vqmediarecorder->setQMediaRecorder_DisconnectNotify_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QMediaRecorder_Sender(const QMediaRecorder* self) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        return vqmediarecorder->sender();
    } else {
        return vqmediarecorder->sender();
    }
}

// Base class handler implementation
QObject* QMediaRecorder_QBaseSender(const QMediaRecorder* self) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_Sender_IsBase(true);
        return vqmediarecorder->sender();
    } else {
        return vqmediarecorder->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnSender(const QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_Sender_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QMediaRecorder_SenderSignalIndex(const QMediaRecorder* self) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        return vqmediarecorder->senderSignalIndex();
    } else {
        return vqmediarecorder->senderSignalIndex();
    }
}

// Base class handler implementation
int QMediaRecorder_QBaseSenderSignalIndex(const QMediaRecorder* self) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_SenderSignalIndex_IsBase(true);
        return vqmediarecorder->senderSignalIndex();
    } else {
        return vqmediarecorder->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnSenderSignalIndex(const QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_SenderSignalIndex_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QMediaRecorder_Receivers(const QMediaRecorder* self, const char* signal) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        return vqmediarecorder->receivers(signal);
    } else {
        return vqmediarecorder->receivers(signal);
    }
}

// Base class handler implementation
int QMediaRecorder_QBaseReceivers(const QMediaRecorder* self, const char* signal) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_Receivers_IsBase(true);
        return vqmediarecorder->receivers(signal);
    } else {
        return vqmediarecorder->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnReceivers(const QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_Receivers_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaRecorder_IsSignalConnected(const QMediaRecorder* self, QMetaMethod* signal) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        return vqmediarecorder->isSignalConnected(*signal);
    } else {
        return vqmediarecorder->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QMediaRecorder_QBaseIsSignalConnected(const QMediaRecorder* self, QMetaMethod* signal) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_IsSignalConnected_IsBase(true);
        return vqmediarecorder->isSignalConnected(*signal);
    } else {
        return vqmediarecorder->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaRecorder_OnIsSignalConnected(const QMediaRecorder* self, intptr_t slot) {
    if (auto* vqmediarecorder = const_cast<VirtualQMediaRecorder*>(dynamic_cast<const VirtualQMediaRecorder*>(self))) {
        vqmediarecorder->setQMediaRecorder_IsSignalConnected_Callback(reinterpret_cast<VirtualQMediaRecorder::QMediaRecorder_IsSignalConnected_Callback>(slot));
    }
}

void QMediaRecorder_Delete(QMediaRecorder* self) {
    delete self;
}
