using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QInputMethod__Action
{
	Click = 0,
	ContextMenu = 1,
}
public struct QInputMethod : QObject
{
	[LinkName("QInputMethod_MetaObject")]
	public static extern QMetaObject* QInputMethod_MetaObject(Self* c_this);
	[LinkName("QInputMethod_Metacast")]
	public static extern void* QInputMethod_Metacast(Self* c_this, char8[] param1);
	[LinkName("QInputMethod_Metacall")]
	public static extern int32 QInputMethod_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QInputMethod_Tr")]
	public static extern libqt_string QInputMethod_Tr(char8[] s);
	[LinkName("QInputMethod_InputItemTransform")]
	public static extern QTransform QInputMethod_InputItemTransform(Self* c_this);
	[LinkName("QInputMethod_SetInputItemTransform")]
	public static extern void QInputMethod_SetInputItemTransform(Self* c_this, QTransform* transform);
	[LinkName("QInputMethod_InputItemRectangle")]
	public static extern QRectF QInputMethod_InputItemRectangle(Self* c_this);
	[LinkName("QInputMethod_SetInputItemRectangle")]
	public static extern void QInputMethod_SetInputItemRectangle(Self* c_this, QRectF* rect);
	[LinkName("QInputMethod_CursorRectangle")]
	public static extern QRectF QInputMethod_CursorRectangle(Self* c_this);
	[LinkName("QInputMethod_AnchorRectangle")]
	public static extern QRectF QInputMethod_AnchorRectangle(Self* c_this);
	[LinkName("QInputMethod_KeyboardRectangle")]
	public static extern QRectF QInputMethod_KeyboardRectangle(Self* c_this);
	[LinkName("QInputMethod_InputItemClipRectangle")]
	public static extern QRectF QInputMethod_InputItemClipRectangle(Self* c_this);
	[LinkName("QInputMethod_IsVisible")]
	public static extern bool QInputMethod_IsVisible(Self* c_this);
	[LinkName("QInputMethod_SetVisible")]
	public static extern void QInputMethod_SetVisible(Self* c_this, bool visible);
	[LinkName("QInputMethod_IsAnimating")]
	public static extern bool QInputMethod_IsAnimating(Self* c_this);
	[LinkName("QInputMethod_Locale")]
	public static extern QLocale QInputMethod_Locale(Self* c_this);
	[LinkName("QInputMethod_InputDirection")]
	public static extern int64 QInputMethod_InputDirection(Self* c_this);
	[LinkName("QInputMethod_QueryFocusObject")]
	public static extern QVariant QInputMethod_QueryFocusObject(int64 query, QVariant* argument);
	[LinkName("QInputMethod_Show")]
	public static extern void QInputMethod_Show(Self* c_this);
	[LinkName("QInputMethod_Hide")]
	public static extern void QInputMethod_Hide(Self* c_this);
	[LinkName("QInputMethod_Update")]
	public static extern void QInputMethod_Update(Self* c_this, int64 queries);
	[LinkName("QInputMethod_Reset")]
	public static extern void QInputMethod_Reset(Self* c_this);
	[LinkName("QInputMethod_Commit")]
	public static extern void QInputMethod_Commit(Self* c_this);
	[LinkName("QInputMethod_InvokeAction")]
	public static extern void QInputMethod_InvokeAction(Self* c_this, int64 a, int32 cursorPosition);
	[LinkName("QInputMethod_Connect_CursorRectangleChanged")]
	public static extern void QInputMethod_Connect_CursorRectangleChanged(Self* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_AnchorRectangleChanged")]
	public static extern void QInputMethod_Connect_AnchorRectangleChanged(Self* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_KeyboardRectangleChanged")]
	public static extern void QInputMethod_Connect_KeyboardRectangleChanged(Self* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_InputItemClipRectangleChanged")]
	public static extern void QInputMethod_Connect_InputItemClipRectangleChanged(Self* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_VisibleChanged")]
	public static extern void QInputMethod_Connect_VisibleChanged(Self* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_AnimatingChanged")]
	public static extern void QInputMethod_Connect_AnimatingChanged(Self* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_LocaleChanged")]
	public static extern void QInputMethod_Connect_LocaleChanged(Self* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_InputDirectionChanged")]
	public static extern void QInputMethod_Connect_InputDirectionChanged(Self* c_this, c_intptr slot);
	[LinkName("QInputMethod_Tr2")]
	public static extern libqt_string QInputMethod_Tr2(char8[] s, char8[] c);
	[LinkName("QInputMethod_Tr3")]
	public static extern libqt_string QInputMethod_Tr3(char8[] s, char8[] c, int32 n);
}