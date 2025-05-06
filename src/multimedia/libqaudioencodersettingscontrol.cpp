#include <QAudioEncoderSettings>
#include <QAudioEncoderSettingsControl>
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
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qaudioencodersettingscontrol.h>
#include "libqaudioencodersettingscontrol.h"
#include "libqaudioencodersettingscontrol.hxx"

QMetaObject* QAudioEncoderSettingsControl_MetaObject(const QAudioEncoderSettingsControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioEncoderSettingsControl_Metacast(QAudioEncoderSettingsControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioEncoderSettingsControl_Metacall(QAudioEncoderSettingsControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QAudioEncoderSettingsControl_Tr(const char* s) {
    QString _ret = QAudioEncoderSettingsControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioEncoderSettingsControl_TrUtf8(const char* s) {
    QString _ret = QAudioEncoderSettingsControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QAudioEncoderSettingsControl_SupportedAudioCodecs(const QAudioEncoderSettingsControl* self) {
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

libqt_string QAudioEncoderSettingsControl_CodecDescription(const QAudioEncoderSettingsControl* self, libqt_string codecName) {
    QString codecName_QString = QString::fromUtf8(codecName.data, codecName.len);
    QString _ret = self->codecDescription(codecName_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of int */ QAudioEncoderSettingsControl_SupportedSampleRates(const QAudioEncoderSettingsControl* self, QAudioEncoderSettings* settings, bool* continuous) {
    QList<int> _ret = self->supportedSampleRates(*settings, continuous);
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

QAudioEncoderSettings* QAudioEncoderSettingsControl_AudioSettings(const QAudioEncoderSettingsControl* self) {
    return new QAudioEncoderSettings(self->audioSettings());
}

void QAudioEncoderSettingsControl_SetAudioSettings(QAudioEncoderSettingsControl* self, QAudioEncoderSettings* settings) {
    self->setAudioSettings(*settings);
}

libqt_string QAudioEncoderSettingsControl_Tr2(const char* s, const char* c) {
    QString _ret = QAudioEncoderSettingsControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioEncoderSettingsControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioEncoderSettingsControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioEncoderSettingsControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioEncoderSettingsControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioEncoderSettingsControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioEncoderSettingsControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAudioEncoderSettingsControl_Event(QAudioEncoderSettingsControl* self, QEvent* event) {
    return self->event(event);
}

bool QAudioEncoderSettingsControl_EventFilter(QAudioEncoderSettingsControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QAudioEncoderSettingsControl_Delete(QAudioEncoderSettingsControl* self) {
    delete self;
}
