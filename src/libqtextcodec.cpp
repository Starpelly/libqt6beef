#include <QByteArray>
#include <QChar>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextCodec>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTextCodec__ConverterState
#include <QTextDecoder>
#include <QTextEncoder>
#include <qtextcodec.h>
#include "libqtextcodec.h"
#include "libqtextcodec.hxx"

QTextCodec* QTextCodec_CodecForName(libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    return QTextCodec::codecForName(name_QByteArray);
}

QTextCodec* QTextCodec_CodecForNameWithName(const char* name) {
    return QTextCodec::codecForName(name);
}

QTextCodec* QTextCodec_CodecForMib(int mib) {
    return QTextCodec::codecForMib(static_cast<int>(mib));
}

libqt_list /* of libqt_string */ QTextCodec_AvailableCodecs() {
    QList<QByteArray> _ret = QTextCodec::availableCodecs();
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

libqt_list /* of int */ QTextCodec_AvailableMibs() {
    QList<int> _ret = QTextCodec::availableMibs();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QTextCodec* QTextCodec_CodecForLocale() {
    return QTextCodec::codecForLocale();
}

void QTextCodec_SetCodecForLocale(QTextCodec* c) {
    QTextCodec::setCodecForLocale(c);
}

QTextCodec* QTextCodec_CodecForHtml(libqt_string ba) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return QTextCodec::codecForHtml(ba_QByteArray);
}

QTextCodec* QTextCodec_CodecForHtml2(libqt_string ba, QTextCodec* defaultCodec) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return QTextCodec::codecForHtml(ba_QByteArray, defaultCodec);
}

QTextCodec* QTextCodec_CodecForUtfText(libqt_string ba) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return QTextCodec::codecForUtfText(ba_QByteArray);
}

QTextCodec* QTextCodec_CodecForUtfText2(libqt_string ba, QTextCodec* defaultCodec) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return QTextCodec::codecForUtfText(ba_QByteArray, defaultCodec);
}

bool QTextCodec_CanEncode(const QTextCodec* self, QChar* param1) {
    return self->canEncode(*param1);
}

bool QTextCodec_CanEncodeWithQString(const QTextCodec* self, libqt_string param1) {
    QString param1_QString = QString::fromUtf8(param1.data, param1.len);
    return self->canEncode(param1_QString);
}

