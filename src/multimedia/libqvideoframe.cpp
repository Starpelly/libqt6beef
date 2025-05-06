#include <QImage>
#include <QMap>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QVideoFrame>
#include <qvideoframe.h>
#include "libqvideoframe.h"
#include "libqvideoframe.hxx"

QVideoFrame* QVideoFrame_new() {
    return new QVideoFrame();
}

QVideoFrame* QVideoFrame_new2(int bytes, QSize* size, int bytesPerLine, int format) {
    return new QVideoFrame(static_cast<int>(bytes), *size, static_cast<int>(bytesPerLine), static_cast<QVideoFrame::PixelFormat>(format));
}

QVideoFrame* QVideoFrame_new3(QImage* image) {
    return new QVideoFrame(*image);
}

QVideoFrame* QVideoFrame_new4(QVideoFrame* other) {
    return new QVideoFrame(*other);
}

void QVideoFrame_OperatorAssign(QVideoFrame* self, QVideoFrame* other) {
    self->operator=(*other);
}

bool QVideoFrame_OperatorEqual(const QVideoFrame* self, QVideoFrame* other) {
    return (*self == *other);
}

bool QVideoFrame_OperatorNotEqual(const QVideoFrame* self, QVideoFrame* other) {
    return (*self != *other);
}

bool QVideoFrame_IsValid(const QVideoFrame* self) {
    return self->isValid();
}

int QVideoFrame_PixelFormat(const QVideoFrame* self) {
    return static_cast<int>(self->pixelFormat());
}

int QVideoFrame_HandleType(const QVideoFrame* self) {
    return static_cast<int>(self->handleType());
}

QSize* QVideoFrame_Size(const QVideoFrame* self) {
    return new QSize(self->size());
}

int QVideoFrame_Width(const QVideoFrame* self) {
    return self->width();
}

int QVideoFrame_Height(const QVideoFrame* self) {
    return self->height();
}

int QVideoFrame_FieldType(const QVideoFrame* self) {
    return static_cast<int>(self->fieldType());
}

void QVideoFrame_SetFieldType(QVideoFrame* self, int fieldType) {
    self->setFieldType(static_cast<QVideoFrame::FieldType>(fieldType));
}

bool QVideoFrame_IsMapped(const QVideoFrame* self) {
    return self->isMapped();
}

bool QVideoFrame_IsReadable(const QVideoFrame* self) {
    return self->isReadable();
}

bool QVideoFrame_IsWritable(const QVideoFrame* self) {
    return self->isWritable();
}

int QVideoFrame_MapMode(const QVideoFrame* self) {
    return static_cast<int>(self->mapMode());
}

bool QVideoFrame_Map(QVideoFrame* self, int mode) {
    return self->map(static_cast<QAbstractVideoBuffer::MapMode>(mode));
}

void QVideoFrame_Unmap(QVideoFrame* self) {
    self->unmap();
}

int QVideoFrame_BytesPerLine(const QVideoFrame* self) {
    return self->bytesPerLine();
}

int QVideoFrame_BytesPerLineWithPlane(const QVideoFrame* self, int plane) {
    return self->bytesPerLine(static_cast<int>(plane));
}

unsigned char* QVideoFrame_Bits(QVideoFrame* self) {
    return static_cast<unsigned char*>(self->bits());
}

unsigned char* QVideoFrame_BitsWithPlane(QVideoFrame* self, int plane) {
    return static_cast<unsigned char*>(self->bits(static_cast<int>(plane)));
}

const unsigned char* QVideoFrame_Bits2(const QVideoFrame* self) {
    return static_cast<const unsigned char*>(self->bits());
}

const unsigned char* QVideoFrame_Bits3(const QVideoFrame* self, int plane) {
    return static_cast<const unsigned char*>(self->bits(static_cast<int>(plane)));
}

int QVideoFrame_MappedBytes(const QVideoFrame* self) {
    return self->mappedBytes();
}

int QVideoFrame_PlaneCount(const QVideoFrame* self) {
    return self->planeCount();
}

QVariant* QVideoFrame_Handle(const QVideoFrame* self) {
    return new QVariant(self->handle());
}

long long QVideoFrame_StartTime(const QVideoFrame* self) {
    return static_cast<long long>(self->startTime());
}

void QVideoFrame_SetStartTime(QVideoFrame* self, long long time) {
    self->setStartTime(static_cast<qint64>(time));
}

long long QVideoFrame_EndTime(const QVideoFrame* self) {
    return static_cast<long long>(self->endTime());
}

void QVideoFrame_SetEndTime(QVideoFrame* self, long long time) {
    self->setEndTime(static_cast<qint64>(time));
}

libqt_map /* of libqt_string to QVariant* */ QVideoFrame_AvailableMetaData(const QVideoFrame* self) {
    QVariantMap _ret = self->availableMetaData();
    // Convert QMap<> from C++ memory to manually-managed C memory
    libqt_string* _karr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.size()));
    QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
    int _ctr = 0;
    for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
        QString _mapkey_ret = _itr->first;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _mapkey_b = _mapkey_ret.toUtf8();
        libqt_string _mapkey_str;
        _mapkey_str.len = _mapkey_b.length();
        _mapkey_str.data = static_cast<char*>(malloc((_mapkey_str.len + 1) * sizeof(char)));
        memcpy(_mapkey_str.data, _mapkey_b.data(), _mapkey_str.len);
        _mapkey_str.data[_mapkey_str.len] = '\0';
        _karr[_ctr] = _mapkey_str;
        _varr[_ctr] = new QVariant(_itr->second);
        _ctr++;
    }
    libqt_map _out;
    _out.len = _ret.size();
    _out.keys = static_cast<void*>(_karr);
    _out.values = static_cast<void*>(_varr);
    return _out;
}

QVariant* QVideoFrame_MetaData(const QVideoFrame* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QVariant(self->metaData(key_QString));
}

void QVideoFrame_SetMetaData(QVideoFrame* self, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->setMetaData(key_QString, *value);
}

QImage* QVideoFrame_Image(const QVideoFrame* self) {
    return new QImage(self->image());
}

int QVideoFrame_PixelFormatFromImageFormat(int format) {
    return static_cast<int>(QVideoFrame::pixelFormatFromImageFormat(static_cast<QImage::Format>(format)));
}

int QVideoFrame_ImageFormatFromPixelFormat(int format) {
    return static_cast<int>(QVideoFrame::imageFormatFromPixelFormat(static_cast<QVideoFrame::PixelFormat>(format)));
}

void QVideoFrame_Delete(QVideoFrame* self) {
    delete self;
}
