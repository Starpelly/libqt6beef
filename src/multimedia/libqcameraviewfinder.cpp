#include <QAbstractVideoSurface>
#include <QAction>
#include <QActionEvent>
#include <QBackingStore>
#include <QBitmap>
#include <QByteArray>
#include <QCameraViewfinder>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QCursor>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QFontInfo>
#include <QFontMetrics>
#include <QGraphicsEffect>
#include <QGraphicsProxyWidget>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QKeySequence>
#include <QLayout>
#include <QList>
#include <QLocale>
#include <QMargins>
#include <QMediaBindableInterface>
#include <QMediaObject>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QObjectUserData>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPalette>
#include <QPixmap>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QResizeEvent>
#include <QScreen>
#include <QShowEvent>
#include <QSize>
#include <QSizePolicy>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QTabletEvent>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <QVideoWidget>
#include <QWheelEvent>
#include <QWidget>
#include <QWindow>
#include <qcameraviewfinder.h>
#include "libqcameraviewfinder.h"
#include "libqcameraviewfinder.hxx"

QCameraViewfinder* QCameraViewfinder_new(QWidget* parent) {
    return new VirtualQCameraViewfinder(parent);
}

QCameraViewfinder* QCameraViewfinder_new2() {
    return new VirtualQCameraViewfinder();
}

