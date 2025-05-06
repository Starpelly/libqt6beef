#include <QAudioOutputSelectorControl>
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
#include <qaudiooutputselectorcontrol.h>
#include "libqaudiooutputselectorcontrol.h"
#include "libqaudiooutputselectorcontrol.hxx"

QMetaObject* QAudioOutputSelectorControl_MetaObject(const QAudioOutputSelectorControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioOutputSelectorControl_Metacast(QAudioOutputSelectorControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioOutputSelectorControl_Metacall(QAudioOutputSelectorControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QAudioOutputSelectorControl_Tr(const char* s) {
    QString _ret = QAudioOutputSelectorControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutputSelectorControl_TrUtf8(const char* s) {
    QString _ret = QAudioOutputSelectorControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QAudioOutputSelectorControl_AvailableOutputs(const QAudioOutputSelectorControl* self) {
    QList<QString> _ret = self->availableOutputs();
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

libqt_string QAudioOutputSelectorControl_OutputDescription(const QAudioOutputSelectorControl* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    QString _ret = self->outputDescription(name_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutputSelectorControl_DefaultOutput(const QAudioOutputSelectorControl* self) {
    QString _ret = self->defaultOutput();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutputSelectorControl_ActiveOutput(const QAudioOutputSelectorControl* self) {
    QString _ret = self->activeOutput();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QAudioOutputSelectorControl_SetActiveOutput(QAudioOutputSelectorControl* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->setActiveOutput(name_QString);
}

void QAudioOutputSelectorControl_ActiveOutputChanged(QAudioOutputSelectorControl* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->activeOutputChanged(name_QString);
}

void QAudioOutputSelectorControl_Connect_ActiveOutputChanged(QAudioOutputSelectorControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioOutputSelectorControl*, libqt_string) = reinterpret_cast<void (*)(QAudioOutputSelectorControl*, libqt_string)>(slot);
    QAudioOutputSelectorControl::connect(self, &QAudioOutputSelectorControl::activeOutputChanged, [self, slotFunc](const QString& name) {
        const QString name_ret = name;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray name_b = name_ret.toUtf8();
        libqt_string name_str;
        name_str.len = name_b.length();
        name_str.data = static_cast<char*>(malloc((name_str.len + 1) * sizeof(char)));
        memcpy(name_str.data, name_b.data(), name_str.len);
        name_str.data[name_str.len] = '\0';
        libqt_string sigval1 = name_str;
        slotFunc(self, sigval1);
    });
}

void QAudioOutputSelectorControl_AvailableOutputsChanged(QAudioOutputSelectorControl* self) {
    self->availableOutputsChanged();
}

void QAudioOutputSelectorControl_Connect_AvailableOutputsChanged(QAudioOutputSelectorControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioOutputSelectorControl*) = reinterpret_cast<void (*)(QAudioOutputSelectorControl*)>(slot);
    QAudioOutputSelectorControl::connect(self, &QAudioOutputSelectorControl::availableOutputsChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAudioOutputSelectorControl_Tr2(const char* s, const char* c) {
    QString _ret = QAudioOutputSelectorControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutputSelectorControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioOutputSelectorControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutputSelectorControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioOutputSelectorControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioOutputSelectorControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioOutputSelectorControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAudioOutputSelectorControl_Event(QAudioOutputSelectorControl* self, QEvent* event) {
    return self->event(event);
}

bool QAudioOutputSelectorControl_EventFilter(QAudioOutputSelectorControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QAudioOutputSelectorControl_Delete(QAudioOutputSelectorControl* self) {
    delete self;
}
