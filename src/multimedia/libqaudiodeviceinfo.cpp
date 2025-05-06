#include <QAudioDeviceInfo>
#include <QAudioFormat>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qaudiodeviceinfo.h>
#include "libqaudiodeviceinfo.h"
#include "libqaudiodeviceinfo.hxx"

QAudioDeviceInfo* QAudioDeviceInfo_new() {
    return new QAudioDeviceInfo();
}

QAudioDeviceInfo* QAudioDeviceInfo_new2(QAudioDeviceInfo* other) {
    return new QAudioDeviceInfo(*other);
}

void QAudioDeviceInfo_OperatorAssign(QAudioDeviceInfo* self, QAudioDeviceInfo* other) {
    self->operator=(*other);
}

bool QAudioDeviceInfo_OperatorEqual(const QAudioDeviceInfo* self, QAudioDeviceInfo* other) {
    return (*self == *other);
}

bool QAudioDeviceInfo_OperatorNotEqual(const QAudioDeviceInfo* self, QAudioDeviceInfo* other) {
    return (*self != *other);
}

bool QAudioDeviceInfo_IsNull(const QAudioDeviceInfo* self) {
    return self->isNull();
}

libqt_string QAudioDeviceInfo_DeviceName(const QAudioDeviceInfo* self) {
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

bool QAudioDeviceInfo_IsFormatSupported(const QAudioDeviceInfo* self, QAudioFormat* format) {
    return self->isFormatSupported(*format);
}

QAudioFormat* QAudioDeviceInfo_PreferredFormat(const QAudioDeviceInfo* self) {
    return new QAudioFormat(self->preferredFormat());
}

QAudioFormat* QAudioDeviceInfo_NearestFormat(const QAudioDeviceInfo* self, QAudioFormat* format) {
    return new QAudioFormat(self->nearestFormat(*format));
}

libqt_list /* of libqt_string */ QAudioDeviceInfo_SupportedCodecs(const QAudioDeviceInfo* self) {
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

libqt_list /* of int */ QAudioDeviceInfo_SupportedSampleRates(const QAudioDeviceInfo* self) {
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

libqt_list /* of int */ QAudioDeviceInfo_SupportedChannelCounts(const QAudioDeviceInfo* self) {
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

libqt_list /* of int */ QAudioDeviceInfo_SupportedSampleSizes(const QAudioDeviceInfo* self) {
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

libqt_list /* of int */ QAudioDeviceInfo_SupportedByteOrders(const QAudioDeviceInfo* self) {
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

libqt_list /* of int */ QAudioDeviceInfo_SupportedSampleTypes(const QAudioDeviceInfo* self) {
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

libqt_string QAudioDeviceInfo_Realm(const QAudioDeviceInfo* self) {
    QString _ret = self->realm();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QAudioDeviceInfo* QAudioDeviceInfo_DefaultInputDevice() {
    return new QAudioDeviceInfo(QAudioDeviceInfo::defaultInputDevice());
}

QAudioDeviceInfo* QAudioDeviceInfo_DefaultOutputDevice() {
    return new QAudioDeviceInfo(QAudioDeviceInfo::defaultOutputDevice());
}

libqt_list /* of QAudioDeviceInfo* */ QAudioDeviceInfo_AvailableDevices(int mode) {
    QList<QAudioDeviceInfo> _ret = QAudioDeviceInfo::availableDevices(static_cast<QAudio::Mode>(mode));
    // Convert QList<> from C++ memory to manually-managed C memory
    QAudioDeviceInfo** _arr = static_cast<QAudioDeviceInfo**>(malloc(sizeof(QAudioDeviceInfo*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QAudioDeviceInfo(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QAudioDeviceInfo_Delete(QAudioDeviceInfo* self) {
    delete self;
}
