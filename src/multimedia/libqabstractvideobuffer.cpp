#include <QAbstractPlanarVideoBuffer>
#include <QAbstractVideoBuffer>
#include <QVariant>
#include <qabstractvideobuffer.h>
#include "libqabstractvideobuffer.h"
#include "libqabstractvideobuffer.hxx"

QAbstractVideoBuffer* QAbstractVideoBuffer_new(int typeVal) {
    return new VirtualQAbstractVideoBuffer(static_cast<QAbstractVideoBuffer::HandleType>(typeVal));
}

int QAbstractVideoBuffer_HandleType(const QAbstractVideoBuffer* self) {
    return static_cast<int>(self->handleType());
}

// Derived class handler implementation
void QAbstractVideoBuffer_Release(QAbstractVideoBuffer* self) {
    if (auto* vqabstractvideobuffer = dynamic_cast<VirtualQAbstractVideoBuffer*>(self)) {
        vqabstractvideobuffer->release();
    } else {
        vqabstractvideobuffer->release();
    }
}

// Base class handler implementation
void QAbstractVideoBuffer_QBaseRelease(QAbstractVideoBuffer* self) {
    if (auto* vqabstractvideobuffer = dynamic_cast<VirtualQAbstractVideoBuffer*>(self)) {
        vqabstractvideobuffer->setQAbstractVideoBuffer_Release_IsBase(true);
        vqabstractvideobuffer->release();
    } else {
        vqabstractvideobuffer->release();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoBuffer_OnRelease(QAbstractVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractvideobuffer = dynamic_cast<VirtualQAbstractVideoBuffer*>(self)) {
        vqabstractvideobuffer->setQAbstractVideoBuffer_Release_Callback(reinterpret_cast<VirtualQAbstractVideoBuffer::QAbstractVideoBuffer_Release_Callback>(slot));
    }
}

// Derived class handler implementation
int QAbstractVideoBuffer_MapMode(const QAbstractVideoBuffer* self) {
    if (auto* vqabstractvideobuffer = const_cast<VirtualQAbstractVideoBuffer*>(dynamic_cast<const VirtualQAbstractVideoBuffer*>(self))) {
        return static_cast<int>(vqabstractvideobuffer->mapMode());
    } else {
        return static_cast<int>(vqabstractvideobuffer->mapMode());
    }
}

// Base class handler implementation
int QAbstractVideoBuffer_QBaseMapMode(const QAbstractVideoBuffer* self) {
    if (auto* vqabstractvideobuffer = const_cast<VirtualQAbstractVideoBuffer*>(dynamic_cast<const VirtualQAbstractVideoBuffer*>(self))) {
        vqabstractvideobuffer->setQAbstractVideoBuffer_MapMode_IsBase(true);
        return static_cast<int>(vqabstractvideobuffer->mapMode());
    } else {
        return static_cast<int>(vqabstractvideobuffer->mapMode());
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoBuffer_OnMapMode(const QAbstractVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractvideobuffer = const_cast<VirtualQAbstractVideoBuffer*>(dynamic_cast<const VirtualQAbstractVideoBuffer*>(self))) {
        vqabstractvideobuffer->setQAbstractVideoBuffer_MapMode_Callback(reinterpret_cast<VirtualQAbstractVideoBuffer::QAbstractVideoBuffer_MapMode_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractVideoBuffer_Unmap(QAbstractVideoBuffer* self) {
    if (auto* vqabstractvideobuffer = dynamic_cast<VirtualQAbstractVideoBuffer*>(self)) {
        vqabstractvideobuffer->unmap();
    } else {
        vqabstractvideobuffer->unmap();
    }
}

// Base class handler implementation
void QAbstractVideoBuffer_QBaseUnmap(QAbstractVideoBuffer* self) {
    if (auto* vqabstractvideobuffer = dynamic_cast<VirtualQAbstractVideoBuffer*>(self)) {
        vqabstractvideobuffer->setQAbstractVideoBuffer_Unmap_IsBase(true);
        vqabstractvideobuffer->unmap();
    } else {
        vqabstractvideobuffer->unmap();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoBuffer_OnUnmap(QAbstractVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractvideobuffer = dynamic_cast<VirtualQAbstractVideoBuffer*>(self)) {
        vqabstractvideobuffer->setQAbstractVideoBuffer_Unmap_Callback(reinterpret_cast<VirtualQAbstractVideoBuffer::QAbstractVideoBuffer_Unmap_Callback>(slot));
    }
}

// Derived class handler implementation
QVariant* QAbstractVideoBuffer_Handle(const QAbstractVideoBuffer* self) {
    if (auto* vqabstractvideobuffer = const_cast<VirtualQAbstractVideoBuffer*>(dynamic_cast<const VirtualQAbstractVideoBuffer*>(self))) {
        return new QVariant(vqabstractvideobuffer->handle());
    } else {
        return new QVariant(self->handle());
    }
}

// Base class handler implementation
QVariant* QAbstractVideoBuffer_QBaseHandle(const QAbstractVideoBuffer* self) {
    if (auto* vqabstractvideobuffer = const_cast<VirtualQAbstractVideoBuffer*>(dynamic_cast<const VirtualQAbstractVideoBuffer*>(self))) {
        vqabstractvideobuffer->setQAbstractVideoBuffer_Handle_IsBase(true);
        return new QVariant(vqabstractvideobuffer->handle());
    } else {
        return new QVariant(self->handle());
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractVideoBuffer_OnHandle(const QAbstractVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractvideobuffer = const_cast<VirtualQAbstractVideoBuffer*>(dynamic_cast<const VirtualQAbstractVideoBuffer*>(self))) {
        vqabstractvideobuffer->setQAbstractVideoBuffer_Handle_Callback(reinterpret_cast<VirtualQAbstractVideoBuffer::QAbstractVideoBuffer_Handle_Callback>(slot));
    }
}

void QAbstractVideoBuffer_Delete(QAbstractVideoBuffer* self) {
    delete self;
}

QAbstractPlanarVideoBuffer* QAbstractPlanarVideoBuffer_new(int typeVal) {
    return new VirtualQAbstractPlanarVideoBuffer(static_cast<QAbstractVideoBuffer::HandleType>(typeVal));
}

// Derived class handler implementation
unsigned char* QAbstractPlanarVideoBuffer_Map(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        return static_cast<unsigned char*>(vqabstractplanarvideobuffer->map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine)));
    } else {
        return static_cast<unsigned char*>(vqabstractplanarvideobuffer->map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine)));
    }
}

// Base class handler implementation
unsigned char* QAbstractPlanarVideoBuffer_QBaseMap(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_Map_IsBase(true);
        return static_cast<unsigned char*>(vqabstractplanarvideobuffer->map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine)));
    } else {
        return static_cast<unsigned char*>(vqabstractplanarvideobuffer->map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine)));
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractPlanarVideoBuffer_OnMap(QAbstractPlanarVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_Map_Callback(reinterpret_cast<VirtualQAbstractPlanarVideoBuffer::QAbstractPlanarVideoBuffer_Map_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractPlanarVideoBuffer_Release(QAbstractPlanarVideoBuffer* self) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        vqabstractplanarvideobuffer->release();
    } else {
        vqabstractplanarvideobuffer->release();
    }
}

