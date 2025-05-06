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
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <QVideoEncoderSettings>
#include <QVideoEncoderSettingsControl>
#include <qvideoencodersettingscontrol.h>
#include "libqvideoencodersettingscontrol.h"
#include "libqvideoencodersettingscontrol.hxx"

QMetaObject* QVideoEncoderSettingsControl_MetaObject(const QVideoEncoderSettingsControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QVideoEncoderSettingsControl_Metacast(QVideoEncoderSettingsControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QVideoEncoderSettingsControl_Metacall(QVideoEncoderSettingsControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QVideoEncoderSettingsControl_Tr(const char* s) {
    QString _ret = QVideoEncoderSettingsControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoEncoderSettingsControl_TrUtf8(const char* s) {
    QString _ret = QVideoEncoderSettingsControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of QSize* */ QVideoEncoderSettingsControl_SupportedResolutions(const QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings, bool* continuous) {
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

libqt_list /* of double */ QVideoEncoderSettingsControl_SupportedFrameRates(const QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings, bool* continuous) {
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

libqt_list /* of libqt_string */ QVideoEncoderSettingsControl_SupportedVideoCodecs(const QVideoEncoderSettingsControl* self) {
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

libqt_string QVideoEncoderSettingsControl_VideoCodecDescription(const QVideoEncoderSettingsControl* self, libqt_string codec) {
    QString codec_QString = QString::fromUtf8(codec.data, codec.len);
    QString _ret = self->videoCodecDescription(codec_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QVideoEncoderSettings* QVideoEncoderSettingsControl_VideoSettings(const QVideoEncoderSettingsControl* self) {
    return new QVideoEncoderSettings(self->videoSettings());
}

void QVideoEncoderSettingsControl_SetVideoSettings(QVideoEncoderSettingsControl* self, QVideoEncoderSettings* settings) {
    self->setVideoSettings(*settings);
}

libqt_string QVideoEncoderSettingsControl_Tr2(const char* s, const char* c) {
    QString _ret = QVideoEncoderSettingsControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoEncoderSettingsControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QVideoEncoderSettingsControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoEncoderSettingsControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QVideoEncoderSettingsControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoEncoderSettingsControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QVideoEncoderSettingsControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QVideoEncoderSettingsControl_Event(QVideoEncoderSettingsControl* self, QEvent* event) {
    return self->event(event);
}

bool QVideoEncoderSettingsControl_EventFilter(QVideoEncoderSettingsControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QVideoEncoderSettingsControl_Delete(QVideoEncoderSettingsControl* self) {
    delete self;
}
