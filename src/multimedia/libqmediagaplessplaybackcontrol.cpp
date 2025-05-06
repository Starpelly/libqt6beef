#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaContent>
#include <QMediaControl>
#include <QMediaGaplessPlaybackControl>
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
#include <qmediagaplessplaybackcontrol.h>
#include "libqmediagaplessplaybackcontrol.h"
#include "libqmediagaplessplaybackcontrol.hxx"

QMetaObject* QMediaGaplessPlaybackControl_MetaObject(const QMediaGaplessPlaybackControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaGaplessPlaybackControl_Metacast(QMediaGaplessPlaybackControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaGaplessPlaybackControl_Metacall(QMediaGaplessPlaybackControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaGaplessPlaybackControl_Tr(const char* s) {
    QString _ret = QMediaGaplessPlaybackControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaGaplessPlaybackControl_TrUtf8(const char* s) {
    QString _ret = QMediaGaplessPlaybackControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QMediaContent* QMediaGaplessPlaybackControl_NextMedia(const QMediaGaplessPlaybackControl* self) {
    return new QMediaContent(self->nextMedia());
}

void QMediaGaplessPlaybackControl_SetNextMedia(QMediaGaplessPlaybackControl* self, QMediaContent* media) {
    self->setNextMedia(*media);
}

bool QMediaGaplessPlaybackControl_IsCrossfadeSupported(const QMediaGaplessPlaybackControl* self) {
    return self->isCrossfadeSupported();
}

double QMediaGaplessPlaybackControl_CrossfadeTime(const QMediaGaplessPlaybackControl* self) {
    return static_cast<double>(self->crossfadeTime());
}

void QMediaGaplessPlaybackControl_SetCrossfadeTime(QMediaGaplessPlaybackControl* self, double crossfadeTime) {
    self->setCrossfadeTime(static_cast<qreal>(crossfadeTime));
}

void QMediaGaplessPlaybackControl_CrossfadeTimeChanged(QMediaGaplessPlaybackControl* self, double crossfadeTime) {
    self->crossfadeTimeChanged(static_cast<qreal>(crossfadeTime));
}

void QMediaGaplessPlaybackControl_Connect_CrossfadeTimeChanged(QMediaGaplessPlaybackControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaGaplessPlaybackControl*, double) = reinterpret_cast<void (*)(QMediaGaplessPlaybackControl*, double)>(slot);
    QMediaGaplessPlaybackControl::connect(self, &QMediaGaplessPlaybackControl::crossfadeTimeChanged, [self, slotFunc](qreal crossfadeTime) {
        double sigval1 = static_cast<double>(crossfadeTime);
        slotFunc(self, sigval1);
    });
}

void QMediaGaplessPlaybackControl_NextMediaChanged(QMediaGaplessPlaybackControl* self, QMediaContent* media) {
    self->nextMediaChanged(*media);
}

void QMediaGaplessPlaybackControl_Connect_NextMediaChanged(QMediaGaplessPlaybackControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaGaplessPlaybackControl*, QMediaContent*) = reinterpret_cast<void (*)(QMediaGaplessPlaybackControl*, QMediaContent*)>(slot);
    QMediaGaplessPlaybackControl::connect(self, &QMediaGaplessPlaybackControl::nextMediaChanged, [self, slotFunc](const QMediaContent& media) {
        const QMediaContent& media_ret = media;
        // Cast returned reference into pointer
        QMediaContent* sigval1 = const_cast<QMediaContent*>(&media_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaGaplessPlaybackControl_AdvancedToNextMedia(QMediaGaplessPlaybackControl* self) {
    self->advancedToNextMedia();
}

void QMediaGaplessPlaybackControl_Connect_AdvancedToNextMedia(QMediaGaplessPlaybackControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaGaplessPlaybackControl*) = reinterpret_cast<void (*)(QMediaGaplessPlaybackControl*)>(slot);
    QMediaGaplessPlaybackControl::connect(self, &QMediaGaplessPlaybackControl::advancedToNextMedia, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QMediaGaplessPlaybackControl_Tr2(const char* s, const char* c) {
    QString _ret = QMediaGaplessPlaybackControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaGaplessPlaybackControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaGaplessPlaybackControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaGaplessPlaybackControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaGaplessPlaybackControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaGaplessPlaybackControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaGaplessPlaybackControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaGaplessPlaybackControl_Event(QMediaGaplessPlaybackControl* self, QEvent* event) {
    return self->event(event);
}

bool QMediaGaplessPlaybackControl_EventFilter(QMediaGaplessPlaybackControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaGaplessPlaybackControl_Delete(QMediaGaplessPlaybackControl* self) {
    delete self;
}
