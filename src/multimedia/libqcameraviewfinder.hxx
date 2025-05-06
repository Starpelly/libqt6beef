#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQCAMERAVIEWFINDER_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQCAMERAVIEWFINDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QCameraViewfinder so that we can call protected methods
class VirtualQCameraViewfinder : public QCameraViewfinder {

  public:
    // Virtual class public types (including callbacks)
    using QCameraViewfinder_Metacall_Callback = int (*)(QCameraViewfinder*, QMetaObject::Call, int, void**);
    using QCameraViewfinder_MediaObject_Callback = QMediaObject* (*)();
    using QCameraViewfinder_SetMediaObject_Callback = bool (*)(QCameraViewfinder*, QMediaObject*);
    using QCameraViewfinder_SizeHint_Callback = QSize (*)();
    using QCameraViewfinder_Event_Callback = bool (*)(QCameraViewfinder*, QEvent*);
    using QCameraViewfinder_ShowEvent_Callback = void (*)(QCameraViewfinder*, QShowEvent*);
    using QCameraViewfinder_HideEvent_Callback = void (*)(QCameraViewfinder*, QHideEvent*);
    using QCameraViewfinder_ResizeEvent_Callback = void (*)(QCameraViewfinder*, QResizeEvent*);
    using QCameraViewfinder_MoveEvent_Callback = void (*)(QCameraViewfinder*, QMoveEvent*);
    using QCameraViewfinder_PaintEvent_Callback = void (*)(QCameraViewfinder*, QPaintEvent*);
    using QCameraViewfinder_DevType_Callback = int (*)();
    using QCameraViewfinder_SetVisible_Callback = void (*)(QCameraViewfinder*, bool);
    using QCameraViewfinder_MinimumSizeHint_Callback = QSize (*)();
    using QCameraViewfinder_HeightForWidth_Callback = int (*)(const QCameraViewfinder*, int);
    using QCameraViewfinder_HasHeightForWidth_Callback = bool (*)();
    using QCameraViewfinder_PaintEngine_Callback = QPaintEngine* (*)();
    using QCameraViewfinder_MousePressEvent_Callback = void (*)(QCameraViewfinder*, QMouseEvent*);
    using QCameraViewfinder_MouseReleaseEvent_Callback = void (*)(QCameraViewfinder*, QMouseEvent*);
    using QCameraViewfinder_MouseDoubleClickEvent_Callback = void (*)(QCameraViewfinder*, QMouseEvent*);
    using QCameraViewfinder_MouseMoveEvent_Callback = void (*)(QCameraViewfinder*, QMouseEvent*);
    using QCameraViewfinder_WheelEvent_Callback = void (*)(QCameraViewfinder*, QWheelEvent*);
    using QCameraViewfinder_KeyPressEvent_Callback = void (*)(QCameraViewfinder*, QKeyEvent*);
    using QCameraViewfinder_KeyReleaseEvent_Callback = void (*)(QCameraViewfinder*, QKeyEvent*);
    using QCameraViewfinder_FocusInEvent_Callback = void (*)(QCameraViewfinder*, QFocusEvent*);
    using QCameraViewfinder_FocusOutEvent_Callback = void (*)(QCameraViewfinder*, QFocusEvent*);
    using QCameraViewfinder_EnterEvent_Callback = void (*)(QCameraViewfinder*, QEvent*);
    using QCameraViewfinder_LeaveEvent_Callback = void (*)(QCameraViewfinder*, QEvent*);
    using QCameraViewfinder_CloseEvent_Callback = void (*)(QCameraViewfinder*, QCloseEvent*);
    using QCameraViewfinder_ContextMenuEvent_Callback = void (*)(QCameraViewfinder*, QContextMenuEvent*);
    using QCameraViewfinder_TabletEvent_Callback = void (*)(QCameraViewfinder*, QTabletEvent*);
    using QCameraViewfinder_ActionEvent_Callback = void (*)(QCameraViewfinder*, QActionEvent*);
    using QCameraViewfinder_DragEnterEvent_Callback = void (*)(QCameraViewfinder*, QDragEnterEvent*);
    using QCameraViewfinder_DragMoveEvent_Callback = void (*)(QCameraViewfinder*, QDragMoveEvent*);
    using QCameraViewfinder_DragLeaveEvent_Callback = void (*)(QCameraViewfinder*, QDragLeaveEvent*);
    using QCameraViewfinder_DropEvent_Callback = void (*)(QCameraViewfinder*, QDropEvent*);
    using QCameraViewfinder_NativeEvent_Callback = bool (*)(QCameraViewfinder*, const QByteArray&, void*, long*);
    using QCameraViewfinder_ChangeEvent_Callback = void (*)(QCameraViewfinder*, QEvent*);
    using QCameraViewfinder_Metric_Callback = int (*)(const QCameraViewfinder*, QPaintDevice::PaintDeviceMetric);
    using QCameraViewfinder_InitPainter_Callback = void (*)(const QCameraViewfinder*, QPainter*);
    using QCameraViewfinder_Redirected_Callback = QPaintDevice* (*)(const QCameraViewfinder*, QPoint*);
    using QCameraViewfinder_SharedPainter_Callback = QPainter* (*)();
    using QCameraViewfinder_InputMethodEvent_Callback = void (*)(QCameraViewfinder*, QInputMethodEvent*);
    using QCameraViewfinder_InputMethodQuery_Callback = QVariant (*)(const QCameraViewfinder*, Qt::InputMethodQuery);
    using QCameraViewfinder_FocusNextPrevChild_Callback = bool (*)(QCameraViewfinder*, bool);
    using QCameraViewfinder_EventFilter_Callback = bool (*)(QCameraViewfinder*, QObject*, QEvent*);
    using QCameraViewfinder_TimerEvent_Callback = void (*)(QCameraViewfinder*, QTimerEvent*);
    using QCameraViewfinder_ChildEvent_Callback = void (*)(QCameraViewfinder*, QChildEvent*);
    using QCameraViewfinder_CustomEvent_Callback = void (*)(QCameraViewfinder*, QEvent*);
    using QCameraViewfinder_ConnectNotify_Callback = void (*)(QCameraViewfinder*, const QMetaMethod&);
    using QCameraViewfinder_DisconnectNotify_Callback = void (*)(QCameraViewfinder*, const QMetaMethod&);
    using QCameraViewfinder_UpdateMicroFocus_Callback = void (*)();
    using QCameraViewfinder_Create_Callback = void (*)();
    using QCameraViewfinder_Destroy_Callback = void (*)();
    using QCameraViewfinder_FocusNextChild_Callback = bool (*)();
    using QCameraViewfinder_FocusPreviousChild_Callback = bool (*)();
    using QCameraViewfinder_Sender_Callback = QObject* (*)();
    using QCameraViewfinder_SenderSignalIndex_Callback = int (*)();
    using QCameraViewfinder_Receivers_Callback = int (*)(const QCameraViewfinder*, const char*);
    using QCameraViewfinder_IsSignalConnected_Callback = bool (*)(const QCameraViewfinder*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QCameraViewfinder_Metacall_Callback qcameraviewfinder_metacall_callback = nullptr;
    QCameraViewfinder_MediaObject_Callback qcameraviewfinder_mediaobject_callback = nullptr;
    QCameraViewfinder_SetMediaObject_Callback qcameraviewfinder_setmediaobject_callback = nullptr;
    QCameraViewfinder_SizeHint_Callback qcameraviewfinder_sizehint_callback = nullptr;
    QCameraViewfinder_Event_Callback qcameraviewfinder_event_callback = nullptr;
    QCameraViewfinder_ShowEvent_Callback qcameraviewfinder_showevent_callback = nullptr;
    QCameraViewfinder_HideEvent_Callback qcameraviewfinder_hideevent_callback = nullptr;
    QCameraViewfinder_ResizeEvent_Callback qcameraviewfinder_resizeevent_callback = nullptr;
    QCameraViewfinder_MoveEvent_Callback qcameraviewfinder_moveevent_callback = nullptr;
    QCameraViewfinder_PaintEvent_Callback qcameraviewfinder_paintevent_callback = nullptr;
    QCameraViewfinder_DevType_Callback qcameraviewfinder_devtype_callback = nullptr;
    QCameraViewfinder_SetVisible_Callback qcameraviewfinder_setvisible_callback = nullptr;
    QCameraViewfinder_MinimumSizeHint_Callback qcameraviewfinder_minimumsizehint_callback = nullptr;
    QCameraViewfinder_HeightForWidth_Callback qcameraviewfinder_heightforwidth_callback = nullptr;
    QCameraViewfinder_HasHeightForWidth_Callback qcameraviewfinder_hasheightforwidth_callback = nullptr;
    QCameraViewfinder_PaintEngine_Callback qcameraviewfinder_paintengine_callback = nullptr;
    QCameraViewfinder_MousePressEvent_Callback qcameraviewfinder_mousepressevent_callback = nullptr;
    QCameraViewfinder_MouseReleaseEvent_Callback qcameraviewfinder_mousereleaseevent_callback = nullptr;
    QCameraViewfinder_MouseDoubleClickEvent_Callback qcameraviewfinder_mousedoubleclickevent_callback = nullptr;
    QCameraViewfinder_MouseMoveEvent_Callback qcameraviewfinder_mousemoveevent_callback = nullptr;
    QCameraViewfinder_WheelEvent_Callback qcameraviewfinder_wheelevent_callback = nullptr;
    QCameraViewfinder_KeyPressEvent_Callback qcameraviewfinder_keypressevent_callback = nullptr;
    QCameraViewfinder_KeyReleaseEvent_Callback qcameraviewfinder_keyreleaseevent_callback = nullptr;
    QCameraViewfinder_FocusInEvent_Callback qcameraviewfinder_focusinevent_callback = nullptr;
    QCameraViewfinder_FocusOutEvent_Callback qcameraviewfinder_focusoutevent_callback = nullptr;
    QCameraViewfinder_EnterEvent_Callback qcameraviewfinder_enterevent_callback = nullptr;
    QCameraViewfinder_LeaveEvent_Callback qcameraviewfinder_leaveevent_callback = nullptr;
    QCameraViewfinder_CloseEvent_Callback qcameraviewfinder_closeevent_callback = nullptr;
    QCameraViewfinder_ContextMenuEvent_Callback qcameraviewfinder_contextmenuevent_callback = nullptr;
    QCameraViewfinder_TabletEvent_Callback qcameraviewfinder_tabletevent_callback = nullptr;
    QCameraViewfinder_ActionEvent_Callback qcameraviewfinder_actionevent_callback = nullptr;
    QCameraViewfinder_DragEnterEvent_Callback qcameraviewfinder_dragenterevent_callback = nullptr;
    QCameraViewfinder_DragMoveEvent_Callback qcameraviewfinder_dragmoveevent_callback = nullptr;
    QCameraViewfinder_DragLeaveEvent_Callback qcameraviewfinder_dragleaveevent_callback = nullptr;
    QCameraViewfinder_DropEvent_Callback qcameraviewfinder_dropevent_callback = nullptr;
    QCameraViewfinder_NativeEvent_Callback qcameraviewfinder_nativeevent_callback = nullptr;
    QCameraViewfinder_ChangeEvent_Callback qcameraviewfinder_changeevent_callback = nullptr;
    QCameraViewfinder_Metric_Callback qcameraviewfinder_metric_callback = nullptr;
    QCameraViewfinder_InitPainter_Callback qcameraviewfinder_initpainter_callback = nullptr;
    QCameraViewfinder_Redirected_Callback qcameraviewfinder_redirected_callback = nullptr;
    QCameraViewfinder_SharedPainter_Callback qcameraviewfinder_sharedpainter_callback = nullptr;
    QCameraViewfinder_InputMethodEvent_Callback qcameraviewfinder_inputmethodevent_callback = nullptr;
    QCameraViewfinder_InputMethodQuery_Callback qcameraviewfinder_inputmethodquery_callback = nullptr;
    QCameraViewfinder_FocusNextPrevChild_Callback qcameraviewfinder_focusnextprevchild_callback = nullptr;
    QCameraViewfinder_EventFilter_Callback qcameraviewfinder_eventfilter_callback = nullptr;
    QCameraViewfinder_TimerEvent_Callback qcameraviewfinder_timerevent_callback = nullptr;
    QCameraViewfinder_ChildEvent_Callback qcameraviewfinder_childevent_callback = nullptr;
    QCameraViewfinder_CustomEvent_Callback qcameraviewfinder_customevent_callback = nullptr;
    QCameraViewfinder_ConnectNotify_Callback qcameraviewfinder_connectnotify_callback = nullptr;
    QCameraViewfinder_DisconnectNotify_Callback qcameraviewfinder_disconnectnotify_callback = nullptr;
    QCameraViewfinder_UpdateMicroFocus_Callback qcameraviewfinder_updatemicrofocus_callback = nullptr;
    QCameraViewfinder_Create_Callback qcameraviewfinder_create_callback = nullptr;
    QCameraViewfinder_Destroy_Callback qcameraviewfinder_destroy_callback = nullptr;
    QCameraViewfinder_FocusNextChild_Callback qcameraviewfinder_focusnextchild_callback = nullptr;
    QCameraViewfinder_FocusPreviousChild_Callback qcameraviewfinder_focuspreviouschild_callback = nullptr;
    QCameraViewfinder_Sender_Callback qcameraviewfinder_sender_callback = nullptr;
    QCameraViewfinder_SenderSignalIndex_Callback qcameraviewfinder_sendersignalindex_callback = nullptr;
    QCameraViewfinder_Receivers_Callback qcameraviewfinder_receivers_callback = nullptr;
    QCameraViewfinder_IsSignalConnected_Callback qcameraviewfinder_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qcameraviewfinder_metacall_isbase = false;
    mutable bool qcameraviewfinder_mediaobject_isbase = false;
    mutable bool qcameraviewfinder_setmediaobject_isbase = false;
    mutable bool qcameraviewfinder_sizehint_isbase = false;
    mutable bool qcameraviewfinder_event_isbase = false;
    mutable bool qcameraviewfinder_showevent_isbase = false;
    mutable bool qcameraviewfinder_hideevent_isbase = false;
    mutable bool qcameraviewfinder_resizeevent_isbase = false;
    mutable bool qcameraviewfinder_moveevent_isbase = false;
    mutable bool qcameraviewfinder_paintevent_isbase = false;
    mutable bool qcameraviewfinder_devtype_isbase = false;
    mutable bool qcameraviewfinder_setvisible_isbase = false;
    mutable bool qcameraviewfinder_minimumsizehint_isbase = false;
    mutable bool qcameraviewfinder_heightforwidth_isbase = false;
    mutable bool qcameraviewfinder_hasheightforwidth_isbase = false;
    mutable bool qcameraviewfinder_paintengine_isbase = false;
    mutable bool qcameraviewfinder_mousepressevent_isbase = false;
    mutable bool qcameraviewfinder_mousereleaseevent_isbase = false;
    mutable bool qcameraviewfinder_mousedoubleclickevent_isbase = false;
    mutable bool qcameraviewfinder_mousemoveevent_isbase = false;
    mutable bool qcameraviewfinder_wheelevent_isbase = false;
    mutable bool qcameraviewfinder_keypressevent_isbase = false;
    mutable bool qcameraviewfinder_keyreleaseevent_isbase = false;
    mutable bool qcameraviewfinder_focusinevent_isbase = false;
    mutable bool qcameraviewfinder_focusoutevent_isbase = false;
    mutable bool qcameraviewfinder_enterevent_isbase = false;
    mutable bool qcameraviewfinder_leaveevent_isbase = false;
    mutable bool qcameraviewfinder_closeevent_isbase = false;
    mutable bool qcameraviewfinder_contextmenuevent_isbase = false;
    mutable bool qcameraviewfinder_tabletevent_isbase = false;
    mutable bool qcameraviewfinder_actionevent_isbase = false;
    mutable bool qcameraviewfinder_dragenterevent_isbase = false;
    mutable bool qcameraviewfinder_dragmoveevent_isbase = false;
    mutable bool qcameraviewfinder_dragleaveevent_isbase = false;
    mutable bool qcameraviewfinder_dropevent_isbase = false;
    mutable bool qcameraviewfinder_nativeevent_isbase = false;
    mutable bool qcameraviewfinder_changeevent_isbase = false;
    mutable bool qcameraviewfinder_metric_isbase = false;
    mutable bool qcameraviewfinder_initpainter_isbase = false;
    mutable bool qcameraviewfinder_redirected_isbase = false;
    mutable bool qcameraviewfinder_sharedpainter_isbase = false;
    mutable bool qcameraviewfinder_inputmethodevent_isbase = false;
    mutable bool qcameraviewfinder_inputmethodquery_isbase = false;
    mutable bool qcameraviewfinder_focusnextprevchild_isbase = false;
    mutable bool qcameraviewfinder_eventfilter_isbase = false;
    mutable bool qcameraviewfinder_timerevent_isbase = false;
    mutable bool qcameraviewfinder_childevent_isbase = false;
    mutable bool qcameraviewfinder_customevent_isbase = false;
    mutable bool qcameraviewfinder_connectnotify_isbase = false;
    mutable bool qcameraviewfinder_disconnectnotify_isbase = false;
    mutable bool qcameraviewfinder_updatemicrofocus_isbase = false;
    mutable bool qcameraviewfinder_create_isbase = false;
    mutable bool qcameraviewfinder_destroy_isbase = false;
    mutable bool qcameraviewfinder_focusnextchild_isbase = false;
    mutable bool qcameraviewfinder_focuspreviouschild_isbase = false;
    mutable bool qcameraviewfinder_sender_isbase = false;
    mutable bool qcameraviewfinder_sendersignalindex_isbase = false;
    mutable bool qcameraviewfinder_receivers_isbase = false;
    mutable bool qcameraviewfinder_issignalconnected_isbase = false;

  public:
    VirtualQCameraViewfinder(QWidget* parent) : QCameraViewfinder(parent){};
    VirtualQCameraViewfinder() : QCameraViewfinder(){};

    ~VirtualQCameraViewfinder() {
        qcameraviewfinder_metacall_callback = nullptr;
        qcameraviewfinder_mediaobject_callback = nullptr;
        qcameraviewfinder_setmediaobject_callback = nullptr;
        qcameraviewfinder_sizehint_callback = nullptr;
        qcameraviewfinder_event_callback = nullptr;
        qcameraviewfinder_showevent_callback = nullptr;
        qcameraviewfinder_hideevent_callback = nullptr;
        qcameraviewfinder_resizeevent_callback = nullptr;
        qcameraviewfinder_moveevent_callback = nullptr;
        qcameraviewfinder_paintevent_callback = nullptr;
        qcameraviewfinder_devtype_callback = nullptr;
        qcameraviewfinder_setvisible_callback = nullptr;
        qcameraviewfinder_minimumsizehint_callback = nullptr;
        qcameraviewfinder_heightforwidth_callback = nullptr;
        qcameraviewfinder_hasheightforwidth_callback = nullptr;
        qcameraviewfinder_paintengine_callback = nullptr;
        qcameraviewfinder_mousepressevent_callback = nullptr;
        qcameraviewfinder_mousereleaseevent_callback = nullptr;
        qcameraviewfinder_mousedoubleclickevent_callback = nullptr;
        qcameraviewfinder_mousemoveevent_callback = nullptr;
        qcameraviewfinder_wheelevent_callback = nullptr;
        qcameraviewfinder_keypressevent_callback = nullptr;
        qcameraviewfinder_keyreleaseevent_callback = nullptr;
        qcameraviewfinder_focusinevent_callback = nullptr;
        qcameraviewfinder_focusoutevent_callback = nullptr;
        qcameraviewfinder_enterevent_callback = nullptr;
        qcameraviewfinder_leaveevent_callback = nullptr;
        qcameraviewfinder_closeevent_callback = nullptr;
        qcameraviewfinder_contextmenuevent_callback = nullptr;
        qcameraviewfinder_tabletevent_callback = nullptr;
        qcameraviewfinder_actionevent_callback = nullptr;
        qcameraviewfinder_dragenterevent_callback = nullptr;
        qcameraviewfinder_dragmoveevent_callback = nullptr;
        qcameraviewfinder_dragleaveevent_callback = nullptr;
        qcameraviewfinder_dropevent_callback = nullptr;
        qcameraviewfinder_nativeevent_callback = nullptr;
        qcameraviewfinder_changeevent_callback = nullptr;
        qcameraviewfinder_metric_callback = nullptr;
        qcameraviewfinder_initpainter_callback = nullptr;
        qcameraviewfinder_redirected_callback = nullptr;
        qcameraviewfinder_sharedpainter_callback = nullptr;
        qcameraviewfinder_inputmethodevent_callback = nullptr;
        qcameraviewfinder_inputmethodquery_callback = nullptr;
        qcameraviewfinder_focusnextprevchild_callback = nullptr;
        qcameraviewfinder_eventfilter_callback = nullptr;
        qcameraviewfinder_timerevent_callback = nullptr;
        qcameraviewfinder_childevent_callback = nullptr;
        qcameraviewfinder_customevent_callback = nullptr;
        qcameraviewfinder_connectnotify_callback = nullptr;
        qcameraviewfinder_disconnectnotify_callback = nullptr;
        qcameraviewfinder_updatemicrofocus_callback = nullptr;
        qcameraviewfinder_create_callback = nullptr;
        qcameraviewfinder_destroy_callback = nullptr;
        qcameraviewfinder_focusnextchild_callback = nullptr;
        qcameraviewfinder_focuspreviouschild_callback = nullptr;
        qcameraviewfinder_sender_callback = nullptr;
        qcameraviewfinder_sendersignalindex_callback = nullptr;
        qcameraviewfinder_receivers_callback = nullptr;
        qcameraviewfinder_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQCameraViewfinder_Metacall_Callback(QCameraViewfinder_Metacall_Callback cb) { qcameraviewfinder_metacall_callback = cb; }
    void setQCameraViewfinder_MediaObject_Callback(QCameraViewfinder_MediaObject_Callback cb) { qcameraviewfinder_mediaobject_callback = cb; }
    void setQCameraViewfinder_SetMediaObject_Callback(QCameraViewfinder_SetMediaObject_Callback cb) { qcameraviewfinder_setmediaobject_callback = cb; }
    void setQCameraViewfinder_SizeHint_Callback(QCameraViewfinder_SizeHint_Callback cb) { qcameraviewfinder_sizehint_callback = cb; }
    void setQCameraViewfinder_Event_Callback(QCameraViewfinder_Event_Callback cb) { qcameraviewfinder_event_callback = cb; }
    void setQCameraViewfinder_ShowEvent_Callback(QCameraViewfinder_ShowEvent_Callback cb) { qcameraviewfinder_showevent_callback = cb; }
    void setQCameraViewfinder_HideEvent_Callback(QCameraViewfinder_HideEvent_Callback cb) { qcameraviewfinder_hideevent_callback = cb; }
    void setQCameraViewfinder_ResizeEvent_Callback(QCameraViewfinder_ResizeEvent_Callback cb) { qcameraviewfinder_resizeevent_callback = cb; }
    void setQCameraViewfinder_MoveEvent_Callback(QCameraViewfinder_MoveEvent_Callback cb) { qcameraviewfinder_moveevent_callback = cb; }
    void setQCameraViewfinder_PaintEvent_Callback(QCameraViewfinder_PaintEvent_Callback cb) { qcameraviewfinder_paintevent_callback = cb; }
    void setQCameraViewfinder_DevType_Callback(QCameraViewfinder_DevType_Callback cb) { qcameraviewfinder_devtype_callback = cb; }
    void setQCameraViewfinder_SetVisible_Callback(QCameraViewfinder_SetVisible_Callback cb) { qcameraviewfinder_setvisible_callback = cb; }
    void setQCameraViewfinder_MinimumSizeHint_Callback(QCameraViewfinder_MinimumSizeHint_Callback cb) { qcameraviewfinder_minimumsizehint_callback = cb; }
    void setQCameraViewfinder_HeightForWidth_Callback(QCameraViewfinder_HeightForWidth_Callback cb) { qcameraviewfinder_heightforwidth_callback = cb; }
    void setQCameraViewfinder_HasHeightForWidth_Callback(QCameraViewfinder_HasHeightForWidth_Callback cb) { qcameraviewfinder_hasheightforwidth_callback = cb; }
    void setQCameraViewfinder_PaintEngine_Callback(QCameraViewfinder_PaintEngine_Callback cb) { qcameraviewfinder_paintengine_callback = cb; }
    void setQCameraViewfinder_MousePressEvent_Callback(QCameraViewfinder_MousePressEvent_Callback cb) { qcameraviewfinder_mousepressevent_callback = cb; }
    void setQCameraViewfinder_MouseReleaseEvent_Callback(QCameraViewfinder_MouseReleaseEvent_Callback cb) { qcameraviewfinder_mousereleaseevent_callback = cb; }
    void setQCameraViewfinder_MouseDoubleClickEvent_Callback(QCameraViewfinder_MouseDoubleClickEvent_Callback cb) { qcameraviewfinder_mousedoubleclickevent_callback = cb; }
    void setQCameraViewfinder_MouseMoveEvent_Callback(QCameraViewfinder_MouseMoveEvent_Callback cb) { qcameraviewfinder_mousemoveevent_callback = cb; }
    void setQCameraViewfinder_WheelEvent_Callback(QCameraViewfinder_WheelEvent_Callback cb) { qcameraviewfinder_wheelevent_callback = cb; }
    void setQCameraViewfinder_KeyPressEvent_Callback(QCameraViewfinder_KeyPressEvent_Callback cb) { qcameraviewfinder_keypressevent_callback = cb; }
    void setQCameraViewfinder_KeyReleaseEvent_Callback(QCameraViewfinder_KeyReleaseEvent_Callback cb) { qcameraviewfinder_keyreleaseevent_callback = cb; }
    void setQCameraViewfinder_FocusInEvent_Callback(QCameraViewfinder_FocusInEvent_Callback cb) { qcameraviewfinder_focusinevent_callback = cb; }
    void setQCameraViewfinder_FocusOutEvent_Callback(QCameraViewfinder_FocusOutEvent_Callback cb) { qcameraviewfinder_focusoutevent_callback = cb; }
    void setQCameraViewfinder_EnterEvent_Callback(QCameraViewfinder_EnterEvent_Callback cb) { qcameraviewfinder_enterevent_callback = cb; }
    void setQCameraViewfinder_LeaveEvent_Callback(QCameraViewfinder_LeaveEvent_Callback cb) { qcameraviewfinder_leaveevent_callback = cb; }
    void setQCameraViewfinder_CloseEvent_Callback(QCameraViewfinder_CloseEvent_Callback cb) { qcameraviewfinder_closeevent_callback = cb; }
    void setQCameraViewfinder_ContextMenuEvent_Callback(QCameraViewfinder_ContextMenuEvent_Callback cb) { qcameraviewfinder_contextmenuevent_callback = cb; }
    void setQCameraViewfinder_TabletEvent_Callback(QCameraViewfinder_TabletEvent_Callback cb) { qcameraviewfinder_tabletevent_callback = cb; }
    void setQCameraViewfinder_ActionEvent_Callback(QCameraViewfinder_ActionEvent_Callback cb) { qcameraviewfinder_actionevent_callback = cb; }
    void setQCameraViewfinder_DragEnterEvent_Callback(QCameraViewfinder_DragEnterEvent_Callback cb) { qcameraviewfinder_dragenterevent_callback = cb; }
    void setQCameraViewfinder_DragMoveEvent_Callback(QCameraViewfinder_DragMoveEvent_Callback cb) { qcameraviewfinder_dragmoveevent_callback = cb; }
    void setQCameraViewfinder_DragLeaveEvent_Callback(QCameraViewfinder_DragLeaveEvent_Callback cb) { qcameraviewfinder_dragleaveevent_callback = cb; }
    void setQCameraViewfinder_DropEvent_Callback(QCameraViewfinder_DropEvent_Callback cb) { qcameraviewfinder_dropevent_callback = cb; }
    void setQCameraViewfinder_NativeEvent_Callback(QCameraViewfinder_NativeEvent_Callback cb) { qcameraviewfinder_nativeevent_callback = cb; }
    void setQCameraViewfinder_ChangeEvent_Callback(QCameraViewfinder_ChangeEvent_Callback cb) { qcameraviewfinder_changeevent_callback = cb; }
    void setQCameraViewfinder_Metric_Callback(QCameraViewfinder_Metric_Callback cb) { qcameraviewfinder_metric_callback = cb; }
    void setQCameraViewfinder_InitPainter_Callback(QCameraViewfinder_InitPainter_Callback cb) { qcameraviewfinder_initpainter_callback = cb; }
    void setQCameraViewfinder_Redirected_Callback(QCameraViewfinder_Redirected_Callback cb) { qcameraviewfinder_redirected_callback = cb; }
    void setQCameraViewfinder_SharedPainter_Callback(QCameraViewfinder_SharedPainter_Callback cb) { qcameraviewfinder_sharedpainter_callback = cb; }
    void setQCameraViewfinder_InputMethodEvent_Callback(QCameraViewfinder_InputMethodEvent_Callback cb) { qcameraviewfinder_inputmethodevent_callback = cb; }
    void setQCameraViewfinder_InputMethodQuery_Callback(QCameraViewfinder_InputMethodQuery_Callback cb) { qcameraviewfinder_inputmethodquery_callback = cb; }
    void setQCameraViewfinder_FocusNextPrevChild_Callback(QCameraViewfinder_FocusNextPrevChild_Callback cb) { qcameraviewfinder_focusnextprevchild_callback = cb; }
    void setQCameraViewfinder_EventFilter_Callback(QCameraViewfinder_EventFilter_Callback cb) { qcameraviewfinder_eventfilter_callback = cb; }
    void setQCameraViewfinder_TimerEvent_Callback(QCameraViewfinder_TimerEvent_Callback cb) { qcameraviewfinder_timerevent_callback = cb; }
    void setQCameraViewfinder_ChildEvent_Callback(QCameraViewfinder_ChildEvent_Callback cb) { qcameraviewfinder_childevent_callback = cb; }
    void setQCameraViewfinder_CustomEvent_Callback(QCameraViewfinder_CustomEvent_Callback cb) { qcameraviewfinder_customevent_callback = cb; }
    void setQCameraViewfinder_ConnectNotify_Callback(QCameraViewfinder_ConnectNotify_Callback cb) { qcameraviewfinder_connectnotify_callback = cb; }
    void setQCameraViewfinder_DisconnectNotify_Callback(QCameraViewfinder_DisconnectNotify_Callback cb) { qcameraviewfinder_disconnectnotify_callback = cb; }
    void setQCameraViewfinder_UpdateMicroFocus_Callback(QCameraViewfinder_UpdateMicroFocus_Callback cb) { qcameraviewfinder_updatemicrofocus_callback = cb; }
    void setQCameraViewfinder_Create_Callback(QCameraViewfinder_Create_Callback cb) { qcameraviewfinder_create_callback = cb; }
    void setQCameraViewfinder_Destroy_Callback(QCameraViewfinder_Destroy_Callback cb) { qcameraviewfinder_destroy_callback = cb; }
    void setQCameraViewfinder_FocusNextChild_Callback(QCameraViewfinder_FocusNextChild_Callback cb) { qcameraviewfinder_focusnextchild_callback = cb; }
    void setQCameraViewfinder_FocusPreviousChild_Callback(QCameraViewfinder_FocusPreviousChild_Callback cb) { qcameraviewfinder_focuspreviouschild_callback = cb; }
    void setQCameraViewfinder_Sender_Callback(QCameraViewfinder_Sender_Callback cb) { qcameraviewfinder_sender_callback = cb; }
    void setQCameraViewfinder_SenderSignalIndex_Callback(QCameraViewfinder_SenderSignalIndex_Callback cb) { qcameraviewfinder_sendersignalindex_callback = cb; }
    void setQCameraViewfinder_Receivers_Callback(QCameraViewfinder_Receivers_Callback cb) { qcameraviewfinder_receivers_callback = cb; }
    void setQCameraViewfinder_IsSignalConnected_Callback(QCameraViewfinder_IsSignalConnected_Callback cb) { qcameraviewfinder_issignalconnected_callback = cb; }

    // Base flag setters
    void setQCameraViewfinder_Metacall_IsBase(bool value) const { qcameraviewfinder_metacall_isbase = value; }
    void setQCameraViewfinder_MediaObject_IsBase(bool value) const { qcameraviewfinder_mediaobject_isbase = value; }
    void setQCameraViewfinder_SetMediaObject_IsBase(bool value) const { qcameraviewfinder_setmediaobject_isbase = value; }
    void setQCameraViewfinder_SizeHint_IsBase(bool value) const { qcameraviewfinder_sizehint_isbase = value; }
    void setQCameraViewfinder_Event_IsBase(bool value) const { qcameraviewfinder_event_isbase = value; }
    void setQCameraViewfinder_ShowEvent_IsBase(bool value) const { qcameraviewfinder_showevent_isbase = value; }
    void setQCameraViewfinder_HideEvent_IsBase(bool value) const { qcameraviewfinder_hideevent_isbase = value; }
    void setQCameraViewfinder_ResizeEvent_IsBase(bool value) const { qcameraviewfinder_resizeevent_isbase = value; }
    void setQCameraViewfinder_MoveEvent_IsBase(bool value) const { qcameraviewfinder_moveevent_isbase = value; }
    void setQCameraViewfinder_PaintEvent_IsBase(bool value) const { qcameraviewfinder_paintevent_isbase = value; }
    void setQCameraViewfinder_DevType_IsBase(bool value) const { qcameraviewfinder_devtype_isbase = value; }
    void setQCameraViewfinder_SetVisible_IsBase(bool value) const { qcameraviewfinder_setvisible_isbase = value; }
    void setQCameraViewfinder_MinimumSizeHint_IsBase(bool value) const { qcameraviewfinder_minimumsizehint_isbase = value; }
    void setQCameraViewfinder_HeightForWidth_IsBase(bool value) const { qcameraviewfinder_heightforwidth_isbase = value; }
    void setQCameraViewfinder_HasHeightForWidth_IsBase(bool value) const { qcameraviewfinder_hasheightforwidth_isbase = value; }
    void setQCameraViewfinder_PaintEngine_IsBase(bool value) const { qcameraviewfinder_paintengine_isbase = value; }
    void setQCameraViewfinder_MousePressEvent_IsBase(bool value) const { qcameraviewfinder_mousepressevent_isbase = value; }
    void setQCameraViewfinder_MouseReleaseEvent_IsBase(bool value) const { qcameraviewfinder_mousereleaseevent_isbase = value; }
    void setQCameraViewfinder_MouseDoubleClickEvent_IsBase(bool value) const { qcameraviewfinder_mousedoubleclickevent_isbase = value; }
    void setQCameraViewfinder_MouseMoveEvent_IsBase(bool value) const { qcameraviewfinder_mousemoveevent_isbase = value; }
    void setQCameraViewfinder_WheelEvent_IsBase(bool value) const { qcameraviewfinder_wheelevent_isbase = value; }
    void setQCameraViewfinder_KeyPressEvent_IsBase(bool value) const { qcameraviewfinder_keypressevent_isbase = value; }
    void setQCameraViewfinder_KeyReleaseEvent_IsBase(bool value) const { qcameraviewfinder_keyreleaseevent_isbase = value; }
    void setQCameraViewfinder_FocusInEvent_IsBase(bool value) const { qcameraviewfinder_focusinevent_isbase = value; }
    void setQCameraViewfinder_FocusOutEvent_IsBase(bool value) const { qcameraviewfinder_focusoutevent_isbase = value; }
    void setQCameraViewfinder_EnterEvent_IsBase(bool value) const { qcameraviewfinder_enterevent_isbase = value; }
    void setQCameraViewfinder_LeaveEvent_IsBase(bool value) const { qcameraviewfinder_leaveevent_isbase = value; }
    void setQCameraViewfinder_CloseEvent_IsBase(bool value) const { qcameraviewfinder_closeevent_isbase = value; }
    void setQCameraViewfinder_ContextMenuEvent_IsBase(bool value) const { qcameraviewfinder_contextmenuevent_isbase = value; }
    void setQCameraViewfinder_TabletEvent_IsBase(bool value) const { qcameraviewfinder_tabletevent_isbase = value; }
    void setQCameraViewfinder_ActionEvent_IsBase(bool value) const { qcameraviewfinder_actionevent_isbase = value; }
    void setQCameraViewfinder_DragEnterEvent_IsBase(bool value) const { qcameraviewfinder_dragenterevent_isbase = value; }
    void setQCameraViewfinder_DragMoveEvent_IsBase(bool value) const { qcameraviewfinder_dragmoveevent_isbase = value; }
    void setQCameraViewfinder_DragLeaveEvent_IsBase(bool value) const { qcameraviewfinder_dragleaveevent_isbase = value; }
    void setQCameraViewfinder_DropEvent_IsBase(bool value) const { qcameraviewfinder_dropevent_isbase = value; }
    void setQCameraViewfinder_NativeEvent_IsBase(bool value) const { qcameraviewfinder_nativeevent_isbase = value; }
    void setQCameraViewfinder_ChangeEvent_IsBase(bool value) const { qcameraviewfinder_changeevent_isbase = value; }
    void setQCameraViewfinder_Metric_IsBase(bool value) const { qcameraviewfinder_metric_isbase = value; }
    void setQCameraViewfinder_InitPainter_IsBase(bool value) const { qcameraviewfinder_initpainter_isbase = value; }
    void setQCameraViewfinder_Redirected_IsBase(bool value) const { qcameraviewfinder_redirected_isbase = value; }
    void setQCameraViewfinder_SharedPainter_IsBase(bool value) const { qcameraviewfinder_sharedpainter_isbase = value; }
    void setQCameraViewfinder_InputMethodEvent_IsBase(bool value) const { qcameraviewfinder_inputmethodevent_isbase = value; }
    void setQCameraViewfinder_InputMethodQuery_IsBase(bool value) const { qcameraviewfinder_inputmethodquery_isbase = value; }
    void setQCameraViewfinder_FocusNextPrevChild_IsBase(bool value) const { qcameraviewfinder_focusnextprevchild_isbase = value; }
    void setQCameraViewfinder_EventFilter_IsBase(bool value) const { qcameraviewfinder_eventfilter_isbase = value; }
    void setQCameraViewfinder_TimerEvent_IsBase(bool value) const { qcameraviewfinder_timerevent_isbase = value; }
    void setQCameraViewfinder_ChildEvent_IsBase(bool value) const { qcameraviewfinder_childevent_isbase = value; }
    void setQCameraViewfinder_CustomEvent_IsBase(bool value) const { qcameraviewfinder_customevent_isbase = value; }
    void setQCameraViewfinder_ConnectNotify_IsBase(bool value) const { qcameraviewfinder_connectnotify_isbase = value; }
    void setQCameraViewfinder_DisconnectNotify_IsBase(bool value) const { qcameraviewfinder_disconnectnotify_isbase = value; }
    void setQCameraViewfinder_UpdateMicroFocus_IsBase(bool value) const { qcameraviewfinder_updatemicrofocus_isbase = value; }
    void setQCameraViewfinder_Create_IsBase(bool value) const { qcameraviewfinder_create_isbase = value; }
    void setQCameraViewfinder_Destroy_IsBase(bool value) const { qcameraviewfinder_destroy_isbase = value; }
    void setQCameraViewfinder_FocusNextChild_IsBase(bool value) const { qcameraviewfinder_focusnextchild_isbase = value; }
    void setQCameraViewfinder_FocusPreviousChild_IsBase(bool value) const { qcameraviewfinder_focuspreviouschild_isbase = value; }
    void setQCameraViewfinder_Sender_IsBase(bool value) const { qcameraviewfinder_sender_isbase = value; }
    void setQCameraViewfinder_SenderSignalIndex_IsBase(bool value) const { qcameraviewfinder_sendersignalindex_isbase = value; }
    void setQCameraViewfinder_Receivers_IsBase(bool value) const { qcameraviewfinder_receivers_isbase = value; }
    void setQCameraViewfinder_IsSignalConnected_IsBase(bool value) const { qcameraviewfinder_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qcameraviewfinder_metacall_isbase) {
            qcameraviewfinder_metacall_isbase = false;
            return QCameraViewfinder::qt_metacall(param1, param2, param3);
        } else if (qcameraviewfinder_metacall_callback != nullptr) {
            return qcameraviewfinder_metacall_callback(this, param1, param2, param3);
        } else {
            return QCameraViewfinder::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaObject* mediaObject() const override {
        if (qcameraviewfinder_mediaobject_isbase) {
            qcameraviewfinder_mediaobject_isbase = false;
            return QCameraViewfinder::mediaObject();
        } else if (qcameraviewfinder_mediaobject_callback != nullptr) {
            return qcameraviewfinder_mediaobject_callback();
        } else {
            return QCameraViewfinder::mediaObject();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool setMediaObject(QMediaObject* object) override {
        if (qcameraviewfinder_setmediaobject_isbase) {
            qcameraviewfinder_setmediaobject_isbase = false;
            return QCameraViewfinder::setMediaObject(object);
        } else if (qcameraviewfinder_setmediaobject_callback != nullptr) {
            return qcameraviewfinder_setmediaobject_callback(this, object);
        } else {
            return QCameraViewfinder::setMediaObject(object);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QSize sizeHint() const override {
        if (qcameraviewfinder_sizehint_isbase) {
            qcameraviewfinder_sizehint_isbase = false;
            return QCameraViewfinder::sizeHint();
        } else if (qcameraviewfinder_sizehint_callback != nullptr) {
            return qcameraviewfinder_sizehint_callback();
        } else {
            return QCameraViewfinder::sizeHint();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qcameraviewfinder_event_isbase) {
            qcameraviewfinder_event_isbase = false;
            return QCameraViewfinder::event(event);
        } else if (qcameraviewfinder_event_callback != nullptr) {
            return qcameraviewfinder_event_callback(this, event);
        } else {
            return QCameraViewfinder::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void showEvent(QShowEvent* event) override {
        if (qcameraviewfinder_showevent_isbase) {
            qcameraviewfinder_showevent_isbase = false;
            QCameraViewfinder::showEvent(event);
        } else if (qcameraviewfinder_showevent_callback != nullptr) {
            qcameraviewfinder_showevent_callback(this, event);
        } else {
            QCameraViewfinder::showEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void hideEvent(QHideEvent* event) override {
        if (qcameraviewfinder_hideevent_isbase) {
            qcameraviewfinder_hideevent_isbase = false;
            QCameraViewfinder::hideEvent(event);
        } else if (qcameraviewfinder_hideevent_callback != nullptr) {
            qcameraviewfinder_hideevent_callback(this, event);
        } else {
            QCameraViewfinder::hideEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void resizeEvent(QResizeEvent* event) override {
        if (qcameraviewfinder_resizeevent_isbase) {
            qcameraviewfinder_resizeevent_isbase = false;
            QCameraViewfinder::resizeEvent(event);
        } else if (qcameraviewfinder_resizeevent_callback != nullptr) {
            qcameraviewfinder_resizeevent_callback(this, event);
        } else {
            QCameraViewfinder::resizeEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void moveEvent(QMoveEvent* event) override {
        if (qcameraviewfinder_moveevent_isbase) {
            qcameraviewfinder_moveevent_isbase = false;
            QCameraViewfinder::moveEvent(event);
        } else if (qcameraviewfinder_moveevent_callback != nullptr) {
            qcameraviewfinder_moveevent_callback(this, event);
        } else {
            QCameraViewfinder::moveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void paintEvent(QPaintEvent* event) override {
        if (qcameraviewfinder_paintevent_isbase) {
            qcameraviewfinder_paintevent_isbase = false;
            QCameraViewfinder::paintEvent(event);
        } else if (qcameraviewfinder_paintevent_callback != nullptr) {
            qcameraviewfinder_paintevent_callback(this, event);
        } else {
            QCameraViewfinder::paintEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int devType() const override {
        if (qcameraviewfinder_devtype_isbase) {
            qcameraviewfinder_devtype_isbase = false;
            return QCameraViewfinder::devType();
        } else if (qcameraviewfinder_devtype_callback != nullptr) {
            return qcameraviewfinder_devtype_callback();
        } else {
            return QCameraViewfinder::devType();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setVisible(bool visible) override {
        if (qcameraviewfinder_setvisible_isbase) {
            qcameraviewfinder_setvisible_isbase = false;
            QCameraViewfinder::setVisible(visible);
        } else if (qcameraviewfinder_setvisible_callback != nullptr) {
            qcameraviewfinder_setvisible_callback(this, visible);
        } else {
            QCameraViewfinder::setVisible(visible);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QSize minimumSizeHint() const override {
        if (qcameraviewfinder_minimumsizehint_isbase) {
            qcameraviewfinder_minimumsizehint_isbase = false;
            return QCameraViewfinder::minimumSizeHint();
        } else if (qcameraviewfinder_minimumsizehint_callback != nullptr) {
            return qcameraviewfinder_minimumsizehint_callback();
        } else {
            return QCameraViewfinder::minimumSizeHint();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int heightForWidth(int param1) const override {
        if (qcameraviewfinder_heightforwidth_isbase) {
            qcameraviewfinder_heightforwidth_isbase = false;
            return QCameraViewfinder::heightForWidth(param1);
        } else if (qcameraviewfinder_heightforwidth_callback != nullptr) {
            return qcameraviewfinder_heightforwidth_callback(this, param1);
        } else {
            return QCameraViewfinder::heightForWidth(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool hasHeightForWidth() const override {
        if (qcameraviewfinder_hasheightforwidth_isbase) {
            qcameraviewfinder_hasheightforwidth_isbase = false;
            return QCameraViewfinder::hasHeightForWidth();
        } else if (qcameraviewfinder_hasheightforwidth_callback != nullptr) {
            return qcameraviewfinder_hasheightforwidth_callback();
        } else {
            return QCameraViewfinder::hasHeightForWidth();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPaintEngine* paintEngine() const override {
        if (qcameraviewfinder_paintengine_isbase) {
            qcameraviewfinder_paintengine_isbase = false;
            return QCameraViewfinder::paintEngine();
        } else if (qcameraviewfinder_paintengine_callback != nullptr) {
            return qcameraviewfinder_paintengine_callback();
        } else {
            return QCameraViewfinder::paintEngine();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void mousePressEvent(QMouseEvent* event) override {
        if (qcameraviewfinder_mousepressevent_isbase) {
            qcameraviewfinder_mousepressevent_isbase = false;
            QCameraViewfinder::mousePressEvent(event);
        } else if (qcameraviewfinder_mousepressevent_callback != nullptr) {
            qcameraviewfinder_mousepressevent_callback(this, event);
        } else {
            QCameraViewfinder::mousePressEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void mouseReleaseEvent(QMouseEvent* event) override {
        if (qcameraviewfinder_mousereleaseevent_isbase) {
            qcameraviewfinder_mousereleaseevent_isbase = false;
            QCameraViewfinder::mouseReleaseEvent(event);
        } else if (qcameraviewfinder_mousereleaseevent_callback != nullptr) {
            qcameraviewfinder_mousereleaseevent_callback(this, event);
        } else {
            QCameraViewfinder::mouseReleaseEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
        if (qcameraviewfinder_mousedoubleclickevent_isbase) {
            qcameraviewfinder_mousedoubleclickevent_isbase = false;
            QCameraViewfinder::mouseDoubleClickEvent(event);
        } else if (qcameraviewfinder_mousedoubleclickevent_callback != nullptr) {
            qcameraviewfinder_mousedoubleclickevent_callback(this, event);
        } else {
            QCameraViewfinder::mouseDoubleClickEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void mouseMoveEvent(QMouseEvent* event) override {
        if (qcameraviewfinder_mousemoveevent_isbase) {
            qcameraviewfinder_mousemoveevent_isbase = false;
            QCameraViewfinder::mouseMoveEvent(event);
        } else if (qcameraviewfinder_mousemoveevent_callback != nullptr) {
            qcameraviewfinder_mousemoveevent_callback(this, event);
        } else {
            QCameraViewfinder::mouseMoveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void wheelEvent(QWheelEvent* event) override {
        if (qcameraviewfinder_wheelevent_isbase) {
            qcameraviewfinder_wheelevent_isbase = false;
            QCameraViewfinder::wheelEvent(event);
        } else if (qcameraviewfinder_wheelevent_callback != nullptr) {
            qcameraviewfinder_wheelevent_callback(this, event);
        } else {
            QCameraViewfinder::wheelEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void keyPressEvent(QKeyEvent* event) override {
        if (qcameraviewfinder_keypressevent_isbase) {
            qcameraviewfinder_keypressevent_isbase = false;
            QCameraViewfinder::keyPressEvent(event);
        } else if (qcameraviewfinder_keypressevent_callback != nullptr) {
            qcameraviewfinder_keypressevent_callback(this, event);
        } else {
            QCameraViewfinder::keyPressEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void keyReleaseEvent(QKeyEvent* event) override {
        if (qcameraviewfinder_keyreleaseevent_isbase) {
            qcameraviewfinder_keyreleaseevent_isbase = false;
            QCameraViewfinder::keyReleaseEvent(event);
        } else if (qcameraviewfinder_keyreleaseevent_callback != nullptr) {
            qcameraviewfinder_keyreleaseevent_callback(this, event);
        } else {
            QCameraViewfinder::keyReleaseEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void focusInEvent(QFocusEvent* event) override {
        if (qcameraviewfinder_focusinevent_isbase) {
            qcameraviewfinder_focusinevent_isbase = false;
            QCameraViewfinder::focusInEvent(event);
        } else if (qcameraviewfinder_focusinevent_callback != nullptr) {
            qcameraviewfinder_focusinevent_callback(this, event);
        } else {
            QCameraViewfinder::focusInEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void focusOutEvent(QFocusEvent* event) override {
        if (qcameraviewfinder_focusoutevent_isbase) {
            qcameraviewfinder_focusoutevent_isbase = false;
            QCameraViewfinder::focusOutEvent(event);
        } else if (qcameraviewfinder_focusoutevent_callback != nullptr) {
            qcameraviewfinder_focusoutevent_callback(this, event);
        } else {
            QCameraViewfinder::focusOutEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void enterEvent(QEvent* event) override {
        if (qcameraviewfinder_enterevent_isbase) {
            qcameraviewfinder_enterevent_isbase = false;
            QCameraViewfinder::enterEvent(event);
        } else if (qcameraviewfinder_enterevent_callback != nullptr) {
            qcameraviewfinder_enterevent_callback(this, event);
        } else {
            QCameraViewfinder::enterEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void leaveEvent(QEvent* event) override {
        if (qcameraviewfinder_leaveevent_isbase) {
            qcameraviewfinder_leaveevent_isbase = false;
            QCameraViewfinder::leaveEvent(event);
        } else if (qcameraviewfinder_leaveevent_callback != nullptr) {
            qcameraviewfinder_leaveevent_callback(this, event);
        } else {
            QCameraViewfinder::leaveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void closeEvent(QCloseEvent* event) override {
        if (qcameraviewfinder_closeevent_isbase) {
            qcameraviewfinder_closeevent_isbase = false;
            QCameraViewfinder::closeEvent(event);
        } else if (qcameraviewfinder_closeevent_callback != nullptr) {
            qcameraviewfinder_closeevent_callback(this, event);
        } else {
            QCameraViewfinder::closeEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void contextMenuEvent(QContextMenuEvent* event) override {
        if (qcameraviewfinder_contextmenuevent_isbase) {
            qcameraviewfinder_contextmenuevent_isbase = false;
            QCameraViewfinder::contextMenuEvent(event);
        } else if (qcameraviewfinder_contextmenuevent_callback != nullptr) {
            qcameraviewfinder_contextmenuevent_callback(this, event);
        } else {
            QCameraViewfinder::contextMenuEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void tabletEvent(QTabletEvent* event) override {
        if (qcameraviewfinder_tabletevent_isbase) {
            qcameraviewfinder_tabletevent_isbase = false;
            QCameraViewfinder::tabletEvent(event);
        } else if (qcameraviewfinder_tabletevent_callback != nullptr) {
            qcameraviewfinder_tabletevent_callback(this, event);
        } else {
            QCameraViewfinder::tabletEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void actionEvent(QActionEvent* event) override {
        if (qcameraviewfinder_actionevent_isbase) {
            qcameraviewfinder_actionevent_isbase = false;
            QCameraViewfinder::actionEvent(event);
        } else if (qcameraviewfinder_actionevent_callback != nullptr) {
            qcameraviewfinder_actionevent_callback(this, event);
        } else {
            QCameraViewfinder::actionEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void dragEnterEvent(QDragEnterEvent* event) override {
        if (qcameraviewfinder_dragenterevent_isbase) {
            qcameraviewfinder_dragenterevent_isbase = false;
            QCameraViewfinder::dragEnterEvent(event);
        } else if (qcameraviewfinder_dragenterevent_callback != nullptr) {
            qcameraviewfinder_dragenterevent_callback(this, event);
        } else {
            QCameraViewfinder::dragEnterEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void dragMoveEvent(QDragMoveEvent* event) override {
        if (qcameraviewfinder_dragmoveevent_isbase) {
            qcameraviewfinder_dragmoveevent_isbase = false;
            QCameraViewfinder::dragMoveEvent(event);
        } else if (qcameraviewfinder_dragmoveevent_callback != nullptr) {
            qcameraviewfinder_dragmoveevent_callback(this, event);
        } else {
            QCameraViewfinder::dragMoveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
        if (qcameraviewfinder_dragleaveevent_isbase) {
            qcameraviewfinder_dragleaveevent_isbase = false;
            QCameraViewfinder::dragLeaveEvent(event);
        } else if (qcameraviewfinder_dragleaveevent_callback != nullptr) {
            qcameraviewfinder_dragleaveevent_callback(this, event);
        } else {
            QCameraViewfinder::dragLeaveEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void dropEvent(QDropEvent* event) override {
        if (qcameraviewfinder_dropevent_isbase) {
            qcameraviewfinder_dropevent_isbase = false;
            QCameraViewfinder::dropEvent(event);
        } else if (qcameraviewfinder_dropevent_callback != nullptr) {
            qcameraviewfinder_dropevent_callback(this, event);
        } else {
            QCameraViewfinder::dropEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
        if (qcameraviewfinder_nativeevent_isbase) {
            qcameraviewfinder_nativeevent_isbase = false;
            return QCameraViewfinder::nativeEvent(eventType, message, result);
        } else if (qcameraviewfinder_nativeevent_callback != nullptr) {
            return qcameraviewfinder_nativeevent_callback(this, eventType, message, result);
        } else {
            return QCameraViewfinder::nativeEvent(eventType, message, result);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void changeEvent(QEvent* param1) override {
        if (qcameraviewfinder_changeevent_isbase) {
            qcameraviewfinder_changeevent_isbase = false;
            QCameraViewfinder::changeEvent(param1);
        } else if (qcameraviewfinder_changeevent_callback != nullptr) {
            qcameraviewfinder_changeevent_callback(this, param1);
        } else {
            QCameraViewfinder::changeEvent(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
        if (qcameraviewfinder_metric_isbase) {
            qcameraviewfinder_metric_isbase = false;
            return QCameraViewfinder::metric(param1);
        } else if (qcameraviewfinder_metric_callback != nullptr) {
            return qcameraviewfinder_metric_callback(this, param1);
        } else {
            return QCameraViewfinder::metric(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void initPainter(QPainter* painter) const override {
        if (qcameraviewfinder_initpainter_isbase) {
            qcameraviewfinder_initpainter_isbase = false;
            QCameraViewfinder::initPainter(painter);
        } else if (qcameraviewfinder_initpainter_callback != nullptr) {
            qcameraviewfinder_initpainter_callback(this, painter);
        } else {
            QCameraViewfinder::initPainter(painter);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPaintDevice* redirected(QPoint* offset) const override {
        if (qcameraviewfinder_redirected_isbase) {
            qcameraviewfinder_redirected_isbase = false;
            return QCameraViewfinder::redirected(offset);
        } else if (qcameraviewfinder_redirected_callback != nullptr) {
            return qcameraviewfinder_redirected_callback(this, offset);
        } else {
            return QCameraViewfinder::redirected(offset);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPainter* sharedPainter() const override {
        if (qcameraviewfinder_sharedpainter_isbase) {
            qcameraviewfinder_sharedpainter_isbase = false;
            return QCameraViewfinder::sharedPainter();
        } else if (qcameraviewfinder_sharedpainter_callback != nullptr) {
            return qcameraviewfinder_sharedpainter_callback();
        } else {
            return QCameraViewfinder::sharedPainter();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void inputMethodEvent(QInputMethodEvent* param1) override {
        if (qcameraviewfinder_inputmethodevent_isbase) {
            qcameraviewfinder_inputmethodevent_isbase = false;
            QCameraViewfinder::inputMethodEvent(param1);
        } else if (qcameraviewfinder_inputmethodevent_callback != nullptr) {
            qcameraviewfinder_inputmethodevent_callback(this, param1);
        } else {
            QCameraViewfinder::inputMethodEvent(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
        if (qcameraviewfinder_inputmethodquery_isbase) {
            qcameraviewfinder_inputmethodquery_isbase = false;
            return QCameraViewfinder::inputMethodQuery(param1);
        } else if (qcameraviewfinder_inputmethodquery_callback != nullptr) {
            return qcameraviewfinder_inputmethodquery_callback(this, param1);
        } else {
            return QCameraViewfinder::inputMethodQuery(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool focusNextPrevChild(bool next) override {
        if (qcameraviewfinder_focusnextprevchild_isbase) {
            qcameraviewfinder_focusnextprevchild_isbase = false;
            return QCameraViewfinder::focusNextPrevChild(next);
        } else if (qcameraviewfinder_focusnextprevchild_callback != nullptr) {
            return qcameraviewfinder_focusnextprevchild_callback(this, next);
        } else {
            return QCameraViewfinder::focusNextPrevChild(next);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qcameraviewfinder_eventfilter_isbase) {
            qcameraviewfinder_eventfilter_isbase = false;
            return QCameraViewfinder::eventFilter(watched, event);
        } else if (qcameraviewfinder_eventfilter_callback != nullptr) {
            return qcameraviewfinder_eventfilter_callback(this, watched, event);
        } else {
            return QCameraViewfinder::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qcameraviewfinder_timerevent_isbase) {
            qcameraviewfinder_timerevent_isbase = false;
            QCameraViewfinder::timerEvent(event);
        } else if (qcameraviewfinder_timerevent_callback != nullptr) {
            qcameraviewfinder_timerevent_callback(this, event);
        } else {
            QCameraViewfinder::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qcameraviewfinder_childevent_isbase) {
            qcameraviewfinder_childevent_isbase = false;
            QCameraViewfinder::childEvent(event);
        } else if (qcameraviewfinder_childevent_callback != nullptr) {
            qcameraviewfinder_childevent_callback(this, event);
        } else {
            QCameraViewfinder::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qcameraviewfinder_customevent_isbase) {
            qcameraviewfinder_customevent_isbase = false;
            QCameraViewfinder::customEvent(event);
        } else if (qcameraviewfinder_customevent_callback != nullptr) {
            qcameraviewfinder_customevent_callback(this, event);
        } else {
            QCameraViewfinder::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qcameraviewfinder_connectnotify_isbase) {
            qcameraviewfinder_connectnotify_isbase = false;
            QCameraViewfinder::connectNotify(signal);
        } else if (qcameraviewfinder_connectnotify_callback != nullptr) {
            qcameraviewfinder_connectnotify_callback(this, signal);
        } else {
            QCameraViewfinder::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qcameraviewfinder_disconnectnotify_isbase) {
            qcameraviewfinder_disconnectnotify_isbase = false;
            QCameraViewfinder::disconnectNotify(signal);
        } else if (qcameraviewfinder_disconnectnotify_callback != nullptr) {
            qcameraviewfinder_disconnectnotify_callback(this, signal);
        } else {
            QCameraViewfinder::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void updateMicroFocus() {
        if (qcameraviewfinder_updatemicrofocus_isbase) {
            qcameraviewfinder_updatemicrofocus_isbase = false;
            QCameraViewfinder::updateMicroFocus();
        } else if (qcameraviewfinder_updatemicrofocus_callback != nullptr) {
            qcameraviewfinder_updatemicrofocus_callback();
        } else {
            QCameraViewfinder::updateMicroFocus();
        }
    }

    // Virtual method for C ABI access and custom callback
    void create() {
        if (qcameraviewfinder_create_isbase) {
            qcameraviewfinder_create_isbase = false;
            QCameraViewfinder::create();
        } else if (qcameraviewfinder_create_callback != nullptr) {
            qcameraviewfinder_create_callback();
        } else {
            QCameraViewfinder::create();
        }
    }

    // Virtual method for C ABI access and custom callback
    void destroy() {
        if (qcameraviewfinder_destroy_isbase) {
            qcameraviewfinder_destroy_isbase = false;
            QCameraViewfinder::destroy();
        } else if (qcameraviewfinder_destroy_callback != nullptr) {
            qcameraviewfinder_destroy_callback();
        } else {
            QCameraViewfinder::destroy();
        }
    }

    // Virtual method for C ABI access and custom callback
    bool focusNextChild() {
        if (qcameraviewfinder_focusnextchild_isbase) {
            qcameraviewfinder_focusnextchild_isbase = false;
            return QCameraViewfinder::focusNextChild();
        } else if (qcameraviewfinder_focusnextchild_callback != nullptr) {
            return qcameraviewfinder_focusnextchild_callback();
        } else {
            return QCameraViewfinder::focusNextChild();
        }
    }

    // Virtual method for C ABI access and custom callback
    bool focusPreviousChild() {
        if (qcameraviewfinder_focuspreviouschild_isbase) {
            qcameraviewfinder_focuspreviouschild_isbase = false;
            return QCameraViewfinder::focusPreviousChild();
        } else if (qcameraviewfinder_focuspreviouschild_callback != nullptr) {
            return qcameraviewfinder_focuspreviouschild_callback();
        } else {
            return QCameraViewfinder::focusPreviousChild();
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qcameraviewfinder_sender_isbase) {
            qcameraviewfinder_sender_isbase = false;
            return QCameraViewfinder::sender();
        } else if (qcameraviewfinder_sender_callback != nullptr) {
            return qcameraviewfinder_sender_callback();
        } else {
            return QCameraViewfinder::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qcameraviewfinder_sendersignalindex_isbase) {
            qcameraviewfinder_sendersignalindex_isbase = false;
            return QCameraViewfinder::senderSignalIndex();
        } else if (qcameraviewfinder_sendersignalindex_callback != nullptr) {
            return qcameraviewfinder_sendersignalindex_callback();
        } else {
            return QCameraViewfinder::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qcameraviewfinder_receivers_isbase) {
            qcameraviewfinder_receivers_isbase = false;
            return QCameraViewfinder::receivers(signal);
        } else if (qcameraviewfinder_receivers_callback != nullptr) {
            return qcameraviewfinder_receivers_callback(this, signal);
        } else {
            return QCameraViewfinder::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qcameraviewfinder_issignalconnected_isbase) {
            qcameraviewfinder_issignalconnected_isbase = false;
            return QCameraViewfinder::isSignalConnected(signal);
        } else if (qcameraviewfinder_issignalconnected_callback != nullptr) {
            return qcameraviewfinder_issignalconnected_callback(this, signal);
        } else {
            return QCameraViewfinder::isSignalConnected(signal);
        }
    }
};

#endif
