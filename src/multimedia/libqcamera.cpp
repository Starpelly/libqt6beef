#include <QAbstractVideoSurface>
#include <QByteArray>
#include <QCamera>
#define WORKAROUND_INNER_CLASS_DEFINITION_QCamera__FrameRateRange
#include <QCameraExposure>
#include <QCameraFocus>
#include <QCameraImageProcessing>
#include <QCameraInfo>
#include <QCameraViewfinderSettings>
#include <QChildEvent>
#include <QEvent>
#include <QGraphicsVideoItem>
#include <QList>
#include <QMediaObject>
#include <QMediaService>
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
#include <QVideoWidget>
#include <qcamera.h>
#include "libqcamera.h"
#include "libqcamera.hxx"

QCamera* QCamera_new() {
    return new VirtualQCamera();
}

QCamera* QCamera_new2(libqt_string deviceName) {
    QByteArray deviceName_QByteArray(deviceName.data, deviceName.len);
    return new VirtualQCamera(deviceName_QByteArray);
}

QCamera* QCamera_new3(QCameraInfo* cameraInfo) {
    return new VirtualQCamera(*cameraInfo);
}

QCamera* QCamera_new4(int position) {
    return new VirtualQCamera(static_cast<QCamera::Position>(position));
}

QCamera* QCamera_new5(QObject* parent) {
    return new VirtualQCamera(parent);
}

QCamera* QCamera_new6(libqt_string deviceName, QObject* parent) {
    QByteArray deviceName_QByteArray(deviceName.data, deviceName.len);
    return new VirtualQCamera(deviceName_QByteArray, parent);
}

QCamera* QCamera_new7(QCameraInfo* cameraInfo, QObject* parent) {
    return new VirtualQCamera(*cameraInfo, parent);
}

QCamera* QCamera_new8(int position, QObject* parent) {
    return new VirtualQCamera(static_cast<QCamera::Position>(position), parent);
}

