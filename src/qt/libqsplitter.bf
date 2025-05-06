using System;
using System.Interop;
namespace Qt;

public struct QSplitter : QFrame
{
	[LinkName("QSplitter_new")]
	public static extern QSplitter* QSplitter_new(QWidget* parent);
	[LinkName("QSplitter_new2")]
	public static extern QSplitter* QSplitter_new2();
	[LinkName("QSplitter_new3")]
	public static extern QSplitter* QSplitter_new3(int64 param1);
	[LinkName("QSplitter_new4")]
	public static extern QSplitter* QSplitter_new4(int64 param1, QWidget* parent);
	[LinkName("QSplitter_MetaObject")]
	public static extern QMetaObject* QSplitter_MetaObject(Self* c_this);
	[LinkName("QSplitter_Metacast")]
	public static extern void* QSplitter_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSplitter_Metacall")]
	public static extern int32 QSplitter_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSplitter_Tr")]
	public static extern libqt_string QSplitter_Tr(char8[] s);
	[LinkName("QSplitter_AddWidget")]
	public static extern void QSplitter_AddWidget(Self* c_this, QWidget* widget);
	[LinkName("QSplitter_InsertWidget")]
	public static extern void QSplitter_InsertWidget(Self* c_this, int32 index, QWidget* widget);
	[LinkName("QSplitter_ReplaceWidget")]
	public static extern QWidget* QSplitter_ReplaceWidget(Self* c_this, int32 index, QWidget* widget);
	[LinkName("QSplitter_SetOrientation")]
	public static extern void QSplitter_SetOrientation(Self* c_this, int64 orientation);
	[LinkName("QSplitter_Orientation")]
	public static extern int64 QSplitter_Orientation(Self* c_this);
	[LinkName("QSplitter_SetChildrenCollapsible")]
	public static extern void QSplitter_SetChildrenCollapsible(Self* c_this, bool childrenCollapsible);
	[LinkName("QSplitter_ChildrenCollapsible")]
	public static extern bool QSplitter_ChildrenCollapsible(Self* c_this);
	[LinkName("QSplitter_SetCollapsible")]
	public static extern void QSplitter_SetCollapsible(Self* c_this, int32 index, bool param2);
	[LinkName("QSplitter_IsCollapsible")]
	public static extern bool QSplitter_IsCollapsible(Self* c_this, int32 index);
	[LinkName("QSplitter_SetOpaqueResize")]
	public static extern void QSplitter_SetOpaqueResize(Self* c_this);
	[LinkName("QSplitter_OpaqueResize")]
	public static extern bool QSplitter_OpaqueResize(Self* c_this);
	[LinkName("QSplitter_Refresh")]
	public static extern void QSplitter_Refresh(Self* c_this);
	[LinkName("QSplitter_SizeHint")]
	public static extern QSize QSplitter_SizeHint(Self* c_this);
	[LinkName("QSplitter_MinimumSizeHint")]
	public static extern QSize QSplitter_MinimumSizeHint(Self* c_this);
	[LinkName("QSplitter_Sizes")]
	public static extern int32[] QSplitter_Sizes(Self* c_this);
	[LinkName("QSplitter_SetSizes")]
	public static extern void QSplitter_SetSizes(Self* c_this, int32[] list);
	[LinkName("QSplitter_SaveState")]
	public static extern libqt_string QSplitter_SaveState(Self* c_this);
	[LinkName("QSplitter_RestoreState")]
	public static extern bool QSplitter_RestoreState(Self* c_this, libqt_string state);
	[LinkName("QSplitter_HandleWidth")]
	public static extern int32 QSplitter_HandleWidth(Self* c_this);
	[LinkName("QSplitter_SetHandleWidth")]
	public static extern void QSplitter_SetHandleWidth(Self* c_this, int32 handleWidth);
	[LinkName("QSplitter_IndexOf")]
	public static extern int32 QSplitter_IndexOf(Self* c_this, QWidget* w);
	[LinkName("QSplitter_Widget")]
	public static extern QWidget* QSplitter_Widget(Self* c_this, int32 index);
	[LinkName("QSplitter_Count")]
	public static extern int32 QSplitter_Count(Self* c_this);
	[LinkName("QSplitter_GetRange")]
	public static extern void QSplitter_GetRange(Self* c_this, int32 index, int32* param2, int32* param3);
	[LinkName("QSplitter_Handle")]
	public static extern QSplitterHandle* QSplitter_Handle(Self* c_this, int32 index);
	[LinkName("QSplitter_SetStretchFactor")]
	public static extern void QSplitter_SetStretchFactor(Self* c_this, int32 index, int32 stretch);
	[LinkName("QSplitter_Connect_SplitterMoved")]
	public static extern void QSplitter_Connect_SplitterMoved(Self* c_this, c_intptr slot);
	[LinkName("QSplitter_CreateHandle")]
	public static extern QSplitterHandle* QSplitter_CreateHandle(Self* c_this);
	[LinkName("QSplitter_ChildEvent")]
	public static extern void QSplitter_ChildEvent(Self* c_this, QChildEvent* param1);
	[LinkName("QSplitter_Event")]
	public static extern bool QSplitter_Event(Self* c_this, QEvent* param1);
	[LinkName("QSplitter_ResizeEvent")]
	public static extern void QSplitter_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QSplitter_ChangeEvent")]
	public static extern void QSplitter_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QSplitter_MoveSplitter")]
	public static extern void QSplitter_MoveSplitter(Self* c_this, int32 pos, int32 index);
	[LinkName("QSplitter_SetRubberBand")]
	public static extern void QSplitter_SetRubberBand(Self* c_this, int32 position);
	[LinkName("QSplitter_ClosestLegalPosition")]
	public static extern int32 QSplitter_ClosestLegalPosition(Self* c_this, int32 param1, int32 param2);
	[LinkName("QSplitter_Tr2")]
	public static extern libqt_string QSplitter_Tr2(char8[] s, char8[] c);
	[LinkName("QSplitter_Tr3")]
	public static extern libqt_string QSplitter_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSplitter_SetOpaqueResize1")]
	public static extern void QSplitter_SetOpaqueResize1(Self* c_this, bool opaqueVal);
}
public struct QSplitterHandle : QWidget
{
	[LinkName("QSplitterHandle_new")]
	public static extern QSplitterHandle* QSplitterHandle_new(int64 o, QSplitter* parent);
	[LinkName("QSplitterHandle_MetaObject")]
	public static extern QMetaObject* QSplitterHandle_MetaObject(Self* c_this);
	[LinkName("QSplitterHandle_Metacast")]
	public static extern void* QSplitterHandle_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSplitterHandle_Metacall")]
	public static extern int32 QSplitterHandle_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSplitterHandle_Tr")]
	public static extern libqt_string QSplitterHandle_Tr(char8[] s);
	[LinkName("QSplitterHandle_SetOrientation")]
	public static extern void QSplitterHandle_SetOrientation(Self* c_this, int64 o);
	[LinkName("QSplitterHandle_Orientation")]
	public static extern int64 QSplitterHandle_Orientation(Self* c_this);
	[LinkName("QSplitterHandle_OpaqueResize")]
	public static extern bool QSplitterHandle_OpaqueResize(Self* c_this);
	[LinkName("QSplitterHandle_Splitter")]
	public static extern QSplitter* QSplitterHandle_Splitter(Self* c_this);
	[LinkName("QSplitterHandle_SizeHint")]
	public static extern QSize QSplitterHandle_SizeHint(Self* c_this);
	[LinkName("QSplitterHandle_PaintEvent")]
	public static extern void QSplitterHandle_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QSplitterHandle_MouseMoveEvent")]
	public static extern void QSplitterHandle_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QSplitterHandle_MousePressEvent")]
	public static extern void QSplitterHandle_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QSplitterHandle_MouseReleaseEvent")]
	public static extern void QSplitterHandle_MouseReleaseEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QSplitterHandle_ResizeEvent")]
	public static extern void QSplitterHandle_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QSplitterHandle_Event")]
	public static extern bool QSplitterHandle_Event(Self* c_this, QEvent* param1);
	[LinkName("QSplitterHandle_MoveSplitter")]
	public static extern void QSplitterHandle_MoveSplitter(Self* c_this, int32 p);
	[LinkName("QSplitterHandle_ClosestLegalPosition")]
	public static extern int32 QSplitterHandle_ClosestLegalPosition(Self* c_this, int32 p);
	[LinkName("QSplitterHandle_Tr2")]
	public static extern libqt_string QSplitterHandle_Tr2(char8[] s, char8[] c);
	[LinkName("QSplitterHandle_Tr3")]
	public static extern libqt_string QSplitterHandle_Tr3(char8[] s, char8[] c, int32 n);
}