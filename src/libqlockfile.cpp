#include <QLockFile>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qlockfile.h>
#include "libqlockfile.h"
#include "libqlockfile.hxx"

QLockFile* QLockFile_new(libqt_string fileName) {
    QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
    return new QLockFile(fileName_QString);
}

bool QLockFile_Lock(QLockFile* self) {
    return self->lock();
}

bool QLockFile_TryLock(QLockFile* self) {
    return self->tryLock();
}

void QLockFile_Unlock(QLockFile* self) {
    self->unlock();
}

void QLockFile_SetStaleLockTime(QLockFile* self, int staleLockTime) {
    self->setStaleLockTime(static_cast<int>(staleLockTime));
}

int QLockFile_StaleLockTime(const QLockFile* self) {
    return self->staleLockTime();
}

bool QLockFile_IsLocked(const QLockFile* self) {
    return self->isLocked();
}

bool QLockFile_RemoveStaleLockFile(QLockFile* self) {
    return self->removeStaleLockFile();
}

int QLockFile_Error(const QLockFile* self) {
    return static_cast<int>(self->error());
}

bool QLockFile_TryLock1(QLockFile* self, int timeout) {
    return self->tryLock(static_cast<int>(timeout));
}

void QLockFile_Delete(QLockFile* self) {
    delete self;
}
