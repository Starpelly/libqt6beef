#include <QAbstractVideoSurface>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
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
#include <QVideoSurfaceFormat>
#include <qabstractvideosurface.h>
#include "libqabstractvideosurface.h"
#include "libqabstractvideosurface.hxx"

QAbstractVideoSurface* QAbstractVideoSurface_new() {
    return new VirtualQAbstractVideoSurface();
}

QAbstractVideoSurface* QAbstractVideoSurface_new2(QObject* parent) {
    return new VirtualQAbstractVideoSurface(parent);
}

QMetaObject* QAbstractVideoSurface_MetaObject(const QAbstractVideoSurface* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAbstractVideoSurface_Metacast(QAbstractVideoSurface* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAbstractVideoSurface_Metacall(QAbstractVideoSurface* self, int param1, int param2, void** param3) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractVideoSurface_OnMetacall(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Metacall_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAbstractVideoSurface_QBaseMetacall(QAbstractVideoSurface* self, int param1, int param2, void** param3) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Metacall_IsBase(true);
        return vqabstractvideosurface->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAbstractVideoSurface_Tr(const char* s) {
    QString _ret = QAbstractVideoSurface::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractVideoSurface_TrUtf8(const char* s) {
    QString _ret = QAbstractVideoSurface::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QVideoSurfaceFormat* QAbstractVideoSurface_SurfaceFormat(const QAbstractVideoSurface* self) {
    return new QVideoSurfaceFormat(self->surfaceFormat());
}

QSize* QAbstractVideoSurface_NativeResolution(const QAbstractVideoSurface* self) {
    return new QSize(self->nativeResolution());
}

bool QAbstractVideoSurface_IsActive(const QAbstractVideoSurface* self) {
    return self->isActive();
}

int QAbstractVideoSurface_Error(const QAbstractVideoSurface* self) {
    return static_cast<int>(self->error());
}

void QAbstractVideoSurface_ActiveChanged(QAbstractVideoSurface* self, bool active) {
    self->activeChanged(active);
}

void QAbstractVideoSurface_Connect_ActiveChanged(QAbstractVideoSurface* self, intptr_t slot) {
    void (*slotFunc)(QAbstractVideoSurface*, bool) = reinterpret_cast<void (*)(QAbstractVideoSurface*, bool)>(slot);
    QAbstractVideoSurface::connect(self, &QAbstractVideoSurface::activeChanged, [self, slotFunc](bool active) {
        bool sigval1 = active;
        slotFunc(self, sigval1);
    });
}

void QAbstractVideoSurface_SurfaceFormatChanged(QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
    self->surfaceFormatChanged(*format);
}

void QAbstractVideoSurface_Connect_SurfaceFormatChanged(QAbstractVideoSurface* self, intptr_t slot) {
    void (*slotFunc)(QAbstractVideoSurface*, QVideoSurfaceFormat*) = reinterpret_cast<void (*)(QAbstractVideoSurface*, QVideoSurfaceFormat*)>(slot);
    QAbstractVideoSurface::connect(self, &QAbstractVideoSurface::surfaceFormatChanged, [self, slotFunc](const QVideoSurfaceFormat& format) {
        const QVideoSurfaceFormat& format_ret = format;
        // Cast returned reference into pointer
        QVideoSurfaceFormat* sigval1 = const_cast<QVideoSurfaceFormat*>(&format_ret);
        slotFunc(self, sigval1);
    });
}

void QAbstractVideoSurface_SupportedFormatsChanged(QAbstractVideoSurface* self) {
    self->supportedFormatsChanged();
}

void QAbstractVideoSurface_Connect_SupportedFormatsChanged(QAbstractVideoSurface* self, intptr_t slot) {
    void (*slotFunc)(QAbstractVideoSurface*) = reinterpret_cast<void (*)(QAbstractVideoSurface*)>(slot);
    QAbstractVideoSurface::connect(self, &QAbstractVideoSurface::supportedFormatsChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QAbstractVideoSurface_NativeResolutionChanged(QAbstractVideoSurface* self, QSize* resolution) {
    self->nativeResolutionChanged(*resolution);
}

void QAbstractVideoSurface_Connect_NativeResolutionChanged(QAbstractVideoSurface* self, intptr_t slot) {
    void (*slotFunc)(QAbstractVideoSurface*, QSize*) = reinterpret_cast<void (*)(QAbstractVideoSurface*, QSize*)>(slot);
    QAbstractVideoSurface::connect(self, &QAbstractVideoSurface::nativeResolutionChanged, [self, slotFunc](const QSize& resolution) {
        const QSize& resolution_ret = resolution;
        // Cast returned reference into pointer
        QSize* sigval1 = const_cast<QSize*>(&resolution_ret);
        slotFunc(self, sigval1);
    });
}

libqt_string QAbstractVideoSurface_Tr2(const char* s, const char* c) {
    QString _ret = QAbstractVideoSurface::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractVideoSurface_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAbstractVideoSurface::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractVideoSurface_TrUtf82(const char* s, const char* c) {
    QString _ret = QAbstractVideoSurface::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractVideoSurface_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAbstractVideoSurface::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

// Derived class handler implementation
libqt_list /* of int */ QAbstractVideoSurface_SupportedPixelFormats(const QAbstractVideoSurface* self, int typeVal) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        QList<QVideoFrame::PixelFormat> _ret = vqabstractvideosurface->supportedPixelFormats(static_cast<QAbstractVideoBuffer::HandleType>(typeVal));
        // Convert QList<> from C++ memory to manually-managed C memory
        int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = static_cast<int>(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QList<QVideoFrame::PixelFormat> _ret = vqabstractvideosurface->supportedPixelFormats(static_cast<QAbstractVideoBuffer::HandleType>(typeVal));
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
}

// Base class handler implementation
libqt_list /* of int */ QAbstractVideoSurface_QBaseSupportedPixelFormats(const QAbstractVideoSurface* self, int typeVal) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_SupportedPixelFormats_IsBase(true);
        QList<QVideoFrame::PixelFormat> _ret = vqabstractvideosurface->supportedPixelFormats(static_cast<QAbstractVideoBuffer::HandleType>(typeVal));
        // Convert QList<> from C++ memory to manually-managed C memory
        int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = static_cast<int>(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QList<QVideoFrame::PixelFormat> _ret = vqabstractvideosurface->supportedPixelFormats(static_cast<QAbstractVideoBuffer::HandleType>(typeVal));
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
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnSupportedPixelFormats(const QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_SupportedPixelFormats_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_SupportedPixelFormats_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoSurface_IsFormatSupported(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        return vqabstractvideosurface->isFormatSupported(*format);
    } else {
        return vqabstractvideosurface->isFormatSupported(*format);
    }
}

// Base class handler implementation
bool QAbstractVideoSurface_QBaseIsFormatSupported(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_IsFormatSupported_IsBase(true);
        return vqabstractvideosurface->isFormatSupported(*format);
    } else {
        return vqabstractvideosurface->isFormatSupported(*format);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnIsFormatSupported(const QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_IsFormatSupported_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_IsFormatSupported_Callback>(slot));
    }
}

// Derived class handler implementation
QVideoSurfaceFormat* QAbstractVideoSurface_NearestFormat(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        return new QVideoSurfaceFormat(vqabstractvideosurface->nearestFormat(*format));
    } else {
        return new QVideoSurfaceFormat(self->nearestFormat(*format));
    }
}

// Base class handler implementation
QVideoSurfaceFormat* QAbstractVideoSurface_QBaseNearestFormat(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_NearestFormat_IsBase(true);
        return new QVideoSurfaceFormat(vqabstractvideosurface->nearestFormat(*format));
    } else {
        return new QVideoSurfaceFormat(self->nearestFormat(*format));
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnNearestFormat(const QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_NearestFormat_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_NearestFormat_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoSurface_Start(QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        return vqabstractvideosurface->start(*format);
    } else {
        return vqabstractvideosurface->start(*format);
    }
}

// Base class handler implementation
bool QAbstractVideoSurface_QBaseStart(QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Start_IsBase(true);
        return vqabstractvideosurface->start(*format);
    } else {
        return vqabstractvideosurface->start(*format);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnStart(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Start_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_Start_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoSurface_Stop(QAbstractVideoSurface* self) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->stop();
    } else {
        vqabstractvideosurface->stop();
    }
}

// Base class handler implementation
void QAbstractVideoSurface_QBaseStop(QAbstractVideoSurface* self) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Stop_IsBase(true);
        vqabstractvideosurface->stop();
    } else {
        vqabstractvideosurface->stop();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnStop(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Stop_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_Stop_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoSurface_Present(QAbstractVideoSurface* self, QVideoFrame* frame) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        return vqabstractvideosurface->present(*frame);
    } else {
        return vqabstractvideosurface->present(*frame);
    }
}

// Base class handler implementation
bool QAbstractVideoSurface_QBasePresent(QAbstractVideoSurface* self, QVideoFrame* frame) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Present_IsBase(true);
        return vqabstractvideosurface->present(*frame);
    } else {
        return vqabstractvideosurface->present(*frame);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnPresent(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Present_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_Present_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoSurface_Event(QAbstractVideoSurface* self, QEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        return vqabstractvideosurface->event(event);
    } else {
        return vqabstractvideosurface->event(event);
    }
}

// Base class handler implementation
bool QAbstractVideoSurface_QBaseEvent(QAbstractVideoSurface* self, QEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Event_IsBase(true);
        return vqabstractvideosurface->event(event);
    } else {
        return vqabstractvideosurface->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnEvent(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_Event_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoSurface_EventFilter(QAbstractVideoSurface* self, QObject* watched, QEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        return vqabstractvideosurface->eventFilter(watched, event);
    } else {
        return vqabstractvideosurface->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QAbstractVideoSurface_QBaseEventFilter(QAbstractVideoSurface* self, QObject* watched, QEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_EventFilter_IsBase(true);
        return vqabstractvideosurface->eventFilter(watched, event);
    } else {
        return vqabstractvideosurface->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnEventFilter(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_EventFilter_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoSurface_TimerEvent(QAbstractVideoSurface* self, QTimerEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->timerEvent(event);
    } else {
        vqabstractvideosurface->timerEvent(event);
    }
}

// Base class handler implementation
void QAbstractVideoSurface_QBaseTimerEvent(QAbstractVideoSurface* self, QTimerEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_TimerEvent_IsBase(true);
        vqabstractvideosurface->timerEvent(event);
    } else {
        vqabstractvideosurface->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnTimerEvent(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_TimerEvent_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoSurface_ChildEvent(QAbstractVideoSurface* self, QChildEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->childEvent(event);
    } else {
        vqabstractvideosurface->childEvent(event);
    }
}

// Base class handler implementation
void QAbstractVideoSurface_QBaseChildEvent(QAbstractVideoSurface* self, QChildEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_ChildEvent_IsBase(true);
        vqabstractvideosurface->childEvent(event);
    } else {
        vqabstractvideosurface->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnChildEvent(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_ChildEvent_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoSurface_CustomEvent(QAbstractVideoSurface* self, QEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->customEvent(event);
    } else {
        vqabstractvideosurface->customEvent(event);
    }
}

// Base class handler implementation
void QAbstractVideoSurface_QBaseCustomEvent(QAbstractVideoSurface* self, QEvent* event) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_CustomEvent_IsBase(true);
        vqabstractvideosurface->customEvent(event);
    } else {
        vqabstractvideosurface->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnCustomEvent(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_CustomEvent_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoSurface_ConnectNotify(QAbstractVideoSurface* self, QMetaMethod* signal) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->connectNotify(*signal);
    } else {
        vqabstractvideosurface->connectNotify(*signal);
    }
}

// Base class handler implementation
void QAbstractVideoSurface_QBaseConnectNotify(QAbstractVideoSurface* self, QMetaMethod* signal) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_ConnectNotify_IsBase(true);
        vqabstractvideosurface->connectNotify(*signal);
    } else {
        vqabstractvideosurface->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnConnectNotify(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_ConnectNotify_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoSurface_DisconnectNotify(QAbstractVideoSurface* self, QMetaMethod* signal) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->disconnectNotify(*signal);
    } else {
        vqabstractvideosurface->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QAbstractVideoSurface_QBaseDisconnectNotify(QAbstractVideoSurface* self, QMetaMethod* signal) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_DisconnectNotify_IsBase(true);
        vqabstractvideosurface->disconnectNotify(*signal);
    } else {
        vqabstractvideosurface->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnDisconnectNotify(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_DisconnectNotify_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoSurface_SetError(QAbstractVideoSurface* self, int errorVal) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setError(static_cast<QAbstractVideoSurface::Error>(errorVal));
    } else {
        vqabstractvideosurface->setError(static_cast<QAbstractVideoSurface::Error>(errorVal));
    }
}

// Base class handler implementation
void QAbstractVideoSurface_QBaseSetError(QAbstractVideoSurface* self, int errorVal) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_SetError_IsBase(true);
        vqabstractvideosurface->setError(static_cast<QAbstractVideoSurface::Error>(errorVal));
    } else {
        vqabstractvideosurface->setError(static_cast<QAbstractVideoSurface::Error>(errorVal));
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnSetError(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_SetError_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_SetError_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoSurface_SetNativeResolution(QAbstractVideoSurface* self, QSize* resolution) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setNativeResolution(*resolution);
    } else {
        vqabstractvideosurface->setNativeResolution(*resolution);
    }
}

// Base class handler implementation
void QAbstractVideoSurface_QBaseSetNativeResolution(QAbstractVideoSurface* self, QSize* resolution) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_SetNativeResolution_IsBase(true);
        vqabstractvideosurface->setNativeResolution(*resolution);
    } else {
        vqabstractvideosurface->setNativeResolution(*resolution);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnSetNativeResolution(QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = dynamic_cast<VirtualQAbstractVideoSurface*>(self)) {
        vqabstractvideosurface->setQAbstractVideoSurface_SetNativeResolution_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_SetNativeResolution_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QAbstractVideoSurface_Sender(const QAbstractVideoSurface* self) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        return vqabstractvideosurface->sender();
    } else {
        return vqabstractvideosurface->sender();
    }
}

// Base class handler implementation
QObject* QAbstractVideoSurface_QBaseSender(const QAbstractVideoSurface* self) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_Sender_IsBase(true);
        return vqabstractvideosurface->sender();
    } else {
        return vqabstractvideosurface->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnSender(const QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_Sender_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QAbstractVideoSurface_SenderSignalIndex(const QAbstractVideoSurface* self) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        return vqabstractvideosurface->senderSignalIndex();
    } else {
        return vqabstractvideosurface->senderSignalIndex();
    }
}

// Base class handler implementation
int QAbstractVideoSurface_QBaseSenderSignalIndex(const QAbstractVideoSurface* self) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_SenderSignalIndex_IsBase(true);
        return vqabstractvideosurface->senderSignalIndex();
    } else {
        return vqabstractvideosurface->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnSenderSignalIndex(const QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_SenderSignalIndex_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QAbstractVideoSurface_Receivers(const QAbstractVideoSurface* self, const char* signal) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        return vqabstractvideosurface->receivers(signal);
    } else {
        return vqabstractvideosurface->receivers(signal);
    }
}

// Base class handler implementation
int QAbstractVideoSurface_QBaseReceivers(const QAbstractVideoSurface* self, const char* signal) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_Receivers_IsBase(true);
        return vqabstractvideosurface->receivers(signal);
    } else {
        return vqabstractvideosurface->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnReceivers(const QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_Receivers_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractVideoSurface_IsSignalConnected(const QAbstractVideoSurface* self, QMetaMethod* signal) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        return vqabstractvideosurface->isSignalConnected(*signal);
    } else {
        return vqabstractvideosurface->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QAbstractVideoSurface_QBaseIsSignalConnected(const QAbstractVideoSurface* self, QMetaMethod* signal) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_IsSignalConnected_IsBase(true);
        return vqabstractvideosurface->isSignalConnected(*signal);
    } else {
        return vqabstractvideosurface->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoSurface_OnIsSignalConnected(const QAbstractVideoSurface* self, intptr_t slot) {
    if (auto* vqabstractvideosurface = const_cast<VirtualQAbstractVideoSurface*>(dynamic_cast<const VirtualQAbstractVideoSurface*>(self))) {
        vqabstractvideosurface->setQAbstractVideoSurface_IsSignalConnected_Callback(reinterpret_cast<VirtualQAbstractVideoSurface::QAbstractVideoSurface_IsSignalConnected_Callback>(slot));
    }
}

void QAbstractVideoSurface_Delete(QAbstractVideoSurface* self) {
    delete self;
}
