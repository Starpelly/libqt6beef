#include <QByteArray>
#include <QIODevice>
#include <QList>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPicture>
#include <QPictureIO>
#include <QPoint>
#include <QRect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qpicture.h>
#include "libqpicture.h"
#include "libqpicture.hxx"

QPicture* QPicture_new() {
    return new VirtualQPicture();
}

QPicture* QPicture_new2(QPicture* param1) {
    return new VirtualQPicture(*param1);
}

QPicture* QPicture_new3(int formatVersion) {
    return new VirtualQPicture(static_cast<int>(formatVersion));
}

bool QPicture_IsNull(const QPicture* self) {
    return self->isNull();
}

unsigned int QPicture_Size(const QPicture* self) {
    return static_cast<unsigned int>(self->size());
}

const char* QPicture_Data(const QPicture* self) {
    return (const char*)self->data();
}

bool QPicture_Play(QPicture* self, QPainter* p) {
    return self->play(p);
}

bool QPicture_Load(QPicture* self, QIODevice* dev) {
    return self->load(dev);
}

bool QPicture_LoadWithFileName(QPicture* self, libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    return self->load(fileName_QString);
}

bool QPicture_Save(QPicture* self, QIODevice* dev) {
    return self->save(dev);
}

bool QPicture_SaveWithFileName(QPicture* self, libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    return self->save(fileName_QString);
}

QRect* QPicture_BoundingRect(const QPicture* self) {
    return new QRect(self->boundingRect());
}

void QPicture_SetBoundingRect(QPicture* self, QRect* r) {
    self->setBoundingRect(*r);
}

void QPicture_OperatorAssign(QPicture* self, QPicture* p) {
    self->operator=(*p);
}

void QPicture_Swap(QPicture* self, QPicture* other) {
    self->swap(*other);
}

void QPicture_Detach(QPicture* self) {
    self->detach();
}

bool QPicture_IsDetached(const QPicture* self) {
    return self->isDetached();
}

const char* QPicture_PictureFormat(libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    return (const char*)QPicture::pictureFormat(fileName_QString);
}

libqt_list /* of libqt_string */ QPicture_InputFormats() {
    QList<QByteArray> _ret = QPicture::inputFormats();
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

libqt_list /* of libqt_string */ QPicture_OutputFormats() {
    QList<QByteArray> _ret = QPicture::outputFormats();
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

libqt_list /* of libqt_string */ QPicture_InputFormatList() {
    QStringList _ret = QPicture::inputFormatList();
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

libqt_list /* of libqt_string */ QPicture_OutputFormatList() {
    QStringList _ret = QPicture::outputFormatList();
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

bool QPicture_Load2(QPicture* self, QIODevice* dev, const char* format) {
    return self->load(dev, format);
}

bool QPicture_Load22(QPicture* self, libqt_string fileName, const char* format) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    return self->load(fileName_QString, format);
}

bool QPicture_Save2(QPicture* self, QIODevice* dev, const char* format) {
    return self->save(dev, format);
}

bool QPicture_Save22(QPicture* self, libqt_string fileName, const char* format) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    return self->save(fileName_QString, format);
}

// Derived class handler implementation
int QPicture_DevType(const QPicture* self) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        return vqpicture->devType();
    } else {
        return vqpicture->devType();
    }
}

// Base class handler implementation
int QPicture_QBaseDevType(const QPicture* self) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_DevType_IsBase(true);
        return vqpicture->devType();
    } else {
        return vqpicture->devType();
    }
}

// Auxiliary method to allow providing re-implementation
void QPicture_OnDevType(const QPicture* self, intptr_t slot) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_DevType_Callback(reinterpret_cast<VirtualQPicture::QPicture_DevType_Callback>(slot));
    }
}

// Derived class handler implementation
void QPicture_SetData(QPicture* self, const char* data, unsigned int size) {
    if (auto* vqpicture = dynamic_cast<VirtualQPicture*>(self)) {
        vqpicture->setData(data, static_cast<uint>(size));
    } else {
        vqpicture->setData(data, static_cast<uint>(size));
    }
}

