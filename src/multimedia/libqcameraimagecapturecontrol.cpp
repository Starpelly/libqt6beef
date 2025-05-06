#include <QByteArray>
#include <QCameraImageCaptureControl>
#include <QChildEvent>
#include <QEvent>
#include <QImage>
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
#include <QVideoFrame>
#include <qcameraimagecapturecontrol.h>
#include "libqcameraimagecapturecontrol.h"
#include "libqcameraimagecapturecontrol.hxx"

QMetaObject* QCameraImageCaptureControl_MetaObject(const QCameraImageCaptureControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraImageCaptureControl_Metacast(QCameraImageCaptureControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraImageCaptureControl_Metacall(QCameraImageCaptureControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraImageCaptureControl_Tr(const char* s) {
    QString _ret = QCameraImageCaptureControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageCaptureControl_TrUtf8(const char* s) {
    QString _ret = QCameraImageCaptureControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraImageCaptureControl_IsReadyForCapture(const QCameraImageCaptureControl* self) {
    return self->isReadyForCapture();
}

int QCameraImageCaptureControl_DriveMode(const QCameraImageCaptureControl* self) {
    return static_cast<int>(self->driveMode());
}

void QCameraImageCaptureControl_SetDriveMode(QCameraImageCaptureControl* self, int mode) {
    self->setDriveMode(static_cast<QCameraImageCapture::DriveMode>(mode));
}

int QCameraImageCaptureControl_Capture(QCameraImageCaptureControl* self, libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    return self->capture(fileName_QString);
}

void QCameraImageCaptureControl_CancelCapture(QCameraImageCaptureControl* self) {
    self->cancelCapture();
}

void QCameraImageCaptureControl_ReadyForCaptureChanged(QCameraImageCaptureControl* self, bool ready) {
    self->readyForCaptureChanged(ready);
}

void QCameraImageCaptureControl_Connect_ReadyForCaptureChanged(QCameraImageCaptureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCaptureControl*, bool) = reinterpret_cast<void (*)(QCameraImageCaptureControl*, bool)>(slot);
    QCameraImageCaptureControl::connect(self, &QCameraImageCaptureControl::readyForCaptureChanged, [self, slotFunc](bool ready) {
        bool sigval1 = ready;
        slotFunc(self, sigval1);
    });
}

void QCameraImageCaptureControl_ImageExposed(QCameraImageCaptureControl* self, int requestId) {
    self->imageExposed(static_cast<int>(requestId));
}

void QCameraImageCaptureControl_Connect_ImageExposed(QCameraImageCaptureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCaptureControl*, int) = reinterpret_cast<void (*)(QCameraImageCaptureControl*, int)>(slot);
    QCameraImageCaptureControl::connect(self, &QCameraImageCaptureControl::imageExposed, [self, slotFunc](int requestId) {
        int sigval1 = requestId;
        slotFunc(self, sigval1);
    });
}

void QCameraImageCaptureControl_ImageCaptured(QCameraImageCaptureControl* self, int requestId, QImage* preview) {
    self->imageCaptured(static_cast<int>(requestId), *preview);
}

void QCameraImageCaptureControl_Connect_ImageCaptured(QCameraImageCaptureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCaptureControl*, int, QImage*) = reinterpret_cast<void (*)(QCameraImageCaptureControl*, int, QImage*)>(slot);
    QCameraImageCaptureControl::connect(self, &QCameraImageCaptureControl::imageCaptured, [self, slotFunc](int requestId, const QImage& preview) {
        int sigval1 = requestId;
        const QImage& preview_ret = preview;
        // Cast returned reference into pointer
        QImage* sigval2 = const_cast<QImage*>(&preview_ret);
        slotFunc(self, sigval1, sigval2);
    });
}

void QCameraImageCaptureControl_ImageMetadataAvailable(QCameraImageCaptureControl* self, int id, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->imageMetadataAvailable(static_cast<int>(id), key_QString, *value);
}

void QCameraImageCaptureControl_Connect_ImageMetadataAvailable(QCameraImageCaptureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCaptureControl*, int, libqt_string, QVariant*) = reinterpret_cast<void (*)(QCameraImageCaptureControl*, int, libqt_string, QVariant*)>(slot);
    QCameraImageCaptureControl::connect(self, &QCameraImageCaptureControl::imageMetadataAvailable, [self, slotFunc](int id, const QString& key, const QVariant& value) {
        int sigval1 = id;
        const QString key_ret = key;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray key_b = key_ret.toUtf8();
        libqt_string key_str;
        key_str.len = key_b.length();
        key_str.data = static_cast<char*>(malloc((key_str.len + 1) * sizeof(char)));
        memcpy(key_str.data, key_b.data(), key_str.len);
        key_str.data[key_str.len] = '\0';
        libqt_string sigval2 = key_str;
        const QVariant& value_ret = value;
        // Cast returned reference into pointer
        QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
        slotFunc(self, sigval1, sigval2, sigval3);
    });
}

void QCameraImageCaptureControl_ImageAvailable(QCameraImageCaptureControl* self, int requestId, QVideoFrame* buffer) {
    self->imageAvailable(static_cast<int>(requestId), *buffer);
}

void QCameraImageCaptureControl_Connect_ImageAvailable(QCameraImageCaptureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCaptureControl*, int, QVideoFrame*) = reinterpret_cast<void (*)(QCameraImageCaptureControl*, int, QVideoFrame*)>(slot);
    QCameraImageCaptureControl::connect(self, &QCameraImageCaptureControl::imageAvailable, [self, slotFunc](int requestId, const QVideoFrame& buffer) {
        int sigval1 = requestId;
        const QVideoFrame& buffer_ret = buffer;
        // Cast returned reference into pointer
        QVideoFrame* sigval2 = const_cast<QVideoFrame*>(&buffer_ret);
        slotFunc(self, sigval1, sigval2);
    });
}

