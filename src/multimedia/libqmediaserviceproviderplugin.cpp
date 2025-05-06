#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaService>
#include <QMediaServiceCameraInfoInterface>
#include <QMediaServiceDefaultDeviceInterface>
#include <QMediaServiceFeaturesInterface>
#include <QMediaServiceProviderFactoryInterface>
#include <QMediaServiceProviderHint>
#include <QMediaServiceProviderPlugin>
#include <QMediaServiceSupportedDevicesInterface>
#include <QMediaServiceSupportedFormatsInterface>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qmediaserviceproviderplugin.h>
#include "libqmediaserviceproviderplugin.h"
#include "libqmediaserviceproviderplugin.hxx"

QMediaServiceProviderHint* QMediaServiceProviderHint_new() {
    return new QMediaServiceProviderHint();
}

QMediaServiceProviderHint* QMediaServiceProviderHint_new2(libqt_string mimeType, libqt_list /* of libqt_string */ codecs) {
    QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
    QStringList codecs_QList;
    codecs_QList.reserve(codecs.len);
    libqt_string* codecs_arr = static_cast<libqt_string*>(codecs.data);
    for (size_t i = 0; i < codecs.len; ++i) {
        QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
        codecs_QList.push_back(codecs_arr_i_QString);
    }
    return new QMediaServiceProviderHint(mimeType_QString, codecs_QList);
}

QMediaServiceProviderHint* QMediaServiceProviderHint_new3(libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    return new QMediaServiceProviderHint(device_QByteArray);
}

QMediaServiceProviderHint* QMediaServiceProviderHint_new4(int position) {
    return new QMediaServiceProviderHint(static_cast<QCamera::Position>(position));
}

QMediaServiceProviderHint* QMediaServiceProviderHint_new5(int features) {
    return new QMediaServiceProviderHint(static_cast<QMediaServiceProviderHint::Features>(features));
}

QMediaServiceProviderHint* QMediaServiceProviderHint_new6(QMediaServiceProviderHint* other) {
    return new QMediaServiceProviderHint(*other);
}

void QMediaServiceProviderHint_OperatorAssign(QMediaServiceProviderHint* self, QMediaServiceProviderHint* other) {
    self->operator=(*other);
}

bool QMediaServiceProviderHint_OperatorEqual(const QMediaServiceProviderHint* self, QMediaServiceProviderHint* other) {
    return (*self == *other);
}

bool QMediaServiceProviderHint_OperatorNotEqual(const QMediaServiceProviderHint* self, QMediaServiceProviderHint* other) {
    return (*self != *other);
}

bool QMediaServiceProviderHint_IsNull(const QMediaServiceProviderHint* self) {
    return self->isNull();
}

int QMediaServiceProviderHint_Type(const QMediaServiceProviderHint* self) {
    return static_cast<int>(self->type());
}