QMetaObject* QCameraViewfinder_MetaObject(const QCameraViewfinder* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraViewfinder_Metacast(QCameraViewfinder* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraViewfinder_Metacall(QCameraViewfinder* self, int param1, int param2, void** param3) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QCameraViewfinder_OnMetacall(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_Metacall_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QCameraViewfinder_QBaseMetacall(QCameraViewfinder* self, int param1, int param2, void** param3) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_Metacall_IsBase(true);
        return vqcameraviewfinder->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QCameraViewfinder_Tr(const char* s) {
    QString _ret = QCameraViewfinder::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinder_TrUtf8(const char* s) {
    QString _ret = QCameraViewfinder::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinder_Tr2(const char* s, const char* c) {
    QString _ret = QCameraViewfinder::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinder_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraViewfinder::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinder_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraViewfinder::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinder_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraViewfinder::trUtf8(s, c, static_cast<int>(n));
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
QMediaObject* QCameraViewfinder_MediaObject(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->mediaObject();
    } else {
        return vqcameraviewfinder->mediaObject();
    }
}

// Base class handler implementation
QMediaObject* QCameraViewfinder_QBaseMediaObject(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_MediaObject_IsBase(true);
        return vqcameraviewfinder->mediaObject();
    } else {
        return vqcameraviewfinder->mediaObject();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnMediaObject(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_MediaObject_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_MediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_SetMediaObject(QCameraViewfinder* self, QMediaObject* object) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        return vqcameraviewfinder->setMediaObject(object);
    } else {
        return vqcameraviewfinder->setMediaObject(object);
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseSetMediaObject(QCameraViewfinder* self, QMediaObject* object) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_SetMediaObject_IsBase(true);
        return vqcameraviewfinder->setMediaObject(object);
    } else {
        return vqcameraviewfinder->setMediaObject(object);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnSetMediaObject(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_SetMediaObject_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_SetMediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
QSize* QCameraViewfinder_SizeHint(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return new QSize(vqcameraviewfinder->sizeHint());
    } else {
        return new QSize(self->sizeHint());
    }
}

// Base class handler implementation
QSize* QCameraViewfinder_QBaseSizeHint(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_SizeHint_IsBase(true);
        return new QSize(vqcameraviewfinder->sizeHint());
    } else {
        return new QSize(self->sizeHint());
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnSizeHint(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_SizeHint_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_SizeHint_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_Event(QCameraViewfinder* self, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        return vqcameraviewfinder->event(event);
    } else {
        return vqcameraviewfinder->event(event);
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseEvent(QCameraViewfinder* self, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_Event_IsBase(true);
        return vqcameraviewfinder->event(event);
    } else {
        return vqcameraviewfinder->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_Event_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_Event_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_ShowEvent(QCameraViewfinder* self, QShowEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->showEvent(event);
    } else {
        vqcameraviewfinder->showEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseShowEvent(QCameraViewfinder* self, QShowEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ShowEvent_IsBase(true);
        vqcameraviewfinder->showEvent(event);
    } else {
        vqcameraviewfinder->showEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnShowEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ShowEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_ShowEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_HideEvent(QCameraViewfinder* self, QHideEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->hideEvent(event);
    } else {
        vqcameraviewfinder->hideEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseHideEvent(QCameraViewfinder* self, QHideEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_HideEvent_IsBase(true);
        vqcameraviewfinder->hideEvent(event);
    } else {
        vqcameraviewfinder->hideEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnHideEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_HideEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_HideEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_ResizeEvent(QCameraViewfinder* self, QResizeEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->resizeEvent(event);
    } else {
        vqcameraviewfinder->resizeEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseResizeEvent(QCameraViewfinder* self, QResizeEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ResizeEvent_IsBase(true);
        vqcameraviewfinder->resizeEvent(event);
    } else {
        vqcameraviewfinder->resizeEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnResizeEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ResizeEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_ResizeEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_MoveEvent(QCameraViewfinder* self, QMoveEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->moveEvent(event);
    } else {
        vqcameraviewfinder->moveEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseMoveEvent(QCameraViewfinder* self, QMoveEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MoveEvent_IsBase(true);
        vqcameraviewfinder->moveEvent(event);
    } else {
        vqcameraviewfinder->moveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnMoveEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MoveEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_MoveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_PaintEvent(QCameraViewfinder* self, QPaintEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->paintEvent(event);
    } else {
        vqcameraviewfinder->paintEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBasePaintEvent(QCameraViewfinder* self, QPaintEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_PaintEvent_IsBase(true);
        vqcameraviewfinder->paintEvent(event);
    } else {
        vqcameraviewfinder->paintEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnPaintEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_PaintEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_PaintEvent_Callback>(slot));
    }
}

// Derived class handler implementation
int QCameraViewfinder_DevType(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->devType();
    } else {
        return vqcameraviewfinder->devType();
    }
}

// Base class handler implementation
int QCameraViewfinder_QBaseDevType(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_DevType_IsBase(true);
        return vqcameraviewfinder->devType();
    } else {
        return vqcameraviewfinder->devType();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnDevType(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_DevType_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_DevType_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_SetVisible(QCameraViewfinder* self, bool visible) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setVisible(visible);
    } else {
        vqcameraviewfinder->setVisible(visible);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseSetVisible(QCameraViewfinder* self, bool visible) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_SetVisible_IsBase(true);
        vqcameraviewfinder->setVisible(visible);
    } else {
        vqcameraviewfinder->setVisible(visible);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnSetVisible(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_SetVisible_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_SetVisible_Callback>(slot));
    }
}

// Derived class handler implementation
QSize* QCameraViewfinder_MinimumSizeHint(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return new QSize(vqcameraviewfinder->minimumSizeHint());
    } else {
        return new QSize(self->minimumSizeHint());
    }
}

// Base class handler implementation
QSize* QCameraViewfinder_QBaseMinimumSizeHint(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_MinimumSizeHint_IsBase(true);
        return new QSize(vqcameraviewfinder->minimumSizeHint());
    } else {
        return new QSize(self->minimumSizeHint());
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnMinimumSizeHint(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_MinimumSizeHint_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_MinimumSizeHint_Callback>(slot));
    }
}

// Derived class handler implementation
int QCameraViewfinder_HeightForWidth(const QCameraViewfinder* self, int param1) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->heightForWidth(static_cast<int>(param1));
    } else {
        return vqcameraviewfinder->heightForWidth(static_cast<int>(param1));
    }
}

// Base class handler implementation
int QCameraViewfinder_QBaseHeightForWidth(const QCameraViewfinder* self, int param1) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_HeightForWidth_IsBase(true);
        return vqcameraviewfinder->heightForWidth(static_cast<int>(param1));
    } else {
        return vqcameraviewfinder->heightForWidth(static_cast<int>(param1));
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnHeightForWidth(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_HeightForWidth_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_HeightForWidth_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_HasHeightForWidth(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->hasHeightForWidth();
    } else {
        return vqcameraviewfinder->hasHeightForWidth();
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseHasHeightForWidth(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_HasHeightForWidth_IsBase(true);
        return vqcameraviewfinder->hasHeightForWidth();
    } else {
        return vqcameraviewfinder->hasHeightForWidth();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnHasHeightForWidth(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_HasHeightForWidth_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_HasHeightForWidth_Callback>(slot));
    }
}

// Derived class handler implementation
QPaintEngine* QCameraViewfinder_PaintEngine(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->paintEngine();
    } else {
        return vqcameraviewfinder->paintEngine();
    }
}

// Base class handler implementation
QPaintEngine* QCameraViewfinder_QBasePaintEngine(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_PaintEngine_IsBase(true);
        return vqcameraviewfinder->paintEngine();
    } else {
        return vqcameraviewfinder->paintEngine();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnPaintEngine(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_PaintEngine_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_PaintEngine_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_MousePressEvent(QCameraViewfinder* self, QMouseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->mousePressEvent(event);
    } else {
        vqcameraviewfinder->mousePressEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseMousePressEvent(QCameraViewfinder* self, QMouseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MousePressEvent_IsBase(true);
        vqcameraviewfinder->mousePressEvent(event);
    } else {
        vqcameraviewfinder->mousePressEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnMousePressEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MousePressEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_MousePressEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_MouseReleaseEvent(QCameraViewfinder* self, QMouseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->mouseReleaseEvent(event);
    } else {
        vqcameraviewfinder->mouseReleaseEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseMouseReleaseEvent(QCameraViewfinder* self, QMouseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MouseReleaseEvent_IsBase(true);
        vqcameraviewfinder->mouseReleaseEvent(event);
    } else {
        vqcameraviewfinder->mouseReleaseEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnMouseReleaseEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MouseReleaseEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_MouseReleaseEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_MouseDoubleClickEvent(QCameraViewfinder* self, QMouseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->mouseDoubleClickEvent(event);
    } else {
        vqcameraviewfinder->mouseDoubleClickEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseMouseDoubleClickEvent(QCameraViewfinder* self, QMouseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MouseDoubleClickEvent_IsBase(true);
        vqcameraviewfinder->mouseDoubleClickEvent(event);
    } else {
        vqcameraviewfinder->mouseDoubleClickEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnMouseDoubleClickEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MouseDoubleClickEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_MouseDoubleClickEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_MouseMoveEvent(QCameraViewfinder* self, QMouseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->mouseMoveEvent(event);
    } else {
        vqcameraviewfinder->mouseMoveEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseMouseMoveEvent(QCameraViewfinder* self, QMouseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MouseMoveEvent_IsBase(true);
        vqcameraviewfinder->mouseMoveEvent(event);
    } else {
        vqcameraviewfinder->mouseMoveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnMouseMoveEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_MouseMoveEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_MouseMoveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_WheelEvent(QCameraViewfinder* self, QWheelEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->wheelEvent(event);
    } else {
        vqcameraviewfinder->wheelEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseWheelEvent(QCameraViewfinder* self, QWheelEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_WheelEvent_IsBase(true);
        vqcameraviewfinder->wheelEvent(event);
    } else {
        vqcameraviewfinder->wheelEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnWheelEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_WheelEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_WheelEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_KeyPressEvent(QCameraViewfinder* self, QKeyEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->keyPressEvent(event);
    } else {
        vqcameraviewfinder->keyPressEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseKeyPressEvent(QCameraViewfinder* self, QKeyEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_KeyPressEvent_IsBase(true);
        vqcameraviewfinder->keyPressEvent(event);
    } else {
        vqcameraviewfinder->keyPressEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnKeyPressEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_KeyPressEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_KeyPressEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_KeyReleaseEvent(QCameraViewfinder* self, QKeyEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->keyReleaseEvent(event);
    } else {
        vqcameraviewfinder->keyReleaseEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseKeyReleaseEvent(QCameraViewfinder* self, QKeyEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_KeyReleaseEvent_IsBase(true);
        vqcameraviewfinder->keyReleaseEvent(event);
    } else {
        vqcameraviewfinder->keyReleaseEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnKeyReleaseEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_KeyReleaseEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_KeyReleaseEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_FocusInEvent(QCameraViewfinder* self, QFocusEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->focusInEvent(event);
    } else {
        vqcameraviewfinder->focusInEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseFocusInEvent(QCameraViewfinder* self, QFocusEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusInEvent_IsBase(true);
        vqcameraviewfinder->focusInEvent(event);
    } else {
        vqcameraviewfinder->focusInEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnFocusInEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusInEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_FocusInEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_FocusOutEvent(QCameraViewfinder* self, QFocusEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->focusOutEvent(event);
    } else {
        vqcameraviewfinder->focusOutEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseFocusOutEvent(QCameraViewfinder* self, QFocusEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusOutEvent_IsBase(true);
        vqcameraviewfinder->focusOutEvent(event);
    } else {
        vqcameraviewfinder->focusOutEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnFocusOutEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusOutEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_FocusOutEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_EnterEvent(QCameraViewfinder* self, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->enterEvent(event);
    } else {
        vqcameraviewfinder->enterEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseEnterEvent(QCameraViewfinder* self, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_EnterEvent_IsBase(true);
        vqcameraviewfinder->enterEvent(event);
    } else {
        vqcameraviewfinder->enterEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnEnterEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_EnterEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_EnterEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_LeaveEvent(QCameraViewfinder* self, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->leaveEvent(event);
    } else {
        vqcameraviewfinder->leaveEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseLeaveEvent(QCameraViewfinder* self, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_LeaveEvent_IsBase(true);
        vqcameraviewfinder->leaveEvent(event);
    } else {
        vqcameraviewfinder->leaveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnLeaveEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_LeaveEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_LeaveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_CloseEvent(QCameraViewfinder* self, QCloseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->closeEvent(event);
    } else {
        vqcameraviewfinder->closeEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseCloseEvent(QCameraViewfinder* self, QCloseEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_CloseEvent_IsBase(true);
        vqcameraviewfinder->closeEvent(event);
    } else {
        vqcameraviewfinder->closeEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnCloseEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_CloseEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_CloseEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_ContextMenuEvent(QCameraViewfinder* self, QContextMenuEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->contextMenuEvent(event);
    } else {
        vqcameraviewfinder->contextMenuEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseContextMenuEvent(QCameraViewfinder* self, QContextMenuEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ContextMenuEvent_IsBase(true);
        vqcameraviewfinder->contextMenuEvent(event);
    } else {
        vqcameraviewfinder->contextMenuEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnContextMenuEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ContextMenuEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_ContextMenuEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_TabletEvent(QCameraViewfinder* self, QTabletEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->tabletEvent(event);
    } else {
        vqcameraviewfinder->tabletEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseTabletEvent(QCameraViewfinder* self, QTabletEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_TabletEvent_IsBase(true);
        vqcameraviewfinder->tabletEvent(event);
    } else {
        vqcameraviewfinder->tabletEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnTabletEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_TabletEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_TabletEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_ActionEvent(QCameraViewfinder* self, QActionEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->actionEvent(event);
    } else {
        vqcameraviewfinder->actionEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseActionEvent(QCameraViewfinder* self, QActionEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ActionEvent_IsBase(true);
        vqcameraviewfinder->actionEvent(event);
    } else {
        vqcameraviewfinder->actionEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnActionEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ActionEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_ActionEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_DragEnterEvent(QCameraViewfinder* self, QDragEnterEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->dragEnterEvent(event);
    } else {
        vqcameraviewfinder->dragEnterEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseDragEnterEvent(QCameraViewfinder* self, QDragEnterEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DragEnterEvent_IsBase(true);
        vqcameraviewfinder->dragEnterEvent(event);
    } else {
        vqcameraviewfinder->dragEnterEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnDragEnterEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DragEnterEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_DragEnterEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_DragMoveEvent(QCameraViewfinder* self, QDragMoveEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->dragMoveEvent(event);
    } else {
        vqcameraviewfinder->dragMoveEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseDragMoveEvent(QCameraViewfinder* self, QDragMoveEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DragMoveEvent_IsBase(true);
        vqcameraviewfinder->dragMoveEvent(event);
    } else {
        vqcameraviewfinder->dragMoveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnDragMoveEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DragMoveEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_DragMoveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_DragLeaveEvent(QCameraViewfinder* self, QDragLeaveEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->dragLeaveEvent(event);
    } else {
        vqcameraviewfinder->dragLeaveEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseDragLeaveEvent(QCameraViewfinder* self, QDragLeaveEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DragLeaveEvent_IsBase(true);
        vqcameraviewfinder->dragLeaveEvent(event);
    } else {
        vqcameraviewfinder->dragLeaveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnDragLeaveEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DragLeaveEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_DragLeaveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_DropEvent(QCameraViewfinder* self, QDropEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->dropEvent(event);
    } else {
        vqcameraviewfinder->dropEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseDropEvent(QCameraViewfinder* self, QDropEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DropEvent_IsBase(true);
        vqcameraviewfinder->dropEvent(event);
    } else {
        vqcameraviewfinder->dropEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnDropEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DropEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_DropEvent_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_NativeEvent(QCameraViewfinder* self, libqt_string eventType, void* message, long* result) {
    QByteArray eventType_QByteArray(eventType.data, eventType.len);
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        return vqcameraviewfinder->nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
    } else {
        return vqcameraviewfinder->nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseNativeEvent(QCameraViewfinder* self, libqt_string eventType, void* message, long* result) {
    QByteArray eventType_QByteArray(eventType.data, eventType.len);
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_NativeEvent_IsBase(true);
        return vqcameraviewfinder->nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
    } else {
        return vqcameraviewfinder->nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnNativeEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_NativeEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_NativeEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_ChangeEvent(QCameraViewfinder* self, QEvent* param1) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->changeEvent(param1);
    } else {
        vqcameraviewfinder->changeEvent(param1);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseChangeEvent(QCameraViewfinder* self, QEvent* param1) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ChangeEvent_IsBase(true);
        vqcameraviewfinder->changeEvent(param1);
    } else {
        vqcameraviewfinder->changeEvent(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnChangeEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ChangeEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_ChangeEvent_Callback>(slot));
    }
}

// Derived class handler implementation
int QCameraViewfinder_Metric(const QCameraViewfinder* self, int param1) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    } else {
        return vqcameraviewfinder->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    }
}

// Base class handler implementation
int QCameraViewfinder_QBaseMetric(const QCameraViewfinder* self, int param1) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_Metric_IsBase(true);
        return vqcameraviewfinder->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    } else {
        return vqcameraviewfinder->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnMetric(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_Metric_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_Metric_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_InitPainter(const QCameraViewfinder* self, QPainter* painter) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->initPainter(painter);
    } else {
        vqcameraviewfinder->initPainter(painter);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseInitPainter(const QCameraViewfinder* self, QPainter* painter) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_InitPainter_IsBase(true);
        vqcameraviewfinder->initPainter(painter);
    } else {
        vqcameraviewfinder->initPainter(painter);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnInitPainter(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_InitPainter_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_InitPainter_Callback>(slot));
    }
}

// Derived class handler implementation
QPaintDevice* QCameraViewfinder_Redirected(const QCameraViewfinder* self, QPoint* offset) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->redirected(offset);
    } else {
        return vqcameraviewfinder->redirected(offset);
    }
}

// Base class handler implementation
QPaintDevice* QCameraViewfinder_QBaseRedirected(const QCameraViewfinder* self, QPoint* offset) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_Redirected_IsBase(true);
        return vqcameraviewfinder->redirected(offset);
    } else {
        return vqcameraviewfinder->redirected(offset);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnRedirected(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_Redirected_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_Redirected_Callback>(slot));
    }
}

// Derived class handler implementation
QPainter* QCameraViewfinder_SharedPainter(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->sharedPainter();
    } else {
        return vqcameraviewfinder->sharedPainter();
    }
}

// Base class handler implementation
QPainter* QCameraViewfinder_QBaseSharedPainter(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_SharedPainter_IsBase(true);
        return vqcameraviewfinder->sharedPainter();
    } else {
        return vqcameraviewfinder->sharedPainter();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnSharedPainter(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_SharedPainter_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_SharedPainter_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_InputMethodEvent(QCameraViewfinder* self, QInputMethodEvent* param1) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->inputMethodEvent(param1);
    } else {
        vqcameraviewfinder->inputMethodEvent(param1);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseInputMethodEvent(QCameraViewfinder* self, QInputMethodEvent* param1) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_InputMethodEvent_IsBase(true);
        vqcameraviewfinder->inputMethodEvent(param1);
    } else {
        vqcameraviewfinder->inputMethodEvent(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnInputMethodEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_InputMethodEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_InputMethodEvent_Callback>(slot));
    }
}

// Derived class handler implementation
QVariant* QCameraViewfinder_InputMethodQuery(const QCameraViewfinder* self, int param1) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return new QVariant(vqcameraviewfinder->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
    } else {
        return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
    }
}

// Base class handler implementation
QVariant* QCameraViewfinder_QBaseInputMethodQuery(const QCameraViewfinder* self, int param1) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_InputMethodQuery_IsBase(true);
        return new QVariant(vqcameraviewfinder->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
    } else {
        return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnInputMethodQuery(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_InputMethodQuery_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_InputMethodQuery_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_FocusNextPrevChild(QCameraViewfinder* self, bool next) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        return vqcameraviewfinder->focusNextPrevChild(next);
    } else {
        return vqcameraviewfinder->focusNextPrevChild(next);
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseFocusNextPrevChild(QCameraViewfinder* self, bool next) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusNextPrevChild_IsBase(true);
        return vqcameraviewfinder->focusNextPrevChild(next);
    } else {
        return vqcameraviewfinder->focusNextPrevChild(next);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnFocusNextPrevChild(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusNextPrevChild_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_FocusNextPrevChild_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_EventFilter(QCameraViewfinder* self, QObject* watched, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        return vqcameraviewfinder->eventFilter(watched, event);
    } else {
        return vqcameraviewfinder->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseEventFilter(QCameraViewfinder* self, QObject* watched, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_EventFilter_IsBase(true);
        return vqcameraviewfinder->eventFilter(watched, event);
    } else {
        return vqcameraviewfinder->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnEventFilter(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_EventFilter_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_TimerEvent(QCameraViewfinder* self, QTimerEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->timerEvent(event);
    } else {
        vqcameraviewfinder->timerEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseTimerEvent(QCameraViewfinder* self, QTimerEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_TimerEvent_IsBase(true);
        vqcameraviewfinder->timerEvent(event);
    } else {
        vqcameraviewfinder->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnTimerEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_TimerEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_ChildEvent(QCameraViewfinder* self, QChildEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->childEvent(event);
    } else {
        vqcameraviewfinder->childEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseChildEvent(QCameraViewfinder* self, QChildEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ChildEvent_IsBase(true);
        vqcameraviewfinder->childEvent(event);
    } else {
        vqcameraviewfinder->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnChildEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ChildEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_CustomEvent(QCameraViewfinder* self, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->customEvent(event);
    } else {
        vqcameraviewfinder->customEvent(event);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseCustomEvent(QCameraViewfinder* self, QEvent* event) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_CustomEvent_IsBase(true);
        vqcameraviewfinder->customEvent(event);
    } else {
        vqcameraviewfinder->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnCustomEvent(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_CustomEvent_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_ConnectNotify(QCameraViewfinder* self, QMetaMethod* signal) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->connectNotify(*signal);
    } else {
        vqcameraviewfinder->connectNotify(*signal);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseConnectNotify(QCameraViewfinder* self, QMetaMethod* signal) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ConnectNotify_IsBase(true);
        vqcameraviewfinder->connectNotify(*signal);
    } else {
        vqcameraviewfinder->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnConnectNotify(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_ConnectNotify_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_DisconnectNotify(QCameraViewfinder* self, QMetaMethod* signal) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->disconnectNotify(*signal);
    } else {
        vqcameraviewfinder->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseDisconnectNotify(QCameraViewfinder* self, QMetaMethod* signal) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DisconnectNotify_IsBase(true);
        vqcameraviewfinder->disconnectNotify(*signal);
    } else {
        vqcameraviewfinder->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnDisconnectNotify(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_DisconnectNotify_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_UpdateMicroFocus(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->updateMicroFocus();
    } else {
        vqcameraviewfinder->updateMicroFocus();
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseUpdateMicroFocus(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_UpdateMicroFocus_IsBase(true);
        vqcameraviewfinder->updateMicroFocus();
    } else {
        vqcameraviewfinder->updateMicroFocus();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnUpdateMicroFocus(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_UpdateMicroFocus_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_UpdateMicroFocus_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_Create(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->create();
    } else {
        vqcameraviewfinder->create();
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseCreate(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_Create_IsBase(true);
        vqcameraviewfinder->create();
    } else {
        vqcameraviewfinder->create();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnCreate(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_Create_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_Create_Callback>(slot));
    }
}

// Derived class handler implementation
void QCameraViewfinder_Destroy(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->destroy();
    } else {
        vqcameraviewfinder->destroy();
    }
}

// Base class handler implementation
void QCameraViewfinder_QBaseDestroy(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_Destroy_IsBase(true);
        vqcameraviewfinder->destroy();
    } else {
        vqcameraviewfinder->destroy();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnDestroy(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_Destroy_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_Destroy_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_FocusNextChild(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        return vqcameraviewfinder->focusNextChild();
    } else {
        return vqcameraviewfinder->focusNextChild();
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseFocusNextChild(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusNextChild_IsBase(true);
        return vqcameraviewfinder->focusNextChild();
    } else {
        return vqcameraviewfinder->focusNextChild();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnFocusNextChild(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusNextChild_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_FocusNextChild_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_FocusPreviousChild(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        return vqcameraviewfinder->focusPreviousChild();
    } else {
        return vqcameraviewfinder->focusPreviousChild();
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseFocusPreviousChild(QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusPreviousChild_IsBase(true);
        return vqcameraviewfinder->focusPreviousChild();
    } else {
        return vqcameraviewfinder->focusPreviousChild();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnFocusPreviousChild(QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = dynamic_cast<VirtualQCameraViewfinder*>(self)) {
        vqcameraviewfinder->setQCameraViewfinder_FocusPreviousChild_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_FocusPreviousChild_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QCameraViewfinder_Sender(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->sender();
    } else {
        return vqcameraviewfinder->sender();
    }
}

// Base class handler implementation
QObject* QCameraViewfinder_QBaseSender(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_Sender_IsBase(true);
        return vqcameraviewfinder->sender();
    } else {
        return vqcameraviewfinder->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnSender(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_Sender_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QCameraViewfinder_SenderSignalIndex(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->senderSignalIndex();
    } else {
        return vqcameraviewfinder->senderSignalIndex();
    }
}

// Base class handler implementation
int QCameraViewfinder_QBaseSenderSignalIndex(const QCameraViewfinder* self) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_SenderSignalIndex_IsBase(true);
        return vqcameraviewfinder->senderSignalIndex();
    } else {
        return vqcameraviewfinder->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnSenderSignalIndex(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_SenderSignalIndex_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QCameraViewfinder_Receivers(const QCameraViewfinder* self, const char* signal) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->receivers(signal);
    } else {
        return vqcameraviewfinder->receivers(signal);
    }
}

// Base class handler implementation
int QCameraViewfinder_QBaseReceivers(const QCameraViewfinder* self, const char* signal) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_Receivers_IsBase(true);
        return vqcameraviewfinder->receivers(signal);
    } else {
        return vqcameraviewfinder->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnReceivers(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_Receivers_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QCameraViewfinder_IsSignalConnected(const QCameraViewfinder* self, QMetaMethod* signal) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        return vqcameraviewfinder->isSignalConnected(*signal);
    } else {
        return vqcameraviewfinder->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QCameraViewfinder_QBaseIsSignalConnected(const QCameraViewfinder* self, QMetaMethod* signal) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_IsSignalConnected_IsBase(true);
        return vqcameraviewfinder->isSignalConnected(*signal);
    } else {
        return vqcameraviewfinder->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QCameraViewfinder_OnIsSignalConnected(const QCameraViewfinder* self, intptr_t slot) {
    if (auto* vqcameraviewfinder = const_cast<VirtualQCameraViewfinder*>(dynamic_cast<const VirtualQCameraViewfinder*>(self))) {
        vqcameraviewfinder->setQCameraViewfinder_IsSignalConnected_Callback(reinterpret_cast<VirtualQCameraViewfinder::QCameraViewfinder_IsSignalConnected_Callback>(slot));
    }
}

void QCameraViewfinder_Delete(QCameraViewfinder* self) {
    delete self;
}
