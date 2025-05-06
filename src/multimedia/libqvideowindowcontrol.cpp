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
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <QVideoWindowControl>
#include <qvideowindowcontrol.h>
#include "libqvideowindowcontrol.h"
#include "libqvideowindowcontrol.hxx"

QMetaObject* QVideoWindowControl_MetaObject(const QVideoWindowControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QVideoWindowControl_Metacast(QVideoWindowControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QVideoWindowControl_Metacall(QVideoWindowControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QVideoWindowControl_Tr(const char* s) {
    QString _ret = QVideoWindowControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoWindowControl_TrUtf8(const char* s) {
    QString _ret = QVideoWindowControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

uintptr_t QVideoWindowControl_WinId(const QVideoWindowControl* self) {
    return static_cast<uintptr_t>(self->winId());
}

void QVideoWindowControl_SetWinId(QVideoWindowControl* self, uintptr_t id) {
    self->setWinId(static_cast<WId>(id));
}

QRect* QVideoWindowControl_DisplayRect(const QVideoWindowControl* self) {
    return new QRect(self->displayRect());
}

void QVideoWindowControl_SetDisplayRect(QVideoWindowControl* self, QRect* rect) {
    self->setDisplayRect(*rect);
}

bool QVideoWindowControl_IsFullScreen(const QVideoWindowControl* self) {
    return self->isFullScreen();
}

void QVideoWindowControl_SetFullScreen(QVideoWindowControl* self, bool fullScreen) {
    self->setFullScreen(fullScreen);
}

void QVideoWindowControl_Repaint(QVideoWindowControl* self) {
    self->repaint();
}

QSize* QVideoWindowControl_NativeSize(const QVideoWindowControl* self) {
    return new QSize(self->nativeSize());
}

int QVideoWindowControl_AspectRatioMode(const QVideoWindowControl* self) {
    return static_cast<int>(self->aspectRatioMode());
}

void QVideoWindowControl_SetAspectRatioMode(QVideoWindowControl* self, int mode) {
    self->setAspectRatioMode(static_cast<Qt::AspectRatioMode>(mode));
}

int QVideoWindowControl_Brightness(const QVideoWindowControl* self) {
    return self->brightness();
}

void QVideoWindowControl_SetBrightness(QVideoWindowControl* self, int brightness) {
    self->setBrightness(static_cast<int>(brightness));
}

int QVideoWindowControl_Contrast(const QVideoWindowControl* self) {
    return self->contrast();
}

void QVideoWindowControl_SetContrast(QVideoWindowControl* self, int contrast) {
    self->setContrast(static_cast<int>(contrast));
}

int QVideoWindowControl_Hue(const QVideoWindowControl* self) {
    return self->hue();
}

void QVideoWindowControl_SetHue(QVideoWindowControl* self, int hue) {
    self->setHue(static_cast<int>(hue));
}

int QVideoWindowControl_Saturation(const QVideoWindowControl* self) {
    return self->saturation();
}

void QVideoWindowControl_SetSaturation(QVideoWindowControl* self, int saturation) {
    self->setSaturation(static_cast<int>(saturation));
}

void QVideoWindowControl_FullScreenChanged(QVideoWindowControl* self, bool fullScreen) {
    self->fullScreenChanged(fullScreen);
}

void QVideoWindowControl_Connect_FullScreenChanged(QVideoWindowControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWindowControl*, bool) = reinterpret_cast<void (*)(QVideoWindowControl*, bool)>(slot);
    QVideoWindowControl::connect(self, &QVideoWindowControl::fullScreenChanged, [self, slotFunc](bool fullScreen) {
        bool sigval1 = fullScreen;
        slotFunc(self, sigval1);
    });
}

void QVideoWindowControl_BrightnessChanged(QVideoWindowControl* self, int brightness) {
    self->brightnessChanged(static_cast<int>(brightness));
}

void QVideoWindowControl_Connect_BrightnessChanged(QVideoWindowControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWindowControl*, int) = reinterpret_cast<void (*)(QVideoWindowControl*, int)>(slot);
    QVideoWindowControl::connect(self, &QVideoWindowControl::brightnessChanged, [self, slotFunc](int brightness) {
        int sigval1 = brightness;
        slotFunc(self, sigval1);
    });
}

void QVideoWindowControl_ContrastChanged(QVideoWindowControl* self, int contrast) {
    self->contrastChanged(static_cast<int>(contrast));
}

void QVideoWindowControl_Connect_ContrastChanged(QVideoWindowControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWindowControl*, int) = reinterpret_cast<void (*)(QVideoWindowControl*, int)>(slot);
    QVideoWindowControl::connect(self, &QVideoWindowControl::contrastChanged, [self, slotFunc](int contrast) {
        int sigval1 = contrast;
        slotFunc(self, sigval1);
    });
}

void QVideoWindowControl_HueChanged(QVideoWindowControl* self, int hue) {
    self->hueChanged(static_cast<int>(hue));
}

void QVideoWindowControl_Connect_HueChanged(QVideoWindowControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWindowControl*, int) = reinterpret_cast<void (*)(QVideoWindowControl*, int)>(slot);
    QVideoWindowControl::connect(self, &QVideoWindowControl::hueChanged, [self, slotFunc](int hue) {
        int sigval1 = hue;
        slotFunc(self, sigval1);
    });
}

void QVideoWindowControl_SaturationChanged(QVideoWindowControl* self, int saturation) {
    self->saturationChanged(static_cast<int>(saturation));
}

void QVideoWindowControl_Connect_SaturationChanged(QVideoWindowControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWindowControl*, int) = reinterpret_cast<void (*)(QVideoWindowControl*, int)>(slot);
    QVideoWindowControl::connect(self, &QVideoWindowControl::saturationChanged, [self, slotFunc](int saturation) {
        int sigval1 = saturation;
        slotFunc(self, sigval1);
    });
}

void QVideoWindowControl_NativeSizeChanged(QVideoWindowControl* self) {
    self->nativeSizeChanged();
}

void QVideoWindowControl_Connect_NativeSizeChanged(QVideoWindowControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWindowControl*) = reinterpret_cast<void (*)(QVideoWindowControl*)>(slot);
    QVideoWindowControl::connect(self, &QVideoWindowControl::nativeSizeChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QVideoWindowControl_Tr2(const char* s, const char* c) {
    QString _ret = QVideoWindowControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoWindowControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QVideoWindowControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoWindowControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QVideoWindowControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoWindowControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QVideoWindowControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QVideoWindowControl_Event(QVideoWindowControl* self, QEvent* event) {
    return self->event(event);
}

bool QVideoWindowControl_EventFilter(QVideoWindowControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QVideoWindowControl_Delete(QVideoWindowControl* self) {
    delete self;
}
