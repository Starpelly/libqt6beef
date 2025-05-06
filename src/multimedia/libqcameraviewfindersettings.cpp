#include <QCameraViewfinderSettings>
#include <QSize>
#include <qcameraviewfindersettings.h>
#include "libqcameraviewfindersettings.h"
#include "libqcameraviewfindersettings.hxx"

QCameraViewfinderSettings* QCameraViewfinderSettings_new() {
    return new QCameraViewfinderSettings();
}

QCameraViewfinderSettings* QCameraViewfinderSettings_new2(QCameraViewfinderSettings* other) {
    return new QCameraViewfinderSettings(*other);
}

void QCameraViewfinderSettings_OperatorAssign(QCameraViewfinderSettings* self, QCameraViewfinderSettings* other) {
    self->operator=(*other);
}

void QCameraViewfinderSettings_Swap(QCameraViewfinderSettings* self, QCameraViewfinderSettings* other) {
    self->swap(*other);
}

bool QCameraViewfinderSettings_IsNull(const QCameraViewfinderSettings* self) {
    return self->isNull();
}

QSize* QCameraViewfinderSettings_Resolution(const QCameraViewfinderSettings* self) {
    return new QSize(self->resolution());
}

void QCameraViewfinderSettings_SetResolution(QCameraViewfinderSettings* self, QSize* resolution) {
    self->setResolution(*resolution);
}

void QCameraViewfinderSettings_SetResolution2(QCameraViewfinderSettings* self, int width, int height) {
    self->setResolution(static_cast<int>(width), static_cast<int>(height));
}

double QCameraViewfinderSettings_MinimumFrameRate(const QCameraViewfinderSettings* self) {
    return static_cast<double>(self->minimumFrameRate());
}

void QCameraViewfinderSettings_SetMinimumFrameRate(QCameraViewfinderSettings* self, double rate) {
    self->setMinimumFrameRate(static_cast<qreal>(rate));
}

double QCameraViewfinderSettings_MaximumFrameRate(const QCameraViewfinderSettings* self) {
    return static_cast<double>(self->maximumFrameRate());
}

void QCameraViewfinderSettings_SetMaximumFrameRate(QCameraViewfinderSettings* self, double rate) {
    self->setMaximumFrameRate(static_cast<qreal>(rate));
}

int QCameraViewfinderSettings_PixelFormat(const QCameraViewfinderSettings* self) {
    return static_cast<int>(self->pixelFormat());
}

void QCameraViewfinderSettings_SetPixelFormat(QCameraViewfinderSettings* self, int format) {
    self->setPixelFormat(static_cast<QVideoFrame::PixelFormat>(format));
}

QSize* QCameraViewfinderSettings_PixelAspectRatio(const QCameraViewfinderSettings* self) {
    return new QSize(self->pixelAspectRatio());
}

void QCameraViewfinderSettings_SetPixelAspectRatio(QCameraViewfinderSettings* self, QSize* ratio) {
    self->setPixelAspectRatio(*ratio);
}

void QCameraViewfinderSettings_SetPixelAspectRatio2(QCameraViewfinderSettings* self, int horizontal, int vertical) {
    self->setPixelAspectRatio(static_cast<int>(horizontal), static_cast<int>(vertical));
}

void QCameraViewfinderSettings_Delete(QCameraViewfinderSettings* self) {
    delete self;
}
