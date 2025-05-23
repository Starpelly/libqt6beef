#include <QAnyStringView>
#include <QBindingStorage>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QLayout>
#include <QLayoutItem>
#include <QList>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QRect>
#include <QSize>
#include <QSpacerItem>
#include <QStackedLayout>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <QWidget>
#include <qstackedlayout.h>
#include "libqstackedlayout.h"
#include "libqstackedlayout.hxx"

QStackedLayout* QStackedLayout_new(QWidget* parent) {
    return new VirtualQStackedLayout(parent);
}

QStackedLayout* QStackedLayout_new2() {
    return new VirtualQStackedLayout();
}

QStackedLayout* QStackedLayout_new3(QLayout* parentLayout) {
    return new VirtualQStackedLayout(parentLayout);
}

QMetaObject* QStackedLayout_MetaObject(const QStackedLayout* self) {
    return (QMetaObject*)self->metaObject();
}

void* QStackedLayout_Metacast(QStackedLayout* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QStackedLayout_Metacall(QStackedLayout* self, int param1, int param2, void** param3) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QStackedLayout_OnMetacall(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_Metacall_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QStackedLayout_QBaseMetacall(QStackedLayout* self, int param1, int param2, void** param3) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_Metacall_IsBase(true);
        return vqstackedlayout->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QStackedLayout_Tr(const char* s) {
    QString _ret = QStackedLayout::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QStackedLayout_AddWidget(QStackedLayout* self, QWidget* w) {
    return self->addWidget(w);
}

int QStackedLayout_InsertWidget(QStackedLayout* self, int index, QWidget* w) {
    return self->insertWidget(static_cast<int>(index), w);
}

QWidget* QStackedLayout_CurrentWidget(const QStackedLayout* self) {
    return self->currentWidget();
}

int QStackedLayout_CurrentIndex(const QStackedLayout* self) {
    return self->currentIndex();
}

int QStackedLayout_StackingMode(const QStackedLayout* self) {
    return static_cast<int>(self->stackingMode());
}

void QStackedLayout_SetStackingMode(QStackedLayout* self, int stackingMode) {
    self->setStackingMode(static_cast<QStackedLayout::StackingMode>(stackingMode));
}

void QStackedLayout_WidgetRemoved(QStackedLayout* self, int index) {
    self->widgetRemoved(static_cast<int>(index));
}

void QStackedLayout_Connect_WidgetRemoved(QStackedLayout* self, intptr_t slot) {
    void (*slotFunc)(QStackedLayout*, int) = reinterpret_cast<void (*)(QStackedLayout*, int)>(slot);
    QStackedLayout::connect(self, &QStackedLayout::widgetRemoved, [self, slotFunc](int index) {
        int sigval1 = index;
        slotFunc(self, sigval1);
    });
}

void QStackedLayout_CurrentChanged(QStackedLayout* self, int index) {
    self->currentChanged(static_cast<int>(index));
}

void QStackedLayout_Connect_CurrentChanged(QStackedLayout* self, intptr_t slot) {
    void (*slotFunc)(QStackedLayout*, int) = reinterpret_cast<void (*)(QStackedLayout*, int)>(slot);
    QStackedLayout::connect(self, &QStackedLayout::currentChanged, [self, slotFunc](int index) {
        int sigval1 = index;
        slotFunc(self, sigval1);
    });
}

void QStackedLayout_SetCurrentIndex(QStackedLayout* self, int index) {
    self->setCurrentIndex(static_cast<int>(index));
}

void QStackedLayout_SetCurrentWidget(QStackedLayout* self, QWidget* w) {
    self->setCurrentWidget(w);
}

libqt_string QStackedLayout_Tr2(const char* s, const char* c) {
    QString _ret = QStackedLayout::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QStackedLayout_Tr3(const char* s, const char* c, int n) {
    QString _ret = QStackedLayout::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QStackedLayout_IndexOfWithQLayoutItem(const QStackedLayout* self, QLayoutItem* param1) {
    if (auto* vqstackedlayout = dynamic_cast<const VirtualQStackedLayout*>(self)) {
        return self->indexOf(param1);
    } else {
        return self->indexOf(param1);
    }
}

// Derived class handler implementation
int QStackedLayout_Count(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->count();
    } else {
        return vqstackedlayout->count();
    }
}

// Base class handler implementation
int QStackedLayout_QBaseCount(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Count_IsBase(true);
        return vqstackedlayout->count();
    } else {
        return vqstackedlayout->count();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnCount(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Count_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Count_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_AddItem(QStackedLayout* self, QLayoutItem* item) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->addItem(item);
    } else {
        vqstackedlayout->addItem(item);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseAddItem(QStackedLayout* self, QLayoutItem* item) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_AddItem_IsBase(true);
        vqstackedlayout->addItem(item);
    } else {
        vqstackedlayout->addItem(item);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnAddItem(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_AddItem_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_AddItem_Callback>(slot));
    }
}

// Derived class handler implementation
QSize* QStackedLayout_SizeHint(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return new QSize(vqstackedlayout->sizeHint());
    } else {
        return new QSize(self->sizeHint());
    }
}

// Base class handler implementation
QSize* QStackedLayout_QBaseSizeHint(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_SizeHint_IsBase(true);
        return new QSize(vqstackedlayout->sizeHint());
    } else {
        return new QSize(self->sizeHint());
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnSizeHint(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_SizeHint_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_SizeHint_Callback>(slot));
    }
}

// Derived class handler implementation
QSize* QStackedLayout_MinimumSize(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return new QSize(vqstackedlayout->minimumSize());
    } else {
        return new QSize(self->minimumSize());
    }
}

// Base class handler implementation
QSize* QStackedLayout_QBaseMinimumSize(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_MinimumSize_IsBase(true);
        return new QSize(vqstackedlayout->minimumSize());
    } else {
        return new QSize(self->minimumSize());
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnMinimumSize(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_MinimumSize_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_MinimumSize_Callback>(slot));
    }
}

