#include <QMediaBindableInterface>
#include <QMediaObject>
#include <qmediabindableinterface.h>
#include "libqmediabindableinterface.h"
#include "libqmediabindableinterface.hxx"

QMediaObject* QMediaBindableInterface_MediaObject(const QMediaBindableInterface* self) {
    if (auto* vqmediabindableinterface = dynamic_cast<const VirtualQMediaBindableInterface*>(self)) {
        return vqmediabindableinterface->mediaObject();
    } else {
        return self->mediaObject();
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaBindableInterface_OnMediaObject(const QMediaBindableInterface* self, intptr_t slot) {
    if (auto* vqmediabindableinterface = const_cast<VirtualQMediaBindableInterface*>(dynamic_cast<const VirtualQMediaBindableInterface*>(self))) {
        vqmediabindableinterface->setQMediaBindableInterface_MediaObject_Callback(reinterpret_cast<VirtualQMediaBindableInterface::QMediaBindableInterface_MediaObject_Callback>(slot));
    }
}

// Virtual base class handler implementation
QMediaObject* QMediaBindableInterface_QBaseMediaObject(const QMediaBindableInterface* self) {
    if (auto* vqmediabindableinterface = dynamic_cast<const VirtualQMediaBindableInterface*>(self)) {
        vqmediabindableinterface->setQMediaBindableInterface_MediaObject_IsBase(true);
        return vqmediabindableinterface->mediaObject();
    } else {
        return self->mediaObject();
    }
}

bool QMediaBindableInterface_SetMediaObject(QMediaBindableInterface* self, QMediaObject* object) {
    if (auto* vqmediabindableinterface = dynamic_cast<VirtualQMediaBindableInterface*>(self)) {
        return vqmediabindableinterface->setMediaObject(object);
    }
    return {};
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaBindableInterface_OnSetMediaObject(QMediaBindableInterface* self, intptr_t slot) {
    if (auto* vqmediabindableinterface = dynamic_cast<VirtualQMediaBindableInterface*>(self)) {
        vqmediabindableinterface->setQMediaBindableInterface_SetMediaObject_Callback(reinterpret_cast<VirtualQMediaBindableInterface::QMediaBindableInterface_SetMediaObject_Callback>(slot));
    }
}

// Virtual base class handler implementation
bool QMediaBindableInterface_QBaseSetMediaObject(QMediaBindableInterface* self, QMediaObject* object) {
    if (auto* vqmediabindableinterface = dynamic_cast<VirtualQMediaBindableInterface*>(self)) {
        vqmediabindableinterface->setQMediaBindableInterface_SetMediaObject_IsBase(true);
        return vqmediabindableinterface->setMediaObject(object);
    }
    return {};
}

// Derived class handler implementation
void QMediaBindableInterface_OperatorAssign(QMediaBindableInterface* self, QMediaBindableInterface* param1) {
    if (auto* vqmediabindableinterface = dynamic_cast<VirtualQMediaBindableInterface*>(self)) {
        vqmediabindableinterface->operator=(*param1);
    } else {
        vqmediabindableinterface->operator=(*param1);
    }
}

// Base class handler implementation
void QMediaBindableInterface_QBaseOperatorAssign(QMediaBindableInterface* self, QMediaBindableInterface* param1) {
    if (auto* vqmediabindableinterface = dynamic_cast<VirtualQMediaBindableInterface*>(self)) {
        vqmediabindableinterface->setQMediaBindableInterface_OperatorAssign_IsBase(true);
        vqmediabindableinterface->operator=(*param1);
    } else {
        vqmediabindableinterface->operator=(*param1);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaBindableInterface_OnOperatorAssign(QMediaBindableInterface* self, intptr_t slot) {
    if (auto* vqmediabindableinterface = dynamic_cast<VirtualQMediaBindableInterface*>(self)) {
        vqmediabindableinterface->setQMediaBindableInterface_OperatorAssign_Callback(reinterpret_cast<VirtualQMediaBindableInterface::QMediaBindableInterface_OperatorAssign_Callback>(slot));
    }
}

void QMediaBindableInterface_Delete(QMediaBindableInterface* self) {
    delete self;
}
