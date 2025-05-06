#include <QJsonObject>
#include <QStaticPlugin>
#include <qplugin.h>
#include "libqplugin.h"
#include "libqplugin.hxx"

QJsonObject* QStaticPlugin_MetaData(const QStaticPlugin* self) {
    return new QJsonObject(self->metaData());
}

void QStaticPlugin_Delete(QStaticPlugin* self) {
    delete self;
}
