#include <QInternal>
#include <qnamespace.h>
#include "libqnamespace.h"
#include "libqnamespace.hxx"

QInternal* QInternal_new(QInternal* other) {
    return new QInternal(*other);
}

QInternal* QInternal_new2(QInternal* other) {
    return new QInternal(std::move(*other));
}

void QInternal_CopyAssign(QInternal* self, QInternal* other) {
    *self = *other;
}

void QInternal_MoveAssign(QInternal* self, QInternal* other) {
    *self = std::move(*other);
}

bool QInternal_ActivateCallbacks(int param1, void** param2) {
    return QInternal::activateCallbacks(static_cast<QInternal::Callback>(param1), param2);
}

void QInternal_Delete(QInternal* self) {
    delete self;
}