// Derived class handler implementation
QLayoutItem* QStackedLayout_ItemAt(const QStackedLayout* self, int param1) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->itemAt(static_cast<int>(param1));
    } else {
        return vqstackedlayout->itemAt(static_cast<int>(param1));
    }
}

// Base class handler implementation
QLayoutItem* QStackedLayout_QBaseItemAt(const QStackedLayout* self, int param1) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_ItemAt_IsBase(true);
        return vqstackedlayout->itemAt(static_cast<int>(param1));
    } else {
        return vqstackedlayout->itemAt(static_cast<int>(param1));
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnItemAt(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_ItemAt_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_ItemAt_Callback>(slot));
    }
}

// Derived class handler implementation
QLayoutItem* QStackedLayout_TakeAt(QStackedLayout* self, int param1) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        return vqstackedlayout->takeAt(static_cast<int>(param1));
    } else {
        return vqstackedlayout->takeAt(static_cast<int>(param1));
    }
}

// Base class handler implementation
QLayoutItem* QStackedLayout_QBaseTakeAt(QStackedLayout* self, int param1) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_TakeAt_IsBase(true);
        return vqstackedlayout->takeAt(static_cast<int>(param1));
    } else {
        return vqstackedlayout->takeAt(static_cast<int>(param1));
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnTakeAt(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_TakeAt_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_TakeAt_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_SetGeometry(QStackedLayout* self, QRect* rect) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setGeometry(*rect);
    } else {
        vqstackedlayout->setGeometry(*rect);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseSetGeometry(QStackedLayout* self, QRect* rect) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_SetGeometry_IsBase(true);
        vqstackedlayout->setGeometry(*rect);
    } else {
        vqstackedlayout->setGeometry(*rect);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnSetGeometry(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_SetGeometry_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_SetGeometry_Callback>(slot));
    }
}

// Derived class handler implementation
bool QStackedLayout_HasHeightForWidth(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->hasHeightForWidth();
    } else {
        return vqstackedlayout->hasHeightForWidth();
    }
}

// Base class handler implementation
bool QStackedLayout_QBaseHasHeightForWidth(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_HasHeightForWidth_IsBase(true);
        return vqstackedlayout->hasHeightForWidth();
    } else {
        return vqstackedlayout->hasHeightForWidth();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnHasHeightForWidth(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_HasHeightForWidth_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_HasHeightForWidth_Callback>(slot));
    }
}

