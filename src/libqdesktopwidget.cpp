#include <QAction>
#include <QActionEvent>
#include <QBackingStore>
#include <QBitmap>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QCursor>
#include <QDesktopWidget>
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
#include <QWheelEvent>
#include <QWidget>
#include <QWindow>
#include <qdesktopwidget.h>
#include "libqdesktopwidget.h"
#include "libqdesktopwidget.hxx"

QDesktopWidget* QDesktopWidget_new() {
    return new VirtualQDesktopWidget();
}

QMetaObject* QDesktopWidget_MetaObject(const QDesktopWidget* self) {
    return (QMetaObject*)self->metaObject();
}

void* QDesktopWidget_Metacast(QDesktopWidget* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QDesktopWidget_Metacall(QDesktopWidget* self, int param1, int param2, void** param3) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QDesktopWidget_OnMetacall(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_Metacall_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QDesktopWidget_QBaseMetacall(QDesktopWidget* self, int param1, int param2, void** param3) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_Metacall_IsBase(true);
        return vqdesktopwidget->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QDesktopWidget_Tr(const char* s) {
    QString _ret = QDesktopWidget::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDesktopWidget_TrUtf8(const char* s) {
    QString _ret = QDesktopWidget::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QDesktopWidget_ScreenNumber(const QDesktopWidget* self) {
    return self->screenNumber();
}

QRect* QDesktopWidget_ScreenGeometry(const QDesktopWidget* self, QWidget* widget) {
    return new QRect(self->screenGeometry(widget));
}

QRect* QDesktopWidget_AvailableGeometry(const QDesktopWidget* self, QWidget* widget) {
    return new QRect(self->availableGeometry(widget));
}

bool QDesktopWidget_IsVirtualDesktop(const QDesktopWidget* self) {
    return self->isVirtualDesktop();
}

int QDesktopWidget_NumScreens(const QDesktopWidget* self) {
    return self->numScreens();
}

int QDesktopWidget_ScreenCount(const QDesktopWidget* self) {
    return self->screenCount();
}

int QDesktopWidget_PrimaryScreen(const QDesktopWidget* self) {
    return self->primaryScreen();
}

int QDesktopWidget_ScreenNumberWithQPoint(const QDesktopWidget* self, QPoint* param1) {
    return self->screenNumber(*param1);
}

QWidget* QDesktopWidget_Screen(QDesktopWidget* self) {
    return self->screen();
}

QRect* QDesktopWidget_ScreenGeometry2(const QDesktopWidget* self) {
    return new QRect(self->screenGeometry());
}

QRect* QDesktopWidget_ScreenGeometryWithPoint(const QDesktopWidget* self, QPoint* point) {
    return new QRect(self->screenGeometry(*point));
}

QRect* QDesktopWidget_AvailableGeometry2(const QDesktopWidget* self) {
    return new QRect(self->availableGeometry());
}

QRect* QDesktopWidget_AvailableGeometryWithPoint(const QDesktopWidget* self, QPoint* point) {
    return new QRect(self->availableGeometry(*point));
}

void QDesktopWidget_Resized(QDesktopWidget* self, int param1) {
    self->resized(static_cast<int>(param1));
}

void QDesktopWidget_Connect_Resized(QDesktopWidget* self, intptr_t slot) {
    void (*slotFunc)(QDesktopWidget*, int) = reinterpret_cast<void (*)(QDesktopWidget*, int)>(slot);
    QDesktopWidget::connect(self, &QDesktopWidget::resized, [self, slotFunc](int param1) {
        int sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QDesktopWidget_WorkAreaResized(QDesktopWidget* self, int param1) {
    self->workAreaResized(static_cast<int>(param1));
}

void QDesktopWidget_Connect_WorkAreaResized(QDesktopWidget* self, intptr_t slot) {
    void (*slotFunc)(QDesktopWidget*, int) = reinterpret_cast<void (*)(QDesktopWidget*, int)>(slot);
    QDesktopWidget::connect(self, &QDesktopWidget::workAreaResized, [self, slotFunc](int param1) {
        int sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QDesktopWidget_ScreenCountChanged(QDesktopWidget* self, int param1) {
    self->screenCountChanged(static_cast<int>(param1));
}

void QDesktopWidget_Connect_ScreenCountChanged(QDesktopWidget* self, intptr_t slot) {
    void (*slotFunc)(QDesktopWidget*, int) = reinterpret_cast<void (*)(QDesktopWidget*, int)>(slot);
    QDesktopWidget::connect(self, &QDesktopWidget::screenCountChanged, [self, slotFunc](int param1) {
        int sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QDesktopWidget_PrimaryScreenChanged(QDesktopWidget* self) {
    self->primaryScreenChanged();
}

void QDesktopWidget_Connect_PrimaryScreenChanged(QDesktopWidget* self, intptr_t slot) {
    void (*slotFunc)(QDesktopWidget*) = reinterpret_cast<void (*)(QDesktopWidget*)>(slot);
    QDesktopWidget::connect(self, &QDesktopWidget::primaryScreenChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QDesktopWidget_Tr2(const char* s, const char* c) {
    QString _ret = QDesktopWidget::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDesktopWidget_Tr3(const char* s, const char* c, int n) {
    QString _ret = QDesktopWidget::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDesktopWidget_TrUtf82(const char* s, const char* c) {
    QString _ret = QDesktopWidget::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDesktopWidget_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QDesktopWidget::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QDesktopWidget_ScreenNumber1(const QDesktopWidget* self, QWidget* widget) {
    return self->screenNumber(widget);
}

QWidget* QDesktopWidget_Screen1(QDesktopWidget* self, int screen) {
    return self->screen(static_cast<int>(screen));
}

QRect* QDesktopWidget_ScreenGeometry1(const QDesktopWidget* self, int screen) {
    return new QRect(self->screenGeometry(static_cast<int>(screen)));
}

QRect* QDesktopWidget_AvailableGeometry1(const QDesktopWidget* self, int screen) {
    return new QRect(self->availableGeometry(static_cast<int>(screen)));
}

// Derived class handler implementation
void QDesktopWidget_ResizeEvent(QDesktopWidget* self, QResizeEvent* e) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->resizeEvent(e);
    } else {
        vqdesktopwidget->resizeEvent(e);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseResizeEvent(QDesktopWidget* self, QResizeEvent* e) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ResizeEvent_IsBase(true);
        vqdesktopwidget->resizeEvent(e);
    } else {
        vqdesktopwidget->resizeEvent(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnResizeEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ResizeEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_ResizeEvent_Callback>(slot));
    }
}

// Derived class handler implementation
int QDesktopWidget_DevType(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->devType();
    } else {
        return vqdesktopwidget->devType();
    }
}

// Base class handler implementation
int QDesktopWidget_QBaseDevType(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_DevType_IsBase(true);
        return vqdesktopwidget->devType();
    } else {
        return vqdesktopwidget->devType();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnDevType(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_DevType_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_DevType_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_SetVisible(QDesktopWidget* self, bool visible) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setVisible(visible);
    } else {
        vqdesktopwidget->setVisible(visible);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseSetVisible(QDesktopWidget* self, bool visible) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_SetVisible_IsBase(true);
        vqdesktopwidget->setVisible(visible);
    } else {
        vqdesktopwidget->setVisible(visible);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnSetVisible(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_SetVisible_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_SetVisible_Callback>(slot));
    }
}

// Derived class handler implementation
QSize* QDesktopWidget_SizeHint(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return new QSize(vqdesktopwidget->sizeHint());
    } else {
        return new QSize(self->sizeHint());
    }
}

// Base class handler implementation
QSize* QDesktopWidget_QBaseSizeHint(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_SizeHint_IsBase(true);
        return new QSize(vqdesktopwidget->sizeHint());
    } else {
        return new QSize(self->sizeHint());
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnSizeHint(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_SizeHint_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_SizeHint_Callback>(slot));
    }
}

// Derived class handler implementation
QSize* QDesktopWidget_MinimumSizeHint(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return new QSize(vqdesktopwidget->minimumSizeHint());
    } else {
        return new QSize(self->minimumSizeHint());
    }
}

// Base class handler implementation
QSize* QDesktopWidget_QBaseMinimumSizeHint(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_MinimumSizeHint_IsBase(true);
        return new QSize(vqdesktopwidget->minimumSizeHint());
    } else {
        return new QSize(self->minimumSizeHint());
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnMinimumSizeHint(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_MinimumSizeHint_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_MinimumSizeHint_Callback>(slot));
    }
}

// Derived class handler implementation
int QDesktopWidget_HeightForWidth(const QDesktopWidget* self, int param1) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->heightForWidth(static_cast<int>(param1));
    } else {
        return vqdesktopwidget->heightForWidth(static_cast<int>(param1));
    }
}

// Base class handler implementation
int QDesktopWidget_QBaseHeightForWidth(const QDesktopWidget* self, int param1) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_HeightForWidth_IsBase(true);
        return vqdesktopwidget->heightForWidth(static_cast<int>(param1));
    } else {
        return vqdesktopwidget->heightForWidth(static_cast<int>(param1));
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnHeightForWidth(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_HeightForWidth_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_HeightForWidth_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDesktopWidget_HasHeightForWidth(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->hasHeightForWidth();
    } else {
        return vqdesktopwidget->hasHeightForWidth();
    }
}

// Base class handler implementation
bool QDesktopWidget_QBaseHasHeightForWidth(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_HasHeightForWidth_IsBase(true);
        return vqdesktopwidget->hasHeightForWidth();
    } else {
        return vqdesktopwidget->hasHeightForWidth();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnHasHeightForWidth(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_HasHeightForWidth_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_HasHeightForWidth_Callback>(slot));
    }
}

// Derived class handler implementation
QPaintEngine* QDesktopWidget_PaintEngine(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->paintEngine();
    } else {
        return vqdesktopwidget->paintEngine();
    }
}

// Base class handler implementation
QPaintEngine* QDesktopWidget_QBasePaintEngine(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_PaintEngine_IsBase(true);
        return vqdesktopwidget->paintEngine();
    } else {
        return vqdesktopwidget->paintEngine();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnPaintEngine(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_PaintEngine_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_PaintEngine_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDesktopWidget_Event(QDesktopWidget* self, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        return vqdesktopwidget->event(event);
    } else {
        return vqdesktopwidget->event(event);
    }
}

// Base class handler implementation
bool QDesktopWidget_QBaseEvent(QDesktopWidget* self, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_Event_IsBase(true);
        return vqdesktopwidget->event(event);
    } else {
        return vqdesktopwidget->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_Event_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_Event_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_MousePressEvent(QDesktopWidget* self, QMouseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->mousePressEvent(event);
    } else {
        vqdesktopwidget->mousePressEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseMousePressEvent(QDesktopWidget* self, QMouseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MousePressEvent_IsBase(true);
        vqdesktopwidget->mousePressEvent(event);
    } else {
        vqdesktopwidget->mousePressEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnMousePressEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MousePressEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_MousePressEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_MouseReleaseEvent(QDesktopWidget* self, QMouseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->mouseReleaseEvent(event);
    } else {
        vqdesktopwidget->mouseReleaseEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseMouseReleaseEvent(QDesktopWidget* self, QMouseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MouseReleaseEvent_IsBase(true);
        vqdesktopwidget->mouseReleaseEvent(event);
    } else {
        vqdesktopwidget->mouseReleaseEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnMouseReleaseEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MouseReleaseEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_MouseReleaseEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_MouseDoubleClickEvent(QDesktopWidget* self, QMouseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->mouseDoubleClickEvent(event);
    } else {
        vqdesktopwidget->mouseDoubleClickEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseMouseDoubleClickEvent(QDesktopWidget* self, QMouseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MouseDoubleClickEvent_IsBase(true);
        vqdesktopwidget->mouseDoubleClickEvent(event);
    } else {
        vqdesktopwidget->mouseDoubleClickEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnMouseDoubleClickEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MouseDoubleClickEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_MouseDoubleClickEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_MouseMoveEvent(QDesktopWidget* self, QMouseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->mouseMoveEvent(event);
    } else {
        vqdesktopwidget->mouseMoveEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseMouseMoveEvent(QDesktopWidget* self, QMouseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MouseMoveEvent_IsBase(true);
        vqdesktopwidget->mouseMoveEvent(event);
    } else {
        vqdesktopwidget->mouseMoveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnMouseMoveEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MouseMoveEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_MouseMoveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_WheelEvent(QDesktopWidget* self, QWheelEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->wheelEvent(event);
    } else {
        vqdesktopwidget->wheelEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseWheelEvent(QDesktopWidget* self, QWheelEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_WheelEvent_IsBase(true);
        vqdesktopwidget->wheelEvent(event);
    } else {
        vqdesktopwidget->wheelEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnWheelEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_WheelEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_WheelEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_KeyPressEvent(QDesktopWidget* self, QKeyEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->keyPressEvent(event);
    } else {
        vqdesktopwidget->keyPressEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseKeyPressEvent(QDesktopWidget* self, QKeyEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_KeyPressEvent_IsBase(true);
        vqdesktopwidget->keyPressEvent(event);
    } else {
        vqdesktopwidget->keyPressEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnKeyPressEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_KeyPressEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_KeyPressEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_KeyReleaseEvent(QDesktopWidget* self, QKeyEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->keyReleaseEvent(event);
    } else {
        vqdesktopwidget->keyReleaseEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseKeyReleaseEvent(QDesktopWidget* self, QKeyEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_KeyReleaseEvent_IsBase(true);
        vqdesktopwidget->keyReleaseEvent(event);
    } else {
        vqdesktopwidget->keyReleaseEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnKeyReleaseEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_KeyReleaseEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_KeyReleaseEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_FocusInEvent(QDesktopWidget* self, QFocusEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->focusInEvent(event);
    } else {
        vqdesktopwidget->focusInEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseFocusInEvent(QDesktopWidget* self, QFocusEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusInEvent_IsBase(true);
        vqdesktopwidget->focusInEvent(event);
    } else {
        vqdesktopwidget->focusInEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnFocusInEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusInEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_FocusInEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_FocusOutEvent(QDesktopWidget* self, QFocusEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->focusOutEvent(event);
    } else {
        vqdesktopwidget->focusOutEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseFocusOutEvent(QDesktopWidget* self, QFocusEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusOutEvent_IsBase(true);
        vqdesktopwidget->focusOutEvent(event);
    } else {
        vqdesktopwidget->focusOutEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnFocusOutEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusOutEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_FocusOutEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_EnterEvent(QDesktopWidget* self, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->enterEvent(event);
    } else {
        vqdesktopwidget->enterEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseEnterEvent(QDesktopWidget* self, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_EnterEvent_IsBase(true);
        vqdesktopwidget->enterEvent(event);
    } else {
        vqdesktopwidget->enterEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnEnterEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_EnterEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_EnterEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_LeaveEvent(QDesktopWidget* self, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->leaveEvent(event);
    } else {
        vqdesktopwidget->leaveEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseLeaveEvent(QDesktopWidget* self, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_LeaveEvent_IsBase(true);
        vqdesktopwidget->leaveEvent(event);
    } else {
        vqdesktopwidget->leaveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnLeaveEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_LeaveEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_LeaveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_PaintEvent(QDesktopWidget* self, QPaintEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->paintEvent(event);
    } else {
        vqdesktopwidget->paintEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBasePaintEvent(QDesktopWidget* self, QPaintEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_PaintEvent_IsBase(true);
        vqdesktopwidget->paintEvent(event);
    } else {
        vqdesktopwidget->paintEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnPaintEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_PaintEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_PaintEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_MoveEvent(QDesktopWidget* self, QMoveEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->moveEvent(event);
    } else {
        vqdesktopwidget->moveEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseMoveEvent(QDesktopWidget* self, QMoveEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MoveEvent_IsBase(true);
        vqdesktopwidget->moveEvent(event);
    } else {
        vqdesktopwidget->moveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnMoveEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_MoveEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_MoveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_CloseEvent(QDesktopWidget* self, QCloseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->closeEvent(event);
    } else {
        vqdesktopwidget->closeEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseCloseEvent(QDesktopWidget* self, QCloseEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_CloseEvent_IsBase(true);
        vqdesktopwidget->closeEvent(event);
    } else {
        vqdesktopwidget->closeEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnCloseEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_CloseEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_CloseEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_ContextMenuEvent(QDesktopWidget* self, QContextMenuEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->contextMenuEvent(event);
    } else {
        vqdesktopwidget->contextMenuEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseContextMenuEvent(QDesktopWidget* self, QContextMenuEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ContextMenuEvent_IsBase(true);
        vqdesktopwidget->contextMenuEvent(event);
    } else {
        vqdesktopwidget->contextMenuEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnContextMenuEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ContextMenuEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_ContextMenuEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_TabletEvent(QDesktopWidget* self, QTabletEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->tabletEvent(event);
    } else {
        vqdesktopwidget->tabletEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseTabletEvent(QDesktopWidget* self, QTabletEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_TabletEvent_IsBase(true);
        vqdesktopwidget->tabletEvent(event);
    } else {
        vqdesktopwidget->tabletEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnTabletEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_TabletEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_TabletEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_ActionEvent(QDesktopWidget* self, QActionEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->actionEvent(event);
    } else {
        vqdesktopwidget->actionEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseActionEvent(QDesktopWidget* self, QActionEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ActionEvent_IsBase(true);
        vqdesktopwidget->actionEvent(event);
    } else {
        vqdesktopwidget->actionEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnActionEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ActionEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_ActionEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_DragEnterEvent(QDesktopWidget* self, QDragEnterEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->dragEnterEvent(event);
    } else {
        vqdesktopwidget->dragEnterEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseDragEnterEvent(QDesktopWidget* self, QDragEnterEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DragEnterEvent_IsBase(true);
        vqdesktopwidget->dragEnterEvent(event);
    } else {
        vqdesktopwidget->dragEnterEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnDragEnterEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DragEnterEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_DragEnterEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_DragMoveEvent(QDesktopWidget* self, QDragMoveEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->dragMoveEvent(event);
    } else {
        vqdesktopwidget->dragMoveEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseDragMoveEvent(QDesktopWidget* self, QDragMoveEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DragMoveEvent_IsBase(true);
        vqdesktopwidget->dragMoveEvent(event);
    } else {
        vqdesktopwidget->dragMoveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnDragMoveEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DragMoveEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_DragMoveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_DragLeaveEvent(QDesktopWidget* self, QDragLeaveEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->dragLeaveEvent(event);
    } else {
        vqdesktopwidget->dragLeaveEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseDragLeaveEvent(QDesktopWidget* self, QDragLeaveEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DragLeaveEvent_IsBase(true);
        vqdesktopwidget->dragLeaveEvent(event);
    } else {
        vqdesktopwidget->dragLeaveEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnDragLeaveEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DragLeaveEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_DragLeaveEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_DropEvent(QDesktopWidget* self, QDropEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->dropEvent(event);
    } else {
        vqdesktopwidget->dropEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseDropEvent(QDesktopWidget* self, QDropEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DropEvent_IsBase(true);
        vqdesktopwidget->dropEvent(event);
    } else {
        vqdesktopwidget->dropEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnDropEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DropEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_DropEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_ShowEvent(QDesktopWidget* self, QShowEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->showEvent(event);
    } else {
        vqdesktopwidget->showEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseShowEvent(QDesktopWidget* self, QShowEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ShowEvent_IsBase(true);
        vqdesktopwidget->showEvent(event);
    } else {
        vqdesktopwidget->showEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnShowEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ShowEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_ShowEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_HideEvent(QDesktopWidget* self, QHideEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->hideEvent(event);
    } else {
        vqdesktopwidget->hideEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseHideEvent(QDesktopWidget* self, QHideEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_HideEvent_IsBase(true);
        vqdesktopwidget->hideEvent(event);
    } else {
        vqdesktopwidget->hideEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnHideEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_HideEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_HideEvent_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDesktopWidget_NativeEvent(QDesktopWidget* self, libqt_string eventType, void* message, long* result) {
    QByteArray eventType_QByteArray(eventType.data, eventType.len);
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        return vqdesktopwidget->nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
    } else {
        return vqdesktopwidget->nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
    }
}

// Base class handler implementation
bool QDesktopWidget_QBaseNativeEvent(QDesktopWidget* self, libqt_string eventType, void* message, long* result) {
    QByteArray eventType_QByteArray(eventType.data, eventType.len);
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_NativeEvent_IsBase(true);
        return vqdesktopwidget->nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
    } else {
        return vqdesktopwidget->nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnNativeEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_NativeEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_NativeEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_ChangeEvent(QDesktopWidget* self, QEvent* param1) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->changeEvent(param1);
    } else {
        vqdesktopwidget->changeEvent(param1);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseChangeEvent(QDesktopWidget* self, QEvent* param1) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ChangeEvent_IsBase(true);
        vqdesktopwidget->changeEvent(param1);
    } else {
        vqdesktopwidget->changeEvent(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnChangeEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ChangeEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_ChangeEvent_Callback>(slot));
    }
}

// Derived class handler implementation
int QDesktopWidget_Metric(const QDesktopWidget* self, int param1) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    } else {
        return vqdesktopwidget->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    }
}

// Base class handler implementation
int QDesktopWidget_QBaseMetric(const QDesktopWidget* self, int param1) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_Metric_IsBase(true);
        return vqdesktopwidget->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    } else {
        return vqdesktopwidget->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnMetric(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_Metric_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_Metric_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_InitPainter(const QDesktopWidget* self, QPainter* painter) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->initPainter(painter);
    } else {
        vqdesktopwidget->initPainter(painter);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseInitPainter(const QDesktopWidget* self, QPainter* painter) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_InitPainter_IsBase(true);
        vqdesktopwidget->initPainter(painter);
    } else {
        vqdesktopwidget->initPainter(painter);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnInitPainter(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_InitPainter_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_InitPainter_Callback>(slot));
    }
}

// Derived class handler implementation
QPaintDevice* QDesktopWidget_Redirected(const QDesktopWidget* self, QPoint* offset) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->redirected(offset);
    } else {
        return vqdesktopwidget->redirected(offset);
    }
}

// Base class handler implementation
QPaintDevice* QDesktopWidget_QBaseRedirected(const QDesktopWidget* self, QPoint* offset) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_Redirected_IsBase(true);
        return vqdesktopwidget->redirected(offset);
    } else {
        return vqdesktopwidget->redirected(offset);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnRedirected(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_Redirected_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_Redirected_Callback>(slot));
    }
}

// Derived class handler implementation
QPainter* QDesktopWidget_SharedPainter(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->sharedPainter();
    } else {
        return vqdesktopwidget->sharedPainter();
    }
}

// Base class handler implementation
QPainter* QDesktopWidget_QBaseSharedPainter(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_SharedPainter_IsBase(true);
        return vqdesktopwidget->sharedPainter();
    } else {
        return vqdesktopwidget->sharedPainter();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnSharedPainter(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_SharedPainter_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_SharedPainter_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_InputMethodEvent(QDesktopWidget* self, QInputMethodEvent* param1) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->inputMethodEvent(param1);
    } else {
        vqdesktopwidget->inputMethodEvent(param1);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseInputMethodEvent(QDesktopWidget* self, QInputMethodEvent* param1) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_InputMethodEvent_IsBase(true);
        vqdesktopwidget->inputMethodEvent(param1);
    } else {
        vqdesktopwidget->inputMethodEvent(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnInputMethodEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_InputMethodEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_InputMethodEvent_Callback>(slot));
    }
}

// Derived class handler implementation
QVariant* QDesktopWidget_InputMethodQuery(const QDesktopWidget* self, int param1) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return new QVariant(vqdesktopwidget->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
    } else {
        return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
    }
}

// Base class handler implementation
QVariant* QDesktopWidget_QBaseInputMethodQuery(const QDesktopWidget* self, int param1) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_InputMethodQuery_IsBase(true);
        return new QVariant(vqdesktopwidget->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
    } else {
        return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnInputMethodQuery(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_InputMethodQuery_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_InputMethodQuery_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDesktopWidget_FocusNextPrevChild(QDesktopWidget* self, bool next) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        return vqdesktopwidget->focusNextPrevChild(next);
    } else {
        return vqdesktopwidget->focusNextPrevChild(next);
    }
}

// Base class handler implementation
bool QDesktopWidget_QBaseFocusNextPrevChild(QDesktopWidget* self, bool next) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusNextPrevChild_IsBase(true);
        return vqdesktopwidget->focusNextPrevChild(next);
    } else {
        return vqdesktopwidget->focusNextPrevChild(next);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnFocusNextPrevChild(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusNextPrevChild_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_FocusNextPrevChild_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDesktopWidget_EventFilter(QDesktopWidget* self, QObject* watched, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        return vqdesktopwidget->eventFilter(watched, event);
    } else {
        return vqdesktopwidget->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QDesktopWidget_QBaseEventFilter(QDesktopWidget* self, QObject* watched, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_EventFilter_IsBase(true);
        return vqdesktopwidget->eventFilter(watched, event);
    } else {
        return vqdesktopwidget->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnEventFilter(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_EventFilter_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_TimerEvent(QDesktopWidget* self, QTimerEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->timerEvent(event);
    } else {
        vqdesktopwidget->timerEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseTimerEvent(QDesktopWidget* self, QTimerEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_TimerEvent_IsBase(true);
        vqdesktopwidget->timerEvent(event);
    } else {
        vqdesktopwidget->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnTimerEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_TimerEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_ChildEvent(QDesktopWidget* self, QChildEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->childEvent(event);
    } else {
        vqdesktopwidget->childEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseChildEvent(QDesktopWidget* self, QChildEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ChildEvent_IsBase(true);
        vqdesktopwidget->childEvent(event);
    } else {
        vqdesktopwidget->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnChildEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ChildEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_CustomEvent(QDesktopWidget* self, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->customEvent(event);
    } else {
        vqdesktopwidget->customEvent(event);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseCustomEvent(QDesktopWidget* self, QEvent* event) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_CustomEvent_IsBase(true);
        vqdesktopwidget->customEvent(event);
    } else {
        vqdesktopwidget->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnCustomEvent(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_CustomEvent_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_ConnectNotify(QDesktopWidget* self, QMetaMethod* signal) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->connectNotify(*signal);
    } else {
        vqdesktopwidget->connectNotify(*signal);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseConnectNotify(QDesktopWidget* self, QMetaMethod* signal) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ConnectNotify_IsBase(true);
        vqdesktopwidget->connectNotify(*signal);
    } else {
        vqdesktopwidget->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnConnectNotify(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_ConnectNotify_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_DisconnectNotify(QDesktopWidget* self, QMetaMethod* signal) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->disconnectNotify(*signal);
    } else {
        vqdesktopwidget->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseDisconnectNotify(QDesktopWidget* self, QMetaMethod* signal) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DisconnectNotify_IsBase(true);
        vqdesktopwidget->disconnectNotify(*signal);
    } else {
        vqdesktopwidget->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnDisconnectNotify(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_DisconnectNotify_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_UpdateMicroFocus(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->updateMicroFocus();
    } else {
        vqdesktopwidget->updateMicroFocus();
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseUpdateMicroFocus(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_UpdateMicroFocus_IsBase(true);
        vqdesktopwidget->updateMicroFocus();
    } else {
        vqdesktopwidget->updateMicroFocus();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnUpdateMicroFocus(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_UpdateMicroFocus_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_UpdateMicroFocus_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_Create(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->create();
    } else {
        vqdesktopwidget->create();
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseCreate(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_Create_IsBase(true);
        vqdesktopwidget->create();
    } else {
        vqdesktopwidget->create();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnCreate(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_Create_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_Create_Callback>(slot));
    }
}

// Derived class handler implementation
void QDesktopWidget_Destroy(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->destroy();
    } else {
        vqdesktopwidget->destroy();
    }
}

// Base class handler implementation
void QDesktopWidget_QBaseDestroy(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_Destroy_IsBase(true);
        vqdesktopwidget->destroy();
    } else {
        vqdesktopwidget->destroy();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnDestroy(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_Destroy_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_Destroy_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDesktopWidget_FocusNextChild(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        return vqdesktopwidget->focusNextChild();
    } else {
        return vqdesktopwidget->focusNextChild();
    }
}

// Base class handler implementation
bool QDesktopWidget_QBaseFocusNextChild(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusNextChild_IsBase(true);
        return vqdesktopwidget->focusNextChild();
    } else {
        return vqdesktopwidget->focusNextChild();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnFocusNextChild(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusNextChild_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_FocusNextChild_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDesktopWidget_FocusPreviousChild(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        return vqdesktopwidget->focusPreviousChild();
    } else {
        return vqdesktopwidget->focusPreviousChild();
    }
}

// Base class handler implementation
bool QDesktopWidget_QBaseFocusPreviousChild(QDesktopWidget* self) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusPreviousChild_IsBase(true);
        return vqdesktopwidget->focusPreviousChild();
    } else {
        return vqdesktopwidget->focusPreviousChild();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnFocusPreviousChild(QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = dynamic_cast<VirtualQDesktopWidget*>(self)) {
        vqdesktopwidget->setQDesktopWidget_FocusPreviousChild_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_FocusPreviousChild_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QDesktopWidget_Sender(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->sender();
    } else {
        return vqdesktopwidget->sender();
    }
}

// Base class handler implementation
QObject* QDesktopWidget_QBaseSender(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_Sender_IsBase(true);
        return vqdesktopwidget->sender();
    } else {
        return vqdesktopwidget->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnSender(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_Sender_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QDesktopWidget_SenderSignalIndex(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->senderSignalIndex();
    } else {
        return vqdesktopwidget->senderSignalIndex();
    }
}

// Base class handler implementation
int QDesktopWidget_QBaseSenderSignalIndex(const QDesktopWidget* self) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_SenderSignalIndex_IsBase(true);
        return vqdesktopwidget->senderSignalIndex();
    } else {
        return vqdesktopwidget->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnSenderSignalIndex(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_SenderSignalIndex_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QDesktopWidget_Receivers(const QDesktopWidget* self, const char* signal) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->receivers(signal);
    } else {
        return vqdesktopwidget->receivers(signal);
    }
}

// Base class handler implementation
int QDesktopWidget_QBaseReceivers(const QDesktopWidget* self, const char* signal) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_Receivers_IsBase(true);
        return vqdesktopwidget->receivers(signal);
    } else {
        return vqdesktopwidget->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnReceivers(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_Receivers_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDesktopWidget_IsSignalConnected(const QDesktopWidget* self, QMetaMethod* signal) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        return vqdesktopwidget->isSignalConnected(*signal);
    } else {
        return vqdesktopwidget->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QDesktopWidget_QBaseIsSignalConnected(const QDesktopWidget* self, QMetaMethod* signal) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_IsSignalConnected_IsBase(true);
        return vqdesktopwidget->isSignalConnected(*signal);
    } else {
        return vqdesktopwidget->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QDesktopWidget_OnIsSignalConnected(const QDesktopWidget* self, intptr_t slot) {
    if (auto* vqdesktopwidget = const_cast<VirtualQDesktopWidget*>(dynamic_cast<const VirtualQDesktopWidget*>(self))) {
        vqdesktopwidget->setQDesktopWidget_IsSignalConnected_Callback(reinterpret_cast<VirtualQDesktopWidget::QDesktopWidget_IsSignalConnected_Callback>(slot));
    }
}

void QDesktopWidget_Delete(QDesktopWidget* self) {
    delete self;
}