QMetaObject* QCamera_MetaObject(const QCamera* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCamera_Metacast(QCamera* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCamera_Metacall(QCamera* self, int param1, int param2, void** param3) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QCamera_OnMetacall(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_Metacall_Callback(reinterpret_cast<VirtualQCamera::QCamera_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QCamera_QBaseMetacall(QCamera* self, int param1, int param2, void** param3) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_Metacall_IsBase(true);
        return vqcamera->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QCamera_Tr(const char* s) {
    QString _ret = QCamera::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCamera_TrUtf8(const char* s) {
    QString _ret = QCamera::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QCamera_AvailableDevices() {
    QList<QByteArray> _ret = QCamera::availableDevices();
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

libqt_string QCamera_DeviceDescription(libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    QString _ret = QCamera::deviceDescription(device_QByteArray);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QCamera_State(const QCamera* self) {
    return static_cast<int>(self->state());
}

int QCamera_Status(const QCamera* self) {
    return static_cast<int>(self->status());
}

int QCamera_CaptureMode(const QCamera* self) {
    return static_cast<int>(self->captureMode());
}

bool QCamera_IsCaptureModeSupported(const QCamera* self, int mode) {
    return self->isCaptureModeSupported(static_cast<QCamera::CaptureModes>(mode));
}

QCameraExposure* QCamera_Exposure(const QCamera* self) {
    return self->exposure();
}

QCameraFocus* QCamera_Focus(const QCamera* self) {
    return self->focus();
}

QCameraImageProcessing* QCamera_ImageProcessing(const QCamera* self) {
    return self->imageProcessing();
}

void QCamera_SetViewfinder(QCamera* self, QVideoWidget* viewfinder) {
    self->setViewfinder(viewfinder);
}

void QCamera_SetViewfinderWithViewfinder(QCamera* self, QGraphicsVideoItem* viewfinder) {
    self->setViewfinder(viewfinder);
}

void QCamera_SetViewfinderWithSurface(QCamera* self, QAbstractVideoSurface* surface) {
    self->setViewfinder(surface);
}

QCameraViewfinderSettings* QCamera_ViewfinderSettings(const QCamera* self) {
    return new QCameraViewfinderSettings(self->viewfinderSettings());
}

void QCamera_SetViewfinderSettings(QCamera* self, QCameraViewfinderSettings* settings) {
    self->setViewfinderSettings(*settings);
}

libqt_list /* of QCameraViewfinderSettings* */ QCamera_SupportedViewfinderSettings(const QCamera* self) {
    QList<QCameraViewfinderSettings> _ret = self->supportedViewfinderSettings();
    // Convert QList<> from C++ memory to manually-managed C memory
    QCameraViewfinderSettings** _arr = static_cast<QCameraViewfinderSettings**>(malloc(sizeof(QCameraViewfinderSettings*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QCameraViewfinderSettings(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QSize* */ QCamera_SupportedViewfinderResolutions(const QCamera* self) {
    QList<QSize> _ret = self->supportedViewfinderResolutions();
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

libqt_list /* of QCamera__FrameRateRange* */ QCamera_SupportedViewfinderFrameRateRanges(const QCamera* self) {
    QList<QCamera::FrameRateRange> _ret = self->supportedViewfinderFrameRateRanges();
    // Convert QList<> from C++ memory to manually-managed C memory
    QCamera__FrameRateRange** _arr = static_cast<QCamera__FrameRateRange**>(malloc(sizeof(QCamera__FrameRateRange*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QCamera::FrameRateRange(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of int */ QCamera_SupportedViewfinderPixelFormats(const QCamera* self) {
    QList<QVideoFrame::PixelFormat> _ret = self->supportedViewfinderPixelFormats();
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

int QCamera_Error(const QCamera* self) {
    return static_cast<int>(self->error());
}

libqt_string QCamera_ErrorString(const QCamera* self) {
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

int QCamera_SupportedLocks(const QCamera* self) {
    return static_cast<int>(self->supportedLocks());
}

int QCamera_RequestedLocks(const QCamera* self) {
    return static_cast<int>(self->requestedLocks());
}

int QCamera_LockStatus(const QCamera* self) {
    return static_cast<int>(self->lockStatus());
}

int QCamera_LockStatusWithLock(const QCamera* self, int lock) {
    return static_cast<int>(self->lockStatus(static_cast<QCamera::LockType>(lock)));
}

void QCamera_SetCaptureMode(QCamera* self, int mode) {
    self->setCaptureMode(static_cast<QCamera::CaptureModes>(mode));
}

void QCamera_Load(QCamera* self) {
    self->load();
}

void QCamera_Unload(QCamera* self) {
    self->unload();
}

void QCamera_Start(QCamera* self) {
    self->start();
}

void QCamera_Stop(QCamera* self) {
    self->stop();
}

void QCamera_SearchAndLock(QCamera* self) {
    self->searchAndLock();
}

void QCamera_Unlock(QCamera* self) {
    self->unlock();
}

void QCamera_SearchAndLockWithLocks(QCamera* self, int locks) {
    self->searchAndLock(static_cast<QCamera::LockTypes>(locks));
}

void QCamera_UnlockWithLocks(QCamera* self, int locks) {
    self->unlock(static_cast<QCamera::LockTypes>(locks));
}

void QCamera_StateChanged(QCamera* self, int state) {
    self->stateChanged(static_cast<QCamera::State>(state));
}

void QCamera_Connect_StateChanged(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*, int) = reinterpret_cast<void (*)(QCamera*, int)>(slot);
    QCamera::connect(self, &QCamera::stateChanged, [self, slotFunc](QCamera::State state) {
        int sigval1 = static_cast<int>(state);
        slotFunc(self, sigval1);
    });
}

void QCamera_CaptureModeChanged(QCamera* self, int param1) {
    self->captureModeChanged(static_cast<QFlags<QCamera::CaptureMode>>(param1));
}

void QCamera_Connect_CaptureModeChanged(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*, int) = reinterpret_cast<void (*)(QCamera*, int)>(slot);
    QCamera::connect(self, &QCamera::captureModeChanged, [self, slotFunc](QFlags<QCamera::CaptureMode> param1) {
        int sigval1 = static_cast<int>(param1);
        slotFunc(self, sigval1);
    });
}

void QCamera_StatusChanged(QCamera* self, int status) {
    self->statusChanged(static_cast<QCamera::Status>(status));
}

void QCamera_Connect_StatusChanged(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*, int) = reinterpret_cast<void (*)(QCamera*, int)>(slot);
    QCamera::connect(self, &QCamera::statusChanged, [self, slotFunc](QCamera::Status status) {
        int sigval1 = static_cast<int>(status);
        slotFunc(self, sigval1);
    });
}

void QCamera_Locked(QCamera* self) {
    self->locked();
}

void QCamera_Connect_Locked(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*) = reinterpret_cast<void (*)(QCamera*)>(slot);
    QCamera::connect(self, &QCamera::locked, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QCamera_LockFailed(QCamera* self) {
    self->lockFailed();
}

void QCamera_Connect_LockFailed(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*) = reinterpret_cast<void (*)(QCamera*)>(slot);
    QCamera::connect(self, &QCamera::lockFailed, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QCamera_LockStatusChanged(QCamera* self, int status, int reason) {
    self->lockStatusChanged(static_cast<QCamera::LockStatus>(status), static_cast<QCamera::LockChangeReason>(reason));
}

void QCamera_Connect_LockStatusChanged(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*, int, int) = reinterpret_cast<void (*)(QCamera*, int, int)>(slot);
    QCamera::connect(self, &QCamera::lockStatusChanged, [self, slotFunc](QCamera::LockStatus status, QCamera::LockChangeReason reason) {
        int sigval1 = static_cast<int>(status);
        int sigval2 = static_cast<int>(reason);
        slotFunc(self, sigval1, sigval2);
    });
}

void QCamera_LockStatusChanged2(QCamera* self, int lock, int status, int reason) {
    self->lockStatusChanged(static_cast<QCamera::LockType>(lock), static_cast<QCamera::LockStatus>(status), static_cast<QCamera::LockChangeReason>(reason));
}

void QCamera_Connect_LockStatusChanged2(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*, int, int, int) = reinterpret_cast<void (*)(QCamera*, int, int, int)>(slot);
    QCamera::connect(self, &QCamera::lockStatusChanged, [self, slotFunc](QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason) {
        int sigval1 = static_cast<int>(lock);
        int sigval2 = static_cast<int>(status);
        int sigval3 = static_cast<int>(reason);
        slotFunc(self, sigval1, sigval2, sigval3);
    });
}

void QCamera_ErrorWithQCameraError(QCamera* self, int param1) {
    self->error(static_cast<QCamera::Error>(param1));
}

void QCamera_Connect_ErrorWithQCameraError(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*, int) = reinterpret_cast<void (*)(QCamera*, int)>(slot);
    QCamera::connect(self, &QCamera::error, [self, slotFunc](QCamera::Error param1) {
        int sigval1 = static_cast<int>(param1);
        slotFunc(self, sigval1);
    });
}

void QCamera_ErrorOccurred(QCamera* self, int param1) {
    self->errorOccurred(static_cast<QCamera::Error>(param1));
}

void QCamera_Connect_ErrorOccurred(QCamera* self, intptr_t slot) {
    void (*slotFunc)(QCamera*, int) = reinterpret_cast<void (*)(QCamera*, int)>(slot);
    QCamera::connect(self, &QCamera::errorOccurred, [self, slotFunc](QCamera::Error param1) {
        int sigval1 = static_cast<int>(param1);
        slotFunc(self, sigval1);
    });
}

libqt_string QCamera_Tr2(const char* s, const char* c) {
    QString _ret = QCamera::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCamera_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCamera::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCamera_TrUtf82(const char* s, const char* c) {
    QString _ret = QCamera::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCamera_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCamera::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of QCameraViewfinderSettings* */ QCamera_SupportedViewfinderSettings1(const QCamera* self, QCameraViewfinderSettings* settings) {
    QList<QCameraViewfinderSettings> _ret = self->supportedViewfinderSettings(*settings);
    // Convert QList<> from C++ memory to manually-managed C memory
    QCameraViewfinderSettings** _arr = static_cast<QCameraViewfinderSettings**>(malloc(sizeof(QCameraViewfinderSettings*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QCameraViewfinderSettings(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QSize* */ QCamera_SupportedViewfinderResolutions1(const QCamera* self, QCameraViewfinderSettings* settings) {
    QList<QSize> _ret = self->supportedViewfinderResolutions(*settings);
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

libqt_list /* of QCamera__FrameRateRange* */ QCamera_SupportedViewfinderFrameRateRanges1(const QCamera* self, QCameraViewfinderSettings* settings) {
    QList<QCamera::FrameRateRange> _ret = self->supportedViewfinderFrameRateRanges(*settings);
    // Convert QList<> from C++ memory to manually-managed C memory
    QCamera__FrameRateRange** _arr = static_cast<QCamera__FrameRateRange**>(malloc(sizeof(QCamera__FrameRateRange*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QCamera::FrameRateRange(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of int */ QCamera_SupportedViewfinderPixelFormats1(const QCamera* self, QCameraViewfinderSettings* settings) {
    QList<QVideoFrame::PixelFormat> _ret = self->supportedViewfinderPixelFormats(*settings);
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

// Derived class handler implementation
int QCamera_Availability(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        return static_cast<int>(vqcamera->availability());
    } else {
        return static_cast<int>(vqcamera->availability());
    }
}

// Base class handler implementation
int QCamera_QBaseAvailability(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_Availability_IsBase(true);
        return static_cast<int>(vqcamera->availability());
    } else {
        return static_cast<int>(vqcamera->availability());
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnAvailability(const QCamera* self, intptr_t slot) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_Availability_Callback(reinterpret_cast<VirtualQCamera::QCamera_Availability_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCamera_IsAvailable(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        return vqcamera->isAvailable();
    } else {
        return vqcamera->isAvailable();
    }
}

// Base class handler implementation
bool QCamera_QBaseIsAvailable(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_IsAvailable_IsBase(true);
        return vqcamera->isAvailable();
    } else {
        return vqcamera->isAvailable();
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnIsAvailable(const QCamera* self, intptr_t slot) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_IsAvailable_Callback(reinterpret_cast<VirtualQCamera::QCamera_IsAvailable_Callback>(slot));
    }
}

// Derived class handler implementation
QMediaService* QCamera_Service(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        return vqcamera->service();
    } else {
        return vqcamera->service();
    }
}

// Base class handler implementation
QMediaService* QCamera_QBaseService(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_Service_IsBase(true);
        return vqcamera->service();
    } else {
        return vqcamera->service();
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnService(const QCamera* self, intptr_t slot) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_Service_Callback(reinterpret_cast<VirtualQCamera::QCamera_Service_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCamera_Bind(QCamera* self, QObject* param1) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        return vqcamera->bind(param1);
    } else {
        return vqcamera->bind(param1);
    }
}

// Base class handler implementation
bool QCamera_QBaseBind(QCamera* self, QObject* param1) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_Bind_IsBase(true);
        return vqcamera->bind(param1);
    } else {
        return vqcamera->bind(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnBind(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_Bind_Callback(reinterpret_cast<VirtualQCamera::QCamera_Bind_Callback>(slot));
    }
}

// Derived class handler implementation
void QCamera_Unbind(QCamera* self, QObject* param1) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->unbind(param1);
    } else {
        vqcamera->unbind(param1);
    }
}

// Base class handler implementation
void QCamera_QBaseUnbind(QCamera* self, QObject* param1) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_Unbind_IsBase(true);
        vqcamera->unbind(param1);
    } else {
        vqcamera->unbind(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnUnbind(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_Unbind_Callback(reinterpret_cast<VirtualQCamera::QCamera_Unbind_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCamera_Event(QCamera* self, QEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        return vqcamera->event(event);
    } else {
        return vqcamera->event(event);
    }
}

// Base class handler implementation
bool QCamera_QBaseEvent(QCamera* self, QEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_Event_IsBase(true);
        return vqcamera->event(event);
    } else {
        return vqcamera->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnEvent(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_Event_Callback(reinterpret_cast<VirtualQCamera::QCamera_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCamera_EventFilter(QCamera* self, QObject* watched, QEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        return vqcamera->eventFilter(watched, event);
    } else {
        return vqcamera->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QCamera_QBaseEventFilter(QCamera* self, QObject* watched, QEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_EventFilter_IsBase(true);
        return vqcamera->eventFilter(watched, event);
    } else {
        return vqcamera->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnEventFilter(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_EventFilter_Callback(reinterpret_cast<VirtualQCamera::QCamera_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QCamera_TimerEvent(QCamera* self, QTimerEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->timerEvent(event);
    } else {
        vqcamera->timerEvent(event);
    }
}

// Base class handler implementation
void QCamera_QBaseTimerEvent(QCamera* self, QTimerEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_TimerEvent_IsBase(true);
        vqcamera->timerEvent(event);
    } else {
        vqcamera->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnTimerEvent(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_TimerEvent_Callback(reinterpret_cast<VirtualQCamera::QCamera_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCamera_ChildEvent(QCamera* self, QChildEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->childEvent(event);
    } else {
        vqcamera->childEvent(event);
    }
}

// Base class handler implementation
void QCamera_QBaseChildEvent(QCamera* self, QChildEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_ChildEvent_IsBase(true);
        vqcamera->childEvent(event);
    } else {
        vqcamera->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnChildEvent(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_ChildEvent_Callback(reinterpret_cast<VirtualQCamera::QCamera_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCamera_CustomEvent(QCamera* self, QEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->customEvent(event);
    } else {
        vqcamera->customEvent(event);
    }
}

// Base class handler implementation
void QCamera_QBaseCustomEvent(QCamera* self, QEvent* event) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_CustomEvent_IsBase(true);
        vqcamera->customEvent(event);
    } else {
        vqcamera->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnCustomEvent(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_CustomEvent_Callback(reinterpret_cast<VirtualQCamera::QCamera_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCamera_ConnectNotify(QCamera* self, QMetaMethod* signal) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->connectNotify(*signal);
    } else {
        vqcamera->connectNotify(*signal);
    }
}

// Base class handler implementation
void QCamera_QBaseConnectNotify(QCamera* self, QMetaMethod* signal) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_ConnectNotify_IsBase(true);
        vqcamera->connectNotify(*signal);
    } else {
        vqcamera->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnConnectNotify(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_ConnectNotify_Callback(reinterpret_cast<VirtualQCamera::QCamera_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QCamera_DisconnectNotify(QCamera* self, QMetaMethod* signal) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->disconnectNotify(*signal);
    } else {
        vqcamera->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QCamera_QBaseDisconnectNotify(QCamera* self, QMetaMethod* signal) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_DisconnectNotify_IsBase(true);
        vqcamera->disconnectNotify(*signal);
    } else {
        vqcamera->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnDisconnectNotify(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_DisconnectNotify_Callback(reinterpret_cast<VirtualQCamera::QCamera_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QCamera_AddPropertyWatch(QCamera* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->addPropertyWatch(name_QByteArray);
    } else {
        vqcamera->addPropertyWatch(name_QByteArray);
    }
}

// Base class handler implementation
void QCamera_QBaseAddPropertyWatch(QCamera* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_AddPropertyWatch_IsBase(true);
        vqcamera->addPropertyWatch(name_QByteArray);
    } else {
        vqcamera->addPropertyWatch(name_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnAddPropertyWatch(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_AddPropertyWatch_Callback(reinterpret_cast<VirtualQCamera::QCamera_AddPropertyWatch_Callback>(slot));
    }
}

// Derived class handler implementation
void QCamera_RemovePropertyWatch(QCamera* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->removePropertyWatch(name_QByteArray);
    } else {
        vqcamera->removePropertyWatch(name_QByteArray);
    }
}

// Base class handler implementation
void QCamera_QBaseRemovePropertyWatch(QCamera* self, libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_RemovePropertyWatch_IsBase(true);
        vqcamera->removePropertyWatch(name_QByteArray);
    } else {
        vqcamera->removePropertyWatch(name_QByteArray);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnRemovePropertyWatch(QCamera* self, intptr_t slot) {
    if (auto* vqcamera = dynamic_cast<VirtualQCamera*>(self)) {
        vqcamera->setQCamera_RemovePropertyWatch_Callback(reinterpret_cast<VirtualQCamera::QCamera_RemovePropertyWatch_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QCamera_Sender(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        return vqcamera->sender();
    } else {
        return vqcamera->sender();
    }
}

// Base class handler implementation
QObject* QCamera_QBaseSender(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_Sender_IsBase(true);
        return vqcamera->sender();
    } else {
        return vqcamera->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnSender(const QCamera* self, intptr_t slot) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_Sender_Callback(reinterpret_cast<VirtualQCamera::QCamera_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QCamera_SenderSignalIndex(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        return vqcamera->senderSignalIndex();
    } else {
        return vqcamera->senderSignalIndex();
    }
}

// Base class handler implementation
int QCamera_QBaseSenderSignalIndex(const QCamera* self) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_SenderSignalIndex_IsBase(true);
        return vqcamera->senderSignalIndex();
    } else {
        return vqcamera->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnSenderSignalIndex(const QCamera* self, intptr_t slot) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_SenderSignalIndex_Callback(reinterpret_cast<VirtualQCamera::QCamera_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QCamera_Receivers(const QCamera* self, const char* signal) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        return vqcamera->receivers(signal);
    } else {
        return vqcamera->receivers(signal);
    }
}

// Base class handler implementation
int QCamera_QBaseReceivers(const QCamera* self, const char* signal) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_Receivers_IsBase(true);
        return vqcamera->receivers(signal);
    } else {
        return vqcamera->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnReceivers(const QCamera* self, intptr_t slot) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_Receivers_Callback(reinterpret_cast<VirtualQCamera::QCamera_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCamera_IsSignalConnected(const QCamera* self, QMetaMethod* signal) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        return vqcamera->isSignalConnected(*signal);
    } else {
        return vqcamera->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QCamera_QBaseIsSignalConnected(const QCamera* self, QMetaMethod* signal) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_IsSignalConnected_IsBase(true);
        return vqcamera->isSignalConnected(*signal);
    } else {
        return vqcamera->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCamera_OnIsSignalConnected(const QCamera* self, intptr_t slot) {
    if (auto* vqcamera = const_cast<VirtualQCamera*>(dynamic_cast<const VirtualQCamera*>(self))) {
        vqcamera->setQCamera_IsSignalConnected_Callback(reinterpret_cast<VirtualQCamera::QCamera_IsSignalConnected_Callback>(slot));
    }
}

void QCamera_Delete(QCamera* self) {
    delete self;
}

QCamera__FrameRateRange* QCamera__FrameRateRange_new(QCamera__FrameRateRange* other) {
    return new QCamera::FrameRateRange(*other);
}

QCamera__FrameRateRange* QCamera__FrameRateRange_new2(QCamera__FrameRateRange* other) {
    return new QCamera::FrameRateRange(std::move(*other));
}

QCamera__FrameRateRange* QCamera__FrameRateRange_new3() {
    return new QCamera::FrameRateRange();
}

QCamera__FrameRateRange* QCamera__FrameRateRange_new4(double minimum, double maximum) {
    return new QCamera::FrameRateRange(static_cast<qreal>(minimum), static_cast<qreal>(maximum));
}

QCamera__FrameRateRange* QCamera__FrameRateRange_new5(QCamera__FrameRateRange* param1) {
    return new QCamera::FrameRateRange(*param1);
}

void QCamera__FrameRateRange_CopyAssign(QCamera__FrameRateRange* self, QCamera__FrameRateRange* other) {
    *self = *other;
}

void QCamera__FrameRateRange_MoveAssign(QCamera__FrameRateRange* self, QCamera__FrameRateRange* other) {
    *self = std::move(*other);
}

void QCamera__FrameRateRange_Delete(QCamera__FrameRateRange* self) {
    delete self;
}
