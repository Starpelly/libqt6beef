using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QInputMethod__Action
{
	Click = 0,
	ContextMenu = 1,
}
public struct QInputMethod
{
	[LinkName("QInputMethod_MetaObject")]
	public static extern QMetaObject QInputMethod_MetaObject(void* c_this);
	[LinkName("QInputMethod_Metacast")]
	public static extern void QInputMethod_Metacast(void* c_this, char8[] param1);
	[LinkName("QInputMethod_Metacall")]
	public static extern int32 QInputMethod_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QInputMethod_Tr")]
	public static extern char8[] QInputMethod_Tr(char8[] s);
	[LinkName("QInputMethod_InputItemTransform")]
	public static extern QTransform QInputMethod_InputItemTransform(void* c_this);
	[LinkName("QInputMethod_SetInputItemTransform")]
	public static extern void QInputMethod_SetInputItemTransform(void* c_this, QTransform transform);
	[LinkName("QInputMethod_InputItemRectangle")]
	public static extern QRectF QInputMethod_InputItemRectangle(void* c_this);
	[LinkName("QInputMethod_SetInputItemRectangle")]
	public static extern void QInputMethod_SetInputItemRectangle(void* c_this, QRectF rect);
	[LinkName("QInputMethod_CursorRectangle")]
	public static extern QRectF QInputMethod_CursorRectangle(void* c_this);
	[LinkName("QInputMethod_AnchorRectangle")]
	public static extern QRectF QInputMethod_AnchorRectangle(void* c_this);
	[LinkName("QInputMethod_KeyboardRectangle")]
	public static extern QRectF QInputMethod_KeyboardRectangle(void* c_this);
	[LinkName("QInputMethod_InputItemClipRectangle")]
	public static extern QRectF QInputMethod_InputItemClipRectangle(void* c_this);
	[LinkName("QInputMethod_IsVisible")]
	public static extern bool QInputMethod_IsVisible(void* c_this);
	[LinkName("QInputMethod_SetVisible")]
	public static extern void QInputMethod_SetVisible(void* c_this, bool visible);
	[LinkName("QInputMethod_IsAnimating")]
	public static extern bool QInputMethod_IsAnimating(void* c_this);
	[LinkName("QInputMethod_Locale")]
	public static extern QLocale QInputMethod_Locale(void* c_this);
	[LinkName("QInputMethod_InputDirection")]
	public static extern int64 QInputMethod_InputDirection(void* c_this);
	[LinkName("QInputMethod_QueryFocusObject")]
	public static extern QVariant QInputMethod_QueryFocusObject(int64 query, QVariant argument);
	[LinkName("QInputMethod_Show")]
	public static extern void QInputMethod_Show(void* c_this);
	[LinkName("QInputMethod_Hide")]
	public static extern void QInputMethod_Hide(void* c_this);
	[LinkName("QInputMethod_Update")]
	public static extern void QInputMethod_Update(void* c_this, int64 queries);
	[LinkName("QInputMethod_Reset")]
	public static extern void QInputMethod_Reset(void* c_this);
	[LinkName("QInputMethod_Commit")]
	public static extern void QInputMethod_Commit(void* c_this);
	[LinkName("QInputMethod_InvokeAction")]
	public static extern void QInputMethod_InvokeAction(void* c_this, int64 a, int32 cursorPosition);
	[LinkName("QInputMethod_CursorRectangleChanged")]
	public static extern void QInputMethod_CursorRectangleChanged(void* c_this);
	[LinkName("QInputMethod_AnchorRectangleChanged")]
	public static extern void QInputMethod_AnchorRectangleChanged(void* c_this);
	[LinkName("QInputMethod_KeyboardRectangleChanged")]
	public static extern void QInputMethod_KeyboardRectangleChanged(void* c_this);
	[LinkName("QInputMethod_InputItemClipRectangleChanged")]
	public static extern void QInputMethod_InputItemClipRectangleChanged(void* c_this);
	[LinkName("QInputMethod_VisibleChanged")]
	public static extern void QInputMethod_VisibleChanged(void* c_this);
	[LinkName("QInputMethod_AnimatingChanged")]
	public static extern void QInputMethod_AnimatingChanged(void* c_this);
	[LinkName("QInputMethod_LocaleChanged")]
	public static extern void QInputMethod_LocaleChanged(void* c_this);
	[LinkName("QInputMethod_InputDirectionChanged")]
	public static extern void QInputMethod_InputDirectionChanged(void* c_this, int64 newDirection);
	[LinkName("QInputMethod_Tr2")]
	public static extern char8[] QInputMethod_Tr2(char8[] s, char8[] c);
	[LinkName("QInputMethod_Tr3")]
	public static extern char8[] QInputMethod_Tr3(char8[] s, char8[] c, int32 n);
}