// Derived class handler implementation
int QStackedLayout_HeightForWidth(const QStackedLayout* self, int width) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->heightForWidth(static_cast<int>(width));
    } else {
        return vqstackedlayout->heightForWidth(static_cast<int>(width));
    }
}

// Base class handler implementation
int QStackedLayout_QBaseHeightForWidth(const QStackedLayout* self, int width) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_HeightForWidth_IsBase(true);
        return vqstackedlayout->heightForWidth(static_cast<int>(width));
    } else {
        return vqstackedlayout->heightForWidth(static_cast<int>(width));
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnHeightForWidth(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_HeightForWidth_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_HeightForWidth_Callback>(slot));
    }
}

// Derived class handler implementation
int QStackedLayout_Spacing(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->spacing();
    } else {
        return vqstackedlayout->spacing();
    }
}

// Base class handler implementation
int QStackedLayout_QBaseSpacing(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Spacing_IsBase(true);
        return vqstackedlayout->spacing();
    } else {
        return vqstackedlayout->spacing();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnSpacing(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Spacing_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Spacing_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_SetSpacing(QStackedLayout* self, int spacing) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setSpacing(static_cast<int>(spacing));
    } else {
        vqstackedlayout->setSpacing(static_cast<int>(spacing));
    }
}

// Base class handler implementation
void QStackedLayout_QBaseSetSpacing(QStackedLayout* self, int spacing) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_SetSpacing_IsBase(true);
        vqstackedlayout->setSpacing(static_cast<int>(spacing));
    } else {
        vqstackedlayout->setSpacing(static_cast<int>(spacing));
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnSetSpacing(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_SetSpacing_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_SetSpacing_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_Invalidate(QStackedLayout* self) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->invalidate();
    } else {
        vqstackedlayout->invalidate();
    }
}

// Base class handler implementation
void QStackedLayout_QBaseInvalidate(QStackedLayout* self) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_Invalidate_IsBase(true);
        vqstackedlayout->invalidate();
    } else {
        vqstackedlayout->invalidate();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnInvalidate(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_Invalidate_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Invalidate_Callback>(slot));
    }
}

// Derived class handler implementation
QRect* QStackedLayout_Geometry(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return new QRect(vqstackedlayout->geometry());
    } else {
        return new QRect(self->geometry());
    }
}

// Base class handler implementation
QRect* QStackedLayout_QBaseGeometry(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Geometry_IsBase(true);
        return new QRect(vqstackedlayout->geometry());
    } else {
        return new QRect(self->geometry());
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnGeometry(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Geometry_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Geometry_Callback>(slot));
    }
}

// Derived class handler implementation
int QStackedLayout_ExpandingDirections(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return static_cast<int>(vqstackedlayout->expandingDirections());
    } else {
        return static_cast<int>(vqstackedlayout->expandingDirections());
    }
}

// Base class handler implementation
int QStackedLayout_QBaseExpandingDirections(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_ExpandingDirections_IsBase(true);
        return static_cast<int>(vqstackedlayout->expandingDirections());
    } else {
        return static_cast<int>(vqstackedlayout->expandingDirections());
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnExpandingDirections(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_ExpandingDirections_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_ExpandingDirections_Callback>(slot));
    }
}

// Derived class handler implementation
QSize* QStackedLayout_MaximumSize(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return new QSize(vqstackedlayout->maximumSize());
    } else {
        return new QSize(self->maximumSize());
    }
}

// Base class handler implementation
QSize* QStackedLayout_QBaseMaximumSize(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_MaximumSize_IsBase(true);
        return new QSize(vqstackedlayout->maximumSize());
    } else {
        return new QSize(self->maximumSize());
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnMaximumSize(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_MaximumSize_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_MaximumSize_Callback>(slot));
    }
}

// Derived class handler implementation
int QStackedLayout_IndexOf(const QStackedLayout* self, QWidget* param1) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->indexOf(param1);
    } else {
        return vqstackedlayout->indexOf(param1);
    }
}