libqt_string QTextCodec_ToUnicode(const QTextCodec* self, libqt_string param1) {
    QByteArray param1_QByteArray(param1.data, param1.len);
    QString _ret = self->toUnicode(param1_QByteArray);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QTextCodec_ToUnicodeWithChars(const QTextCodec* self, const char* chars) {
    QString _ret = self->toUnicode(chars);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QTextCodec_FromUnicode(const QTextCodec* self, libqt_string uc) {
    QString uc_QString = QString::fromUtf8(uc.data, uc.len);
    QByteArray _qb = self->fromUnicode(uc_QString);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QTextCodec_ToUnicode2(const QTextCodec* self, const char* in, int length) {
    QString _ret = self->toUnicode(in, static_cast<int>(length));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QTextCodec_FromUnicode2(const QTextCodec* self, QChar* in, int length) {
    QByteArray _qb = self->fromUnicode(in, static_cast<int>(length));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QTextDecoder* QTextCodec_MakeDecoder(const QTextCodec* self) {
    return self->makeDecoder();
}

QTextEncoder* QTextCodec_MakeEncoder(const QTextCodec* self) {
    return self->makeEncoder();
}

libqt_string QTextCodec_Name(const QTextCodec* self) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        QByteArray _qb = vqtextcodec->name();
        libqt_string _str;
        _str.len = _qb.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _qb.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    } else {
        QByteArray _qb = self->name();
        libqt_string _str;
        _str.len = _qb.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _qb.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QTextCodec_OnName(const QTextCodec* self, intptr_t slot) {
    if (auto* vqtextcodec = const_cast<VirtualQTextCodec*>(dynamic_cast<const VirtualQTextCodec*>(self))) {
        vqtextcodec->setQTextCodec_Name_Callback(reinterpret_cast<VirtualQTextCodec::QTextCodec_Name_Callback>(slot));
    }
}

// Virtual base class handler implementation
libqt_string QTextCodec_QBaseName(const QTextCodec* self) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        vqtextcodec->setQTextCodec_Name_IsBase(true);
        QByteArray _qb = vqtextcodec->name();
        libqt_string _str;
        _str.len = _qb.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _qb.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    } else {
        QByteArray _qb = self->name();
        libqt_string _str;
        _str.len = _qb.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _qb.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    }
}

libqt_list /* of libqt_string */ QTextCodec_Aliases(const QTextCodec* self) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        QList<QByteArray> _ret = self->aliases();
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
    } else {
        QList<QByteArray> _ret = self->aliases();
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
}

// Subclass method to allow providing a virtual method re-implementation
void QTextCodec_OnAliases(const QTextCodec* self, intptr_t slot) {
    if (auto* vqtextcodec = const_cast<VirtualQTextCodec*>(dynamic_cast<const VirtualQTextCodec*>(self))) {
        vqtextcodec->setQTextCodec_Aliases_Callback(reinterpret_cast<VirtualQTextCodec::QTextCodec_Aliases_Callback>(slot));
    }
}

// Virtual base class handler implementation
libqt_list /* of libqt_string */ QTextCodec_QBaseAliases(const QTextCodec* self) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        vqtextcodec->setQTextCodec_Aliases_IsBase(true);
        QList<QByteArray> _ret = vqtextcodec->aliases();
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
    } else {
        QList<QByteArray> _ret = self->aliases();
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
}

int QTextCodec_MibEnum(const QTextCodec* self) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        return vqtextcodec->mibEnum();
    } else {
        return self->mibEnum();
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QTextCodec_OnMibEnum(const QTextCodec* self, intptr_t slot) {
    if (auto* vqtextcodec = const_cast<VirtualQTextCodec*>(dynamic_cast<const VirtualQTextCodec*>(self))) {
        vqtextcodec->setQTextCodec_MibEnum_Callback(reinterpret_cast<VirtualQTextCodec::QTextCodec_MibEnum_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QTextCodec_QBaseMibEnum(const QTextCodec* self) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        vqtextcodec->setQTextCodec_MibEnum_IsBase(true);
        return vqtextcodec->mibEnum();
    } else {
        return self->mibEnum();
    }
}

libqt_string QTextCodec_ConvertToUnicode(const QTextCodec* self, const char* in, int length, QTextCodec__ConverterState* state) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        QString _ret = vqtextcodec->convertToUnicode(in, static_cast<int>(length), state);
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _b = _ret.toUtf8();
        libqt_string _str;
        _str.len = _b.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _b.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    }
    return {};
}

// Subclass method to allow providing a virtual method re-implementation
void QTextCodec_OnConvertToUnicode(const QTextCodec* self, intptr_t slot) {
    if (auto* vqtextcodec = const_cast<VirtualQTextCodec*>(dynamic_cast<const VirtualQTextCodec*>(self))) {
        vqtextcodec->setQTextCodec_ConvertToUnicode_Callback(reinterpret_cast<VirtualQTextCodec::QTextCodec_ConvertToUnicode_Callback>(slot));
    }
}

// Virtual base class handler implementation
libqt_string QTextCodec_QBaseConvertToUnicode(const QTextCodec* self, const char* in, int length, QTextCodec__ConverterState* state) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        vqtextcodec->setQTextCodec_ConvertToUnicode_IsBase(true);
        QString _ret = vqtextcodec->convertToUnicode(in, static_cast<int>(length), state);
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _b = _ret.toUtf8();
        libqt_string _str;
        _str.len = _b.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _b.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    }
    return {};
}

libqt_string QTextCodec_ConvertFromUnicode(const QTextCodec* self, QChar* in, int length, QTextCodec__ConverterState* state) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        QByteArray _qb = vqtextcodec->convertFromUnicode(in, static_cast<int>(length), state);
        libqt_string _str;
        _str.len = _qb.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _qb.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    }
    return {};
}

