#include <QAbstractVideoSurface>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QGraphicsVideoItem>
#include <QIODevice>
#include <QList>
#include <QMediaContent>
#include <QMediaObject>
#include <QMediaPlayer>
#include <QMediaPlaylist>
#include <QMediaService>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QNetworkConfiguration>
#include <QObject>
#include <QObjectUserData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <QVideoWidget>
#include <qmediaplayer.h>
#include "libqmediaplayer.h"
#include "libqmediaplayer.hxx"

QMediaPlayer* QMediaPlayer_new() {
    return new VirtualQMediaPlayer();
}

QMediaPlayer* QMediaPlayer_new2(QObject* parent) {
    return new VirtualQMediaPlayer(parent);
}

QMediaPlayer* QMediaPlayer_new3(QObject* parent, int flags) {
    return new VirtualQMediaPlayer(parent, static_cast<QMediaPlayer::Flags>(flags));
}

QMetaObject* QMediaPlayer_MetaObject(const QMediaPlayer* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaPlayer_Metacast(QMediaPlayer* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaPlayer_Metacall(QMediaPlayer* self, int param1, int param2, void** param3) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaPlayer_OnMetacall(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_Metacall_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QMediaPlayer_QBaseMetacall(QMediaPlayer* self, int param1, int param2, void** param3) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_Metacall_IsBase(true);
        return vqmediaplayer->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QMediaPlayer_Tr(const char* s) {
    QString _ret = QMediaPlayer::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlayer_TrUtf8(const char* s) {
    QString _ret = QMediaPlayer::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMediaPlayer_HasSupport(libqt_string mimeType) {
    QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
    return static_cast<int>(QMediaPlayer::hasSupport(mimeType_QString));
}

libqt_list /* of libqt_string */ QMediaPlayer_SupportedMimeTypes() {
    QStringList _ret = QMediaPlayer::supportedMimeTypes();
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

void QMediaPlayer_SetVideoOutput(QMediaPlayer* self, QVideoWidget* videoOutput) {
    self->setVideoOutput(videoOutput);
}

void QMediaPlayer_SetVideoOutputWithVideoOutput(QMediaPlayer* self, QGraphicsVideoItem* videoOutput) {
    self->setVideoOutput(videoOutput);
}

void QMediaPlayer_SetVideoOutputWithSurface(QMediaPlayer* self, QAbstractVideoSurface* surface) {
    self->setVideoOutput(surface);
}

void QMediaPlayer_SetVideoOutputWithSurfaces(QMediaPlayer* self, libqt_list /* of QAbstractVideoSurface* */ surfaces) {
    QVector<QAbstractVideoSurface*> surfaces_QList;
    surfaces_QList.reserve(surfaces.len);
    QAbstractVideoSurface** surfaces_arr = static_cast<QAbstractVideoSurface**>(surfaces.data);
    for (size_t i = 0; i < surfaces.len; ++i) {
        surfaces_QList.push_back(surfaces_arr[i]);
    }
    self->setVideoOutput(surfaces_QList);
}

QMediaContent* QMediaPlayer_Media(const QMediaPlayer* self) {
    return new QMediaContent(self->media());
}

QIODevice* QMediaPlayer_MediaStream(const QMediaPlayer* self) {
    return (QIODevice*)self->mediaStream();
}

QMediaPlaylist* QMediaPlayer_Playlist(const QMediaPlayer* self) {
    return self->playlist();
}

QMediaContent* QMediaPlayer_CurrentMedia(const QMediaPlayer* self) {
    return new QMediaContent(self->currentMedia());
}

int QMediaPlayer_State(const QMediaPlayer* self) {
    return static_cast<int>(self->state());
}

int QMediaPlayer_MediaStatus(const QMediaPlayer* self) {
    return static_cast<int>(self->mediaStatus());
}

long long QMediaPlayer_Duration(const QMediaPlayer* self) {
    return static_cast<long long>(self->duration());
}

long long QMediaPlayer_Position(const QMediaPlayer* self) {
    return static_cast<long long>(self->position());
}

int QMediaPlayer_Volume(const QMediaPlayer* self) {
    return self->volume();
}

bool QMediaPlayer_IsMuted(const QMediaPlayer* self) {
    return self->isMuted();
}

bool QMediaPlayer_IsAudioAvailable(const QMediaPlayer* self) {
    return self->isAudioAvailable();
}

bool QMediaPlayer_IsVideoAvailable(const QMediaPlayer* self) {
    return self->isVideoAvailable();
}

int QMediaPlayer_BufferStatus(const QMediaPlayer* self) {
    return self->bufferStatus();
}

bool QMediaPlayer_IsSeekable(const QMediaPlayer* self) {
    return self->isSeekable();
}

double QMediaPlayer_PlaybackRate(const QMediaPlayer* self) {
    return static_cast<double>(self->playbackRate());
}

int QMediaPlayer_Error(const QMediaPlayer* self) {
    return static_cast<int>(self->error());
}

libqt_string QMediaPlayer_ErrorString(const QMediaPlayer* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QNetworkConfiguration* QMediaPlayer_CurrentNetworkConfiguration(const QMediaPlayer* self) {
    return new QNetworkConfiguration(self->currentNetworkConfiguration());
}

int QMediaPlayer_AudioRole(const QMediaPlayer* self) {
    return static_cast<int>(self->audioRole());
}

void QMediaPlayer_SetAudioRole(QMediaPlayer* self, int audioRole) {
    self->setAudioRole(static_cast<QAudio::Role>(audioRole));
}

libqt_list /* of int */ QMediaPlayer_SupportedAudioRoles(const QMediaPlayer* self) {
    QList<QAudio::Role> _ret = self->supportedAudioRoles();
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

libqt_string QMediaPlayer_CustomAudioRole(const QMediaPlayer* self) {
    QString _ret = self->customAudioRole();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QMediaPlayer_SetCustomAudioRole(QMediaPlayer* self, libqt_string audioRole) {
    QString audioRole_QString = QString::fromUtf8(audioRole.data, audioRole.len);
    self->setCustomAudioRole(audioRole_QString);
}

libqt_list /* of libqt_string */ QMediaPlayer_SupportedCustomAudioRoles(const QMediaPlayer* self) {
    QStringList _ret = self->supportedCustomAudioRoles();
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

void QMediaPlayer_Play(QMediaPlayer* self) {
    self->play();
}

void QMediaPlayer_Pause(QMediaPlayer* self) {
    self->pause();
}

void QMediaPlayer_Stop(QMediaPlayer* self) {
    self->stop();
}

void QMediaPlayer_SetPosition(QMediaPlayer* self, long long position) {
    self->setPosition(static_cast<qint64>(position));
}

void QMediaPlayer_SetVolume(QMediaPlayer* self, int volume) {
    self->setVolume(static_cast<int>(volume));
}

void QMediaPlayer_SetMuted(QMediaPlayer* self, bool muted) {
    self->setMuted(muted);
}

void QMediaPlayer_SetPlaybackRate(QMediaPlayer* self, double rate) {
    self->setPlaybackRate(static_cast<qreal>(rate));
}

void QMediaPlayer_SetMedia(QMediaPlayer* self, QMediaContent* media) {
    self->setMedia(*media);
}

void QMediaPlayer_SetPlaylist(QMediaPlayer* self, QMediaPlaylist* playlist) {
    self->setPlaylist(playlist);
}

void QMediaPlayer_SetNetworkConfigurations(QMediaPlayer* self, libqt_list /* of QNetworkConfiguration* */ configurations) {
    QList<QNetworkConfiguration> configurations_QList;
    configurations_QList.reserve(configurations.len);
    QNetworkConfiguration** configurations_arr = static_cast<QNetworkConfiguration**>(configurations.data);
    for (size_t i = 0; i < configurations.len; ++i) {
        configurations_QList.push_back(*(configurations_arr[i]));
    }
    self->setNetworkConfigurations(configurations_QList);
}

void QMediaPlayer_MediaChanged(QMediaPlayer* self, QMediaContent* media) {
    self->mediaChanged(*media);
}

void QMediaPlayer_Connect_MediaChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, QMediaContent*) = reinterpret_cast<void (*)(QMediaPlayer*, QMediaContent*)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::mediaChanged, [self, slotFunc](const QMediaContent& media) {
        const QMediaContent& media_ret = media;
        // Cast returned reference into pointer
        QMediaContent* sigval1 = const_cast<QMediaContent*>(&media_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_CurrentMediaChanged(QMediaPlayer* self, QMediaContent* media) {
    self->currentMediaChanged(*media);
}

void QMediaPlayer_Connect_CurrentMediaChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, QMediaContent*) = reinterpret_cast<void (*)(QMediaPlayer*, QMediaContent*)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::currentMediaChanged, [self, slotFunc](const QMediaContent& media) {
        const QMediaContent& media_ret = media;
        // Cast returned reference into pointer
        QMediaContent* sigval1 = const_cast<QMediaContent*>(&media_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_StateChanged(QMediaPlayer* self, int newState) {
    self->stateChanged(static_cast<QMediaPlayer::State>(newState));
}

void QMediaPlayer_Connect_StateChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, int) = reinterpret_cast<void (*)(QMediaPlayer*, int)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::stateChanged, [self, slotFunc](QMediaPlayer::State newState) {
        int sigval1 = static_cast<int>(newState);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_MediaStatusChanged(QMediaPlayer* self, int status) {
    self->mediaStatusChanged(static_cast<QMediaPlayer::MediaStatus>(status));
}

void QMediaPlayer_Connect_MediaStatusChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, int) = reinterpret_cast<void (*)(QMediaPlayer*, int)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::mediaStatusChanged, [self, slotFunc](QMediaPlayer::MediaStatus status) {
        int sigval1 = static_cast<int>(status);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_DurationChanged(QMediaPlayer* self, long long duration) {
    self->durationChanged(static_cast<qint64>(duration));
}

void QMediaPlayer_Connect_DurationChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, long long) = reinterpret_cast<void (*)(QMediaPlayer*, long long)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::durationChanged, [self, slotFunc](qint64 duration) {
        long long sigval1 = static_cast<long long>(duration);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_PositionChanged(QMediaPlayer* self, long long position) {
    self->positionChanged(static_cast<qint64>(position));
}

void QMediaPlayer_Connect_PositionChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, long long) = reinterpret_cast<void (*)(QMediaPlayer*, long long)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::positionChanged, [self, slotFunc](qint64 position) {
        long long sigval1 = static_cast<long long>(position);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_VolumeChanged(QMediaPlayer* self, int volume) {
    self->volumeChanged(static_cast<int>(volume));
}

void QMediaPlayer_Connect_VolumeChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, int) = reinterpret_cast<void (*)(QMediaPlayer*, int)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::volumeChanged, [self, slotFunc](int volume) {
        int sigval1 = volume;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_MutedChanged(QMediaPlayer* self, bool muted) {
    self->mutedChanged(muted);
}

void QMediaPlayer_Connect_MutedChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, bool) = reinterpret_cast<void (*)(QMediaPlayer*, bool)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::mutedChanged, [self, slotFunc](bool muted) {
        bool sigval1 = muted;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_AudioAvailableChanged(QMediaPlayer* self, bool available) {
    self->audioAvailableChanged(available);
}

void QMediaPlayer_Connect_AudioAvailableChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, bool) = reinterpret_cast<void (*)(QMediaPlayer*, bool)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::audioAvailableChanged, [self, slotFunc](bool available) {
        bool sigval1 = available;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_VideoAvailableChanged(QMediaPlayer* self, bool videoAvailable) {
    self->videoAvailableChanged(videoAvailable);
}

void QMediaPlayer_Connect_VideoAvailableChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, bool) = reinterpret_cast<void (*)(QMediaPlayer*, bool)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::videoAvailableChanged, [self, slotFunc](bool videoAvailable) {
        bool sigval1 = videoAvailable;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_BufferStatusChanged(QMediaPlayer* self, int percentFilled) {
    self->bufferStatusChanged(static_cast<int>(percentFilled));
}

void QMediaPlayer_Connect_BufferStatusChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, int) = reinterpret_cast<void (*)(QMediaPlayer*, int)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::bufferStatusChanged, [self, slotFunc](int percentFilled) {
        int sigval1 = percentFilled;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_SeekableChanged(QMediaPlayer* self, bool seekable) {
    self->seekableChanged(seekable);
}

void QMediaPlayer_Connect_SeekableChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, bool) = reinterpret_cast<void (*)(QMediaPlayer*, bool)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::seekableChanged, [self, slotFunc](bool seekable) {
        bool sigval1 = seekable;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_PlaybackRateChanged(QMediaPlayer* self, double rate) {
    self->playbackRateChanged(static_cast<qreal>(rate));
}

void QMediaPlayer_Connect_PlaybackRateChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, double) = reinterpret_cast<void (*)(QMediaPlayer*, double)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::playbackRateChanged, [self, slotFunc](qreal rate) {
        double sigval1 = static_cast<double>(rate);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_AudioRoleChanged(QMediaPlayer* self, int role) {
    self->audioRoleChanged(static_cast<QAudio::Role>(role));
}

void QMediaPlayer_Connect_AudioRoleChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, int) = reinterpret_cast<void (*)(QMediaPlayer*, int)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::audioRoleChanged, [self, slotFunc](QAudio::Role role) {
        int sigval1 = static_cast<int>(role);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_CustomAudioRoleChanged(QMediaPlayer* self, libqt_string role) {
    QString role_QString = QString::fromUtf8(role.data, role.len);
    self->customAudioRoleChanged(role_QString);
}

void QMediaPlayer_Connect_CustomAudioRoleChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, libqt_string) = reinterpret_cast<void (*)(QMediaPlayer*, libqt_string)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::customAudioRoleChanged, [self, slotFunc](const QString& role) {
        const QString role_ret = role;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray role_b = role_ret.toUtf8();
        libqt_string role_str;
        role_str.len = role_b.length();
        role_str.data = static_cast<char*>(malloc((role_str.len + 1) * sizeof(char)));
        memcpy(role_str.data, role_b.data(), role_str.len);
        role_str.data[role_str.len] = '\0';
        libqt_string sigval1 = role_str;
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_ErrorWithErrorVal(QMediaPlayer* self, int errorVal) {
    self->error(static_cast<QMediaPlayer::Error>(errorVal));
}

void QMediaPlayer_Connect_ErrorWithErrorVal(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, int) = reinterpret_cast<void (*)(QMediaPlayer*, int)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::error, [self, slotFunc](QMediaPlayer::Error errorVal) {
        int sigval1 = static_cast<int>(errorVal);
        slotFunc(self, sigval1);
    });
}

void QMediaPlayer_NetworkConfigurationChanged(QMediaPlayer* self, QNetworkConfiguration* configuration) {
    self->networkConfigurationChanged(*configuration);
}

void QMediaPlayer_Connect_NetworkConfigurationChanged(QMediaPlayer* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlayer*, QNetworkConfiguration*) = reinterpret_cast<void (*)(QMediaPlayer*, QNetworkConfiguration*)>(slot);
    QMediaPlayer::connect(self, &QMediaPlayer::networkConfigurationChanged, [self, slotFunc](const QNetworkConfiguration& configuration) {
        const QNetworkConfiguration& configuration_ret = configuration;
        // Cast returned reference into pointer
        QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&configuration_ret);
        slotFunc(self, sigval1);
    });
}

libqt_string QMediaPlayer_Tr2(const char* s, const char* c) {
    QString _ret = QMediaPlayer::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlayer_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaPlayer::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlayer_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaPlayer::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlayer_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaPlayer::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMediaPlayer_HasSupport2(libqt_string mimeType, libqt_list /* of libqt_string */ codecs) {
    QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
    QStringList codecs_QList;
    codecs_QList.reserve(codecs.len);
    libqt_string* codecs_arr = static_cast<libqt_string*>(codecs.data);
    for (size_t i = 0; i < codecs.len; ++i) {
        QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
        codecs_QList.push_back(codecs_arr_i_QString);
    }
    return static_cast<int>(QMediaPlayer::hasSupport(mimeType_QString, codecs_QList));
}

int QMediaPlayer_HasSupport3(libqt_string mimeType, libqt_list /* of libqt_string */ codecs, int flags) {
    QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
    QStringList codecs_QList;
    codecs_QList.reserve(codecs.len);
    libqt_string* codecs_arr = static_cast<libqt_string*>(codecs.data);
    for (size_t i = 0; i < codecs.len; ++i) {
        QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
        codecs_QList.push_back(codecs_arr_i_QString);
    }
    return static_cast<int>(QMediaPlayer::hasSupport(mimeType_QString, codecs_QList, static_cast<QMediaPlayer::Flags>(flags)));
}

libqt_list /* of libqt_string */ QMediaPlayer_SupportedMimeTypes1(int flags) {
    QStringList _ret = QMediaPlayer::supportedMimeTypes(static_cast<QMediaPlayer::Flags>(flags));
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

void QMediaPlayer_SetMedia2(QMediaPlayer* self, QMediaContent* media, QIODevice* stream) {
    self->setMedia(*media, stream);
}

// Derived class handler implementation
int QMediaPlayer_Availability(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        return static_cast<int>(vqmediaplayer->availability());
    } else {
        return static_cast<int>(vqmediaplayer->availability());
    }
}

// Base class handler implementation
int QMediaPlayer_QBaseAvailability(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_Availability_IsBase(true);
        return static_cast<int>(vqmediaplayer->availability());
    } else {
        return static_cast<int>(vqmediaplayer->availability());
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnAvailability(const QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_Availability_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_Availability_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlayer_Bind(QMediaPlayer* self, QObject* param1) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        return vqmediaplayer->bind(param1);
    } else {
        return vqmediaplayer->bind(param1);
    }
}

// Base class handler implementation
bool QMediaPlayer_QBaseBind(QMediaPlayer* self, QObject* param1) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_Bind_IsBase(true);
        return vqmediaplayer->bind(param1);
    } else {
        return vqmediaplayer->bind(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnBind(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_Bind_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_Bind_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlayer_Unbind(QMediaPlayer* self, QObject* param1) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->unbind(param1);
    } else {
        vqmediaplayer->unbind(param1);
    }
}

// Base class handler implementation
void QMediaPlayer_QBaseUnbind(QMediaPlayer* self, QObject* param1) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_Unbind_IsBase(true);
        vqmediaplayer->unbind(param1);
    } else {
        vqmediaplayer->unbind(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnUnbind(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_Unbind_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_Unbind_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlayer_IsAvailable(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        return vqmediaplayer->isAvailable();
    } else {
        return vqmediaplayer->isAvailable();
    }
}

// Base class handler implementation
bool QMediaPlayer_QBaseIsAvailable(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_IsAvailable_IsBase(true);
        return vqmediaplayer->isAvailable();
    } else {
        return vqmediaplayer->isAvailable();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnIsAvailable(const QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_IsAvailable_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_IsAvailable_Callback>(slot));
    }
}

// Derived class handler implementation
QMediaService* QMediaPlayer_Service(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        return vqmediaplayer->service();
    } else {
        return vqmediaplayer->service();
    }
}

// Base class handler implementation
QMediaService* QMediaPlayer_QBaseService(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_Service_IsBase(true);
        return vqmediaplayer->service();
    } else {
        return vqmediaplayer->service();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnService(const QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_Service_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_Service_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlayer_Event(QMediaPlayer* self, QEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        return vqmediaplayer->event(event);
    } else {
        return vqmediaplayer->event(event);
    }
}

// Base class handler implementation
bool QMediaPlayer_QBaseEvent(QMediaPlayer* self, QEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_Event_IsBase(true);
        return vqmediaplayer->event(event);
    } else {
        return vqmediaplayer->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnEvent(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_Event_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlayer_EventFilter(QMediaPlayer* self, QObject* watched, QEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        return vqmediaplayer->eventFilter(watched, event);
    } else {
        return vqmediaplayer->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QMediaPlayer_QBaseEventFilter(QMediaPlayer* self, QObject* watched, QEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_EventFilter_IsBase(true);
        return vqmediaplayer->eventFilter(watched, event);
    } else {
        return vqmediaplayer->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnEventFilter(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_EventFilter_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlayer_TimerEvent(QMediaPlayer* self, QTimerEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->timerEvent(event);
    } else {
        vqmediaplayer->timerEvent(event);
    }
}

// Base class handler implementation
void QMediaPlayer_QBaseTimerEvent(QMediaPlayer* self, QTimerEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_TimerEvent_IsBase(true);
        vqmediaplayer->timerEvent(event);
    } else {
        vqmediaplayer->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnTimerEvent(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_TimerEvent_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlayer_ChildEvent(QMediaPlayer* self, QChildEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->childEvent(event);
    } else {
        vqmediaplayer->childEvent(event);
    }
}

// Base class handler implementation
void QMediaPlayer_QBaseChildEvent(QMediaPlayer* self, QChildEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_ChildEvent_IsBase(true);
        vqmediaplayer->childEvent(event);
    } else {
        vqmediaplayer->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnChildEvent(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_ChildEvent_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlayer_CustomEvent(QMediaPlayer* self, QEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->customEvent(event);
    } else {
        vqmediaplayer->customEvent(event);
    }
}

// Base class handler implementation
void QMediaPlayer_QBaseCustomEvent(QMediaPlayer* self, QEvent* event) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_CustomEvent_IsBase(true);
        vqmediaplayer->customEvent(event);
    } else {
        vqmediaplayer->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnCustomEvent(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_CustomEvent_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlayer_ConnectNotify(QMediaPlayer* self, QMetaMethod* signal) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->connectNotify(*signal);
    } else {
        vqmediaplayer->connectNotify(*signal);
    }
}

// Base class handler implementation
void QMediaPlayer_QBaseConnectNotify(QMediaPlayer* self, QMetaMethod* signal) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_ConnectNotify_IsBase(true);
        vqmediaplayer->connectNotify(*signal);
    } else {
        vqmediaplayer->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnConnectNotify(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_ConnectNotify_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlayer_DisconnectNotify(QMediaPlayer* self, QMetaMethod* signal) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->disconnectNotify(*signal);
    } else {
        vqmediaplayer->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QMediaPlayer_QBaseDisconnectNotify(QMediaPlayer* self, QMetaMethod* signal) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_DisconnectNotify_IsBase(true);
        vqmediaplayer->disconnectNotify(*signal);
    } else {
        vqmediaplayer->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnDisconnectNotify(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_DisconnectNotify_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlayer_AddPropertyWatch(QMediaPlayer* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->addPropertyWatch(name_QByteArray);
    } else {
        vqmediaplayer->addPropertyWatch(name_QByteArray);
    }
}

// Base class handler implementation
void QMediaPlayer_QBaseAddPropertyWatch(QMediaPlayer* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_AddPropertyWatch_IsBase(true);
        vqmediaplayer->addPropertyWatch(name_QByteArray);
    } else {
        vqmediaplayer->addPropertyWatch(name_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnAddPropertyWatch(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_AddPropertyWatch_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_AddPropertyWatch_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlayer_RemovePropertyWatch(QMediaPlayer* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->removePropertyWatch(name_QByteArray);
    } else {
        vqmediaplayer->removePropertyWatch(name_QByteArray);
    }
}

// Base class handler implementation
void QMediaPlayer_QBaseRemovePropertyWatch(QMediaPlayer* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_RemovePropertyWatch_IsBase(true);
        vqmediaplayer->removePropertyWatch(name_QByteArray);
    } else {
        vqmediaplayer->removePropertyWatch(name_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnRemovePropertyWatch(QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = dynamic_cast<VirtualQMediaPlayer*>(self)) {
        vqmediaplayer->setQMediaPlayer_RemovePropertyWatch_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_RemovePropertyWatch_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QMediaPlayer_Sender(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        return vqmediaplayer->sender();
    } else {
        return vqmediaplayer->sender();
    }
}

// Base class handler implementation
QObject* QMediaPlayer_QBaseSender(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_Sender_IsBase(true);
        return vqmediaplayer->sender();
    } else {
        return vqmediaplayer->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnSender(const QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_Sender_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QMediaPlayer_SenderSignalIndex(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        return vqmediaplayer->senderSignalIndex();
    } else {
        return vqmediaplayer->senderSignalIndex();
    }
}

// Base class handler implementation
int QMediaPlayer_QBaseSenderSignalIndex(const QMediaPlayer* self) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_SenderSignalIndex_IsBase(true);
        return vqmediaplayer->senderSignalIndex();
    } else {
        return vqmediaplayer->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnSenderSignalIndex(const QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_SenderSignalIndex_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QMediaPlayer_Receivers(const QMediaPlayer* self, const char* signal) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        return vqmediaplayer->receivers(signal);
    } else {
        return vqmediaplayer->receivers(signal);
    }
}

// Base class handler implementation
int QMediaPlayer_QBaseReceivers(const QMediaPlayer* self, const char* signal) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_Receivers_IsBase(true);
        return vqmediaplayer->receivers(signal);
    } else {
        return vqmediaplayer->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnReceivers(const QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_Receivers_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlayer_IsSignalConnected(const QMediaPlayer* self, QMetaMethod* signal) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        return vqmediaplayer->isSignalConnected(*signal);
    } else {
        return vqmediaplayer->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QMediaPlayer_QBaseIsSignalConnected(const QMediaPlayer* self, QMetaMethod* signal) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_IsSignalConnected_IsBase(true);
        return vqmediaplayer->isSignalConnected(*signal);
    } else {
        return vqmediaplayer->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlayer_OnIsSignalConnected(const QMediaPlayer* self, intptr_t slot) {
    if (auto* vqmediaplayer = const_cast<VirtualQMediaPlayer*>(dynamic_cast<const VirtualQMediaPlayer*>(self))) {
        vqmediaplayer->setQMediaPlayer_IsSignalConnected_Callback(reinterpret_cast<VirtualQMediaPlayer::QMediaPlayer_IsSignalConnected_Callback>(slot));
    }
}

void QMediaPlayer_Delete(QMediaPlayer* self) {
    delete self;
}