// Base class handler implementation
int QStackedLayout_QBaseIndexOf(const QStackedLayout* self, QWidget* param1) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_IndexOf_IsBase(true);
        return vqstackedlayout->indexOf(param1);
    } else {
        return vqstackedlayout->indexOf(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnIndexOf(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_IndexOf_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_IndexOf_Callback>(slot));
    }
}

// Derived class handler implementation
bool QStackedLayout_IsEmpty(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->isEmpty();
    } else {
        return vqstackedlayout->isEmpty();
    }
}

// Base class handler implementation
bool QStackedLayout_QBaseIsEmpty(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_IsEmpty_IsBase(true);
        return vqstackedlayout->isEmpty();
    } else {
        return vqstackedlayout->isEmpty();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnIsEmpty(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_IsEmpty_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_IsEmpty_Callback>(slot));
    }
}

// Derived class handler implementation
int QStackedLayout_ControlTypes(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return static_cast<int>(vqstackedlayout->controlTypes());
    } else {
        return static_cast<int>(vqstackedlayout->controlTypes());
    }
}

// Base class handler implementation
int QStackedLayout_QBaseControlTypes(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_ControlTypes_IsBase(true);
        return static_cast<int>(vqstackedlayout->controlTypes());
    } else {
        return static_cast<int>(vqstackedlayout->controlTypes());
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnControlTypes(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_ControlTypes_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_ControlTypes_Callback>(slot));
    }
}

// Derived class handler implementation
QLayoutItem* QStackedLayout_ReplaceWidget(QStackedLayout* self, QWidget* from, QWidget* to, int options) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        return vqstackedlayout->replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));
    } else {
        return vqstackedlayout->replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));
    }
}

// Base class handler implementation
QLayoutItem* QStackedLayout_QBaseReplaceWidget(QStackedLayout* self, QWidget* from, QWidget* to, int options) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_ReplaceWidget_IsBase(true);
        return vqstackedlayout->replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));
    } else {
        return vqstackedlayout->replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnReplaceWidget(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_ReplaceWidget_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_ReplaceWidget_Callback>(slot));
    }
}

// Derived class handler implementation
QLayout* QStackedLayout_Layout(QStackedLayout* self) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        return vqstackedlayout->layout();
    } else {
        return vqstackedlayout->layout();
    }
}

