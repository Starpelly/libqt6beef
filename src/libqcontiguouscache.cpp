#include <QContiguousCacheData>
#include <qcontiguouscache.h>
#include "libqcontiguouscache.h"
#include "libqcontiguouscache.hxx"

QContiguousCacheData* QContiguousCacheData_AllocateData(int size, int alignment) {
    return QContiguousCacheData::allocateData(static_cast<int>(size), static_cast<int>(alignment));
}

void QContiguousCacheData_FreeData(QContiguousCacheData* data) {
    QContiguousCacheData::freeData(data);
}

void QContiguousCacheData_Delete(QContiguousCacheData* self) {
    delete self;
}
