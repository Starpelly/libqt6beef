#include <QByteArray>
#include <QList>
#include <QRect>
#include <QSize>
#include <QVariant>
#include <QVideoSurfaceFormat>
#include <qvideosurfaceformat.h>
#include "libqvideosurfaceformat.h"
#include "libqvideosurfaceformat.hxx"

QVideoSurfaceFormat* QVideoSurfaceFormat_new() {
    return new QVideoSurfaceFormat();
}

QVideoSurfaceFormat* QVideoSurfaceFormat_new2(QSize* size, int pixelFormat) {
    return new QVideoSurfaceFormat(*size, static_cast<QVideoFrame::PixelFormat>(pixelFormat));
}

QVideoSurfaceFormat* QVideoSurfaceFormat_new3(QVideoSurfaceFormat* format) {
    return new QVideoSurfaceFormat(*format);
}

QVideoSurfaceFormat* QVideoSurfaceFormat_new4(QSize* size, int pixelFormat, int handleType) {
    return new QVideoSurfaceFormat(*size, static_cast<QVideoFrame::PixelFormat>(pixelFormat), static_cast<QAbstractVideoBuffer::HandleType>(handleType));
}

void QVideoSurfaceFormat_OperatorAssign(QVideoSurfaceFormat* self, QVideoSurfaceFormat* format) {
    self->operator=(*format);
}

bool QVideoSurfaceFormat_OperatorEqual(const QVideoSurfaceFormat* self, QVideoSurfaceFormat* format) {
    return (*self == *format);
}

bool QVideoSurfaceFormat_OperatorNotEqual(const QVideoSurfaceFormat* self, QVideoSurfaceFormat* format) {
    return (*self != *format);
}

bool QVideoSurfaceFormat_IsValid(const QVideoSurfaceFormat* self) {
    return self->isValid();
}

int QVideoSurfaceFormat_PixelFormat(const QVideoSurfaceFormat* self) {
    return static_cast<int>(self->pixelFormat());
}

int QVideoSurfaceFormat_HandleType(const QVideoSurfaceFormat* self) {
    return static_cast<int>(self->handleType());
}

QSize* QVideoSurfaceFormat_FrameSize(const QVideoSurfaceFormat* self) {
    return new QSize(self->frameSize());
}

void QVideoSurfaceFormat_SetFrameSize(QVideoSurfaceFormat* self, QSize* size) {
    self->setFrameSize(*size);
}

void QVideoSurfaceFormat_SetFrameSize2(QVideoSurfaceFormat* self, int width, int height) {
    self->setFrameSize(static_cast<int>(width), static_cast<int>(height));
}

int QVideoSurfaceFormat_FrameWidth(const QVideoSurfaceFormat* self) {
    return self->frameWidth();
}

int QVideoSurfaceFormat_FrameHeight(const QVideoSurfaceFormat* self) {
    return self->frameHeight();
}

QRect* QVideoSurfaceFormat_Viewport(const QVideoSurfaceFormat* self) {
    return new QRect(self->viewport());
}

void QVideoSurfaceFormat_SetViewport(QVideoSurfaceFormat* self, QRect* viewport) {
    self->setViewport(*viewport);
}

int QVideoSurfaceFormat_ScanLineDirection(const QVideoSurfaceFormat* self) {
    return static_cast<int>(self->scanLineDirection());
}

void QVideoSurfaceFormat_SetScanLineDirection(QVideoSurfaceFormat* self, int direction) {
    self->setScanLineDirection(static_cast<QVideoSurfaceFormat::Direction>(direction));
}

double QVideoSurfaceFormat_FrameRate(const QVideoSurfaceFormat* self) {
    return static_cast<double>(self->frameRate());
}

void QVideoSurfaceFormat_SetFrameRate(QVideoSurfaceFormat* self, double rate) {
    self->setFrameRate(static_cast<qreal>(rate));
}

QSize* QVideoSurfaceFormat_PixelAspectRatio(const QVideoSurfaceFormat* self) {
    return new QSize(self->pixelAspectRatio());
}

void QVideoSurfaceFormat_SetPixelAspectRatio(QVideoSurfaceFormat* self, QSize* ratio) {
    self->setPixelAspectRatio(*ratio);
}

void QVideoSurfaceFormat_SetPixelAspectRatio2(QVideoSurfaceFormat* self, int width, int height) {
    self->setPixelAspectRatio(static_cast<int>(width), static_cast<int>(height));
}

int QVideoSurfaceFormat_YCbCrColorSpace(const QVideoSurfaceFormat* self) {
    return static_cast<int>(self->yCbCrColorSpace());
}

void QVideoSurfaceFormat_SetYCbCrColorSpace(QVideoSurfaceFormat* self, int colorSpace) {
    self->setYCbCrColorSpace(static_cast<QVideoSurfaceFormat::YCbCrColorSpace>(colorSpace));
}

bool QVideoSurfaceFormat_IsMirrored(const QVideoSurfaceFormat* self) {
    return self->isMirrored();
}

void QVideoSurfaceFormat_SetMirrored(QVideoSurfaceFormat* self, bool mirrored) {
    self->setMirrored(mirrored);
}

QSize* QVideoSurfaceFormat_SizeHint(const QVideoSurfaceFormat* self) {
    return new QSize(self->sizeHint());
}

libqt_list /* of libqt_string */ QVideoSurfaceFormat_PropertyNames(const QVideoSurfaceFormat* self) {
    QList<QByteArray> _ret = self->propertyNames();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QByteArray _lv_qb = _ret[i];
        libqt_string _lv_str;
        _lv_str.len = _lv_qb.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_qb.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QVariant* QVideoSurfaceFormat_Property(const QVideoSurfaceFormat* self, const char* name) {
    return new QVariant(self->property(name));
}

void QVideoSurfaceFormat_SetProperty(QVideoSurfaceFormat* self, const char* name, QVariant* value) {
    self->setProperty(name, *value);
}

void QVideoSurfaceFormat_Delete(QVideoSurfaceFormat* self) {
    delete self;
}
