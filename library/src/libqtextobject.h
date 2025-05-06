#pragma once
#ifndef SRCC_LIBQTEXTOBJECT_H
#define SRCC_LIBQTEXTOBJECT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextBlock__iterator)
typedef QTextBlock::iterator QTextBlock__iterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextFrame__iterator)
typedef QTextFrame::iterator QTextFrame__iterator;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextLayout__FormatRange)
typedef QTextLayout::FormatRange QTextLayout__FormatRange;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGlyphRun QGlyphRun;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QTextBlock QTextBlock;
typedef struct QTextBlockFormat QTextBlockFormat;
typedef struct QTextBlockGroup QTextBlockGroup;
typedef struct QTextBlockUserData QTextBlockUserData;
typedef struct QTextBlock__iterator QTextBlock__iterator;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextFormat QTextFormat;
typedef struct QTextFragment QTextFragment;
typedef struct QTextFrame QTextFrame;
typedef struct QTextFrameFormat QTextFrameFormat;
typedef struct QTextFrameLayoutData QTextFrameLayoutData;
typedef struct QTextFrame__iterator QTextFrame__iterator;
typedef struct QTextLayout QTextLayout;
typedef struct QTextLayout__FormatRange QTextLayout__FormatRange;
typedef struct QTextList QTextList;
typedef struct QTextObject QTextObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QTextBlock::Iterator Iterator; // C++ QFlags
#else

#endif

