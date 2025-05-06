#include <QAudioInputSelectorControl>
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
#include <qaudioinputselectorcontrol.h>
#include "libqaudioinputselectorcontrol.h"
#include "libqaudioinputselectorcontrol.hxx"

QMetaObject* QAudioInputSelectorControl_MetaObject(const QAudioInputSelectorControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAudioInputSelectorControl_Metacast(QAudioInputSelectorControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAudioInputSelectorControl_Metacall(QAudioInputSelectorControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QAudioInputSelectorControl_Tr(const char* s) {
    QString _ret = QAudioInputSelectorControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInputSelectorControl_TrUtf8(const char* s) {
    QString _ret = QAudioInputSelectorControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QAudioInputSelectorControl_AvailableInputs(const QAudioInputSelectorControl* self) {
    QList<QString> _ret = self->availableInputs();
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

libqt_string QAudioInputSelectorControl_InputDescription(const QAudioInputSelectorControl* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    QString _ret = self->inputDescription(name_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInputSelectorControl_DefaultInput(const QAudioInputSelectorControl* self) {
    QString _ret = self->defaultInput();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInputSelectorControl_ActiveInput(const QAudioInputSelectorControl* self) {
    QString _ret = self->activeInput();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QAudioInputSelectorControl_SetActiveInput(QAudioInputSelectorControl* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->setActiveInput(name_QString);
}

void QAudioInputSelectorControl_ActiveInputChanged(QAudioInputSelectorControl* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->activeInputChanged(name_QString);
}

void QAudioInputSelectorControl_Connect_ActiveInputChanged(QAudioInputSelectorControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioInputSelectorControl*, libqt_string) = reinterpret_cast<void (*)(QAudioInputSelectorControl*, libqt_string)>(slot);
    QAudioInputSelectorControl::connect(self, &QAudioInputSelectorControl::activeInputChanged, [self, slotFunc](const QString& name) {
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

void QAudioInputSelectorControl_AvailableInputsChanged(QAudioInputSelectorControl* self) {
    self->availableInputsChanged();
}

void QAudioInputSelectorControl_Connect_AvailableInputsChanged(QAudioInputSelectorControl* self, intptr_t slot) {
    void (*slotFunc)(QAudioInputSelectorControl*) = reinterpret_cast<void (*)(QAudioInputSelectorControl*)>(slot);
    QAudioInputSelectorControl::connect(self, &QAudioInputSelectorControl::availableInputsChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QAudioInputSelectorControl_Tr2(const char* s, const char* c) {
    QString _ret = QAudioInputSelectorControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInputSelectorControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAudioInputSelectorControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInputSelectorControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QAudioInputSelectorControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAudioInputSelectorControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAudioInputSelectorControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QAudioInputSelectorControl_Event(QAudioInputSelectorControl* self, QEvent* event) {
    return self->event(event);
}

bool QAudioInputSelectorControl_EventFilter(QAudioInputSelectorControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QAudioInputSelectorControl_Delete(QAudioInputSelectorControl* self) {
    delete self;
}
