#include <QOperatingSystemVersion>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qoperatingsystemversion.h>
#include "libqoperatingsystemversion.h"
#include "libqoperatingsystemversion.hxx"

QOperatingSystemVersion* QOperatingSystemVersion_new(int osType, int vmajor) {
    return new QOperatingSystemVersion(static_cast<QOperatingSystemVersion::OSType>(osType), static_cast<int>(vmajor));
}

QOperatingSystemVersion* QOperatingSystemVersion_new2(int osType, int vmajor, int vminor) {
    return new QOperatingSystemVersion(static_cast<QOperatingSystemVersion::OSType>(osType), static_cast<int>(vmajor), static_cast<int>(vminor));
}

QOperatingSystemVersion* QOperatingSystemVersion_new3(int osType, int vmajor, int vminor, int vmicro) {
    return new QOperatingSystemVersion(static_cast<QOperatingSystemVersion::OSType>(osType), static_cast<int>(vmajor), static_cast<int>(vminor), static_cast<int>(vmicro));
}

QOperatingSystemVersion* QOperatingSystemVersion_Current() {
    return new QOperatingSystemVersion(QOperatingSystemVersion::current());
}

int QOperatingSystemVersion_CurrentType() {
    return static_cast<int>(QOperatingSystemVersion::currentType());
}

int QOperatingSystemVersion_MajorVersion(const QOperatingSystemVersion* self) {
    return self->majorVersion();
}

int QOperatingSystemVersion_MinorVersion(const QOperatingSystemVersion* self) {
    return self->minorVersion();
}

int QOperatingSystemVersion_MicroVersion(const QOperatingSystemVersion* self) {
    return self->microVersion();
}

int QOperatingSystemVersion_SegmentCount(const QOperatingSystemVersion* self) {
    return self->segmentCount();
}

int QOperatingSystemVersion_Type(const QOperatingSystemVersion* self) {
    return static_cast<int>(self->type());
}

libqt_string QOperatingSystemVersion_Name(const QOperatingSystemVersion* self) {
    QString _ret = self->name();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QOperatingSystemVersion_Delete(QOperatingSystemVersion* self) {
    delete self;
}