QTLIBC_API QMetaObject* QTextObject_MetaObject(const QTextObject* self);
QTLIBC_API void* QTextObject_Metacast(QTextObject* self, const char* param1);
QTLIBC_API int QTextObject_Metacall(QTextObject* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTextObject_Tr(const char* s);
QTLIBC_API QTextFormat* QTextObject_Format(const QTextObject* self);
QTLIBC_API int QTextObject_FormatIndex(const QTextObject* self);
QTLIBC_API QTextDocument* QTextObject_Document(const QTextObject* self);
QTLIBC_API int QTextObject_ObjectIndex(const QTextObject* self);
QTLIBC_API libqt_string QTextObject_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTextObject_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTextObject_Event(QTextObject* self, QEvent* event);
QTLIBC_API bool QTextObject_EventFilter(QTextObject* self, QObject* watched, QEvent* event);

QTLIBC_API QMetaObject* QTextBlockGroup_MetaObject(const QTextBlockGroup* self);
QTLIBC_API void* QTextBlockGroup_Metacast(QTextBlockGroup* self, const char* param1);
QTLIBC_API int QTextBlockGroup_Metacall(QTextBlockGroup* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTextBlockGroup_Tr(const char* s);
QTLIBC_API libqt_string QTextBlockGroup_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTextBlockGroup_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTextBlockGroup_Event(QTextBlockGroup* self, QEvent* event);
QTLIBC_API bool QTextBlockGroup_EventFilter(QTextBlockGroup* self, QObject* watched, QEvent* event);

QTLIBC_API void QTextFrameLayoutData_OperatorAssign(QTextFrameLayoutData* self, QTextFrameLayoutData* param1);
QTLIBC_API void QTextFrameLayoutData_Delete(QTextFrameLayoutData* self);

QTLIBC_API QTextFrame* QTextFrame_new(QTextDocument* doc);
QTLIBC_API QMetaObject* QTextFrame_MetaObject(const QTextFrame* self);
QTLIBC_API void* QTextFrame_Metacast(QTextFrame* self, const char* param1);
QTLIBC_API int QTextFrame_Metacall(QTextFrame* self, int param1, int param2, void** param3);
QTLIBC_API void QTextFrame_OnMetacall(QTextFrame* self, intptr_t slot);
QTLIBC_API int QTextFrame_QBaseMetacall(QTextFrame* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QTextFrame_Tr(const char* s);
QTLIBC_API void QTextFrame_SetFrameFormat(QTextFrame* self, QTextFrameFormat* format);
QTLIBC_API QTextFrameFormat* QTextFrame_FrameFormat(const QTextFrame* self);
QTLIBC_API QTextCursor* QTextFrame_FirstCursorPosition(const QTextFrame* self);
QTLIBC_API QTextCursor* QTextFrame_LastCursorPosition(const QTextFrame* self);
QTLIBC_API int QTextFrame_FirstPosition(const QTextFrame* self);
QTLIBC_API int QTextFrame_LastPosition(const QTextFrame* self);
QTLIBC_API QTextFrameLayoutData* QTextFrame_LayoutData(const QTextFrame* self);
QTLIBC_API void QTextFrame_SetLayoutData(QTextFrame* self, QTextFrameLayoutData* data);
QTLIBC_API libqt_list /* of QTextFrame* */ QTextFrame_ChildFrames(const QTextFrame* self);
QTLIBC_API QTextFrame* QTextFrame_ParentFrame(const QTextFrame* self);
QTLIBC_API QTextFrame__iterator* QTextFrame_Begin(const QTextFrame* self);
QTLIBC_API QTextFrame__iterator* QTextFrame_End(const QTextFrame* self);
QTLIBC_API libqt_string QTextFrame_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QTextFrame_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QTextFrame_Event(QTextFrame* self, QEvent* event);
QTLIBC_API void QTextFrame_OnEvent(QTextFrame* self, intptr_t slot);
QTLIBC_API bool QTextFrame_QBaseEvent(QTextFrame* self, QEvent* event);
QTLIBC_API bool QTextFrame_EventFilter(QTextFrame* self, QObject* watched, QEvent* event);
QTLIBC_API void QTextFrame_OnEventFilter(QTextFrame* self, intptr_t slot);
QTLIBC_API bool QTextFrame_QBaseEventFilter(QTextFrame* self, QObject* watched, QEvent* event);
QTLIBC_API void QTextFrame_TimerEvent(QTextFrame* self, QTimerEvent* event);
QTLIBC_API void QTextFrame_OnTimerEvent(QTextFrame* self, intptr_t slot);
QTLIBC_API void QTextFrame_QBaseTimerEvent(QTextFrame* self, QTimerEvent* event);
QTLIBC_API void QTextFrame_ChildEvent(QTextFrame* self, QChildEvent* event);
QTLIBC_API void QTextFrame_OnChildEvent(QTextFrame* self, intptr_t slot);
QTLIBC_API void QTextFrame_QBaseChildEvent(QTextFrame* self, QChildEvent* event);
QTLIBC_API void QTextFrame_CustomEvent(QTextFrame* self, QEvent* event);
QTLIBC_API void QTextFrame_OnCustomEvent(QTextFrame* self, intptr_t slot);
QTLIBC_API void QTextFrame_QBaseCustomEvent(QTextFrame* self, QEvent* event);
QTLIBC_API void QTextFrame_ConnectNotify(QTextFrame* self, QMetaMethod* signal);
QTLIBC_API void QTextFrame_OnConnectNotify(QTextFrame* self, intptr_t slot);
QTLIBC_API void QTextFrame_QBaseConnectNotify(QTextFrame* self, QMetaMethod* signal);
QTLIBC_API void QTextFrame_DisconnectNotify(QTextFrame* self, QMetaMethod* signal);
QTLIBC_API void QTextFrame_OnDisconnectNotify(QTextFrame* self, intptr_t slot);
QTLIBC_API void QTextFrame_QBaseDisconnectNotify(QTextFrame* self, QMetaMethod* signal);
QTLIBC_API void QTextFrame_SetFormat(QTextFrame* self, QTextFormat* format);
QTLIBC_API void QTextFrame_OnSetFormat(QTextFrame* self, intptr_t slot);
QTLIBC_API void QTextFrame_QBaseSetFormat(QTextFrame* self, QTextFormat* format);
QTLIBC_API QObject* QTextFrame_Sender(const QTextFrame* self);
QTLIBC_API void QTextFrame_OnSender(const QTextFrame* self, intptr_t slot);
QTLIBC_API QObject* QTextFrame_QBaseSender(const QTextFrame* self);
QTLIBC_API int QTextFrame_SenderSignalIndex(const QTextFrame* self);
QTLIBC_API void QTextFrame_OnSenderSignalIndex(const QTextFrame* self, intptr_t slot);
QTLIBC_API int QTextFrame_QBaseSenderSignalIndex(const QTextFrame* self);
QTLIBC_API int QTextFrame_Receivers(const QTextFrame* self, const char* signal);
QTLIBC_API void QTextFrame_OnReceivers(const QTextFrame* self, intptr_t slot);
QTLIBC_API int QTextFrame_QBaseReceivers(const QTextFrame* self, const char* signal);
QTLIBC_API bool QTextFrame_IsSignalConnected(const QTextFrame* self, QMetaMethod* signal);
QTLIBC_API void QTextFrame_OnIsSignalConnected(const QTextFrame* self, intptr_t slot);
QTLIBC_API bool QTextFrame_QBaseIsSignalConnected(const QTextFrame* self, QMetaMethod* signal);
QTLIBC_API void QTextFrame_Delete(QTextFrame* self);

QTLIBC_API void QTextBlockUserData_OperatorAssign(QTextBlockUserData* self, QTextBlockUserData* param1);
QTLIBC_API void QTextBlockUserData_Delete(QTextBlockUserData* self);

QTLIBC_API QTextBlock* QTextBlock_new();
QTLIBC_API QTextBlock* QTextBlock_new2(QTextBlock* o);
QTLIBC_API void QTextBlock_OperatorAssign(QTextBlock* self, QTextBlock* o);
QTLIBC_API bool QTextBlock_IsValid(const QTextBlock* self);
QTLIBC_API bool QTextBlock_OperatorEqual(const QTextBlock* self, QTextBlock* o);
QTLIBC_API bool QTextBlock_OperatorNotEqual(const QTextBlock* self, QTextBlock* o);
QTLIBC_API bool QTextBlock_OperatorLesser(const QTextBlock* self, QTextBlock* o);
QTLIBC_API int QTextBlock_Position(const QTextBlock* self);
QTLIBC_API int QTextBlock_Length(const QTextBlock* self);
QTLIBC_API bool QTextBlock_Contains(const QTextBlock* self, int position);
QTLIBC_API QTextLayout* QTextBlock_Layout(const QTextBlock* self);
QTLIBC_API void QTextBlock_ClearLayout(QTextBlock* self);
QTLIBC_API QTextBlockFormat* QTextBlock_BlockFormat(const QTextBlock* self);
QTLIBC_API int QTextBlock_BlockFormatIndex(const QTextBlock* self);
QTLIBC_API QTextCharFormat* QTextBlock_CharFormat(const QTextBlock* self);
QTLIBC_API int QTextBlock_CharFormatIndex(const QTextBlock* self);
QTLIBC_API int QTextBlock_TextDirection(const QTextBlock* self);
QTLIBC_API libqt_string QTextBlock_Text(const QTextBlock* self);
QTLIBC_API libqt_list /* of QTextLayout__FormatRange* */ QTextBlock_TextFormats(const QTextBlock* self);
QTLIBC_API QTextDocument* QTextBlock_Document(const QTextBlock* self);
QTLIBC_API QTextList* QTextBlock_TextList(const QTextBlock* self);
QTLIBC_API QTextBlockUserData* QTextBlock_UserData(const QTextBlock* self);
QTLIBC_API void QTextBlock_SetUserData(QTextBlock* self, QTextBlockUserData* data);
QTLIBC_API int QTextBlock_UserState(const QTextBlock* self);
QTLIBC_API void QTextBlock_SetUserState(QTextBlock* self, int state);
QTLIBC_API int QTextBlock_Revision(const QTextBlock* self);
QTLIBC_API void QTextBlock_SetRevision(QTextBlock* self, int rev);
QTLIBC_API bool QTextBlock_IsVisible(const QTextBlock* self);
QTLIBC_API void QTextBlock_SetVisible(QTextBlock* self, bool visible);
QTLIBC_API int QTextBlock_BlockNumber(const QTextBlock* self);
QTLIBC_API int QTextBlock_FirstLineNumber(const QTextBlock* self);
QTLIBC_API void QTextBlock_SetLineCount(QTextBlock* self, int count);
QTLIBC_API int QTextBlock_LineCount(const QTextBlock* self);
QTLIBC_API QTextBlock__iterator* QTextBlock_Begin(const QTextBlock* self);
QTLIBC_API QTextBlock__iterator* QTextBlock_End(const QTextBlock* self);
QTLIBC_API QTextBlock* QTextBlock_Next(const QTextBlock* self);
QTLIBC_API QTextBlock* QTextBlock_Previous(const QTextBlock* self);
QTLIBC_API int QTextBlock_FragmentIndex(const QTextBlock* self);
QTLIBC_API void QTextBlock_Delete(QTextBlock* self);

QTLIBC_API QTextFragment* QTextFragment_new();
QTLIBC_API QTextFragment* QTextFragment_new2(QTextFragment* o);
QTLIBC_API void QTextFragment_OperatorAssign(QTextFragment* self, QTextFragment* o);
QTLIBC_API bool QTextFragment_IsValid(const QTextFragment* self);
QTLIBC_API bool QTextFragment_OperatorEqual(const QTextFragment* self, QTextFragment* o);
QTLIBC_API bool QTextFragment_OperatorNotEqual(const QTextFragment* self, QTextFragment* o);
QTLIBC_API bool QTextFragment_OperatorLesser(const QTextFragment* self, QTextFragment* o);
QTLIBC_API int QTextFragment_Position(const QTextFragment* self);
QTLIBC_API int QTextFragment_Length(const QTextFragment* self);
QTLIBC_API bool QTextFragment_Contains(const QTextFragment* self, int position);
QTLIBC_API QTextCharFormat* QTextFragment_CharFormat(const QTextFragment* self);
QTLIBC_API int QTextFragment_CharFormatIndex(const QTextFragment* self);
QTLIBC_API libqt_string QTextFragment_Text(const QTextFragment* self);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextFragment_GlyphRuns(const QTextFragment* self);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextFragment_GlyphRuns1(const QTextFragment* self, int from);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextFragment_GlyphRuns2(const QTextFragment* self, int from, int length);
QTLIBC_API void QTextFragment_Delete(QTextFragment* self);

QTLIBC_API QTextFrame__iterator* QTextFrame__iterator_new(QTextFrame__iterator* other);
QTLIBC_API QTextFrame__iterator* QTextFrame__iterator_new2(QTextFrame__iterator* other);
QTLIBC_API QTextFrame__iterator* QTextFrame__iterator_new3();
QTLIBC_API QTextFrame__iterator* QTextFrame__iterator_new4(QTextFrame__iterator* param1);
QTLIBC_API void QTextFrame__iterator_CopyAssign(QTextFrame__iterator* self, QTextFrame__iterator* other);
QTLIBC_API void QTextFrame__iterator_MoveAssign(QTextFrame__iterator* self, QTextFrame__iterator* other);
QTLIBC_API QTextFrame* QTextFrame__iterator_ParentFrame(const QTextFrame__iterator* self);
QTLIBC_API QTextFrame* QTextFrame__iterator_CurrentFrame(const QTextFrame__iterator* self);
QTLIBC_API QTextBlock* QTextFrame__iterator_CurrentBlock(const QTextFrame__iterator* self);
QTLIBC_API bool QTextFrame__iterator_AtEnd(const QTextFrame__iterator* self);
QTLIBC_API bool QTextFrame__iterator_OperatorEqual(const QTextFrame__iterator* self, QTextFrame__iterator* o);
QTLIBC_API bool QTextFrame__iterator_OperatorNotEqual(const QTextFrame__iterator* self, QTextFrame__iterator* o);
QTLIBC_API QTextFrame__iterator* QTextFrame__iterator_OperatorPlusPlus(QTextFrame__iterator* self);
QTLIBC_API QTextFrame__iterator* QTextFrame__iterator_OperatorPlusPlusWithInt(QTextFrame__iterator* self, int param1);
QTLIBC_API QTextFrame__iterator* QTextFrame__iterator_OperatorMinusMinus(QTextFrame__iterator* self);
QTLIBC_API QTextFrame__iterator* QTextFrame__iterator_OperatorMinusMinusWithInt(QTextFrame__iterator* self, int param1);
QTLIBC_API void QTextFrame__iterator_Delete(QTextFrame__iterator* self);

QTLIBC_API QTextBlock__iterator* QTextBlock__iterator_new(QTextBlock__iterator* other);
QTLIBC_API QTextBlock__iterator* QTextBlock__iterator_new2(QTextBlock__iterator* other);
QTLIBC_API QTextBlock__iterator* QTextBlock__iterator_new3();
QTLIBC_API QTextBlock__iterator* QTextBlock__iterator_new4(QTextBlock__iterator* param1);
QTLIBC_API void QTextBlock__iterator_CopyAssign(QTextBlock__iterator* self, QTextBlock__iterator* other);
QTLIBC_API void QTextBlock__iterator_MoveAssign(QTextBlock__iterator* self, QTextBlock__iterator* other);
QTLIBC_API QTextFragment* QTextBlock__iterator_Fragment(const QTextBlock__iterator* self);
QTLIBC_API bool QTextBlock__iterator_AtEnd(const QTextBlock__iterator* self);
QTLIBC_API bool QTextBlock__iterator_OperatorEqual(const QTextBlock__iterator* self, QTextBlock__iterator* o);
QTLIBC_API bool QTextBlock__iterator_OperatorNotEqual(const QTextBlock__iterator* self, QTextBlock__iterator* o);
QTLIBC_API QTextBlock__iterator* QTextBlock__iterator_OperatorPlusPlus(QTextBlock__iterator* self);
QTLIBC_API QTextBlock__iterator* QTextBlock__iterator_OperatorPlusPlusWithInt(QTextBlock__iterator* self, int param1);
QTLIBC_API QTextBlock__iterator* QTextBlock__iterator_OperatorMinusMinus(QTextBlock__iterator* self);
QTLIBC_API QTextBlock__iterator* QTextBlock__iterator_OperatorMinusMinusWithInt(QTextBlock__iterator* self, int param1);
QTLIBC_API void QTextBlock__iterator_Delete(QTextBlock__iterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