// Base class handler implementation
QLayout* QStackedLayout_QBaseLayout(QStackedLayout* self) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_Layout_IsBase(true);
        return vqstackedlayout->layout();
    } else {
        return vqstackedlayout->layout();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnLayout(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_Layout_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Layout_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_ChildEvent(QStackedLayout* self, QChildEvent* e) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->childEvent(e);
    } else {
        vqstackedlayout->childEvent(e);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseChildEvent(QStackedLayout* self, QChildEvent* e) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_ChildEvent_IsBase(true);
        vqstackedlayout->childEvent(e);
    } else {
        vqstackedlayout->childEvent(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnChildEvent(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_ChildEvent_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
bool QStackedLayout_Event(QStackedLayout* self, QEvent* event) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        return vqstackedlayout->event(event);
    } else {
        return vqstackedlayout->event(event);
    }
}

// Base class handler implementation
bool QStackedLayout_QBaseEvent(QStackedLayout* self, QEvent* event) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_Event_IsBase(true);
        return vqstackedlayout->event(event);
    } else {
        return vqstackedlayout->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnEvent(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_Event_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QStackedLayout_EventFilter(QStackedLayout* self, QObject* watched, QEvent* event) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        return vqstackedlayout->eventFilter(watched, event);
    } else {
        return vqstackedlayout->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QStackedLayout_QBaseEventFilter(QStackedLayout* self, QObject* watched, QEvent* event) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_EventFilter_IsBase(true);
        return vqstackedlayout->eventFilter(watched, event);
    } else {
        return vqstackedlayout->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnEventFilter(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_EventFilter_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_TimerEvent(QStackedLayout* self, QTimerEvent* event) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->timerEvent(event);
    } else {
        vqstackedlayout->timerEvent(event);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseTimerEvent(QStackedLayout* self, QTimerEvent* event) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_TimerEvent_IsBase(true);
        vqstackedlayout->timerEvent(event);
    } else {
        vqstackedlayout->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnTimerEvent(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_TimerEvent_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_CustomEvent(QStackedLayout* self, QEvent* event) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->customEvent(event);
    } else {
        vqstackedlayout->customEvent(event);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseCustomEvent(QStackedLayout* self, QEvent* event) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_CustomEvent_IsBase(true);
        vqstackedlayout->customEvent(event);
    } else {
        vqstackedlayout->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnCustomEvent(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_CustomEvent_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_ConnectNotify(QStackedLayout* self, QMetaMethod* signal) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->connectNotify(*signal);
    } else {
        vqstackedlayout->connectNotify(*signal);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseConnectNotify(QStackedLayout* self, QMetaMethod* signal) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_ConnectNotify_IsBase(true);
        vqstackedlayout->connectNotify(*signal);
    } else {
        vqstackedlayout->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnConnectNotify(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_ConnectNotify_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_DisconnectNotify(QStackedLayout* self, QMetaMethod* signal) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->disconnectNotify(*signal);
    } else {
        vqstackedlayout->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseDisconnectNotify(QStackedLayout* self, QMetaMethod* signal) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_DisconnectNotify_IsBase(true);
        vqstackedlayout->disconnectNotify(*signal);
    } else {
        vqstackedlayout->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnDisconnectNotify(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_DisconnectNotify_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
int QStackedLayout_MinimumHeightForWidth(const QStackedLayout* self, int param1) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->minimumHeightForWidth(static_cast<int>(param1));
    } else {
        return vqstackedlayout->minimumHeightForWidth(static_cast<int>(param1));
    }
}

// Base class handler implementation
int QStackedLayout_QBaseMinimumHeightForWidth(const QStackedLayout* self, int param1) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_MinimumHeightForWidth_IsBase(true);
        return vqstackedlayout->minimumHeightForWidth(static_cast<int>(param1));
    } else {
        return vqstackedlayout->minimumHeightForWidth(static_cast<int>(param1));
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnMinimumHeightForWidth(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_MinimumHeightForWidth_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_MinimumHeightForWidth_Callback>(slot));
    }
}

// Derived class handler implementation
QWidget* QStackedLayout_Widget(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->widget();
    } else {
        return vqstackedlayout->widget();
    }
}

// Base class handler implementation
QWidget* QStackedLayout_QBaseWidget(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Widget_IsBase(true);
        return vqstackedlayout->widget();
    } else {
        return vqstackedlayout->widget();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnWidget(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Widget_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Widget_Callback>(slot));
    }
}

// Derived class handler implementation
QSpacerItem* QStackedLayout_SpacerItem(QStackedLayout* self) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        return vqstackedlayout->spacerItem();
    } else {
        return vqstackedlayout->spacerItem();
    }
}

// Base class handler implementation
QSpacerItem* QStackedLayout_QBaseSpacerItem(QStackedLayout* self) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_SpacerItem_IsBase(true);
        return vqstackedlayout->spacerItem();
    } else {
        return vqstackedlayout->spacerItem();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnSpacerItem(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_SpacerItem_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_SpacerItem_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_WidgetEvent(QStackedLayout* self, QEvent* param1) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->widgetEvent(param1);
    } else {
        vqstackedlayout->widgetEvent(param1);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseWidgetEvent(QStackedLayout* self, QEvent* param1) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_WidgetEvent_IsBase(true);
        vqstackedlayout->widgetEvent(param1);
    } else {
        vqstackedlayout->widgetEvent(param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnWidgetEvent(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_WidgetEvent_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_WidgetEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_AddChildLayout(QStackedLayout* self, QLayout* l) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->addChildLayout(l);
    } else {
        vqstackedlayout->addChildLayout(l);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseAddChildLayout(QStackedLayout* self, QLayout* l) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_AddChildLayout_IsBase(true);
        vqstackedlayout->addChildLayout(l);
    } else {
        vqstackedlayout->addChildLayout(l);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnAddChildLayout(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_AddChildLayout_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_AddChildLayout_Callback>(slot));
    }
}

// Derived class handler implementation
void QStackedLayout_AddChildWidget(QStackedLayout* self, QWidget* w) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->addChildWidget(w);
    } else {
        vqstackedlayout->addChildWidget(w);
    }
}