// Base class handler implementation
void QAbstractPlanarVideoBuffer_QBaseRelease(QAbstractPlanarVideoBuffer* self) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_Release_IsBase(true);
        vqabstractplanarvideobuffer->release();
    } else {
        vqabstractplanarvideobuffer->release();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractPlanarVideoBuffer_OnRelease(QAbstractPlanarVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_Release_Callback(reinterpret_cast<VirtualQAbstractPlanarVideoBuffer::QAbstractPlanarVideoBuffer_Release_Callback>(slot));
    }
}

// Derived class handler implementation
int QAbstractPlanarVideoBuffer_MapMode(const QAbstractPlanarVideoBuffer* self) {
    if (auto* vqabstractplanarvideobuffer = const_cast<VirtualQAbstractPlanarVideoBuffer*>(dynamic_cast<const VirtualQAbstractPlanarVideoBuffer*>(self))) {
        return static_cast<int>(vqabstractplanarvideobuffer->mapMode());
    } else {
        return static_cast<int>(vqabstractplanarvideobuffer->mapMode());
    }
}

// Base class handler implementation
int QAbstractPlanarVideoBuffer_QBaseMapMode(const QAbstractPlanarVideoBuffer* self) {
    if (auto* vqabstractplanarvideobuffer = const_cast<VirtualQAbstractPlanarVideoBuffer*>(dynamic_cast<const VirtualQAbstractPlanarVideoBuffer*>(self))) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_MapMode_IsBase(true);
        return static_cast<int>(vqabstractplanarvideobuffer->mapMode());
    } else {
        return static_cast<int>(vqabstractplanarvideobuffer->mapMode());
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractPlanarVideoBuffer_OnMapMode(const QAbstractPlanarVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractplanarvideobuffer = const_cast<VirtualQAbstractPlanarVideoBuffer*>(dynamic_cast<const VirtualQAbstractPlanarVideoBuffer*>(self))) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_MapMode_Callback(reinterpret_cast<VirtualQAbstractPlanarVideoBuffer::QAbstractPlanarVideoBuffer_MapMode_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractPlanarVideoBuffer_Unmap(QAbstractPlanarVideoBuffer* self) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        vqabstractplanarvideobuffer->unmap();
    } else {
        vqabstractplanarvideobuffer->unmap();
    }
}

