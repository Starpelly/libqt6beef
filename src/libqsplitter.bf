using System;
using System.Interop;
namespace Qt;

public struct QSplitter
{
	[LinkName("QSplitter_new")]
	public static extern void* QSplitter_new(QWidget parent);
	[LinkName("QSplitter_new2")]
	public static extern void* QSplitter_new2();
	[LinkName("QSplitter_new3")]
	public static extern void* QSplitter_new3(int64 param1);
	[LinkName("QSplitter_new4")]
	public static extern void* QSplitter_new4(int64 param1, QWidget parent);
	[LinkName("QSplitter_MetaObject")]
	public static extern QMetaObject QSplitter_MetaObject(void* c_this);
	[LinkName("QSplitter_Metacast")]
	public static extern void QSplitter_Metacast(void* c_this, char8[] param1);
	[LinkName("QSplitter_Metacall")]
	public static extern int32 QSplitter_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSplitter_Tr")]
	public static extern char8[] QSplitter_Tr(char8[] s);
	[LinkName("QSplitter_AddWidget")]
	public static extern void QSplitter_AddWidget(void* c_this, QWidget widget);
	[LinkName("QSplitter_InsertWidget")]
	public static extern void QSplitter_InsertWidget(void* c_this, int32 index, QWidget widget);
	[LinkName("QSplitter_ReplaceWidget")]
	public static extern QWidget QSplitter_ReplaceWidget(void* c_this, int32 index, QWidget widget);
	[LinkName("QSplitter_SetOrientation")]
	public static extern void QSplitter_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QSplitter_Orientation")]
	public static extern int64 QSplitter_Orientation(void* c_this);
	[LinkName("QSplitter_SetChildrenCollapsible")]
	public static extern void QSplitter_SetChildrenCollapsible(void* c_this, bool childrenCollapsible);
	[LinkName("QSplitter_ChildrenCollapsible")]
	public static extern bool QSplitter_ChildrenCollapsible(void* c_this);
	[LinkName("QSplitter_SetCollapsible")]
	public static extern void QSplitter_SetCollapsible(void* c_this, int32 index, bool param2);
	[LinkName("QSplitter_IsCollapsible")]
	public static extern bool QSplitter_IsCollapsible(void* c_this, int32 index);
	[LinkName("QSplitter_SetOpaqueResize")]
	public static extern void QSplitter_SetOpaqueResize(void* c_this);
	[LinkName("QSplitter_OpaqueResize")]
	public static extern bool QSplitter_OpaqueResize(void* c_this);
	[LinkName("QSplitter_Refresh")]
	public static extern void QSplitter_Refresh(void* c_this);
	[LinkName("QSplitter_SizeHint")]
	public static extern QSize QSplitter_SizeHint(void* c_this);
	[LinkName("QSplitter_MinimumSizeHint")]
	public static extern QSize QSplitter_MinimumSizeHint(void* c_this);
	[LinkName("QSplitter_Sizes")]
	public static extern int32[] QSplitter_Sizes(void* c_this);
	[LinkName("QSplitter_SetSizes")]
	public static extern void QSplitter_SetSizes(void* c_this, int32[] list);
	[LinkName("QSplitter_SaveState")]
	public static extern uint8[] QSplitter_SaveState(void* c_this);
	[LinkName("QSplitter_RestoreState")]
	public static extern bool QSplitter_RestoreState(void* c_this, uint8[] state);
	[LinkName("QSplitter_HandleWidth")]
	public static extern int32 QSplitter_HandleWidth(void* c_this);
	[LinkName("QSplitter_SetHandleWidth")]
	public static extern void QSplitter_SetHandleWidth(void* c_this, int32 handleWidth);
	[LinkName("QSplitter_IndexOf")]
	public static extern int32 QSplitter_IndexOf(void* c_this, QWidget w);
	[LinkName("QSplitter_Widget")]
	public static extern QWidget QSplitter_Widget(void* c_this, int32 index);
	[LinkName("QSplitter_Count")]
	public static extern int32 QSplitter_Count(void* c_this);
	[LinkName("QSplitter_GetRange")]
	public static extern void QSplitter_GetRange(void* c_this, int32 index, int32 param2, int32 param3);
	[LinkName("QSplitter_Handle")]
	public static extern QSplitterHandle QSplitter_Handle(void* c_this, int32 index);
	[LinkName("QSplitter_SetStretchFactor")]
	public static extern void QSplitter_SetStretchFactor(void* c_this, int32 index, int32 stretch);
	[LinkName("QSplitter_SplitterMoved")]
	public static extern void QSplitter_SplitterMoved(void* c_this, int32 pos, int32 index);
	[LinkName("QSplitter_CreateHandle")]
	public static extern QSplitterHandle QSplitter_CreateHandle(void* c_this);
	[LinkName("QSplitter_ChildEvent")]
	public static extern void QSplitter_ChildEvent(void* c_this, QChildEvent param1);
	[LinkName("QSplitter_Event")]
	public static extern bool QSplitter_Event(void* c_this, QEvent param1);
	[LinkName("QSplitter_ResizeEvent")]
	public static extern void QSplitter_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QSplitter_ChangeEvent")]
	public static extern void QSplitter_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QSplitter_MoveSplitter")]
	public static extern void QSplitter_MoveSplitter(void* c_this, int32 pos, int32 index);
	[LinkName("QSplitter_SetRubberBand")]
	public static extern void QSplitter_SetRubberBand(void* c_this, int32 position);
	[LinkName("QSplitter_ClosestLegalPosition")]
	public static extern int32 QSplitter_ClosestLegalPosition(void* c_this, int32 param1, int32 param2);
	[LinkName("QSplitter_Tr2")]
	public static extern char8[] QSplitter_Tr2(char8[] s, char8[] c);
	[LinkName("QSplitter_Tr3")]
	public static extern char8[] QSplitter_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSplitter_SetOpaqueResize1")]
	public static extern void QSplitter_SetOpaqueResize1(void* c_this, bool opaqueVal);
}
public struct QSplitterHandle
{
	[LinkName("QSplitterHandle_new")]
	public static extern void* QSplitterHandle_new(int64 o, QSplitter parent);
	[LinkName("QSplitterHandle_MetaObject")]
	public static extern QMetaObject QSplitterHandle_MetaObject(void* c_this);
	[LinkName("QSplitterHandle_Metacast")]
	public static extern void QSplitterHandle_Metacast(void* c_this, char8[] param1);
	[LinkName("QSplitterHandle_Metacall")]
	public static extern int32 QSplitterHandle_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSplitterHandle_Tr")]
	public static extern char8[] QSplitterHandle_Tr(char8[] s);
	[LinkName("QSplitterHandle_SetOrientation")]
	public static extern void QSplitterHandle_SetOrientation(void* c_this, int64 o);
	[LinkName("QSplitterHandle_Orientation")]
	public static extern int64 QSplitterHandle_Orientation(void* c_this);
	[LinkName("QSplitterHandle_OpaqueResize")]
	public static extern bool QSplitterHandle_OpaqueResize(void* c_this);
	[LinkName("QSplitterHandle_Splitter")]
	public static extern QSplitter QSplitterHandle_Splitter(void* c_this);
	[LinkName("QSplitterHandle_SizeHint")]
	public static extern QSize QSplitterHandle_SizeHint(void* c_this);
	[LinkName("QSplitterHandle_PaintEvent")]
	public static extern void QSplitterHandle_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QSplitterHandle_MouseMoveEvent")]
	public static extern void QSplitterHandle_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QSplitterHandle_MousePressEvent")]
	public static extern void QSplitterHandle_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QSplitterHandle_MouseReleaseEvent")]
	public static extern void QSplitterHandle_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QSplitterHandle_ResizeEvent")]
	public static extern void QSplitterHandle_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QSplitterHandle_Event")]
	public static extern bool QSplitterHandle_Event(void* c_this, QEvent param1);
	[LinkName("QSplitterHandle_MoveSplitter")]
	public static extern void QSplitterHandle_MoveSplitter(void* c_this, int32 p);
	[LinkName("QSplitterHandle_ClosestLegalPosition")]
	public static extern int32 QSplitterHandle_ClosestLegalPosition(void* c_this, int32 p);
	[LinkName("QSplitterHandle_Tr2")]
	public static extern char8[] QSplitterHandle_Tr2(char8[] s, char8[] c);
	[LinkName("QSplitterHandle_Tr3")]
	public static extern char8[] QSplitterHandle_Tr3(char8[] s, char8[] c, int32 n);
}