// Base class handler implementation
void QStackedLayout_QBaseAddChildWidget(QStackedLayout* self, QWidget* w) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_AddChildWidget_IsBase(true);
        vqstackedlayout->addChildWidget(w);
    } else {
        vqstackedlayout->addChildWidget(w);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnAddChildWidget(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_AddChildWidget_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_AddChildWidget_Callback>(slot));
    }
}

// Derived class handler implementation
bool QStackedLayout_AdoptLayout(QStackedLayout* self, QLayout* layout) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        return vqstackedlayout->adoptLayout(layout);
    } else {
        return vqstackedlayout->adoptLayout(layout);
    }
}

// Base class handler implementation
bool QStackedLayout_QBaseAdoptLayout(QStackedLayout* self, QLayout* layout) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_AdoptLayout_IsBase(true);
        return vqstackedlayout->adoptLayout(layout);
    } else {
        return vqstackedlayout->adoptLayout(layout);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnAdoptLayout(QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = dynamic_cast<VirtualQStackedLayout*>(self)) {
        vqstackedlayout->setQStackedLayout_AdoptLayout_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_AdoptLayout_Callback>(slot));
    }
}

// Derived class handler implementation
QRect* QStackedLayout_AlignmentRect(const QStackedLayout* self, QRect* param1) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return new QRect(vqstackedlayout->alignmentRect(*param1));
    }
    return {};
}

// Base class handler implementation
QRect* QStackedLayout_QBaseAlignmentRect(const QStackedLayout* self, QRect* param1) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_AlignmentRect_IsBase(true);
        return new QRect(vqstackedlayout->alignmentRect(*param1));
    }
    return {};
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnAlignmentRect(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_AlignmentRect_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_AlignmentRect_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QStackedLayout_Sender(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->sender();
    } else {
        return vqstackedlayout->sender();
    }
}

// Base class handler implementation
QObject* QStackedLayout_QBaseSender(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Sender_IsBase(true);
        return vqstackedlayout->sender();
    } else {
        return vqstackedlayout->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnSender(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Sender_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QStackedLayout_SenderSignalIndex(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->senderSignalIndex();
    } else {
        return vqstackedlayout->senderSignalIndex();
    }
}

// Base class handler implementation
int QStackedLayout_QBaseSenderSignalIndex(const QStackedLayout* self) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_SenderSignalIndex_IsBase(true);
        return vqstackedlayout->senderSignalIndex();
    } else {
        return vqstackedlayout->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnSenderSignalIndex(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_SenderSignalIndex_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QStackedLayout_Receivers(const QStackedLayout* self, const char* signal) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->receivers(signal);
    } else {
        return vqstackedlayout->receivers(signal);
    }
}

// Base class handler implementation
int QStackedLayout_QBaseReceivers(const QStackedLayout* self, const char* signal) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Receivers_IsBase(true);
        return vqstackedlayout->receivers(signal);
    } else {
        return vqstackedlayout->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnReceivers(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_Receivers_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QStackedLayout_IsSignalConnected(const QStackedLayout* self, QMetaMethod* signal) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        return vqstackedlayout->isSignalConnected(*signal);
    } else {
        return vqstackedlayout->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QStackedLayout_QBaseIsSignalConnected(const QStackedLayout* self, QMetaMethod* signal) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_IsSignalConnected_IsBase(true);
        return vqstackedlayout->isSignalConnected(*signal);
    } else {
        return vqstackedlayout->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QStackedLayout_OnIsSignalConnected(const QStackedLayout* self, intptr_t slot) {
    if (auto* vqstackedlayout = const_cast<VirtualQStackedLayout*>(dynamic_cast<const VirtualQStackedLayout*>(self))) {
        vqstackedlayout->setQStackedLayout_IsSignalConnected_Callback(reinterpret_cast<VirtualQStackedLayout::QStackedLayout_IsSignalConnected_Callback>(slot));
    }
}

void QStackedLayout_Delete(QStackedLayout* self) {
    delete self;
}