// Base class handler implementation
void QAbstractPlanarVideoBuffer_QBaseUnmap(QAbstractPlanarVideoBuffer* self) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_Unmap_IsBase(true);
        vqabstractplanarvideobuffer->unmap();
    } else {
        vqabstractplanarvideobuffer->unmap();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractPlanarVideoBuffer_OnUnmap(QAbstractPlanarVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractplanarvideobuffer = dynamic_cast<VirtualQAbstractPlanarVideoBuffer*>(self)) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_Unmap_Callback(reinterpret_cast<VirtualQAbstractPlanarVideoBuffer::QAbstractPlanarVideoBuffer_Unmap_Callback>(slot));
    }
}

// Derived class handler implementation
QVariant* QAbstractPlanarVideoBuffer_Handle(const QAbstractPlanarVideoBuffer* self) {
    if (auto* vqabstractplanarvideobuffer = const_cast<VirtualQAbstractPlanarVideoBuffer*>(dynamic_cast<const VirtualQAbstractPlanarVideoBuffer*>(self))) {
        return new QVariant(vqabstractplanarvideobuffer->handle());
    } else {
        return new QVariant(self->handle());
    }
}

// Base class handler implementation
QVariant* QAbstractPlanarVideoBuffer_QBaseHandle(const QAbstractPlanarVideoBuffer* self) {
    if (auto* vqabstractplanarvideobuffer = const_cast<VirtualQAbstractPlanarVideoBuffer*>(dynamic_cast<const VirtualQAbstractPlanarVideoBuffer*>(self))) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_Handle_IsBase(true);
        return new QVariant(vqabstractplanarvideobuffer->handle());
    } else {
        return new QVariant(self->handle());
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractPlanarVideoBuffer_OnHandle(const QAbstractPlanarVideoBuffer* self, intptr_t slot) {
    if (auto* vqabstractplanarvideobuffer = const_cast<VirtualQAbstractPlanarVideoBuffer*>(dynamic_cast<const VirtualQAbstractPlanarVideoBuffer*>(self))) {
        vqabstractplanarvideobuffer->setQAbstractPlanarVideoBuffer_Handle_Callback(reinterpret_cast<VirtualQAbstractPlanarVideoBuffer::QAbstractPlanarVideoBuffer_Handle_Callback>(slot));
    }
}

void QAbstractPlanarVideoBuffer_Delete(QAbstractPlanarVideoBuffer* self) {
    delete self;
}
