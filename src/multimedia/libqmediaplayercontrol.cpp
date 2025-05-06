#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMediaContent>
#include <QMediaControl>
#include <QMediaPlayerControl>
#include <QMediaTimeRange>
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
#include <qmediaplayercontrol.h>
#include "libqmediaplayercontrol.h"
#include "libqmediaplayercontrol.hxx"

QMetaObject* QMediaPlayerControl_MetaObject(const QMediaPlayerControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaPlayerControl_Metacast(QMediaPlayerControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaPlayerControl_Metacall(QMediaPlayerControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaPlayerControl_Tr(const char* s) {
    QString _ret = QMediaPlayerControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlayerControl_TrUtf8(const char* s) {
    QString _ret = QMediaPlayerControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMediaPlayerControl_State(const QMediaPlayerControl* self) {
    return static_cast<int>(self->state());
}

int QMediaPlayerControl_MediaStatus(const QMediaPlayerControl* self) {
    return static_cast<int>(self->mediaStatus());
}

long long QMediaPlayerControl_Duration(const QMediaPlayerControl* self) {
    return static_cast<long long>(self->duration());
}

long long QMediaPlayerControl_Position(const QMediaPlayerControl* self) {
    return static_cast<long long>(self->position());
}

void QMediaPlayerControl_SetPosition(QMediaPlayerControl* self, long long position) {
    self->setPosition(static_cast<qint64>(position));
}

int QMediaPlayerControl_Volume(const QMediaPlayerControl* self) {
    return self->volume();
}

void QMediaPlayerControl_SetVolume(QMediaPlayerControl* self, int volume) {
    self->setVolume(static_cast<int>(volume));
}

bool QMediaPlayerControl_IsMuted(const QMediaPlayerControl* self) {
    return self->isMuted();
}

void QMediaPlayerControl_SetMuted(QMediaPlayerControl* self, bool mute) {
    self->setMuted(mute);
}

int QMediaPlayerControl_BufferStatus(const QMediaPlayerControl* self) {
    return self->bufferStatus();
}

bool QMediaPlayerControl_IsAudioAvailable(const QMediaPlayerControl* self) {
    return self->isAudioAvailable();
}

bool QMediaPlayerControl_IsVideoAvailable(const QMediaPlayerControl* self) {
    return self->isVideoAvailable();
}

bool QMediaPlayerControl_IsSeekable(const QMediaPlayerControl* self) {
    return self->isSeekable();
}

QMediaTimeRange* QMediaPlayerControl_AvailablePlaybackRanges(const QMediaPlayerControl* self) {
    return new QMediaTimeRange(self->availablePlaybackRanges());
}

double QMediaPlayerControl_PlaybackRate(const QMediaPlayerControl* self) {
    return static_cast<double>(self->playbackRate());
}

void QMediaPlayerControl_SetPlaybackRate(QMediaPlayerControl* self, double rate) {
    self->setPlaybackRate(static_cast<qreal>(rate));
}

QMediaContent* QMediaPlayerControl_Media(const QMediaPlayerControl* self) {
    return new QMediaContent(self->media());
}

QIODevice* QMediaPlayerControl_MediaStream(const QMediaPlayerControl* self) {
    return (QIODevice*)self->mediaStream();
}

void QMediaPlayerControl_SetMedia(QMediaPlayerControl* self, QMediaContent* media, QIODevice* stream) {
    self->setMedia(*media, stream);
}

void QMediaPlayerControl_Play(QMediaPlayerControl* self) {
    self->play();
}

void QMediaPlayerControl_Pause(QMediaPlayerControl* self) {
    self->pause();
}

void QMediaPlayerControl_Stop(QMediaPlayerControl* self) {
    self->stop();
}

void QMediaPlayerControl_MediaChanged(QMediaPlayerControl* self, QMediaContent* content) {
    self->mediaChanged(*content);
}

void QMediaPlayerControl_Connect_MediaChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, QMediaContent*) = reinterpret_cast<void (*)(QMediaPlayerControl*, QMediaContent*)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::mediaChanged, [self, slotFunc](const QMediaContent& content) {
        const QMediaContent& content_ret = content;
        // Cast returned reference into pointer
        QMediaContent* sigval1 = const_cast<QMediaContent*>(&content_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_DurationChanged(QMediaPlayerControl* self, long long duration) {
    self->durationChanged(static_cast<qint64>(duration));
}

void QMediaPlayerControl_Connect_DurationChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, long long) = reinterpret_cast<void (*)(QMediaPlayerControl*, long long)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::durationChanged, [self, slotFunc](qint64 duration) {
        long long sigval1 = static_cast<long long>(duration);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_PositionChanged(QMediaPlayerControl* self, long long position) {
    self->positionChanged(static_cast<qint64>(position));
}

void QMediaPlayerControl_Connect_PositionChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, long long) = reinterpret_cast<void (*)(QMediaPlayerControl*, long long)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::positionChanged, [self, slotFunc](qint64 position) {
        long long sigval1 = static_cast<long long>(position);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_StateChanged(QMediaPlayerControl* self, int newState) {
    self->stateChanged(static_cast<QMediaPlayer::State>(newState));
}

void QMediaPlayerControl_Connect_StateChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, int) = reinterpret_cast<void (*)(QMediaPlayerControl*, int)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::stateChanged, [self, slotFunc](QMediaPlayer::State newState) {
        int sigval1 = static_cast<int>(newState);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_MediaStatusChanged(QMediaPlayerControl* self, int status) {
    self->mediaStatusChanged(static_cast<QMediaPlayer::MediaStatus>(status));
}

void QMediaPlayerControl_Connect_MediaStatusChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, int) = reinterpret_cast<void (*)(QMediaPlayerControl*, int)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::mediaStatusChanged, [self, slotFunc](QMediaPlayer::MediaStatus status) {
        int sigval1 = static_cast<int>(status);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_VolumeChanged(QMediaPlayerControl* self, int volume) {
    self->volumeChanged(static_cast<int>(volume));
}

void QMediaPlayerControl_Connect_VolumeChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, int) = reinterpret_cast<void (*)(QMediaPlayerControl*, int)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::volumeChanged, [self, slotFunc](int volume) {
        int sigval1 = volume;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_MutedChanged(QMediaPlayerControl* self, bool mute) {
    self->mutedChanged(mute);
}

void QMediaPlayerControl_Connect_MutedChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, bool) = reinterpret_cast<void (*)(QMediaPlayerControl*, bool)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::mutedChanged, [self, slotFunc](bool mute) {
        bool sigval1 = mute;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_AudioAvailableChanged(QMediaPlayerControl* self, bool audioAvailable) {
    self->audioAvailableChanged(audioAvailable);
}

void QMediaPlayerControl_Connect_AudioAvailableChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, bool) = reinterpret_cast<void (*)(QMediaPlayerControl*, bool)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::audioAvailableChanged, [self, slotFunc](bool audioAvailable) {
        bool sigval1 = audioAvailable;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_VideoAvailableChanged(QMediaPlayerControl* self, bool videoAvailable) {
    self->videoAvailableChanged(videoAvailable);
}

void QMediaPlayerControl_Connect_VideoAvailableChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, bool) = reinterpret_cast<void (*)(QMediaPlayerControl*, bool)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::videoAvailableChanged, [self, slotFunc](bool videoAvailable) {
        bool sigval1 = videoAvailable;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_BufferStatusChanged(QMediaPlayerControl* self, int percentFilled) {
    self->bufferStatusChanged(static_cast<int>(percentFilled));
}

void QMediaPlayerControl_Connect_BufferStatusChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, int) = reinterpret_cast<void (*)(QMediaPlayerControl*, int)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::bufferStatusChanged, [self, slotFunc](int percentFilled) {
        int sigval1 = percentFilled;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_SeekableChanged(QMediaPlayerControl* self, bool seekable) {
    self->seekableChanged(seekable);
}

void QMediaPlayerControl_Connect_SeekableChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, bool) = reinterpret_cast<void (*)(QMediaPlayerControl*, bool)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::seekableChanged, [self, slotFunc](bool seekable) {
        bool sigval1 = seekable;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_AvailablePlaybackRangesChanged(QMediaPlayerControl* self, QMediaTimeRange* ranges) {
    self->availablePlaybackRangesChanged(*ranges);
}

void QMediaPlayerControl_Connect_AvailablePlaybackRangesChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, QMediaTimeRange*) = reinterpret_cast<void (*)(QMediaPlayerControl*, QMediaTimeRange*)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::availablePlaybackRangesChanged, [self, slotFunc](const QMediaTimeRange& ranges) {
        const QMediaTimeRange& ranges_ret = ranges;
        // Cast returned reference into pointer
        QMediaTimeRange* sigval1 = const_cast<QMediaTimeRange*>(&ranges_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_PlaybackRateChanged(QMediaPlayerControl* self, double rate) {
    self->playbackRateChanged(static_cast<qreal>(rate));
}

void QMediaPlayerControl_Connect_PlaybackRateChanged(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, double) = reinterpret_cast<void (*)(QMediaPlayerControl*, double)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::playbackRateChanged, [self, slotFunc](qreal rate) {
        double sigval1 = static_cast<double>(rate);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayerControl_Error(QMediaPlayerControl* self, int errorVal, libqt_string errorString) {
    QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
    self->error(static_cast<int>(errorVal), errorString_QString);
}

void QMediaPlayerControl_Connect_Error(QMediaPlayerControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayerControl*, int, libqt_string) = reinterpret_cast<void (*)(QMediaPlayerControl*, int, libqt_string)>(slot);
    QMediaPlayerControl::connect(self, &QMediaPlayerControl::error, [self, slotFunc](int errorVal, const QString& errorString) {
        int sigval1 = errorVal;
        const QString errorString_ret = errorString;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray errorString_b = errorString_ret.toUtf8();
        libqt_string errorString_str;
        errorString_str.len = errorString_b.length();
        errorString_str.data = static_cast<char*>(malloc((errorString_str.len + 1) * sizeof(char)));
        memcpy(errorString_str.data, errorString_b.data(), errorString_str.len);
        errorString_str.data[errorString_str.len] = '\0';
        libqt_string sigval2 = errorString_str;
        slotFunc(self, sigval1, sigval2);
    });
}

libqt_string QMediaPlayerControl_Tr2(const char* s, const char* c) {
    QString _ret = QMediaPlayerControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlayerControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaPlayerControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlayerControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaPlayerControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlayerControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaPlayerControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaPlayerControl_Event(QMediaPlayerControl* self, QEvent* event) {
    return self->event(event);
}

bool QMediaPlayerControl_EventFilter(QMediaPlayerControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaPlayerControl_Delete(QMediaPlayerControl* self) {
    delete self;
}