// Subclass method to allow providing a virtual method re-implementation
void QTextCodec_OnConvertFromUnicode(const QTextCodec* self, intptr_t slot) {
    if (auto* vqtextcodec = const_cast<VirtualQTextCodec*>(dynamic_cast<const VirtualQTextCodec*>(self))) {
        vqtextcodec->setQTextCodec_ConvertFromUnicode_Callback(reinterpret_cast<VirtualQTextCodec::QTextCodec_ConvertFromUnicode_Callback>(slot));
    }
}

// Virtual base class handler implementation
libqt_string QTextCodec_QBaseConvertFromUnicode(const QTextCodec* self, QChar* in, int length, QTextCodec__ConverterState* state) {
    if (auto* vqtextcodec = dynamic_cast<const VirtualQTextCodec*>(self)) {
        vqtextcodec->setQTextCodec_ConvertFromUnicode_IsBase(true);
        QByteArray _qb = vqtextcodec->convertFromUnicode(in, static_cast<int>(length), state);
        libqt_string _str;
        _str.len = _qb.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _qb.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    }
    return {};
}

libqt_string QTextCodec_ToUnicode3(const QTextCodec* self, const char* in, int length, QTextCodec__ConverterState* state) {
    QString _ret = self->toUnicode(in, static_cast<int>(length), state);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QTextCodec_FromUnicode3(const QTextCodec* self, QChar* in, int length, QTextCodec__ConverterState* state) {
    QByteArray _qb = self->fromUnicode(in, static_cast<int>(length), state);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QTextDecoder* QTextCodec_MakeDecoder1(const QTextCodec* self, int flags) {
    return self->makeDecoder(static_cast<QTextCodec::ConversionFlags>(flags));
}

QTextEncoder* QTextCodec_MakeEncoder1(const QTextCodec* self, int flags) {
    return self->makeEncoder(static_cast<QTextCodec::ConversionFlags>(flags));
}

QTextEncoder* QTextEncoder_new(QTextCodec* codec) {
    return new QTextEncoder(codec);
}

QTextEncoder* QTextEncoder_new2(QTextCodec* codec, int flags) {
    return new QTextEncoder(codec, static_cast<QTextCodec::ConversionFlags>(flags));
}

libqt_string QTextEncoder_FromUnicode(QTextEncoder* self, libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QByteArray _qb = self->fromUnicode(str_QString);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QTextEncoder_FromUnicode2(QTextEncoder* self, QChar* uc, int lenVal) {
    QByteArray _qb = self->fromUnicode(uc, static_cast<int>(lenVal));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QTextEncoder_HasFailure(const QTextEncoder* self) {
    return self->hasFailure();
}

void QTextEncoder_Delete(QTextEncoder* self) {
    delete self;
}

QTextDecoder* QTextDecoder_new(QTextCodec* codec) {
    return new QTextDecoder(codec);
}

QTextDecoder* QTextDecoder_new2(QTextCodec* codec, int flags) {
    return new QTextDecoder(codec, static_cast<QTextCodec::ConversionFlags>(flags));
}

libqt_string QTextDecoder_ToUnicode(QTextDecoder* self, const char* chars, int lenVal) {
    QString _ret = self->toUnicode(chars, static_cast<int>(lenVal));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QTextDecoder_ToUnicodeWithBa(QTextDecoder* self, libqt_string ba) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    QString _ret = self->toUnicode(ba_QByteArray);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QTextDecoder_HasFailure(const QTextDecoder* self) {
    return self->hasFailure();
}

bool QTextDecoder_NeedsMoreData(const QTextDecoder* self) {
    return self->needsMoreData();
}

void QTextDecoder_Delete(QTextDecoder* self) {
    delete self;
}

QTextCodec__ConverterState* QTextCodec__ConverterState_new() {
    return new QTextCodec::ConverterState();
}

QTextCodec__ConverterState* QTextCodec__ConverterState_new2(int f) {
    return new QTextCodec::ConverterState(static_cast<QTextCodec::ConversionFlags>(f));
}

void QTextCodec__ConverterState_Delete(QTextCodec__ConverterState* self) {
    delete self;
}