libqt_string QMediaServiceProviderHint_MimeType(const QMediaServiceProviderHint* self) {
    QString _ret = self->mimeType();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QMediaServiceProviderHint_Codecs(const QMediaServiceProviderHint* self) {
    QStringList _ret = self->codecs();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QString _lv_ret = _ret[i];
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _lv_b = _lv_ret.toUtf8();
        libqt_string _lv_str;
        _lv_str.len = _lv_b.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QMediaServiceProviderHint_Device(const QMediaServiceProviderHint* self) {
    QByteArray _qb = self->device();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMediaServiceProviderHint_CameraPosition(const QMediaServiceProviderHint* self) {
    return static_cast<int>(self->cameraPosition());
}

int QMediaServiceProviderHint_Features(const QMediaServiceProviderHint* self) {
    return static_cast<int>(self->features());
}

void QMediaServiceProviderHint_Delete(QMediaServiceProviderHint* self) {
    delete self;
}

QMediaService* QMediaServiceProviderFactoryInterface_Create(QMediaServiceProviderFactoryInterface* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return self->create(key_QString);
}

void QMediaServiceProviderFactoryInterface_Release(QMediaServiceProviderFactoryInterface* self, QMediaService* service) {
    self->release(service);
}

void QMediaServiceProviderFactoryInterface_OperatorAssign(QMediaServiceProviderFactoryInterface* self, QMediaServiceProviderFactoryInterface* param1) {
    self->operator=(*param1);
}

void QMediaServiceProviderFactoryInterface_Delete(QMediaServiceProviderFactoryInterface* self) {
    delete self;
}

int QMediaServiceSupportedFormatsInterface_HasSupport(const QMediaServiceSupportedFormatsInterface* self, libqt_string mimeType, libqt_list /* of libqt_string */ codecs) {
    QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
    QStringList codecs_QList;
    codecs_QList.reserve(codecs.len);
    libqt_string* codecs_arr = static_cast<libqt_string*>(codecs.data);
    for (size_t i = 0; i < codecs.len; ++i) {
        QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
        codecs_QList.push_back(codecs_arr_i_QString);
    }
    return static_cast<int>(self->hasSupport(mimeType_QString, codecs_QList));
}

libqt_list /* of libqt_string */ QMediaServiceSupportedFormatsInterface_SupportedMimeTypes(const QMediaServiceSupportedFormatsInterface* self) {
    QStringList _ret = self->supportedMimeTypes();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QString _lv_ret = _ret[i];
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _lv_b = _lv_ret.toUtf8();
        libqt_string _lv_str;
        _lv_str.len = _lv_b.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QMediaServiceSupportedFormatsInterface_OperatorAssign(QMediaServiceSupportedFormatsInterface* self, QMediaServiceSupportedFormatsInterface* param1) {
    self->operator=(*param1);
}

void QMediaServiceSupportedFormatsInterface_Delete(QMediaServiceSupportedFormatsInterface* self) {
    delete self;
}

libqt_list /* of libqt_string */ QMediaServiceSupportedDevicesInterface_Devices(const QMediaServiceSupportedDevicesInterface* self, libqt_string service) {
    QByteArray service_QByteArray(service.data, service.len);
    QList<QByteArray> _ret = self->devices(service_QByteArray);
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QByteArray _lv_qb = _ret[i];
        libqt_string _lv_str;
        _lv_str.len = _lv_qb.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_qb.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QMediaServiceSupportedDevicesInterface_DeviceDescription(QMediaServiceSupportedDevicesInterface* self, libqt_string service, libqt_string device) {
    QByteArray service_QByteArray(service.data, service.len);
    QByteArray device_QByteArray(device.data, device.len);
    QString _ret = self->deviceDescription(service_QByteArray, device_QByteArray);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QMediaServiceSupportedDevicesInterface_OperatorAssign(QMediaServiceSupportedDevicesInterface* self, QMediaServiceSupportedDevicesInterface* param1) {
    self->operator=(*param1);
}

void QMediaServiceSupportedDevicesInterface_Delete(QMediaServiceSupportedDevicesInterface* self) {
    delete self;
}

libqt_string QMediaServiceDefaultDeviceInterface_DefaultDevice(const QMediaServiceDefaultDeviceInterface* self, libqt_string service) {
    QByteArray service_QByteArray(service.data, service.len);
    QByteArray _qb = self->defaultDevice(service_QByteArray);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QMediaServiceDefaultDeviceInterface_OperatorAssign(QMediaServiceDefaultDeviceInterface* self, QMediaServiceDefaultDeviceInterface* param1) {
    self->operator=(*param1);
}

void QMediaServiceDefaultDeviceInterface_Delete(QMediaServiceDefaultDeviceInterface* self) {
    delete self;
}

int QMediaServiceCameraInfoInterface_CameraPosition(const QMediaServiceCameraInfoInterface* self, libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    return static_cast<int>(self->cameraPosition(device_QByteArray));
}

int QMediaServiceCameraInfoInterface_CameraOrientation(const QMediaServiceCameraInfoInterface* self, libqt_string device) {
    QByteArray device_QByteArray(device.data, device.len);
    return self->cameraOrientation(device_QByteArray);
}

void QMediaServiceCameraInfoInterface_OperatorAssign(QMediaServiceCameraInfoInterface* self, QMediaServiceCameraInfoInterface* param1) {
    self->operator=(*param1);
}

void QMediaServiceCameraInfoInterface_Delete(QMediaServiceCameraInfoInterface* self) {
    delete self;
}

int QMediaServiceFeaturesInterface_SupportedFeatures(const QMediaServiceFeaturesInterface* self, libqt_string service) {
    QByteArray service_QByteArray(service.data, service.len);
    return static_cast<int>(self->supportedFeatures(service_QByteArray));
}

void QMediaServiceFeaturesInterface_OperatorAssign(QMediaServiceFeaturesInterface* self, QMediaServiceFeaturesInterface* param1) {
    self->operator=(*param1);
}

void QMediaServiceFeaturesInterface_Delete(QMediaServiceFeaturesInterface* self) {
    delete self;
}

QMetaObject* QMediaServiceProviderPlugin_MetaObject(const QMediaServiceProviderPlugin* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaServiceProviderPlugin_Metacast(QMediaServiceProviderPlugin* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaServiceProviderPlugin_Metacall(QMediaServiceProviderPlugin* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaServiceProviderPlugin_Tr(const char* s) {
    QString _ret = QMediaServiceProviderPlugin::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaServiceProviderPlugin_TrUtf8(const char* s) {
    QString _ret = QMediaServiceProviderPlugin::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QMediaService* QMediaServiceProviderPlugin_Create(QMediaServiceProviderPlugin* self, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return self->create(key_QString);
}

void QMediaServiceProviderPlugin_Release(QMediaServiceProviderPlugin* self, QMediaService* service) {
    self->release(service);
}

libqt_string QMediaServiceProviderPlugin_Tr2(const char* s, const char* c) {
    QString _ret = QMediaServiceProviderPlugin::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaServiceProviderPlugin_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaServiceProviderPlugin::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaServiceProviderPlugin_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaServiceProviderPlugin::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaServiceProviderPlugin_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaServiceProviderPlugin::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaServiceProviderPlugin_Event(QMediaServiceProviderPlugin* self, QEvent* event) {
    return self->event(event);
}

bool QMediaServiceProviderPlugin_EventFilter(QMediaServiceProviderPlugin* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaServiceProviderPlugin_Delete(QMediaServiceProviderPlugin* self) {
    delete self;
}
