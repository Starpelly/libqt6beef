#include <QAudioFormat>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qaudioformat.h>
#include "libqaudioformat.h"
#include "libqaudioformat.hxx"

QAudioFormat* QAudioFormat_new() {
    return new QAudioFormat();
}

QAudioFormat* QAudioFormat_new2(QAudioFormat* other) {
    return new QAudioFormat(*other);
}

void QAudioFormat_OperatorAssign(QAudioFormat* self, QAudioFormat* other) {
    self->operator=(*other);
}

bool QAudioFormat_OperatorEqual(const QAudioFormat* self, QAudioFormat* other) {
    return (*self == *other);
}

bool QAudioFormat_OperatorNotEqual(const QAudioFormat* self, QAudioFormat* other) {
    return (*self != *other);
}

bool QAudioFormat_IsValid(const QAudioFormat* self) {
    return self->isValid();
}

void QAudioFormat_SetSampleRate(QAudioFormat* self, int sampleRate) {
    self->setSampleRate(static_cast<int>(sampleRate));
}

int QAudioFormat_SampleRate(const QAudioFormat* self) {
    return self->sampleRate();
}

void QAudioFormat_SetChannelCount(QAudioFormat* self, int channelCount) {
    self->setChannelCount(static_cast<int>(channelCount));
}

int QAudioFormat_ChannelCount(const QAudioFormat* self) {
    return self->channelCount();
}

void QAudioFormat_SetSampleSize(QAudioFormat* self, int sampleSize) {
    self->setSampleSize(static_cast<int>(sampleSize));
}

int QAudioFormat_SampleSize(const QAudioFormat* self) {
    return self->sampleSize();
}

void QAudioFormat_SetCodec(QAudioFormat* self, libqt_string codec) {
    QString codec_QString = QString::fromUtf8(codec.data, codec.len);
    self->setCodec(codec_QString);
}

libqt_string QAudioFormat_Codec(const QAudioFormat* self) {
    QString _ret = self->codec();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QAudioFormat_SetByteOrder(QAudioFormat* self, int byteOrder) {
    self->setByteOrder(static_cast<QAudioFormat::Endian>(byteOrder));
}

int QAudioFormat_ByteOrder(const QAudioFormat* self) {
    return static_cast<int>(self->byteOrder());
}

void QAudioFormat_SetSampleType(QAudioFormat* self, int sampleType) {
    self->setSampleType(static_cast<QAudioFormat::SampleType>(sampleType));
}

int QAudioFormat_SampleType(const QAudioFormat* self) {
    return static_cast<int>(self->sampleType());
}

int QAudioFormat_BytesForDuration(const QAudioFormat* self, long long duration) {
    return static_cast<int>(self->bytesForDuration(static_cast<qint64>(duration)));
}

long long QAudioFormat_DurationForBytes(const QAudioFormat* self, int byteCount) {
    return static_cast<long long>(self->durationForBytes(static_cast<qint32>(byteCount)));
}

int QAudioFormat_BytesForFrames(const QAudioFormat* self, int frameCount) {
    return static_cast<int>(self->bytesForFrames(static_cast<qint32>(frameCount)));
}

int QAudioFormat_FramesForBytes(const QAudioFormat* self, int byteCount) {
    return static_cast<int>(self->framesForBytes(static_cast<qint32>(byteCount)));
}

int QAudioFormat_FramesForDuration(const QAudioFormat* self, long long duration) {
    return static_cast<int>(self->framesForDuration(static_cast<qint64>(duration)));
}

long long QAudioFormat_DurationForFrames(const QAudioFormat* self, int frameCount) {
    return static_cast<long long>(self->durationForFrames(static_cast<qint32>(frameCount)));
}

int QAudioFormat_BytesPerFrame(const QAudioFormat* self) {
    return self->bytesPerFrame();
}

void QAudioFormat_Delete(QAudioFormat* self) {
    delete self;
}
