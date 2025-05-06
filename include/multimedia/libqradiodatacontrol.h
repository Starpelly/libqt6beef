#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQRADIODATACONTROL_H
#define SRC_MULTIMEDIAC_LIBQRADIODATACONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QRadioDataControl QRadioDataControl;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QRadioDataControl_MetaObject(const QRadioDataControl* self);
void* QRadioDataControl_Metacast(QRadioDataControl* self, const char* param1);
int QRadioDataControl_Metacall(QRadioDataControl* self, int param1, int param2, void** param3);
libqt_string QRadioDataControl_Tr(const char* s);
libqt_string QRadioDataControl_TrUtf8(const char* s);
libqt_string QRadioDataControl_StationId(const QRadioDataControl* self);
int QRadioDataControl_ProgramType(const QRadioDataControl* self);
libqt_string QRadioDataControl_ProgramTypeName(const QRadioDataControl* self);
libqt_string QRadioDataControl_StationName(const QRadioDataControl* self);
libqt_string QRadioDataControl_RadioText(const QRadioDataControl* self);
void QRadioDataControl_SetAlternativeFrequenciesEnabled(QRadioDataControl* self, bool enabled);
bool QRadioDataControl_IsAlternativeFrequenciesEnabled(const QRadioDataControl* self);
int QRadioDataControl_Error(const QRadioDataControl* self);
libqt_string QRadioDataControl_ErrorString(const QRadioDataControl* self);
void QRadioDataControl_StationIdChanged(QRadioDataControl* self, libqt_string stationId);
void QRadioDataControl_Connect_StationIdChanged(QRadioDataControl* self, intptr_t slot);
void QRadioDataControl_ProgramTypeChanged(QRadioDataControl* self, int programType);
void QRadioDataControl_Connect_ProgramTypeChanged(QRadioDataControl* self, intptr_t slot);
void QRadioDataControl_ProgramTypeNameChanged(QRadioDataControl* self, libqt_string programTypeName);
void QRadioDataControl_Connect_ProgramTypeNameChanged(QRadioDataControl* self, intptr_t slot);
void QRadioDataControl_StationNameChanged(QRadioDataControl* self, libqt_string stationName);
void QRadioDataControl_Connect_StationNameChanged(QRadioDataControl* self, intptr_t slot);
void QRadioDataControl_RadioTextChanged(QRadioDataControl* self, libqt_string radioText);
void QRadioDataControl_Connect_RadioTextChanged(QRadioDataControl* self, intptr_t slot);
void QRadioDataControl_AlternativeFrequenciesEnabledChanged(QRadioDataControl* self, bool enabled);
void QRadioDataControl_Connect_AlternativeFrequenciesEnabledChanged(QRadioDataControl* self, intptr_t slot);
void QRadioDataControl_ErrorWithErr(QRadioDataControl* self, int err);
void QRadioDataControl_Connect_ErrorWithErr(QRadioDataControl* self, intptr_t slot);
libqt_string QRadioDataControl_Tr2(const char* s, const char* c);
libqt_string QRadioDataControl_Tr3(const char* s, const char* c, int n);
libqt_string QRadioDataControl_TrUtf82(const char* s, const char* c);
libqt_string QRadioDataControl_TrUtf83(const char* s, const char* c, int n);
bool QRadioDataControl_Event(QRadioDataControl* self, QEvent* event);
bool QRadioDataControl_EventFilter(QRadioDataControl* self, QObject* watched, QEvent* event);
void QRadioDataControl_Delete(QRadioDataControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
