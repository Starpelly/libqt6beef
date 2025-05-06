#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMediaBindableInterface>
#include <QMediaContent>
#include <QMediaObject>
#include <QMediaPlaylist>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QNetworkRequest>
#include <QObject>
#include <QObjectUserData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qmediaplaylist.h>
#include "libqmediaplaylist.h"
#include "libqmediaplaylist.hxx"

QMediaPlaylist* QMediaPlaylist_new() {
    return new VirtualQMediaPlaylist();
}

QMediaPlaylist* QMediaPlaylist_new2(QObject* parent) {
    return new VirtualQMediaPlaylist(parent);
}

QMetaObject* QMediaPlaylist_MetaObject(const QMediaPlaylist* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaPlaylist_Metacast(QMediaPlaylist* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaPlaylist_Metacall(QMediaPlaylist* self, int param1, int param2, void** param3) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QMediaPlaylist_OnMetacall(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_Metacall_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QMediaPlaylist_QBaseMetacall(QMediaPlaylist* self, int param1, int param2, void** param3) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_Metacall_IsBase(true);
        return vqmediaplaylist->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QMediaPlaylist_Tr(const char* s) {
    QString _ret = QMediaPlaylist::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlaylist_TrUtf8(const char* s) {
    QString _ret = QMediaPlaylist::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMediaPlaylist_PlaybackMode(const QMediaPlaylist* self) {
    return static_cast<int>(self->playbackMode());
}

void QMediaPlaylist_SetPlaybackMode(QMediaPlaylist* self, int mode) {
    self->setPlaybackMode(static_cast<QMediaPlaylist::PlaybackMode>(mode));
}

int QMediaPlaylist_CurrentIndex(const QMediaPlaylist* self) {
    return self->currentIndex();
}

QMediaContent* QMediaPlaylist_CurrentMedia(const QMediaPlaylist* self) {
    return new QMediaContent(self->currentMedia());
}

int QMediaPlaylist_NextIndex(const QMediaPlaylist* self) {
    return self->nextIndex();
}

int QMediaPlaylist_PreviousIndex(const QMediaPlaylist* self) {
    return self->previousIndex();
}

QMediaContent* QMediaPlaylist_Media(const QMediaPlaylist* self, int index) {
    return new QMediaContent(self->media(static_cast<int>(index)));
}

int QMediaPlaylist_MediaCount(const QMediaPlaylist* self) {
    return self->mediaCount();
}

bool QMediaPlaylist_IsEmpty(const QMediaPlaylist* self) {
    return self->isEmpty();
}

bool QMediaPlaylist_IsReadOnly(const QMediaPlaylist* self) {
    return self->isReadOnly();
}

bool QMediaPlaylist_AddMedia(QMediaPlaylist* self, QMediaContent* content) {
    return self->addMedia(*content);
}

bool QMediaPlaylist_AddMediaWithItems(QMediaPlaylist* self, libqt_list /* of QMediaContent* */ items) {
    QList<QMediaContent> items_QList;
    items_QList.reserve(items.len);
    QMediaContent** items_arr = static_cast<QMediaContent**>(items.data);
    for (size_t i = 0; i < items.len; ++i) {
        items_QList.push_back(*(items_arr[i]));
    }
    return self->addMedia(items_QList);
}

bool QMediaPlaylist_InsertMedia(QMediaPlaylist* self, int index, QMediaContent* content) {
    return self->insertMedia(static_cast<int>(index), *content);
}

bool QMediaPlaylist_InsertMedia2(QMediaPlaylist* self, int index, libqt_list /* of QMediaContent* */ items) {
    QList<QMediaContent> items_QList;
    items_QList.reserve(items.len);
    QMediaContent** items_arr = static_cast<QMediaContent**>(items.data);
    for (size_t i = 0; i < items.len; ++i) {
        items_QList.push_back(*(items_arr[i]));
    }
    return self->insertMedia(static_cast<int>(index), items_QList);
}

bool QMediaPlaylist_MoveMedia(QMediaPlaylist* self, int from, int to) {
    return self->moveMedia(static_cast<int>(from), static_cast<int>(to));
}

bool QMediaPlaylist_RemoveMedia(QMediaPlaylist* self, int pos) {
    return self->removeMedia(static_cast<int>(pos));
}

bool QMediaPlaylist_RemoveMedia2(QMediaPlaylist* self, int start, int end) {
    return self->removeMedia(static_cast<int>(start), static_cast<int>(end));
}

bool QMediaPlaylist_Clear(QMediaPlaylist* self) {
    return self->clear();
}

void QMediaPlaylist_Load(QMediaPlaylist* self, QNetworkRequest* request) {
    self->load(*request);
}

void QMediaPlaylist_LoadWithLocation(QMediaPlaylist* self, QUrl* location) {
    self->load(*location);
}

void QMediaPlaylist_LoadWithDevice(QMediaPlaylist* self, QIODevice* device) {
    self->load(device);
}

bool QMediaPlaylist_Save(QMediaPlaylist* self, QUrl* location) {
    return self->save(*location);
}

bool QMediaPlaylist_Save2(QMediaPlaylist* self, QIODevice* device, const char* format) {
    return self->save(device, format);
}

int QMediaPlaylist_Error(const QMediaPlaylist* self) {
    return static_cast<int>(self->error());
}

libqt_string QMediaPlaylist_ErrorString(const QMediaPlaylist* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QMediaPlaylist_Shuffle(QMediaPlaylist* self) {
    self->shuffle();
}

void QMediaPlaylist_Next(QMediaPlaylist* self) {
    self->next();
}

void QMediaPlaylist_Previous(QMediaPlaylist* self) {
    self->previous();
}

void QMediaPlaylist_SetCurrentIndex(QMediaPlaylist* self, int index) {
    self->setCurrentIndex(static_cast<int>(index));
}

void QMediaPlaylist_CurrentIndexChanged(QMediaPlaylist* self, int index) {
    self->currentIndexChanged(static_cast<int>(index));
}

void QMediaPlaylist_Connect_CurrentIndexChanged(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*, int) = reinterpret_cast<void (*)(QMediaPlaylist*, int)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::currentIndexChanged, [self, slotFunc](int index) {
        int sigval1 = index;
        slotFunc(self, sigval1);
    });
}

void QMediaPlaylist_PlaybackModeChanged(QMediaPlaylist* self, int mode) {
    self->playbackModeChanged(static_cast<QMediaPlaylist::PlaybackMode>(mode));
}

void QMediaPlaylist_Connect_PlaybackModeChanged(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*, int) = reinterpret_cast<void (*)(QMediaPlaylist*, int)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::playbackModeChanged, [self, slotFunc](QMediaPlaylist::PlaybackMode mode) {
        int sigval1 = static_cast<int>(mode);
        slotFunc(self, sigval1);
    });
}

void QMediaPlaylist_CurrentMediaChanged(QMediaPlaylist* self, QMediaContent* param1) {
    self->currentMediaChanged(*param1);
}

void QMediaPlaylist_Connect_CurrentMediaChanged(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*, QMediaContent*) = reinterpret_cast<void (*)(QMediaPlaylist*, QMediaContent*)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::currentMediaChanged, [self, slotFunc](const QMediaContent& param1) {
        const QMediaContent& param1_ret = param1;
        // Cast returned reference into pointer
        QMediaContent* sigval1 = const_cast<QMediaContent*>(&param1_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaPlaylist_MediaAboutToBeInserted(QMediaPlaylist* self, int start, int end) {
    self->mediaAboutToBeInserted(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_Connect_MediaAboutToBeInserted(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*, int, int) = reinterpret_cast<void (*)(QMediaPlaylist*, int, int)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::mediaAboutToBeInserted, [self, slotFunc](int start, int end) {
        int sigval1 = start;
        int sigval2 = end;
        slotFunc(self, sigval1, sigval2);
    });
}

void QMediaPlaylist_MediaInserted(QMediaPlaylist* self, int start, int end) {
    self->mediaInserted(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_Connect_MediaInserted(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*, int, int) = reinterpret_cast<void (*)(QMediaPlaylist*, int, int)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::mediaInserted, [self, slotFunc](int start, int end) {
        int sigval1 = start;
        int sigval2 = end;
        slotFunc(self, sigval1, sigval2);
    });
}

void QMediaPlaylist_MediaAboutToBeRemoved(QMediaPlaylist* self, int start, int end) {
    self->mediaAboutToBeRemoved(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_Connect_MediaAboutToBeRemoved(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*, int, int) = reinterpret_cast<void (*)(QMediaPlaylist*, int, int)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::mediaAboutToBeRemoved, [self, slotFunc](int start, int end) {
        int sigval1 = start;
        int sigval2 = end;
        slotFunc(self, sigval1, sigval2);
    });
}

void QMediaPlaylist_MediaRemoved(QMediaPlaylist* self, int start, int end) {
    self->mediaRemoved(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_Connect_MediaRemoved(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*, int, int) = reinterpret_cast<void (*)(QMediaPlaylist*, int, int)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::mediaRemoved, [self, slotFunc](int start, int end) {
        int sigval1 = start;
        int sigval2 = end;
        slotFunc(self, sigval1, sigval2);
    });
}

void QMediaPlaylist_MediaChanged(QMediaPlaylist* self, int start, int end) {
    self->mediaChanged(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_Connect_MediaChanged(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*, int, int) = reinterpret_cast<void (*)(QMediaPlaylist*, int, int)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::mediaChanged, [self, slotFunc](int start, int end) {
        int sigval1 = start;
        int sigval2 = end;
        slotFunc(self, sigval1, sigval2);
    });
}

void QMediaPlaylist_Loaded(QMediaPlaylist* self) {
    self->loaded();
}

void QMediaPlaylist_Connect_Loaded(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*) = reinterpret_cast<void (*)(QMediaPlaylist*)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::loaded, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QMediaPlaylist_LoadFailed(QMediaPlaylist* self) {
    self->loadFailed();
}

void QMediaPlaylist_Connect_LoadFailed(QMediaPlaylist* self, intptr_t slot) {
    void (*slotFunc)(QMediaPlaylist*) = reinterpret_cast<void (*)(QMediaPlaylist*)>(slot);
    QMediaPlaylist::connect(self, &QMediaPlaylist::loadFailed, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QMediaPlaylist_Tr2(const char* s, const char* c) {
    QString _ret = QMediaPlaylist::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlaylist_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaPlaylist::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlaylist_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaPlaylist::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaPlaylist_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaPlaylist::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMediaPlaylist_NextIndex1(const QMediaPlaylist* self, int steps) {
    return self->nextIndex(static_cast<int>(steps));
}

int QMediaPlaylist_PreviousIndex1(const QMediaPlaylist* self, int steps) {
    return self->previousIndex(static_cast<int>(steps));
}

void QMediaPlaylist_Load2(QMediaPlaylist* self, QNetworkRequest* request, const char* format) {
    self->load(*request, format);
}

void QMediaPlaylist_Load22(QMediaPlaylist* self, QUrl* location, const char* format) {
    self->load(*location, format);
}

void QMediaPlaylist_Load23(QMediaPlaylist* self, QIODevice* device, const char* format) {
    self->load(device, format);
}

bool QMediaPlaylist_Save22(QMediaPlaylist* self, QUrl* location, const char* format) {
    return self->save(*location, format);
}

// Derived class handler implementation
QMediaObject* QMediaPlaylist_MediaObject(const QMediaPlaylist* self) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        return vqmediaplaylist->mediaObject();
    } else {
        return vqmediaplaylist->mediaObject();
    }
}

// Base class handler implementation
QMediaObject* QMediaPlaylist_QBaseMediaObject(const QMediaPlaylist* self) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_MediaObject_IsBase(true);
        return vqmediaplaylist->mediaObject();
    } else {
        return vqmediaplaylist->mediaObject();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnMediaObject(const QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_MediaObject_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_MediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlaylist_SetMediaObject(QMediaPlaylist* self, QMediaObject* object) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        return vqmediaplaylist->setMediaObject(object);
    } else {
        return vqmediaplaylist->setMediaObject(object);
    }
}

// Base class handler implementation
bool QMediaPlaylist_QBaseSetMediaObject(QMediaPlaylist* self, QMediaObject* object) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_SetMediaObject_IsBase(true);
        return vqmediaplaylist->setMediaObject(object);
    } else {
        return vqmediaplaylist->setMediaObject(object);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnSetMediaObject(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_SetMediaObject_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_SetMediaObject_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlaylist_Event(QMediaPlaylist* self, QEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        return vqmediaplaylist->event(event);
    } else {
        return vqmediaplaylist->event(event);
    }
}

// Base class handler implementation
bool QMediaPlaylist_QBaseEvent(QMediaPlaylist* self, QEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_Event_IsBase(true);
        return vqmediaplaylist->event(event);
    } else {
        return vqmediaplaylist->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnEvent(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_Event_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlaylist_EventFilter(QMediaPlaylist* self, QObject* watched, QEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        return vqmediaplaylist->eventFilter(watched, event);
    } else {
        return vqmediaplaylist->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QMediaPlaylist_QBaseEventFilter(QMediaPlaylist* self, QObject* watched, QEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_EventFilter_IsBase(true);
        return vqmediaplaylist->eventFilter(watched, event);
    } else {
        return vqmediaplaylist->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnEventFilter(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_EventFilter_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlaylist_TimerEvent(QMediaPlaylist* self, QTimerEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->timerEvent(event);
    } else {
        vqmediaplaylist->timerEvent(event);
    }
}

// Base class handler implementation
void QMediaPlaylist_QBaseTimerEvent(QMediaPlaylist* self, QTimerEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_TimerEvent_IsBase(true);
        vqmediaplaylist->timerEvent(event);
    } else {
        vqmediaplaylist->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnTimerEvent(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_TimerEvent_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlaylist_ChildEvent(QMediaPlaylist* self, QChildEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->childEvent(event);
    } else {
        vqmediaplaylist->childEvent(event);
    }
}

// Base class handler implementation
void QMediaPlaylist_QBaseChildEvent(QMediaPlaylist* self, QChildEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_ChildEvent_IsBase(true);
        vqmediaplaylist->childEvent(event);
    } else {
        vqmediaplaylist->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnChildEvent(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_ChildEvent_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlaylist_CustomEvent(QMediaPlaylist* self, QEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->customEvent(event);
    } else {
        vqmediaplaylist->customEvent(event);
    }
}

// Base class handler implementation
void QMediaPlaylist_QBaseCustomEvent(QMediaPlaylist* self, QEvent* event) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_CustomEvent_IsBase(true);
        vqmediaplaylist->customEvent(event);
    } else {
        vqmediaplaylist->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnCustomEvent(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_CustomEvent_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlaylist_ConnectNotify(QMediaPlaylist* self, QMetaMethod* signal) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->connectNotify(*signal);
    } else {
        vqmediaplaylist->connectNotify(*signal);
    }
}

// Base class handler implementation
void QMediaPlaylist_QBaseConnectNotify(QMediaPlaylist* self, QMetaMethod* signal) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_ConnectNotify_IsBase(true);
        vqmediaplaylist->connectNotify(*signal);
    } else {
        vqmediaplaylist->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnConnectNotify(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_ConnectNotify_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QMediaPlaylist_DisconnectNotify(QMediaPlaylist* self, QMetaMethod* signal) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->disconnectNotify(*signal);
    } else {
        vqmediaplaylist->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QMediaPlaylist_QBaseDisconnectNotify(QMediaPlaylist* self, QMetaMethod* signal) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_DisconnectNotify_IsBase(true);
        vqmediaplaylist->disconnectNotify(*signal);
    } else {
        vqmediaplaylist->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnDisconnectNotify(QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = dynamic_cast<VirtualQMediaPlaylist*>(self)) {
        vqmediaplaylist->setQMediaPlaylist_DisconnectNotify_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QMediaPlaylist_Sender(const QMediaPlaylist* self) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        return vqmediaplaylist->sender();
    } else {
        return vqmediaplaylist->sender();
    }
}

// Base class handler implementation
QObject* QMediaPlaylist_QBaseSender(const QMediaPlaylist* self) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_Sender_IsBase(true);
        return vqmediaplaylist->sender();
    } else {
        return vqmediaplaylist->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnSender(const QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_Sender_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QMediaPlaylist_SenderSignalIndex(const QMediaPlaylist* self) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        return vqmediaplaylist->senderSignalIndex();
    } else {
        return vqmediaplaylist->senderSignalIndex();
    }
}

// Base class handler implementation
int QMediaPlaylist_QBaseSenderSignalIndex(const QMediaPlaylist* self) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_SenderSignalIndex_IsBase(true);
        return vqmediaplaylist->senderSignalIndex();
    } else {
        return vqmediaplaylist->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnSenderSignalIndex(const QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_SenderSignalIndex_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QMediaPlaylist_Receivers(const QMediaPlaylist* self, const char* signal) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        return vqmediaplaylist->receivers(signal);
    } else {
        return vqmediaplaylist->receivers(signal);
    }
}

// Base class handler implementation
int QMediaPlaylist_QBaseReceivers(const QMediaPlaylist* self, const char* signal) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_Receivers_IsBase(true);
        return vqmediaplaylist->receivers(signal);
    } else {
        return vqmediaplaylist->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnReceivers(const QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_Receivers_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QMediaPlaylist_IsSignalConnected(const QMediaPlaylist* self, QMetaMethod* signal) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        return vqmediaplaylist->isSignalConnected(*signal);
    } else {
        return vqmediaplaylist->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QMediaPlaylist_QBaseIsSignalConnected(const QMediaPlaylist* self, QMetaMethod* signal) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_IsSignalConnected_IsBase(true);
        return vqmediaplaylist->isSignalConnected(*signal);
    } else {
        return vqmediaplaylist->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QMediaPlaylist_OnIsSignalConnected(const QMediaPlaylist* self, intptr_t slot) {
    if (auto* vqmediaplaylist = const_cast<VirtualQMediaPlaylist*>(dynamic_cast<const VirtualQMediaPlaylist*>(self))) {
        vqmediaplaylist->setQMediaPlaylist_IsSignalConnected_Callback(reinterpret_cast<VirtualQMediaPlaylist::QMediaPlaylist_IsSignalConnected_Callback>(slot));
    }
}

void QMediaPlaylist_Delete(QMediaPlaylist* self) {
    delete self;
}
