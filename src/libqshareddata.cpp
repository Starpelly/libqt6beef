#include <QSharedData>
#include <qshareddata.h>
#include "libqshareddata.h"
#include "libqshareddata.hxx"

QSharedData* QSharedData_new() {
    return new QSharedData();
}

QSharedData* QSharedData_new2(QSharedData* param1) {
    return new QSharedData(*param1);
}

void QSharedData_Delete(QSharedData* self) {
    delete self;
}