void QCameraImageCaptureControl_ImageSaved(QCameraImageCaptureControl* self, int requestId, libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    self->imageSaved(static_cast<int>(requestId), fileName_QString);
}

void QCameraImageCaptureControl_Connect_ImageSaved(QCameraImageCaptureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCaptureControl*, int, libqt_string) = reinterpret_cast<void (*)(QCameraImageCaptureControl*, int, libqt_string)>(slot);
    QCameraImageCaptureControl::connect(self, &QCameraImageCaptureControl::imageSaved, [self, slotFunc](int requestId, const QString& fileName) {
        int sigval1 = requestId;
        const QString fileName_ret = fileName;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray fileName_b = fileName_ret.toUtf8();
        libqt_string fileName_str;
        fileName_str.len = fileName_b.length();
        fileName_str.data = static_cast<char*>(malloc((fileName_str.len + 1) * sizeof(char)));
        memcpy(fileName_str.data, fileName_b.data(), fileName_str.len);
        fileName_str.data[fileName_str.len] = '\0';
        libqt_string sigval2 = fileName_str;
        slotFunc(self, sigval1, sigval2);
    });
}

void QCameraImageCaptureControl_Error(QCameraImageCaptureControl* self, int id, int errorVal, libqt_string errorString) {
    QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
    self->error(static_cast<int>(id), static_cast<int>(errorVal), errorString_QString);
}

void QCameraImageCaptureControl_Connect_Error(QCameraImageCaptureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCaptureControl*, int, int, libqt_string) = reinterpret_cast<void (*)(QCameraImageCaptureControl*, int, int, libqt_string)>(slot);
    QCameraImageCaptureControl::connect(self, &QCameraImageCaptureControl::error, [self, slotFunc](int id, int errorVal, const QString& errorString) {
        int sigval1 = id;
        int sigval2 = errorVal;
        const QString errorString_ret = errorString;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray errorString_b = errorString_ret.toUtf8();
        libqt_string errorString_str;
        errorString_str.len = errorString_b.length();
        errorString_str.data = static_cast<char*>(malloc((errorString_str.len + 1) * sizeof(char)));
        memcpy(errorString_str.data, errorString_b.data(), errorString_str.len);
        errorString_str.data[errorString_str.len] = '\0';
        libqt_string sigval3 = errorString_str;
        slotFunc(self, sigval1, sigval2, sigval3);
    });
}

libqt_string QCameraImageCaptureControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraImageCaptureControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageCaptureControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraImageCaptureControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageCaptureControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraImageCaptureControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageCaptureControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraImageCaptureControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraImageCaptureControl_Event(QCameraImageCaptureControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraImageCaptureControl_EventFilter(QCameraImageCaptureControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraImageCaptureControl_Delete(QCameraImageCaptureControl* self) {
    delete self;
}