// Base class handler implementation
void QPicture_QBaseSetData(QPicture* self, const char* data, unsigned int size) {
    if (auto* vqpicture = dynamic_cast<VirtualQPicture*>(self)) {
        vqpicture->setQPicture_SetData_IsBase(true);
        vqpicture->setData(data, static_cast<uint>(size));
    } else {
        vqpicture->setData(data, static_cast<uint>(size));
    }
}

// Auxiliary method to allow providing re-implementation
void QPicture_OnSetData(QPicture* self, intptr_t slot) {
    if (auto* vqpicture = dynamic_cast<VirtualQPicture*>(self)) {
        vqpicture->setQPicture_SetData_Callback(reinterpret_cast<VirtualQPicture::QPicture_SetData_Callback>(slot));
    }
}

// Derived class handler implementation
QPaintEngine* QPicture_PaintEngine(const QPicture* self) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        return vqpicture->paintEngine();
    } else {
        return vqpicture->paintEngine();
    }
}

// Base class handler implementation
QPaintEngine* QPicture_QBasePaintEngine(const QPicture* self) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_PaintEngine_IsBase(true);
        return vqpicture->paintEngine();
    } else {
        return vqpicture->paintEngine();
    }
}

// Auxiliary method to allow providing re-implementation
void QPicture_OnPaintEngine(const QPicture* self, intptr_t slot) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_PaintEngine_Callback(reinterpret_cast<VirtualQPicture::QPicture_PaintEngine_Callback>(slot));
    }
}

// Derived class handler implementation
int QPicture_Metric(const QPicture* self, int m) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        return vqpicture->metric(static_cast<QPaintDevice::PaintDeviceMetric>(m));
    } else {
        return vqpicture->metric(static_cast<QPaintDevice::PaintDeviceMetric>(m));
    }
}

// Base class handler implementation
int QPicture_QBaseMetric(const QPicture* self, int m) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_Metric_IsBase(true);
        return vqpicture->metric(static_cast<QPaintDevice::PaintDeviceMetric>(m));
    } else {
        return vqpicture->metric(static_cast<QPaintDevice::PaintDeviceMetric>(m));
    }
}

// Auxiliary method to allow providing re-implementation
void QPicture_OnMetric(const QPicture* self, intptr_t slot) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_Metric_Callback(reinterpret_cast<VirtualQPicture::QPicture_Metric_Callback>(slot));
    }
}

// Derived class handler implementation
void QPicture_InitPainter(const QPicture* self, QPainter* painter) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->initPainter(painter);
    } else {
        vqpicture->initPainter(painter);
    }
}

// Base class handler implementation
void QPicture_QBaseInitPainter(const QPicture* self, QPainter* painter) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_InitPainter_IsBase(true);
        vqpicture->initPainter(painter);
    } else {
        vqpicture->initPainter(painter);
    }
}

// Auxiliary method to allow providing re-implementation
void QPicture_OnInitPainter(const QPicture* self, intptr_t slot) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_InitPainter_Callback(reinterpret_cast<VirtualQPicture::QPicture_InitPainter_Callback>(slot));
    }
}

// Derived class handler implementation
QPaintDevice* QPicture_Redirected(const QPicture* self, QPoint* offset) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        return vqpicture->redirected(offset);
    } else {
        return vqpicture->redirected(offset);
    }
}

// Base class handler implementation
QPaintDevice* QPicture_QBaseRedirected(const QPicture* self, QPoint* offset) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_Redirected_IsBase(true);
        return vqpicture->redirected(offset);
    } else {
        return vqpicture->redirected(offset);
    }
}

// Auxiliary method to allow providing re-implementation
void QPicture_OnRedirected(const QPicture* self, intptr_t slot) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_Redirected_Callback(reinterpret_cast<VirtualQPicture::QPicture_Redirected_Callback>(slot));
    }
}

// Derived class handler implementation
QPainter* QPicture_SharedPainter(const QPicture* self) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        return vqpicture->sharedPainter();
    } else {
        return vqpicture->sharedPainter();
    }
}

