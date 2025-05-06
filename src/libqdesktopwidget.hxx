#pragma once
#ifndef SRCC_LIBVIRTUALQDESKTOPWIDGET_H
#define SRCC_LIBVIRTUALQDESKTOPWIDGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QDesktopWidget so that we can call protected methods
class VirtualQDesktopWidget : public QDesktopWidget {

  public:
    // Virtual class public types (including callbacks)
    using QDesktopWidget_Metacall_Callback = int (*)(QDesktopWidget*, QMetaObject::Call, int, void**);
    using QDesktopWidget_ResizeEvent_Callback = void (*)(QDesktopWidget*, QResizeEvent*);
    using QDesktopWidget_DevType_Callback = int (*)();
    using QDesktopWidget_SetVisible_Callback = void (*)(QDesktopWidget*, bool);
    using QDesktopWidget_SizeHint_Callback = QSize (*)();
    using QDesktopWidget_MinimumSizeHint_Callback = QSize (*)();
    using QDesktopWidget_HeightForWidth_Callback = int (*)(const QDesktopWidget*, int);
    using QDesktopWidget_HasHeightForWidth_Callback = bool (*)();
    using QDesktopWidget_PaintEngine_Callback = QPaintEngine* (*)();
    using QDesktopWidget_Event_Callback = bool (*)(QDesktopWidget*, QEvent*);
    using QDesktopWidget_MousePressEvent_Callback = void (*)(QDesktopWidget*, QMouseEvent*);
    using QDesktopWidget_MouseReleaseEvent_Callback = void (*)(QDesktopWidget*, QMouseEvent*);
    using QDesktopWidget_MouseDoubleClickEvent_Callback = void (*)(QDesktopWidget*, QMouseEvent*);
    using QDesktopWidget_MouseMoveEvent_Callback = void (*)(QDesktopWidget*, QMouseEvent*);
    using QDesktopWidget_WheelEvent_Callback = void (*)(QDesktopWidget*, QWheelEvent*);
    using QDesktopWidget_KeyPressEvent_Callback = void (*)(QDesktopWidget*, QKeyEvent*);
    using QDesktopWidget_KeyReleaseEvent_Callback = void (*)(QDesktopWidget*, QKeyEvent*);
    using QDesktopWidget_FocusInEvent_Callback = void (*)(QDesktopWidget*, QFocusEvent*);
    using QDesktopWidget_FocusOutEvent_Callback = void (*)(QDesktopWidget*, QFocusEvent*);
    using QDesktopWidget_EnterEvent_Callback = void (*)(QDesktopWidget*, QEvent*);
    using QDesktopWidget_LeaveEvent_Callback = void (*)(QDesktopWidget*, QEvent*);
    using QDesktopWidget_PaintEvent_Callback = void (*)(QDesktopWidget*, QPaintEvent*);
    using QDesktopWidget_MoveEvent_Callback = void (*)(QDesktopWidget*, QMoveEvent*);
    using QDesktopWidget_CloseEvent_Callback = void (*)(QDesktopWidget*, QCloseEvent*);
    using QDesktopWidget_ContextMenuEvent_Callback = void (*)(QDesktopWidget*, QContextMenuEvent*);
    using QDesktopWidget_TabletEvent_Callback = void (*)(QDesktopWidget*, QTabletEvent*);
    using QDesktopWidget_ActionEvent_Callback = void (*)(QDesktopWidget*, QActionEvent*);
    using QDesktopWidget_DragEnterEvent_Callback = void (*)(QDesktopWidget*, QDragEnterEvent*);
    using QDesktopWidget_DragMoveEvent_Callback = void (*)(QDesktopWidget*, QDragMoveEvent*);
    using QDesktopWidget_DragLeaveEvent_Callback = void (*)(QDesktopWidget*, QDragLeaveEvent*);
    using QDesktopWidget_DropEvent_Callback = void (*)(QDesktopWidget*, QDropEvent*);
    using QDesktopWidget_ShowEvent_Callback = void (*)(QDesktopWidget*, QShowEvent*);
    using QDesktopWidget_HideEvent_Callback = void (*)(QDesktopWidget*, QHideEvent*);
    using QDesktopWidget_NativeEvent_Callback = bool (*)(QDesktopWidget*, const QByteArray&, void*, long*);
    using QDesktopWidget_ChangeEvent_Callback = void (*)(QDesktopWidget*, QEvent*);
    using QDesktopWidget_Metric_Callback = int (*)(const QDesktopWidget*, QPaintDevice::PaintDeviceMetric);
    using QDesktopWidget_InitPainter_Callback = void (*)(const QDesktopWidget*, QPainter*);
    using QDesktopWidget_Redirected_Callback = QPaintDevice* (*)(const QDesktopWidget*, QPoint*);
    using QDesktopWidget_SharedPainter_Callback = QPainter* (*)();
    using QDesktopWidget_InputMethodEvent_Callback = void (*)(QDesktopWidget*, QInputMethodEvent*);
    using QDesktopWidget_InputMethodQuery_Callback = QVariant (*)(const QDesktopWidget*, Qt::InputMethodQuery);
    using QDesktopWidget_FocusNextPrevChild_Callback = bool (*)(QDesktopWidget*, bool);
    using QDesktopWidget_EventFilter_Callback = bool (*)(QDesktopWidget*, QObject*, QEvent*);
    using QDesktopWidget_TimerEvent_Callback = void (*)(QDesktopWidget*, QTimerEvent*);
    using QDesktopWidget_ChildEvent_Callback = void (*)(QDesktopWidget*, QChildEvent*);
    using QDesktopWidget_CustomEvent_Callback = void (*)(QDesktopWidget*, QEvent*);
    using QDesktopWidget_ConnectNotify_Callback = void (*)(QDesktopWidget*, const QMetaMethod&);
    using QDesktopWidget_DisconnectNotify_Callback = void (*)(QDesktopWidget*, const QMetaMethod&);
    using QDesktopWidget_UpdateMicroFocus_Callback = void (*)();
    using QDesktopWidget_Create_Callback = void (*)();
    using QDesktopWidget_Destroy_Callback = void (*)();
    using QDesktopWidget_FocusNextChild_Callback = bool (*)();
    using QDesktopWidget_FocusPreviousChild_Callback = bool (*)();
    using QDesktopWidget_Sender_Callback = QObject* (*)();
    using QDesktopWidget_SenderSignalIndex_Callback = int (*)();
    using QDesktopWidget_Receivers_Callback = int (*)(const QDesktopWidget*, const char*);
    using QDesktopWidget_IsSignalConnected_Callback = bool (*)(const QDesktopWidget*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QDesktopWidget_Metacall_Callback qdesktopwidget_metacall_callback = nullptr;
    QDesktopWidget_ResizeEvent_Callback qdesktopwidget_resizeevent_callback = nullptr;
    QDesktopWidget_DevType_Callback qdesktopwidget_devtype_callback = nullptr;
    QDesktopWidget_SetVisible_Callback qdesktopwidget_setvisible_callback = nullptr;
    QDesktopWidget_SizeHint_Callback qdesktopwidget_sizehint_callback = nullptr;
    QDesktopWidget_MinimumSizeHint_Callback qdesktopwidget_minimumsizehint_callback = nullptr;
    QDesktopWidget_HeightForWidth_Callback qdesktopwidget_heightforwidth_callback = nullptr;
    QDesktopWidget_HasHeightForWidth_Callback qdesktopwidget_hasheightforwidth_callback = nullptr;
    QDesktopWidget_PaintEngine_Callback qdesktopwidget_paintengine_callback = nullptr;
    QDesktopWidget_Event_Callback qdesktopwidget_event_callback = nullptr;
    QDesktopWidget_MousePressEvent_Callback qdesktopwidget_mousepressevent_callback = nullptr;
    QDesktopWidget_MouseReleaseEvent_Callback qdesktopwidget_mousereleaseevent_callback = nullptr;
    QDesktopWidget_MouseDoubleClickEvent_Callback qdesktopwidget_mousedoubleclickevent_callback = nullptr;
    QDesktopWidget_MouseMoveEvent_Callback qdesktopwidget_mousemoveevent_callback = nullptr;
    QDesktopWidget_WheelEvent_Callback qdesktopwidget_wheelevent_callback = nullptr;
    QDesktopWidget_KeyPressEvent_Callback qdesktopwidget_keypressevent_callback = nullptr;
    QDesktopWidget_KeyReleaseEvent_Callback qdesktopwidget_keyreleaseevent_callback = nullptr;
    QDesktopWidget_FocusInEvent_Callback qdesktopwidget_focusinevent_callback = nullptr;
    QDesktopWidget_FocusOutEvent_Callback qdesktopwidget_focusoutevent_callback = nullptr;
    QDesktopWidget_EnterEvent_Callback qdesktopwidget_enterevent_callback = nullptr;
    QDesktopWidget_LeaveEvent_Callback qdesktopwidget_leaveevent_callback = nullptr;
    QDesktopWidget_PaintEvent_Callback qdesktopwidget_paintevent_callback = nullptr;
    QDesktopWidget_MoveEvent_Callback qdesktopwidget_moveevent_callback = nullptr;
    QDesktopWidget_CloseEvent_Callback qdesktopwidget_closeevent_callback = nullptr;
    QDesktopWidget_ContextMenuEvent_Callback qdesktopwidget_contextmenuevent_callback = nullptr;
    QDesktopWidget_TabletEvent_Callback qdesktopwidget_tabletevent_callback = nullptr;
    QDesktopWidget_ActionEvent_Callback qdesktopwidget_actionevent_callback = nullptr;
    QDesktopWidget_DragEnterEvent_Callback qdesktopwidget_dragenterevent_callback = nullptr;
    QDesktopWidget_DragMoveEvent_Callback qdesktopwidget_dragmoveevent_callback = nullptr;
    QDesktopWidget_DragLeaveEvent_Callback qdesktopwidget_dragleaveevent_callback = nullptr;
    QDesktopWidget_DropEvent_Callback qdesktopwidget_dropevent_callback = nullptr;
    QDesktopWidget_ShowEvent_Callback qdesktopwidget_showevent_callback = nullptr;
    QDesktopWidget_HideEvent_Callback qdesktopwidget_hideevent_callback = nullptr;
    QDesktopWidget_NativeEvent_Callback qdesktopwidget_nativeevent_callback = nullptr;
    QDesktopWidget_ChangeEvent_Callback qdesktopwidget_changeevent_callback = nullptr;
    QDesktopWidget_Metric_Callback qdesktopwidget_metric_callback = nullptr;
    QDesktopWidget_InitPainter_Callback qdesktopwidget_initpainter_callback = nullptr;
    QDesktopWidget_Redirected_Callback qdesktopwidget_redirected_callback = nullptr;
    QDesktopWidget_SharedPainter_Callback qdesktopwidget_sharedpainter_callback = nullptr;
    QDesktopWidget_InputMethodEvent_Callback qdesktopwidget_inputmethodevent_callback = nullptr;
    QDesktopWidget_InputMethodQuery_Callback qdesktopwidget_inputmethodquery_callback = nullptr;
    QDesktopWidget_FocusNextPrevChild_Callback qdesktopwidget_focusnextprevchild_callback = nullptr;
    QDesktopWidget_EventFilter_Callback qdesktopwidget_eventfilter_callback = nullptr;
    QDesktopWidget_TimerEvent_Callback qdesktopwidget_timerevent_callback = nullptr;
    QDesktopWidget_ChildEvent_Callback qdesktopwidget_childevent_callback = nullptr;
    QDesktopWidget_CustomEvent_Callback qdesktopwidget_customevent_callback = nullptr;
    QDesktopWidget_ConnectNotify_Callback qdesktopwidget_connectnotify_callback = nullptr;
    QDesktopWidget_DisconnectNotify_Callback qdesktopwidget_disconnectnotify_callback = nullptr;
    QDesktopWidget_UpdateMicroFocus_Callback qdesktopwidget_updatemicrofocus_callback = nullptr;
    QDesktopWidget_Create_Callback qdesktopwidget_create_callback = nullptr;
    QDesktopWidget_Destroy_Callback qdesktopwidget_destroy_callback = nullptr;
    QDesktopWidget_FocusNextChild_Callback qdesktopwidget_focusnextchild_callback = nullptr;
    QDesktopWidget_FocusPreviousChild_Callback qdesktopwidget_focuspreviouschild_callback = nullptr;
    QDesktopWidget_Sender_Callback qdesktopwidget_sender_callback = nullptr;
    QDesktopWidget_SenderSignalIndex_Callback qdesktopwidget_sendersignalindex_callback = nullptr;
    QDesktopWidget_Receivers_Callback qdesktopwidget_receivers_callback = nullptr;
    QDesktopWidget_IsSignalConnected_Callback qdesktopwidget_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qdesktopwidget_metacall_isbase = false;
    mutable bool qdesktopwidget_resizeevent_isbase = false;
    mutable bool qdesktopwidget_devtype_isbase = false;
    mutable bool qdesktopwidget_setvisible_isbase = false;
    mutable bool qdesktopwidget_sizehint_isbase = false;
    mutable bool qdesktopwidget_minimumsizehint_isbase = false;
    mutable bool qdesktopwidget_heightforwidth_isbase = false;
    mutable bool qdesktopwidget_hasheightforwidth_isbase = false;
    mutable bool qdesktopwidget_paintengine_isbase = false;
    mutable bool qdesktopwidget_event_isbase = false;
    mutable bool qdesktopwidget_mousepressevent_isbase = false;
    mutable bool qdesktopwidget_mousereleaseevent_isbase = false;
    mutable bool qdesktopwidget_mousedoubleclickevent_isbase = false;
    mutable bool qdesktopwidget_mousemoveevent_isbase = false;
    mutable bool qdesktopwidget_wheelevent_isbase = false;
    mutable bool qdesktopwidget_keypressevent_isbase = false;
    mutable bool qdesktopwidget_keyreleaseevent_isbase = false;
    mutable bool qdesktopwidget_focusinevent_isbase = false;
    mutable bool qdesktopwidget_focusoutevent_isbase = false;
    mutable bool qdesktopwidget_enterevent_isbase = false;
    mutable bool qdesktopwidget_leaveevent_isbase = false;
    mutable bool qdesktopwidget_paintevent_isbase = false;
    mutable bool qdesktopwidget_moveevent_isbase = false;
    mutable bool qdesktopwidget_closeevent_isbase = false;
    mutable bool qdesktopwidget_contextmenuevent_isbase = false;
    mutable bool qdesktopwidget_tabletevent_isbase = false;
    mutable bool qdesktopwidget_actionevent_isbase = false;
    mutable bool qdesktopwidget_dragenterevent_isbase = false;
    mutable bool qdesktopwidget_dragmoveevent_isbase = false;
    mutable bool qdesktopwidget_dragleaveevent_isbase = false;
    mutable bool qdesktopwidget_dropevent_isbase = false;
    mutable bool qdesktopwidget_showevent_isbase = false;
    mutable bool qdesktopwidget_hideevent_isbase = false;
    mutable bool qdesktopwidget_nativeevent_isbase = false;
    mutable bool qdesktopwidget_changeevent_isbase = false;
    mutable bool qdesktopwidget_metric_isbase = false;
    mutable bool qdesktopwidget_initpainter_isbase = false;
    mutable bool qdesktopwidget_redirected_isbase = false;
    mutable bool qdesktopwidget_sharedpainter_isbase = false;
    mutable bool qdesktopwidget_inputmethodevent_isbase = false;
    mutable bool qdesktopwidget_inputmethodquery_isbase = false;
    mutable bool qdesktopwidget_focusnextprevchild_isbase = false;
    mutable bool qdesktopwidget_eventfilter_isbase = false;
    mutable bool qdesktopwidget_timerevent_isbase = false;
    mutable bool qdesktopwidget_childevent_isbase = false;
    mutable bool qdesktopwidget_customevent_isbase = false;
    mutable bool qdesktopwidget_connectnotify_isbase = false;
    mutable bool qdesktopwidget_disconnectnotify_isbase = false;
    mutable bool qdesktopwidget_updatemicrofocus_isbase = false;
    mutable bool qdesktopwidget_create_isbase = false;
    mutable bool qdesktopwidget_destroy_isbase = false;
    mutable bool qdesktopwidget_focusnextchild_isbase = false;
    mutable bool qdesktopwidget_focuspreviouschild_isbase = false;
    mutable bool qdesktopwidget_sender_isbase = false;
    mutable bool qdesktopwidget_sendersignalindex_isbase = false;
    mutable bool qdesktopwidget_receivers_isbase = false;
    mutable bool qdesktopwidget_issignalconnected_isbase = false;

  public:
    VirtualQDesktopWidget() : QDesktopWidget(){};

    ~VirtualQDesktopWidget() {
        qdesktopwidget_metacall_callback = nullptr;
        qdesktopwidget_resizeevent_callback = nullptr;
        qdesktopwidget_devtype_callback = nullptr;
        qdesktopwidget_setvisible_callback = nullptr;
        qdesktopwidget_sizehint_callback = nullptr;
        qdesktopwidget_minimumsizehint_callback = nullptr;
        qdesktopwidget_heightforwidth_callback = nullptr;
        qdesktopwidget_hasheightforwidth_callback = nullptr;
        qdesktopwidget_paintengine_callback = nullptr;
        qdesktopwidget_event_callback = nullptr;
        qdesktopwidget_mousepressevent_callback = nullptr;
        qdesktopwidget_mousereleaseevent_callback = nullptr;
        qdesktopwidget_mousedoubleclickevent_callback = nullptr;
        qdesktopwidget_mousemoveevent_callback = nullptr;
        qdesktopwidget_wheelevent_callback = nullptr;
        qdesktopwidget_keypressevent_callback = nullptr;
        qdesktopwidget_keyreleaseevent_callback = nullptr;
        qdesktopwidget_focusinevent_callback = nullptr;
        qdesktopwidget_focusoutevent_callback = nullptr;
        qdesktopwidget_enterevent_callback = nullptr;
        qdesktopwidget_leaveevent_callback = nullptr;
        qdesktopwidget_paintevent_callback = nullptr;
        qdesktopwidget_moveevent_callback = nullptr;
        qdesktopwidget_closeevent_callback = nullptr;
        qdesktopwidget_contextmenuevent_callback = nullptr;
        qdesktopwidget_tabletevent_callback = nullptr;
        qdesktopwidget_actionevent_callback = nullptr;
        qdesktopwidget_dragenterevent_callback = nullptr;
        qdesktopwidget_dragmoveevent_callback = nullptr;
        qdesktopwidget_dragleaveevent_callback = nullptr;
        qdesktopwidget_dropevent_callback = nullptr;
        qdesktopwidget_showevent_callback = nullptr;
        qdesktopwidget_hideevent_callback = nullptr;
        qdesktopwidget_nativeevent_callback = nullptr;
        qdesktopwidget_changeevent_callback = nullptr;
        qdesktopwidget_metric_callback = nullptr;
        qdesktopwidget_initpainter_callback = nullptr;
        qdesktopwidget_redirected_callback = nullptr;
        qdesktopwidget_sharedpainter_callback = nullptr;
        qdesktopwidget_inputmethodevent_callback = nullptr;
        qdesktopwidget_inputmethodquery_callback = nullptr;
        qdesktopwidget_focusnextprevchild_callback = nullptr;
        qdesktopwidget_eventfilter_callback = nullptr;
        qdesktopwidget_timerevent_callback = nullptr;
        qdesktopwidget_childevent_callback = nullptr;
        qdesktopwidget_customevent_callback = nullptr;
        qdesktopwidget_connectnotify_callback = nullptr;
        qdesktopwidget_disconnectnotify_callback = nullptr;
        qdesktopwidget_updatemicrofocus_callback = nullptr;
        qdesktopwidget_create_callback = nullptr;
        qdesktopwidget_destroy_callback = nullptr;
        qdesktopwidget_focusnextchild_callback = nullptr;
        qdesktopwidget_focuspreviouschild_callback = nullptr;
        qdesktopwidget_sender_callback = nullptr;
        qdesktopwidget_sendersignalindex_callback = nullptr;
        qdesktopwidget_receivers_callback = nullptr;
        qdesktopwidget_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQDesktopWidget_Metacall_Callback(QDesktopWidget_Metacall_Callback cb) { qdesktopwidget_metacall_callback = cb; }
    void setQDesktopWidget_ResizeEvent_Callback(QDesktopWidget_ResizeEvent_Callback cb) { qdesktopwidget_resizeevent_callback = cb; }
    void setQDesktopWidget_DevType_Callback(QDesktopWidget_DevType_Callback cb) { qdesktopwidget_devtype_callback = cb; }
    void setQDesktopWidget_SetVisible_Callback(QDesktopWidget_SetVisible_Callback cb) { qdesktopwidget_setvisible_callback = cb; }
    void setQDesktopWidget_SizeHint_Callback(QDesktopWidget_SizeHint_Callback cb) { qdesktopwidget_sizehint_callback = cb; }
    void setQDesktopWidget_MinimumSizeHint_Callback(QDesktopWidget_MinimumSizeHint_Callback cb) { qdesktopwidget_minimumsizehint_callback = cb; }
    void setQDesktopWidget_HeightForWidth_Callback(QDesktopWidget_HeightForWidth_Callback cb) { qdesktopwidget_heightforwidth_callback = cb; }
    void setQDesktopWidget_HasHeightForWidth_Callback(QDesktopWidget_HasHeightForWidth_Callback cb) { qdesktopwidget_hasheightforwidth_callback = cb; }
    void setQDesktopWidget_PaintEngine_Callback(QDesktopWidget_PaintEngine_Callback cb) { qdesktopwidget_paintengine_callback = cb; }
    void setQDesktopWidget_Event_Callback(QDesktopWidget_Event_Callback cb) { qdesktopwidget_event_callback = cb; }
    void setQDesktopWidget_MousePressEvent_Callback(QDesktopWidget_MousePressEvent_Callback cb) { qdesktopwidget_mousepressevent_callback = cb; }
    void setQDesktopWidget_MouseReleaseEvent_Callback(QDesktopWidget_MouseReleaseEvent_Callback cb) { qdesktopwidget_mousereleaseevent_callback = cb; }
    void setQDesktopWidget_MouseDoubleClickEvent_Callback(QDesktopWidget_MouseDoubleClickEvent_Callback cb) { qdesktopwidget_mousedoubleclickevent_callback = cb; }
    void setQDesktopWidget_MouseMoveEvent_Callback(QDesktopWidget_MouseMoveEvent_Callback cb) { qdesktopwidget_mousemoveevent_callback = cb; }
    void setQDesktopWidget_WheelEvent_Callback(QDesktopWidget_WheelEvent_Callback cb) { qdesktopwidget_wheelevent_callback = cb; }
    void setQDesktopWidget_KeyPressEvent_Callback(QDesktopWidget_KeyPressEvent_Callback cb) { qdesktopwidget_keypressevent_callback = cb; }
    void setQDesktopWidget_KeyReleaseEvent_Callback(QDesktopWidget_KeyReleaseEvent_Callback cb) { qdesktopwidget_keyreleaseevent_callback = cb; }
    void setQDesktopWidget_FocusInEvent_Callback(QDesktopWidget_FocusInEvent_Callback cb) { qdesktopwidget_focusinevent_callback = cb; }
    void setQDesktopWidget_FocusOutEvent_Callback(QDesktopWidget_FocusOutEvent_Callback cb) { qdesktopwidget_focusoutevent_callback = cb; }
    void setQDesktopWidget_EnterEvent_Callback(QDesktopWidget_EnterEvent_Callback cb) { qdesktopwidget_enterevent_callback = cb; }
    void setQDesktopWidget_LeaveEvent_Callback(QDesktopWidget_LeaveEvent_Callback cb) { qdesktopwidget_leaveevent_callback = cb; }
    void setQDesktopWidget_PaintEvent_Callback(QDesktopWidget_PaintEvent_Callback cb) { qdesktopwidget_paintevent_callback = cb; }
    void setQDesktopWidget_MoveEvent_Callback(QDesktopWidget_MoveEvent_Callback cb) { qdesktopwidget_moveevent_callback = cb; }
    void setQDesktopWidget_CloseEvent_Callback(QDesktopWidget_CloseEvent_Callback cb) { qdesktopwidget_closeevent_callback = cb; }
    void setQDesktopWidget_ContextMenuEvent_Callback(QDesktopWidget_ContextMenuEvent_Callback cb) { qdesktopwidget_contextmenuevent_callback = cb; }
    void setQDesktopWidget_TabletEvent_Callback(QDesktopWidget_TabletEvent_Callback cb) { qdesktopwidget_tabletevent_callback = cb; }
    void setQDesktopWidget_ActionEvent_Callback(QDesktopWidget_ActionEvent_Callback cb) { qdesktopwidget_actionevent_callback = cb; }
    void setQDesktopWidget_DragEnterEvent_Callback(QDesktopWidget_DragEnterEvent_Callback cb) { qdesktopwidget_dragenterevent_callback = cb; }
    void setQDesktopWidget_DragMoveEvent_Callback(QDesktopWidget_DragMoveEvent_Callback cb) { qdesktopwidget_dragmoveevent_callback = cb; }
    void setQDesktopWidget_DragLeaveEvent_Callback(QDesktopWidget_DragLeaveEvent_Callback cb) { qdesktopwidget_dragleaveevent_callback = cb; }
    void setQDesktopWidget_DropEvent_Callback(QDesktopWidget_DropEvent_Callback cb) { qdesktopwidget_dropevent_callback = cb; }
    void setQDesktopWidget_ShowEvent_Callback(QDesktopWidget_ShowEvent_Callback cb) { qdesktopwidget_showevent_callback = cb; }
    void setQDesktopWidget_HideEvent_Callback(QDesktopWidget_HideEvent_Callback cb) { qdesktopwidget_hideevent_callback = cb; }
    void setQDesktopWidget_NativeEvent_Callback(QDesktopWidget_NativeEvent_Callback cb) { qdesktopwidget_nativeevent_callback = cb; }
    void setQDesktopWidget_ChangeEvent_Callback(QDesktopWidget_ChangeEvent_Callback cb) { qdesktopwidget_changeevent_callback = cb; }
    void setQDesktopWidget_Metric_Callback(QDesktopWidget_Metric_Callback cb) { qdesktopwidget_metric_callback = cb; }
    void setQDesktopWidget_InitPainter_Callback(QDesktopWidget_InitPainter_Callback cb) { qdesktopwidget_initpainter_callback = cb; }
    void setQDesktopWidget_Redirected_Callback(QDesktopWidget_Redirected_Callback cb) { qdesktopwidget_redirected_callback = cb; }
    void setQDesktopWidget_SharedPainter_Callback(QDesktopWidget_SharedPainter_Callback cb) { qdesktopwidget_sharedpainter_callback = cb; }
    void setQDesktopWidget_InputMethodEvent_Callback(QDesktopWidget_InputMethodEvent_Callback cb) { qdesktopwidget_inputmethodevent_callback = cb; }
    void setQDesktopWidget_InputMethodQuery_Callback(QDesktopWidget_InputMethodQuery_Callback cb) { qdesktopwidget_inputmethodquery_callback = cb; }
    void setQDesktopWidget_FocusNextPrevChild_Callback(QDesktopWidget_FocusNextPrevChild_Callback cb) { qdesktopwidget_focusnextprevchild_callback = cb; }
    void setQDesktopWidget_EventFilter_Callback(QDesktopWidget_EventFilter_Callback cb) { qdesktopwidget_eventfilter_callback = cb; }
    void setQDesktopWidget_TimerEvent_Callback(QDesktopWidget_TimerEvent_Callback cb) { qdesktopwidget_timerevent_callback = cb; }
    void setQDesktopWidget_ChildEvent_Callback(QDesktopWidget_ChildEvent_Callback cb) { qdesktopwidget_childevent_callback = cb; }
    void setQDesktopWidget_CustomEvent_Callback(QDesktopWidget_CustomEvent_Callback cb) { qdesktopwidget_customevent_callback = cb; }
    void setQDesktopWidget_ConnectNotify_Callback(QDesktopWidget_ConnectNotify_Callback cb) { qdesktopwidget_connectnotify_callback = cb; }
    void setQDesktopWidget_DisconnectNotify_Callback(QDesktopWidget_DisconnectNotify_Callback cb) { qdesktopwidget_disconnectnotify_callback = cb; }
    void setQDesktopWidget_UpdateMicroFocus_Callback(QDesktopWidget_UpdateMicroFocus_Callback cb) { qdesktopwidget_updatemicrofocus_callback = cb; }
    void setQDesktopWidget_Create_Callback(QDesktopWidget_Create_Callback cb) { qdesktopwidget_create_callback = cb; }
    void setQDesktopWidget_Destroy_Callback(QDesktopWidget_Destroy_Callback cb) { qdesktopwidget_destroy_callback = cb; }
    void setQDesktopWidget_FocusNextChild_Callback(QDesktopWidget_FocusNextChild_Callback cb) { qdesktopwidget_focusnextchild_callback = cb; }
    void setQDesktopWidget_FocusPreviousChild_Callback(QDesktopWidget_FocusPreviousChild_Callback cb) { qdesktopwidget_focuspreviouschild_callback = cb; }
    void setQDesktopWidget_Sender_Callback(QDesktopWidget_Sender_Callback cb) { qdesktopwidget_sender_callback = cb; }
    void setQDesktopWidget_SenderSignalIndex_Callback(QDesktopWidget_SenderSignalIndex_Callback cb) { qdesktopwidget_sendersignalindex_callback = cb; }
    void setQDesktopWidget_Receivers_Callback(QDesktopWidget_Receivers_Callback cb) { qdesktopwidget_receivers_callback = cb; }
    void setQDesktopWidget_IsSignalConnected_Callback(QDesktopWidget_IsSignalConnected_Callback cb) { qdesktopwidget_issignalconnected_callback = cb; }

    // Base flag setters
    void setQDesktopWidget_Metacall_IsBase(bool value) const { qdesktopwidget_metacall_isbase = value; }
    void setQDesktopWidget_ResizeEvent_IsBase(bool value) const { qdesktopwidget_resizeevent_isbase = value; }
    void setQDesktopWidget_DevType_IsBase(bool value) const { qdesktopwidget_devtype_isbase = value; }
    void setQDesktopWidget_SetVisible_IsBase(bool value) const { qdesktopwidget_setvisible_isbase = value; }
    void setQDesktopWidget_SizeHint_IsBase(bool value) const { qdesktopwidget_sizehint_isbase = value; }
    void setQDesktopWidget_MinimumSizeHint_IsBase(bool value) const { qdesktopwidget_minimumsizehint_isbase = value; }
    void setQDesktopWidget_HeightForWidth_IsBase(bool value) const { qdesktopwidget_heightforwidth_isbase = value; }
    void setQDesktopWidget_HasHeightForWidth_IsBase(bool value) const { qdesktopwidget_hasheightforwidth_isbase = value; }
    void setQDesktopWidget_PaintEngine_IsBase(bool value) const { qdesktopwidget_paintengine_isbase = value; }
    void setQDesktopWidget_Event_IsBase(bool value) const { qdesktopwidget_event_isbase = value; }
    void setQDesktopWidget_MousePressEvent_IsBase(bool value) const { qdesktopwidget_mousepressevent_isbase = value; }
    void setQDesktopWidget_MouseReleaseEvent_IsBase(bool value) const { qdesktopwidget_mousereleaseevent_isbase = value; }
    void setQDesktopWidget_MouseDoubleClickEvent_IsBase(bool value) const { qdesktopwidget_mousedoubleclickevent_isbase = value; }
    void setQDesktopWidget_MouseMoveEvent_IsBase(bool value) const { qdesktopwidget_mousemoveevent_isbase = value; }
    void setQDesktopWidget_WheelEvent_IsBase(bool value) const { qdesktopwidget_wheelevent_isbase = value; }
    void setQDesktopWidget_KeyPressEvent_IsBase(bool value) const { qdesktopwidget_keypressevent_isbase = value; }
    void setQDesktopWidget_KeyReleaseEvent_IsBase(bool value) const { qdesktopwidget_keyreleaseevent_isbase = value; }
    void setQDesktopWidget_FocusInEvent_IsBase(bool value) const { qdesktopwidget_focusinevent_isbase = value; }
    void setQDesktopWidget_FocusOutEvent_IsBase(bool value) const { qdesktopwidget_focusoutevent_isbase = value; }
    void setQDesktopWidget_EnterEvent_IsBase(bool value) const { qdesktopwidget_enterevent_isbase = value; }
    void setQDesktopWidget_LeaveEvent_IsBase(bool value) const { qdesktopwidget_leaveevent_isbase = value; }
    void setQDesktopWidget_PaintEvent_IsBase(bool value) const { qdesktopwidget_paintevent_isbase = value; }
    void setQDesktopWidget_MoveEvent_IsBase(bool value) const { qdesktopwidget_moveevent_isbase = value; }
    void setQDesktopWidget_CloseEvent_IsBase(bool value) const { qdesktopwidget_closeevent_isbase = value; }
    void setQDesktopWidget_ContextMenuEvent_IsBase(bool value) const { qdesktopwidget_contextmenuevent_isbase = value; }
    void setQDesktopWidget_TabletEvent_IsBase(bool value) const { qdesktopwidget_tabletevent_isbase = value; }
    void setQDesktopWidget_ActionEvent_IsBase(bool value) const { qdesktopwidget_actionevent_isbase = value; }
    void setQDesktopWidget_DragEnterEvent_IsBase(bool value) const { qdesktopwidget_dragenterevent_isbase = value; }
    void setQDesktopWidget_DragMoveEvent_IsBase(bool value) const { qdesktopwidget_dragmoveevent_isbase = value; }
    void setQDesktopWidget_DragLeaveEvent_IsBase(bool value) const { qdesktopwidget_dragleaveevent_isbase = value; }
    void setQDesktopWidget_DropEvent_IsBase(bool value) const { qdesktopwidget_dropevent_isbase = value; }
    void setQDesktopWidget_ShowEvent_IsBase(bool value) const { qdesktopwidget_showevent_isbase = value; }
    void setQDesktopWidget_HideEvent_IsBase(bool value) const { qdesktopwidget_hideevent_isbase = value; }
    void setQDesktopWidget_NativeEvent_IsBase(bool value) const { qdesktopwidget_nativeevent_isbase = value; }
    void setQDesktopWidget_ChangeEvent_IsBase(bool value) const { qdesktopwidget_changeevent_isbase = value; }
    void setQDesktopWidget_Metric_IsBase(bool value) const { qdesktopwidget_metric_isbase = value; }
    void setQDesktopWidget_InitPainter_IsBase(bool value) const { qdesktopwidget_initpainter_isbase = value; }
    void setQDesktopWidget_Redirected_IsBase(bool value) const { qdesktopwidget_redirected_isbase = value; }
    void setQDesktopWidget_SharedPainter_IsBase(bool value) const { qdesktopwidget_sharedpainter_isbase = value; }
    void setQDesktopWidget_InputMethodEvent_IsBase(bool value) const { qdesktopwidget_inputmethodevent_isbase = value; }
    void setQDesktopWidget_InputMethodQuery_IsBase(bool value) const { qdesktopwidget_inputmethodquery_isbase = value; }
    void setQDesktopWidget_FocusNextPrevChild_IsBase(bool value) const { qdesktopwidget_focusnextprevchild_isbase = value; }
    void setQDesktopWidget_EventFilter_IsBase(bool value) const { qdesktopwidget_eventfilter_isbase = value; }
    void setQDesktopWidget_TimerEvent_IsBase(bool value) const { qdesktopwidget_timerevent_isbase = value; }
    void setQDesktopWidget_ChildEvent_IsBase(bool value) const { qdesktopwidget_childevent_isbase = value; }
    void setQDesktopWidget_CustomEvent_IsBase(bool value) const { qdesktopwidget_customevent_isbase = value; }
    void setQDesktopWidget_ConnectNotify_IsBase(bool value) const { qdesktopwidget_connectnotify_isbase = value; }
    void setQDesktopWidget_DisconnectNotify_IsBase(bool value) const { qdesktopwidget_disconnectnotify_isbase = value; }
    void setQDesktopWidget_UpdateMicroFocus_IsBase(bool value) const { qdesktopwidget_updatemicrofocus_isbase = value; }
    void setQDesktopWidget_Create_IsBase(bool value) const { qdesktopwidget_create_isbase = value; }
    void setQDesktopWidget_Destroy_IsBase(bool value) const { qdesktopwidget_destroy_isbase = value; }
    void setQDesktopWidget_FocusNextChild_IsBase(bool value) const { qdesktopwidget_focusnextchild_isbase = value; }
    void setQDesktopWidget_FocusPreviousChild_IsBase(bool value) const { qdesktopwidget_focuspreviouschild_isbase = value; }
    void setQDesktopWidget_Sender_IsBase(bool value) const { qdesktopwidget_sender_isbase = value; }
    void setQDesktopWidget_SenderSignalIndex_IsBase(bool value) const { qdesktopwidget_sendersignalindex_isbase = value; }
    void setQDesktopWidget_Receivers_IsBase(bool value) const { qdesktopwidget_receivers_isbase = value; }
    void setQDesktopWidget_IsSignalConnected_IsBase(bool value) const { qdesktopwidget_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qdesktopwidget_metacall_isbase) {
            qdesktopwidget_metacall_isbase = false;
            return QDesktopWidget::qt_metacall(param1, param2, param3);
        } else if (qdesktopwidget_metacall_callback != nullptr) {
            return qdesktopwidget_metacall_callback(this, param1, param2, param3);
        } else {
            return QDesktopWidget::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void resizeEvent(QResizeEvent* e) override {
        if (qdesktopwidget_resizeevent_isbase) {
            qdesktopwidget_resizeevent_isbase = false;
            QDesktopWidget::resizeEvent(e);
        } else if (qdesktopwidget_resizeevent_callback != nullptr) {
            qdesktopwidget_resizeevent_callback(this, e);
        } else {
            QDesktopWidget::resizeEvent(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int devType() const override {
        if (qdesktopwidget_devtype_isbase) {
            qdesktopwidget_devtype_isbase = false;
            return QDesktopWidget::devType();
        } else if (qdesktopwidget_devtype_callback != nullptr) {
            return qdesktopwidget_devtype_callback();
        } else {
            return QDesktopWidget::devType();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setVisible(bool visible) override {
        if (qdesktopwidget_setvisible_isbase) {
            qdesktopwidget_setvisible_isbase = false;
            QDesktopWidget::setVisible(visible);
        } else if (qdesktopwidget_setvisible_callback != nullptr) {
            qdesktopwidget_setvisible_callback(this, visible);
        } else {
            QDesktopWidget::setVisible(visible);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QSize sizeHint() const override {
        if (qdesktopwidget_sizehint_isbase) {
            qdesktopwidget_sizehint_isbase = false;
            return QDesktopWidget::sizeHint();
        } else if (qdesktopwidget_sizehint_callback != nullptr) {
            return qdesktopwidget_sizehint_callback();
        } else {
            return QDesktopWidget::sizeHint();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QSize minimumSizeHint() const override {
        if (qdesktopwidget_minimumsizehint_isbase) {
            qdesktopwidget_minimumsizehint_isbase = false;
            return QDesktopWidget::minimumSizeHint();
        } else if (qdesktopwidget_minimumsizehint_callback != nullptr) {
            return qdesktopwidget_minimumsizehint_callback();
        } else {
            return QDesktopWidget::minimumSizeHint();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int heightForWidth(int param1) const override {
        if (qdesktopwidget_heightforwidth_isbase) {
            qdesktopwidget_heightforwidth_isbase = false;
            return QDesktopWidget::heightForWidth(param1);
        } else if (qdesktopwidget_heightforwidth_callback != nullptr) {
            return qdesktopwidget_heightforwidth_callback(this, param1);
        } else {
            return QDesktopWidget::heightForWidth(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool hasHeightForWidth() const override {
        if (qdesktopwidget_hasheightforwidth_isbase) {
            qdesktopwidget_hasheightforwidth_isbase = false;
            return QDesktopWidget::hasHeightForWidth();
        } else if (qdesktopwidget_hasheightforwidth_callback != nullptr) {
            return qdesktopwidget_hasheightforwidth_callback();
        } else {
            return QDesktopWidget::hasHeightForWidth();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPaintEngine* paintEngine() const override {
        if (qdesktopwidget_paintengine_isbase) {
            qdesktopwidget_paintengine_isbase = false;
            return QDesktopWidget::paintEngine();
        } else if (qdesktopwidget_paintengine_callback != nullptr) {
            return qdesktopwidget_paintengine_callback();
        } else {
            return QDesktopWidget::paintEngine();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qdesktopwidget_event_isbase) {
            qdesktopwidget_event_isbase = false;
            return QDesktopWidget::event(event);
        } else if (qdesktopwidget_event_callback != nullptr) {
            return qdesktopwidget_event_callback(this, event);
        } else {
            return QDesktopWidget::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void mousePressEvent(QMouseEvent* event) override {
        if (qdesktopwidget_mousepressevent_isbase) {
            qdesktopwidget_mousepressevent_isbase = false;
            QDesktopWidget::mousePressEvent(event);
        } else if (qdesktopwidget_mousepressevent_callback != nullptr) {
            qdesktopwidget_mousepressevent_callback(this, event);
        } else {
            QDesktopWidget::mousePressEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void mouseReleaseEvent(QMouseEvent* event) override {
        if (qdesktopwidget_mousereleaseevent_isbase) {
            qdesktopwidget_mousereleaseevent_isbase = false;
            QDesktopWidget::mouseReleaseEvent(event);
        } else if (qdesktopwidget_mousereleaseevent_callback != nullptr) {
            qdesktopwidget_mousereleaseevent_callback(this, event);
        } else {
            QDesktopWidget::mouseReleaseEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
        if (qdesktopwidget_mousedoubleclickevent_isbase) {
            qdesktopwidget_mousedoubleclickevent_isbase = false;
            QDesktopWidget::mouseDoubleClickEvent(event);
        } else if (qdesktopwidget_mousedoubleclickevent_callback != nullptr) {
            qdesktopwidget_mousedoubleclickevent_callback(this, event);
        } else {
            QDesktopWidget::mouseDoubleClickEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void mouseMoveEvent(QMouseEvent* event) override {
        if (qdesktopwidget_mousemoveevent_isbase) {
            qdesktopwidget_mousemoveevent_isbase = false;
            QDesktopWidget::mouseMoveEvent(event);
        } else if (qdesktopwidget_mousemoveevent_callback != nullptr) {
            qdesktopwidget_mousemoveevent_callback(this, event);
        } else {
            QDesktopWidget::mouseMoveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void wheelEvent(QWheelEvent* event) override {
        if (qdesktopwidget_wheelevent_isbase) {
            qdesktopwidget_wheelevent_isbase = false;
            QDesktopWidget::wheelEvent(event);
        } else if (qdesktopwidget_wheelevent_callback != nullptr) {
            qdesktopwidget_wheelevent_callback(this, event);
        } else {
            QDesktopWidget::wheelEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void keyPressEvent(QKeyEvent* event) override {
        if (qdesktopwidget_keypressevent_isbase) {
            qdesktopwidget_keypressevent_isbase = false;
            QDesktopWidget::keyPressEvent(event);
        } else if (qdesktopwidget_keypressevent_callback != nullptr) {
            qdesktopwidget_keypressevent_callback(this, event);
        } else {
            QDesktopWidget::keyPressEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void keyReleaseEvent(QKeyEvent* event) override {
        if (qdesktopwidget_keyreleaseevent_isbase) {
            qdesktopwidget_keyreleaseevent_isbase = false;
            QDesktopWidget::keyReleaseEvent(event);
        } else if (qdesktopwidget_keyreleaseevent_callback != nullptr) {
            qdesktopwidget_keyreleaseevent_callback(this, event);
        } else {
            QDesktopWidget::keyReleaseEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void focusInEvent(QFocusEvent* event) override {
        if (qdesktopwidget_focusinevent_isbase) {
            qdesktopwidget_focusinevent_isbase = false;
            QDesktopWidget::focusInEvent(event);
        } else if (qdesktopwidget_focusinevent_callback != nullptr) {
            qdesktopwidget_focusinevent_callback(this, event);
        } else {
            QDesktopWidget::focusInEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void focusOutEvent(QFocusEvent* event) override {
        if (qdesktopwidget_focusoutevent_isbase) {
            qdesktopwidget_focusoutevent_isbase = false;
            QDesktopWidget::focusOutEvent(event);
        } else if (qdesktopwidget_focusoutevent_callback != nullptr) {
            qdesktopwidget_focusoutevent_callback(this, event);
        } else {
            QDesktopWidget::focusOutEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void enterEvent(QEvent* event) override {
        if (qdesktopwidget_enterevent_isbase) {
            qdesktopwidget_enterevent_isbase = false;
            QDesktopWidget::enterEvent(event);
        } else if (qdesktopwidget_enterevent_callback != nullptr) {
            qdesktopwidget_enterevent_callback(this, event);
        } else {
            QDesktopWidget::enterEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void leaveEvent(QEvent* event) override {
        if (qdesktopwidget_leaveevent_isbase) {
            qdesktopwidget_leaveevent_isbase = false;
            QDesktopWidget::leaveEvent(event);
        } else if (qdesktopwidget_leaveevent_callback != nullptr) {
            qdesktopwidget_leaveevent_callback(this, event);
        } else {
            QDesktopWidget::leaveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void paintEvent(QPaintEvent* event) override {
        if (qdesktopwidget_paintevent_isbase) {
            qdesktopwidget_paintevent_isbase = false;
            QDesktopWidget::paintEvent(event);
        } else if (qdesktopwidget_paintevent_callback != nullptr) {
            qdesktopwidget_paintevent_callback(this, event);
        } else {
            QDesktopWidget::paintEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void moveEvent(QMoveEvent* event) override {
        if (qdesktopwidget_moveevent_isbase) {
            qdesktopwidget_moveevent_isbase = false;
            QDesktopWidget::moveEvent(event);
        } else if (qdesktopwidget_moveevent_callback != nullptr) {
            qdesktopwidget_moveevent_callback(this, event);
        } else {
            QDesktopWidget::moveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void closeEvent(QCloseEvent* event) override {
        if (qdesktopwidget_closeevent_isbase) {
            qdesktopwidget_closeevent_isbase = false;
            QDesktopWidget::closeEvent(event);
        } else if (qdesktopwidget_closeevent_callback != nullptr) {
            qdesktopwidget_closeevent_callback(this, event);
        } else {
            QDesktopWidget::closeEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void contextMenuEvent(QContextMenuEvent* event) override {
        if (qdesktopwidget_contextmenuevent_isbase) {
            qdesktopwidget_contextmenuevent_isbase = false;
            QDesktopWidget::contextMenuEvent(event);
        } else if (qdesktopwidget_contextmenuevent_callback != nullptr) {
            qdesktopwidget_contextmenuevent_callback(this, event);
        } else {
            QDesktopWidget::contextMenuEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void tabletEvent(QTabletEvent* event) override {
        if (qdesktopwidget_tabletevent_isbase) {
            qdesktopwidget_tabletevent_isbase = false;
            QDesktopWidget::tabletEvent(event);
        } else if (qdesktopwidget_tabletevent_callback != nullptr) {
            qdesktopwidget_tabletevent_callback(this, event);
        } else {
            QDesktopWidget::tabletEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void actionEvent(QActionEvent* event) override {
        if (qdesktopwidget_actionevent_isbase) {
            qdesktopwidget_actionevent_isbase = false;
            QDesktopWidget::actionEvent(event);
        } else if (qdesktopwidget_actionevent_callback != nullptr) {
            qdesktopwidget_actionevent_callback(this, event);
        } else {
            QDesktopWidget::actionEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void dragEnterEvent(QDragEnterEvent* event) override {
        if (qdesktopwidget_dragenterevent_isbase) {
            qdesktopwidget_dragenterevent_isbase = false;
            QDesktopWidget::dragEnterEvent(event);
        } else if (qdesktopwidget_dragenterevent_callback != nullptr) {
            qdesktopwidget_dragenterevent_callback(this, event);
        } else {
            QDesktopWidget::dragEnterEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void dragMoveEvent(QDragMoveEvent* event) override {
        if (qdesktopwidget_dragmoveevent_isbase) {
            qdesktopwidget_dragmoveevent_isbase = false;
            QDesktopWidget::dragMoveEvent(event);
        } else if (qdesktopwidget_dragmoveevent_callback != nullptr) {
            qdesktopwidget_dragmoveevent_callback(this, event);
        } else {
            QDesktopWidget::dragMoveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
        if (qdesktopwidget_dragleaveevent_isbase) {
            qdesktopwidget_dragleaveevent_isbase = false;
            QDesktopWidget::dragLeaveEvent(event);
        } else if (qdesktopwidget_dragleaveevent_callback != nullptr) {
            qdesktopwidget_dragleaveevent_callback(this, event);
        } else {
            QDesktopWidget::dragLeaveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void dropEvent(QDropEvent* event) override {
        if (qdesktopwidget_dropevent_isbase) {
            qdesktopwidget_dropevent_isbase = false;
            QDesktopWidget::dropEvent(event);
        } else if (qdesktopwidget_dropevent_callback != nullptr) {
            qdesktopwidget_dropevent_callback(this, event);
        } else {
            QDesktopWidget::dropEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void showEvent(QShowEvent* event) override {
        if (qdesktopwidget_showevent_isbase) {
            qdesktopwidget_showevent_isbase = false;
            QDesktopWidget::showEvent(event);
        } else if (qdesktopwidget_showevent_callback != nullptr) {
            qdesktopwidget_showevent_callback(this, event);
        } else {
            QDesktopWidget::showEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void hideEvent(QHideEvent* event) override {
        if (qdesktopwidget_hideevent_isbase) {
            qdesktopwidget_hideevent_isbase = false;
            QDesktopWidget::hideEvent(event);
        } else if (qdesktopwidget_hideevent_callback != nullptr) {
            qdesktopwidget_hideevent_callback(this, event);
        } else {
            QDesktopWidget::hideEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
        if (qdesktopwidget_nativeevent_isbase) {
            qdesktopwidget_nativeevent_isbase = false;
            return QDesktopWidget::nativeEvent(eventType, message, result);
        } else if (qdesktopwidget_nativeevent_callback != nullptr) {
            return qdesktopwidget_nativeevent_callback(this, eventType, message, result);
        } else {
            return QDesktopWidget::nativeEvent(eventType, message, result);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void changeEvent(QEvent* param1) override {
        if (qdesktopwidget_changeevent_isbase) {
            qdesktopwidget_changeevent_isbase = false;
            QDesktopWidget::changeEvent(param1);
        } else if (qdesktopwidget_changeevent_callback != nullptr) {
            qdesktopwidget_changeevent_callback(this, param1);
        } else {
            QDesktopWidget::changeEvent(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
        if (qdesktopwidget_metric_isbase) {
            qdesktopwidget_metric_isbase = false;
            return QDesktopWidget::metric(param1);
        } else if (qdesktopwidget_metric_callback != nullptr) {
            return qdesktopwidget_metric_callback(this, param1);
        } else {
            return QDesktopWidget::metric(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void initPainter(QPainter* painter) const override {
        if (qdesktopwidget_initpainter_isbase) {
            qdesktopwidget_initpainter_isbase = false;
            QDesktopWidget::initPainter(painter);
        } else if (qdesktopwidget_initpainter_callback != nullptr) {
            qdesktopwidget_initpainter_callback(this, painter);
        } else {
            QDesktopWidget::initPainter(painter);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPaintDevice* redirected(QPoint* offset) const override {
        if (qdesktopwidget_redirected_isbase) {
            qdesktopwidget_redirected_isbase = false;
            return QDesktopWidget::redirected(offset);
        } else if (qdesktopwidget_redirected_callback != nullptr) {
            return qdesktopwidget_redirected_callback(this, offset);
        } else {
            return QDesktopWidget::redirected(offset);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPainter* sharedPainter() const override {
        if (qdesktopwidget_sharedpainter_isbase) {
            qdesktopwidget_sharedpainter_isbase = false;
            return QDesktopWidget::sharedPainter();
        } else if (qdesktopwidget_sharedpainter_callback != nullptr) {
            return qdesktopwidget_sharedpainter_callback();
        } else {
            return QDesktopWidget::sharedPainter();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void inputMethodEvent(QInputMethodEvent* param1) override {
        if (qdesktopwidget_inputmethodevent_isbase) {
            qdesktopwidget_inputmethodevent_isbase = false;
            QDesktopWidget::inputMethodEvent(param1);
        } else if (qdesktopwidget_inputmethodevent_callback != nullptr) {
            qdesktopwidget_inputmethodevent_callback(this, param1);
        } else {
            QDesktopWidget::inputMethodEvent(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
        if (qdesktopwidget_inputmethodquery_isbase) {
            qdesktopwidget_inputmethodquery_isbase = false;
            return QDesktopWidget::inputMethodQuery(param1);
        } else if (qdesktopwidget_inputmethodquery_callback != nullptr) {
            return qdesktopwidget_inputmethodquery_callback(this, param1);
        } else {
            return QDesktopWidget::inputMethodQuery(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool focusNextPrevChild(bool next) override {
        if (qdesktopwidget_focusnextprevchild_isbase) {
            qdesktopwidget_focusnextprevchild_isbase = false;
            return QDesktopWidget::focusNextPrevChild(next);
        } else if (qdesktopwidget_focusnextprevchild_callback != nullptr) {
            return qdesktopwidget_focusnextprevchild_callback(this, next);
        } else {
            return QDesktopWidget::focusNextPrevChild(next);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qdesktopwidget_eventfilter_isbase) {
            qdesktopwidget_eventfilter_isbase = false;
            return QDesktopWidget::eventFilter(watched, event);
        } else if (qdesktopwidget_eventfilter_callback != nullptr) {
            return qdesktopwidget_eventfilter_callback(this, watched, event);
        } else {
            return QDesktopWidget::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qdesktopwidget_timerevent_isbase) {
            qdesktopwidget_timerevent_isbase = false;
            QDesktopWidget::timerEvent(event);
        } else if (qdesktopwidget_timerevent_callback != nullptr) {
            qdesktopwidget_timerevent_callback(this, event);
        } else {
            QDesktopWidget::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qdesktopwidget_childevent_isbase) {
            qdesktopwidget_childevent_isbase = false;
            QDesktopWidget::childEvent(event);
        } else if (qdesktopwidget_childevent_callback != nullptr) {
            qdesktopwidget_childevent_callback(this, event);
        } else {
            QDesktopWidget::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qdesktopwidget_customevent_isbase) {
            qdesktopwidget_customevent_isbase = false;
            QDesktopWidget::customEvent(event);
        } else if (qdesktopwidget_customevent_callback != nullptr) {
            qdesktopwidget_customevent_callback(this, event);
        } else {
            QDesktopWidget::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qdesktopwidget_connectnotify_isbase) {
            qdesktopwidget_connectnotify_isbase = false;
            QDesktopWidget::connectNotify(signal);
        } else if (qdesktopwidget_connectnotify_callback != nullptr) {
            qdesktopwidget_connectnotify_callback(this, signal);
        } else {
            QDesktopWidget::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qdesktopwidget_disconnectnotify_isbase) {
            qdesktopwidget_disconnectnotify_isbase = false;
            QDesktopWidget::disconnectNotify(signal);
        } else if (qdesktopwidget_disconnectnotify_callback != nullptr) {
            qdesktopwidget_disconnectnotify_callback(this, signal);
        } else {
            QDesktopWidget::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void updateMicroFocus() {
        if (qdesktopwidget_updatemicrofocus_isbase) {
            qdesktopwidget_updatemicrofocus_isbase = false;
            QDesktopWidget::updateMicroFocus();
        } else if (qdesktopwidget_updatemicrofocus_callback != nullptr) {
            qdesktopwidget_updatemicrofocus_callback();
        } else {
            QDesktopWidget::updateMicroFocus();
        }
    }

    // Virtual method for C ABI access and custom callback
    void create() {
        if (qdesktopwidget_create_isbase) {
            qdesktopwidget_create_isbase = false;
            QDesktopWidget::create();
        } else if (qdesktopwidget_create_callback != nullptr) {
            qdesktopwidget_create_callback();
        } else {
            QDesktopWidget::create();
        }
    }

    // Virtual method for C ABI access and custom callback
    void destroy() {
        if (qdesktopwidget_destroy_isbase) {
            qdesktopwidget_destroy_isbase = false;
            QDesktopWidget::destroy();
        } else if (qdesktopwidget_destroy_callback != nullptr) {
            qdesktopwidget_destroy_callback();
        } else {
            QDesktopWidget::destroy();
        }
    }

    // Virtual method for C ABI access and custom callback
    bool focusNextChild() {
        if (qdesktopwidget_focusnextchild_isbase) {
            qdesktopwidget_focusnextchild_isbase = false;
            return QDesktopWidget::focusNextChild();
        } else if (qdesktopwidget_focusnextchild_callback != nullptr) {
            return qdesktopwidget_focusnextchild_callback();
        } else {
            return QDesktopWidget::focusNextChild();
        }
    }

    // Virtual method for C ABI access and custom callback
    bool focusPreviousChild() {
        if (qdesktopwidget_focuspreviouschild_isbase) {
            qdesktopwidget_focuspreviouschild_isbase = false;
            return QDesktopWidget::focusPreviousChild();
        } else if (qdesktopwidget_focuspreviouschild_callback != nullptr) {
            return qdesktopwidget_focuspreviouschild_callback();
        } else {
            return QDesktopWidget::focusPreviousChild();
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qdesktopwidget_sender_isbase) {
            qdesktopwidget_sender_isbase = false;
            return QDesktopWidget::sender();
        } else if (qdesktopwidget_sender_callback != nullptr) {
            return qdesktopwidget_sender_callback();
        } else {
            return QDesktopWidget::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qdesktopwidget_sendersignalindex_isbase) {
            qdesktopwidget_sendersignalindex_isbase = false;
            return QDesktopWidget::senderSignalIndex();
        } else if (qdesktopwidget_sendersignalindex_callback != nullptr) {
            return qdesktopwidget_sendersignalindex_callback();
        } else {
            return QDesktopWidget::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qdesktopwidget_receivers_isbase) {
            qdesktopwidget_receivers_isbase = false;
            return QDesktopWidget::receivers(signal);
        } else if (qdesktopwidget_receivers_callback != nullptr) {
            return qdesktopwidget_receivers_callback(this, signal);
        } else {
            return QDesktopWidget::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qdesktopwidget_issignalconnected_isbase) {
            qdesktopwidget_issignalconnected_isbase = false;
            return QDesktopWidget::isSignalConnected(signal);
        } else if (qdesktopwidget_issignalconnected_callback != nullptr) {
            return qdesktopwidget_issignalconnected_callback(this, signal);
        } else {
            return QDesktopWidget::isSignalConnected(signal);
        }
    }
};

#endif
