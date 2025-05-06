#include <QByteArray>
#include <QCameraCaptureBufferFormatControl>
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
#include <qcameracapturebufferformatcontrol.h>
#include "libqcameracapturebufferformatcontrol.h"
#include "libqcameracapturebufferformatcontrol.hxx"

QMetaObject* QCameraCaptureBufferFormatControl_MetaObject(const QCameraCaptureBufferFormatControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraCaptureBufferFormatControl_Metacast(QCameraCaptureBufferFormatControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraCaptureBufferFormatControl_Metacall(QCameraCaptureBufferFormatControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraCaptureBufferFormatControl_Tr(const char* s) {
    QString _ret = QCameraCaptureBufferFormatControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraCaptureBufferFormatControl_TrUtf8(const char* s) {
    QString _ret = QCameraCaptureBufferFormatControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of int */ QCameraCaptureBufferFormatControl_SupportedBufferFormats(const QCameraCaptureBufferFormatControl* self) {
    QList<QVideoFrame::PixelFormat> _ret = self->supportedBufferFormats();
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

int QCameraCaptureBufferFormatControl_BufferFormat(const QCameraCaptureBufferFormatControl* self) {
    return static_cast<int>(self->bufferFormat());
}

void QCameraCaptureBufferFormatControl_SetBufferFormat(QCameraCaptureBufferFormatControl* self, int format) {
    self->setBufferFormat(static_cast<QVideoFrame::PixelFormat>(format));
}

void QCameraCaptureBufferFormatControl_BufferFormatChanged(QCameraCaptureBufferFormatControl* self, int format) {
    self->bufferFormatChanged(static_cast<QVideoFrame::PixelFormat>(format));
}

void QCameraCaptureBufferFormatControl_Connect_BufferFormatChanged(QCameraCaptureBufferFormatControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraCaptureBufferFormatControl*, int) = reinterpret_cast<void (*)(QCameraCaptureBufferFormatControl*, int)>(slot);
    QCameraCaptureBufferFormatControl::connect(self, &QCameraCaptureBufferFormatControl::bufferFormatChanged, [self, slotFunc](QVideoFrame::PixelFormat format) {
        int sigval1 = static_cast<int>(format);
        slotFunc(self, sigval1);
    });
}

libqt_string QCameraCaptureBufferFormatControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraCaptureBufferFormatControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraCaptureBufferFormatControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraCaptureBufferFormatControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraCaptureBufferFormatControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraCaptureBufferFormatControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraCaptureBufferFormatControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraCaptureBufferFormatControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraCaptureBufferFormatControl_Event(QCameraCaptureBufferFormatControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraCaptureBufferFormatControl_EventFilter(QCameraCaptureBufferFormatControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraCaptureBufferFormatControl_Delete(QCameraCaptureBufferFormatControl* self) {
    delete self;
}