// Base class handler implementation
QPainter* QPicture_QBaseSharedPainter(const QPicture* self) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_SharedPainter_IsBase(true);
        return vqpicture->sharedPainter();
    } else {
        return vqpicture->sharedPainter();
    }
}

// Auxiliary method to allow providing re-implementation
void QPicture_OnSharedPainter(const QPicture* self, intptr_t slot) {
    if (auto* vqpicture = const_cast<VirtualQPicture*>(dynamic_cast<const VirtualQPicture*>(self))) {
        vqpicture->setQPicture_SharedPainter_Callback(reinterpret_cast<VirtualQPicture::QPicture_SharedPainter_Callback>(slot));
    }
}

void QPicture_Delete(QPicture* self) {
    delete self;
}

QPictureIO* QPictureIO_new() {
    return new QPictureIO();
}

QPictureIO* QPictureIO_new2(QIODevice* ioDevice, const char* format) {
    return new QPictureIO(ioDevice, format);
}

QPictureIO* QPictureIO_new3(libqt_string fileName, const char* format) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    return new QPictureIO(fileName_QString, format);
}

QPicture* QPictureIO_Picture(const QPictureIO* self) {
    const QPicture& _ret = self->picture();
    // Cast returned reference into pointer
    return const_cast<QPicture*>(&_ret);
}

int QPictureIO_Status(const QPictureIO* self) {
    return self->status();
}

const char* QPictureIO_Format(const QPictureIO* self) {
    return (const char*)self->format();
}

QIODevice* QPictureIO_IoDevice(const QPictureIO* self) {
    return self->ioDevice();
}

libqt_string QPictureIO_FileName(const QPictureIO* self) {
    QString _ret = self->fileName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QPictureIO_Quality(const QPictureIO* self) {
    return self->quality();
}

libqt_string QPictureIO_Description(const QPictureIO* self) {
    QString _ret = self->description();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

const char* QPictureIO_Parameters(const QPictureIO* self) {
    return (const char*)self->parameters();
}

float QPictureIO_Gamma(const QPictureIO* self) {
    return self->gamma();
}

void QPictureIO_SetPicture(QPictureIO* self, QPicture* picture) {
    self->setPicture(*picture);
}

void QPictureIO_SetStatus(QPictureIO* self, int status) {
    self->setStatus(static_cast<int>(status));
}

void QPictureIO_SetFormat(QPictureIO* self, const char* format) {
    self->setFormat(format);
}

void QPictureIO_SetIODevice(QPictureIO* self, QIODevice* iODevice) {
    self->setIODevice(iODevice);
}

void QPictureIO_SetFileName(QPictureIO* self, libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    self->setFileName(fileName_QString);
}

void QPictureIO_SetQuality(QPictureIO* self, int quality) {
    self->setQuality(static_cast<int>(quality));
}

void QPictureIO_SetDescription(QPictureIO* self, libqt_string description) {
    QString description_QString = QString::fromUtf8(description.data, description.len);
    self->setDescription(description_QString);
}

void QPictureIO_SetParameters(QPictureIO* self, const char* parameters) {
    self->setParameters(parameters);
}

void QPictureIO_SetGamma(QPictureIO* self, float gamma) {
    self->setGamma(static_cast<float>(gamma));
}

bool QPictureIO_Read(QPictureIO* self) {
    return self->read();
}

bool QPictureIO_Write(QPictureIO* self) {
    return self->write();
}

libqt_string QPictureIO_PictureFormat(libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    QByteArray _qb = QPictureIO::pictureFormat(fileName_QString);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QPictureIO_PictureFormatWithQIODevice(QIODevice* param1) {
    QByteArray _qb = QPictureIO::pictureFormat(param1);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QPictureIO_InputFormats() {
    QList<QByteArray> _ret = QPictureIO::inputFormats();
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

libqt_list /* of libqt_string */ QPictureIO_OutputFormats() {
    QList<QByteArray> _ret = QPictureIO::outputFormats();
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

void QPictureIO_Delete(QPictureIO* self) {
    delete self;
}
