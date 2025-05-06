#include <QByteArray>
#include <QCameraImageCapture>
#include <QChildEvent>
#include <QEvent>
#include <QImage>
#include <QImageEncoderSettings>
#include <QList>
#include <QMediaBindableInterface>
#include <QMediaObject>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <QVideoFrame>
#include <qcameraimagecapture.h>
#include "libqcameraimagecapture.h"
#include "libqcameraimagecapture.hxx"

QCameraImageCapture* QCameraImageCapture_new(QMediaObject* mediaObject) {
    return new VirtualQCameraImageCapture(mediaObject);
}

QCameraImageCapture* QCameraImageCapture_new2(QMediaObject* mediaObject, QObject* parent) {
    return new VirtualQCameraImageCapture(mediaObject, parent);
}

QMetaObject* QCameraImageCapture_MetaObject(const QCameraImageCapture* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraImageCapture_Metacast(QCameraImageCapture* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraImageCapture_Metacall(QCameraImageCapture* self, int param1, int param2, void** param3) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QCameraImageCapture_OnMetacall(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_Metacall_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QCameraImageCapture_QBaseMetacall(QCameraImageCapture* self, int param1, int param2, void** param3) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_Metacall_IsBase(true);
        return vqcameraimagecapture->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QCameraImageCapture_Tr(const char* s) {
    QString _ret = QCameraImageCapture::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageCapture_TrUtf8(const char* s) {
    QString _ret = QCameraImageCapture::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraImageCapture_IsAvailable(const QCameraImageCapture* self) {
    return self->isAvailable();
}

int QCameraImageCapture_Availability(const QCameraImageCapture* self) {
    return static_cast<int>(self->availability());
}

int QCameraImageCapture_Error(const QCameraImageCapture* self) {
    return static_cast<int>(self->error());
}

libqt_string QCameraImageCapture_ErrorString(const QCameraImageCapture* self) {
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

bool QCameraImageCapture_IsReadyForCapture(const QCameraImageCapture* self) {
    return self->isReadyForCapture();
}

libqt_list /* of libqt_string */ QCameraImageCapture_SupportedImageCodecs(const QCameraImageCapture* self) {
    QStringList _ret = self->supportedImageCodecs();
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

libqt_string QCameraImageCapture_ImageCodecDescription(const QCameraImageCapture* self, libqt_string codecName) {
    QString codecName_QString = QString::fromUtf8(codecName.data, codecName.len);
    QString _ret = self->imageCodecDescription(codecName_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of QSize* */ QCameraImageCapture_SupportedResolutions(const QCameraImageCapture* self) {
    QList<QSize> _ret = self->supportedResolutions();
    // Convert QList<> from C++ memory to manually-managed C memory
    QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QSize(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QImageEncoderSettings* QCameraImageCapture_EncodingSettings(const QCameraImageCapture* self) {
    return new QImageEncoderSettings(self->encodingSettings());
}

void QCameraImageCapture_SetEncodingSettings(QCameraImageCapture* self, QImageEncoderSettings* settings) {
    self->setEncodingSettings(*settings);
}

libqt_list /* of int */ QCameraImageCapture_SupportedBufferFormats(const QCameraImageCapture* self) {
    QList<QVideoFrame::PixelFormat> _ret = self->supportedBufferFormats();
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

int QCameraImageCapture_BufferFormat(const QCameraImageCapture* self) {
    return static_cast<int>(self->bufferFormat());
}

void QCameraImageCapture_SetBufferFormat(QCameraImageCapture* self, int format) {
    self->setBufferFormat(static_cast<const QVideoFrame::PixelFormat>(format));
}

bool QCameraImageCapture_IsCaptureDestinationSupported(const QCameraImageCapture* self, int destination) {
    return self->isCaptureDestinationSupported(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

int QCameraImageCapture_CaptureDestination(const QCameraImageCapture* self) {
    return static_cast<int>(self->captureDestination());
}

void QCameraImageCapture_SetCaptureDestination(QCameraImageCapture* self, int destination) {
    self->setCaptureDestination(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

int QCameraImageCapture_Capture(QCameraImageCapture* self) {
    return self->capture();
}

void QCameraImageCapture_CancelCapture(QCameraImageCapture* self) {
    self->cancelCapture();
}

void QCameraImageCapture_Error2(QCameraImageCapture* self, int id, int errorVal, libqt_string errorString) {
    QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
    self->error(static_cast<int>(id), static_cast<QCameraImageCapture::Error>(errorVal), errorString_QString);
}

void QCameraImageCapture_Connect_Error2(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, int, int, libqt_string) = reinterpret_cast<void (*)(QCameraImageCapture*, int, int, libqt_string)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::error, [self, slotFunc](int id, QCameraImageCapture::Error errorVal, const QString& errorString) {
        int sigval1 = id;
        int sigval2 = static_cast<int>(errorVal);
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

void QCameraImageCapture_ReadyForCaptureChanged(QCameraImageCapture* self, bool ready) {
    self->readyForCaptureChanged(ready);
}

void QCameraImageCapture_Connect_ReadyForCaptureChanged(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, bool) = reinterpret_cast<void (*)(QCameraImageCapture*, bool)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::readyForCaptureChanged, [self, slotFunc](bool ready) {
        bool sigval1 = ready;
        slotFunc(self, sigval1);
    });
}

void QCameraImageCapture_BufferFormatChanged(QCameraImageCapture* self, int format) {
    self->bufferFormatChanged(static_cast<QVideoFrame::PixelFormat>(format));
}

void QCameraImageCapture_Connect_BufferFormatChanged(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, int) = reinterpret_cast<void (*)(QCameraImageCapture*, int)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::bufferFormatChanged, [self, slotFunc](QVideoFrame::PixelFormat format) {
        int sigval1 = static_cast<int>(format);
        slotFunc(self, sigval1);
    });
}

void QCameraImageCapture_CaptureDestinationChanged(QCameraImageCapture* self, int destination) {
    self->captureDestinationChanged(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

void QCameraImageCapture_Connect_CaptureDestinationChanged(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, int) = reinterpret_cast<void (*)(QCameraImageCapture*, int)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::captureDestinationChanged, [self, slotFunc](QCameraImageCapture::CaptureDestinations destination) {
        int sigval1 = static_cast<int>(destination);
        slotFunc(self, sigval1);
    });
}

void QCameraImageCapture_ImageExposed(QCameraImageCapture* self, int id) {
    self->imageExposed(static_cast<int>(id));
}

void QCameraImageCapture_Connect_ImageExposed(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, int) = reinterpret_cast<void (*)(QCameraImageCapture*, int)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::imageExposed, [self, slotFunc](int id) {
        int sigval1 = id;
        slotFunc(self, sigval1);
    });
}

void QCameraImageCapture_ImageCaptured(QCameraImageCapture* self, int id, QImage* preview) {
    self->imageCaptured(static_cast<int>(id), *preview);
}

void QCameraImageCapture_Connect_ImageCaptured(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, int, QImage*) = reinterpret_cast<void (*)(QCameraImageCapture*, int, QImage*)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::imageCaptured, [self, slotFunc](int id, const QImage& preview) {
        int sigval1 = id;
        const QImage& preview_ret = preview;
        // Cast returned reference into pointer
        QImage* sigval2 = const_cast<QImage*>(&preview_ret);
        slotFunc(self, sigval1, sigval2);
    });
}

void QCameraImageCapture_ImageMetadataAvailable(QCameraImageCapture* self, int id, libqt_string key, QVariant* value) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    self->imageMetadataAvailable(static_cast<int>(id), key_QString, *value);
}

void QCameraImageCapture_Connect_ImageMetadataAvailable(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, int, libqt_string, QVariant*) = reinterpret_cast<void (*)(QCameraImageCapture*, int, libqt_string, QVariant*)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::imageMetadataAvailable, [self, slotFunc](int id, const QString& key, const QVariant& value) {
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

void QCameraImageCapture_ImageAvailable(QCameraImageCapture* self, int id, QVideoFrame* frame) {
    self->imageAvailable(static_cast<int>(id), *frame);
}

void QCameraImageCapture_Connect_ImageAvailable(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, int, QVideoFrame*) = reinterpret_cast<void (*)(QCameraImageCapture*, int, QVideoFrame*)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::imageAvailable, [self, slotFunc](int id, const QVideoFrame& frame) {
        int sigval1 = id;
        const QVideoFrame& frame_ret = frame;
        // Cast returned reference into pointer
        QVideoFrame* sigval2 = const_cast<QVideoFrame*>(&frame_ret);
        slotFunc(self, sigval1, sigval2);
    });
}

void QCameraImageCapture_ImageSaved(QCameraImageCapture* self, int id, libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    self->imageSaved(static_cast<int>(id), fileName_QString);
}

void QCameraImageCapture_Connect_ImageSaved(QCameraImageCapture* self, intptr_t slot) {
    void (*slotFunc)(QCameraImageCapture*, int, libqt_string) = reinterpret_cast<void (*)(QCameraImageCapture*, int, libqt_string)>(slot);
    QCameraImageCapture::connect(self, &QCameraImageCapture::imageSaved, [self, slotFunc](int id, const QString& fileName) {
        int sigval1 = id;
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

libqt_string QCameraImageCapture_Tr2(const char* s, const char* c) {
    QString _ret = QCameraImageCapture::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageCapture_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraImageCapture::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageCapture_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraImageCapture::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageCapture_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraImageCapture::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of QSize* */ QCameraImageCapture_SupportedResolutions1(const QCameraImageCapture* self, QImageEncoderSettings* settings) {
    QList<QSize> _ret = self->supportedResolutions(*settings);
    // Convert QList<> from C++ memory to manually-managed C memory
    QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QSize(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QSize* */ QCameraImageCapture_SupportedResolutions2(const QCameraImageCapture* self, QImageEncoderSettings* settings, bool* continuous) {
    QList<QSize> _ret = self->supportedResolutions(*settings, continuous);
    // Convert QList<> from C++ memory to manually-managed C memory
    QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QSize(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

int QCameraImageCapture_Capture1(QCameraImageCapture* self, libqt_string location) {
    QString location_QString = QString::fromUtf8(location.data, location.len);
    return self->capture(location_QString);
}

// Derived class handler implementation
QMediaObject* QCameraImageCapture_MediaObject(const QCameraImageCapture* self) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        return vqcameraimagecapture->mediaObject();
    } else {
        return vqcameraimagecapture->mediaObject();
    }
}

// Base class handler implementation
QMediaObject* QCameraImageCapture_QBaseMediaObject(const QCameraImageCapture* self) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_MediaObject_IsBase(true);
        return vqcameraimagecapture->mediaObject();
    } else {
        return vqcameraimagecapture->mediaObject();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnMediaObject(const QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_MediaObject_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_MediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraImageCapture_SetMediaObject(QCameraImageCapture* self, QMediaObject* mediaObject) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        return vqcameraimagecapture->setMediaObject(mediaObject);
    } else {
        return vqcameraimagecapture->setMediaObject(mediaObject);
    }
}

// Base class handler implementation
bool QCameraImageCapture_QBaseSetMediaObject(QCameraImageCapture* self, QMediaObject* mediaObject) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_SetMediaObject_IsBase(true);
        return vqcameraimagecapture->setMediaObject(mediaObject);
    } else {
        return vqcameraimagecapture->setMediaObject(mediaObject);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnSetMediaObject(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_SetMediaObject_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_SetMediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraImageCapture_Event(QCameraImageCapture* self, QEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        return vqcameraimagecapture->event(event);
    } else {
        return vqcameraimagecapture->event(event);
    }
}

// Base class handler implementation
bool QCameraImageCapture_QBaseEvent(QCameraImageCapture* self, QEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_Event_IsBase(true);
        return vqcameraimagecapture->event(event);
    } else {
        return vqcameraimagecapture->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnEvent(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_Event_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraImageCapture_EventFilter(QCameraImageCapture* self, QObject* watched, QEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        return vqcameraimagecapture->eventFilter(watched, event);
    } else {
        return vqcameraimagecapture->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QCameraImageCapture_QBaseEventFilter(QCameraImageCapture* self, QObject* watched, QEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_EventFilter_IsBase(true);
        return vqcameraimagecapture->eventFilter(watched, event);
    } else {
        return vqcameraimagecapture->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnEventFilter(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_EventFilter_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraImageCapture_TimerEvent(QCameraImageCapture* self, QTimerEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->timerEvent(event);
    } else {
        vqcameraimagecapture->timerEvent(event);
    }
}

// Base class handler implementation
void QCameraImageCapture_QBaseTimerEvent(QCameraImageCapture* self, QTimerEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_TimerEvent_IsBase(true);
        vqcameraimagecapture->timerEvent(event);
    } else {
        vqcameraimagecapture->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnTimerEvent(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_TimerEvent_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraImageCapture_ChildEvent(QCameraImageCapture* self, QChildEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->childEvent(event);
    } else {
        vqcameraimagecapture->childEvent(event);
    }
}

// Base class handler implementation
void QCameraImageCapture_QBaseChildEvent(QCameraImageCapture* self, QChildEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_ChildEvent_IsBase(true);
        vqcameraimagecapture->childEvent(event);
    } else {
        vqcameraimagecapture->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnChildEvent(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_ChildEvent_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraImageCapture_CustomEvent(QCameraImageCapture* self, QEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->customEvent(event);
    } else {
        vqcameraimagecapture->customEvent(event);
    }
}

// Base class handler implementation
void QCameraImageCapture_QBaseCustomEvent(QCameraImageCapture* self, QEvent* event) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_CustomEvent_IsBase(true);
        vqcameraimagecapture->customEvent(event);
    } else {
        vqcameraimagecapture->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnCustomEvent(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_CustomEvent_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraImageCapture_ConnectNotify(QCameraImageCapture* self, QMetaMethod* signal) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->connectNotify(*signal);
    } else {
        vqcameraimagecapture->connectNotify(*signal);
    }
}

// Base class handler implementation
void QCameraImageCapture_QBaseConnectNotify(QCameraImageCapture* self, QMetaMethod* signal) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_ConnectNotify_IsBase(true);
        vqcameraimagecapture->connectNotify(*signal);
    } else {
        vqcameraimagecapture->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnConnectNotify(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_ConnectNotify_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraImageCapture_DisconnectNotify(QCameraImageCapture* self, QMetaMethod* signal) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->disconnectNotify(*signal);
    } else {
        vqcameraimagecapture->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QCameraImageCapture_QBaseDisconnectNotify(QCameraImageCapture* self, QMetaMethod* signal) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_DisconnectNotify_IsBase(true);
        vqcameraimagecapture->disconnectNotify(*signal);
    } else {
        vqcameraimagecapture->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnDisconnectNotify(QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = dynamic_cast<VirtualQCameraImageCapture*>(self)) {
        vqcameraimagecapture->setQCameraImageCapture_DisconnectNotify_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QCameraImageCapture_Sender(const QCameraImageCapture* self) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        return vqcameraimagecapture->sender();
    } else {
        return vqcameraimagecapture->sender();
    }
}

// Base class handler implementation
QObject* QCameraImageCapture_QBaseSender(const QCameraImageCapture* self) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_Sender_IsBase(true);
        return vqcameraimagecapture->sender();
    } else {
        return vqcameraimagecapture->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnSender(const QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_Sender_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QCameraImageCapture_SenderSignalIndex(const QCameraImageCapture* self) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        return vqcameraimagecapture->senderSignalIndex();
    } else {
        return vqcameraimagecapture->senderSignalIndex();
    }
}

// Base class handler implementation
int QCameraImageCapture_QBaseSenderSignalIndex(const QCameraImageCapture* self) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_SenderSignalIndex_IsBase(true);
        return vqcameraimagecapture->senderSignalIndex();
    } else {
        return vqcameraimagecapture->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnSenderSignalIndex(const QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_SenderSignalIndex_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QCameraImageCapture_Receivers(const QCameraImageCapture* self, const char* signal) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        return vqcameraimagecapture->receivers(signal);
    } else {
        return vqcameraimagecapture->receivers(signal);
    }
}

// Base class handler implementation
int QCameraImageCapture_QBaseReceivers(const QCameraImageCapture* self, const char* signal) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_Receivers_IsBase(true);
        return vqcameraimagecapture->receivers(signal);
    } else {
        return vqcameraimagecapture->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnReceivers(const QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_Receivers_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraImageCapture_IsSignalConnected(const QCameraImageCapture* self, QMetaMethod* signal) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        return vqcameraimagecapture->isSignalConnected(*signal);
    } else {
        return vqcameraimagecapture->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QCameraImageCapture_QBaseIsSignalConnected(const QCameraImageCapture* self, QMetaMethod* signal) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_IsSignalConnected_IsBase(true);
        return vqcameraimagecapture->isSignalConnected(*signal);
    } else {
        return vqcameraimagecapture->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraImageCapture_OnIsSignalConnected(const QCameraImageCapture* self, intptr_t slot) {
    if (auto* vqcameraimagecapture = const_cast<VirtualQCameraImageCapture*>(dynamic_cast<const VirtualQCameraImageCapture*>(self))) {
        vqcameraimagecapture->setQCameraImageCapture_IsSignalConnected_Callback(reinterpret_cast<VirtualQCameraImageCapture::QCameraImageCapture_IsSignalConnected_Callback>(slot));
    }
}

void QCameraImageCapture_Delete(QCameraImageCapture* self) {
    delete self;
}
