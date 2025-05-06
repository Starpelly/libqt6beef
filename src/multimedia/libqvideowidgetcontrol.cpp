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
#include <QVideoWidgetControl>
#include <QWidget>
#include <qvideowidgetcontrol.h>
#include "libqvideowidgetcontrol.h"
#include "libqvideowidgetcontrol.hxx"

QMetaObject* QVideoWidgetControl_MetaObject(const QVideoWidgetControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QVideoWidgetControl_Metacast(QVideoWidgetControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QVideoWidgetControl_Metacall(QVideoWidgetControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QVideoWidgetControl_Tr(const char* s) {
    QString _ret = QVideoWidgetControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoWidgetControl_TrUtf8(const char* s) {
    QString _ret = QVideoWidgetControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QWidget* QVideoWidgetControl_VideoWidget(QVideoWidgetControl* self) {
    return self->videoWidget();
}

int QVideoWidgetControl_AspectRatioMode(const QVideoWidgetControl* self) {
    return static_cast<int>(self->aspectRatioMode());
}

void QVideoWidgetControl_SetAspectRatioMode(QVideoWidgetControl* self, int mode) {
    self->setAspectRatioMode(static_cast<Qt::AspectRatioMode>(mode));
}

bool QVideoWidgetControl_IsFullScreen(const QVideoWidgetControl* self) {
    return self->isFullScreen();
}

void QVideoWidgetControl_SetFullScreen(QVideoWidgetControl* self, bool fullScreen) {
    self->setFullScreen(fullScreen);
}

int QVideoWidgetControl_Brightness(const QVideoWidgetControl* self) {
    return self->brightness();
}

void QVideoWidgetControl_SetBrightness(QVideoWidgetControl* self, int brightness) {
    self->setBrightness(static_cast<int>(brightness));
}

int QVideoWidgetControl_Contrast(const QVideoWidgetControl* self) {
    return self->contrast();
}

void QVideoWidgetControl_SetContrast(QVideoWidgetControl* self, int contrast) {
    self->setContrast(static_cast<int>(contrast));
}

int QVideoWidgetControl_Hue(const QVideoWidgetControl* self) {
    return self->hue();
}

void QVideoWidgetControl_SetHue(QVideoWidgetControl* self, int hue) {
    self->setHue(static_cast<int>(hue));
}

int QVideoWidgetControl_Saturation(const QVideoWidgetControl* self) {
    return self->saturation();
}

void QVideoWidgetControl_SetSaturation(QVideoWidgetControl* self, int saturation) {
    self->setSaturation(static_cast<int>(saturation));
}

void QVideoWidgetControl_FullScreenChanged(QVideoWidgetControl* self, bool fullScreen) {
    self->fullScreenChanged(fullScreen);
}

void QVideoWidgetControl_Connect_FullScreenChanged(QVideoWidgetControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWidgetControl*, bool) = reinterpret_cast<void (*)(QVideoWidgetControl*, bool)>(slot);
    QVideoWidgetControl::connect(self, &QVideoWidgetControl::fullScreenChanged, [self, slotFunc](bool fullScreen) {
        bool sigval1 = fullScreen;
        slotFunc(self, sigval1);
    });
}

void QVideoWidgetControl_BrightnessChanged(QVideoWidgetControl* self, int brightness) {
    self->brightnessChanged(static_cast<int>(brightness));
}

void QVideoWidgetControl_Connect_BrightnessChanged(QVideoWidgetControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWidgetControl*, int) = reinterpret_cast<void (*)(QVideoWidgetControl*, int)>(slot);
    QVideoWidgetControl::connect(self, &QVideoWidgetControl::brightnessChanged, [self, slotFunc](int brightness) {
        int sigval1 = brightness;
        slotFunc(self, sigval1);
    });
}

void QVideoWidgetControl_ContrastChanged(QVideoWidgetControl* self, int contrast) {
    self->contrastChanged(static_cast<int>(contrast));
}

void QVideoWidgetControl_Connect_ContrastChanged(QVideoWidgetControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWidgetControl*, int) = reinterpret_cast<void (*)(QVideoWidgetControl*, int)>(slot);
    QVideoWidgetControl::connect(self, &QVideoWidgetControl::contrastChanged, [self, slotFunc](int contrast) {
        int sigval1 = contrast;
        slotFunc(self, sigval1);
    });
}

void QVideoWidgetControl_HueChanged(QVideoWidgetControl* self, int hue) {
    self->hueChanged(static_cast<int>(hue));
}

void QVideoWidgetControl_Connect_HueChanged(QVideoWidgetControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWidgetControl*, int) = reinterpret_cast<void (*)(QVideoWidgetControl*, int)>(slot);
    QVideoWidgetControl::connect(self, &QVideoWidgetControl::hueChanged, [self, slotFunc](int hue) {
        int sigval1 = hue;
        slotFunc(self, sigval1);
    });
}

void QVideoWidgetControl_SaturationChanged(QVideoWidgetControl* self, int saturation) {
    self->saturationChanged(static_cast<int>(saturation));
}

void QVideoWidgetControl_Connect_SaturationChanged(QVideoWidgetControl* self, intptr_t slot) {
    void (*slotFunc)(QVideoWidgetControl*, int) = reinterpret_cast<void (*)(QVideoWidgetControl*, int)>(slot);
    QVideoWidgetControl::connect(self, &QVideoWidgetControl::saturationChanged, [self, slotFunc](int saturation) {
        int sigval1 = saturation;
        slotFunc(self, sigval1);
    });
}

libqt_string QVideoWidgetControl_Tr2(const char* s, const char* c) {
    QString _ret = QVideoWidgetControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoWidgetControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QVideoWidgetControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoWidgetControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QVideoWidgetControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoWidgetControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QVideoWidgetControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QVideoWidgetControl_Event(QVideoWidgetControl* self, QEvent* event) {
    return self->event(event);
}

bool QVideoWidgetControl_EventFilter(QVideoWidgetControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QVideoWidgetControl_Delete(QVideoWidgetControl* self) {
    delete self;
}
