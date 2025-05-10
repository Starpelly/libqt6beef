using System;
using System.Interop;
namespace Qt;

public class QItemDelegate
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QItemDelegate_new();
	}
	
	public ~this()
	{
		CQt.QItemDelegate_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QItemDelegate_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QItemDelegate_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QItemDelegate_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QItemDelegate_Tr(s);
	}
	
	public bool HasClipping()
	{
		return CQt.QItemDelegate_HasClipping(this.nativePtr);
	}
	
	public void SetClipping(bool clip)
	{
		CQt.QItemDelegate_SetClipping(this.nativePtr, clip);
	}
	
	public virtual void Paint(void* painter, void* option, void* index)
	{
		CQt.QItemDelegate_Paint(this.nativePtr, painter, option, index);
	}
	
	public virtual void SizeHint(void* option, void* index)
	{
		CQt.QItemDelegate_SizeHint(this.nativePtr, option, index);
	}
	
	public virtual void* CreateEditor(void* parent, void* option, void* index)
	{
		return CQt.QItemDelegate_CreateEditor(this.nativePtr, parent, option, index);
	}
	
	public virtual void SetEditorData(void* editor, void* index)
	{
		CQt.QItemDelegate_SetEditorData(this.nativePtr, editor, index);
	}
	
	public virtual void SetModelData(void* editor, void* model, void* index)
	{
		CQt.QItemDelegate_SetModelData(this.nativePtr, editor, model, index);
	}
	
	public virtual void UpdateEditorGeometry(void* editor, void* option, void* index)
	{
		CQt.QItemDelegate_UpdateEditorGeometry(this.nativePtr, editor, option, index);
	}
	
	public void* ItemEditorFactory()
	{
		return CQt.QItemDelegate_ItemEditorFactory(this.nativePtr);
	}
	
	public void SetItemEditorFactory(void* factory)
	{
		CQt.QItemDelegate_SetItemEditorFactory(this.nativePtr, factory);
	}
	
	public virtual void DrawDisplay(void* painter, void* option, void* rect, libqt_string text)
	{
		CQt.QItemDelegate_DrawDisplay(this.nativePtr, painter, option, rect, text);
	}
	
	public virtual void DrawDecoration(void* painter, void* option, void* rect, void* pixmap)
	{
		CQt.QItemDelegate_DrawDecoration(this.nativePtr, painter, option, rect, pixmap);
	}
	
	public virtual void DrawFocus(void* painter, void* option, void* rect)
	{
		CQt.QItemDelegate_DrawFocus(this.nativePtr, painter, option, rect);
	}
	
	public virtual void DrawCheck(void* painter, void* option, void* rect, int64 state)
	{
		CQt.QItemDelegate_DrawCheck(this.nativePtr, painter, option, rect, state);
	}
	
	public void DrawBackground(void* painter, void* option, void* index)
	{
		CQt.QItemDelegate_DrawBackground(this.nativePtr, painter, option, index);
	}
	
	public void DoLayout(void* option, void* checkRect, void* iconRect, void* textRect, bool hint)
	{
		CQt.QItemDelegate_DoLayout(this.nativePtr, option, checkRect, iconRect, textRect, hint);
	}
	
	public void Rect(void* option, void* index, int32 role)
	{
		CQt.QItemDelegate_Rect(this.nativePtr, option, index, role);
	}
	
	public virtual bool EventFilter(void* object, void* event)
	{
		return CQt.QItemDelegate_EventFilter(this.nativePtr, object, event);
	}
	
	public virtual bool EditorEvent(void* event, void* model, void* option, void* index)
	{
		return CQt.QItemDelegate_EditorEvent(this.nativePtr, event, model, option, index);
	}
	
	public void SetOptions(void* index, void* option)
	{
		CQt.QItemDelegate_SetOptions(this.nativePtr, index, option);
	}
	
	public void Decoration(void* option, void* variant)
	{
		CQt.QItemDelegate_Decoration(this.nativePtr, option, variant);
	}
	
	public void DoCheck(void* option, void* bounding, void* variant)
	{
		CQt.QItemDelegate_DoCheck(this.nativePtr, option, bounding, variant);
	}
	
	public void TextRectangle(void* painter, void* rect, void* font, libqt_string text)
	{
		CQt.QItemDelegate_TextRectangle(this.nativePtr, painter, rect, font, text);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QItemDelegate_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QItemDelegate_Tr3(s, c, n);
	}
	
	public virtual void DestroyEditor(void* editor, void* index)
	{
		CQt.QAbstractItemDelegate_DestroyEditor(this.nativePtr, editor, index);
	}
	
	public virtual bool HelpEvent(void* event, void* view, void* option, void* index)
	{
		return CQt.QAbstractItemDelegate_HelpEvent(this.nativePtr, event, view, option, index);
	}
	
	public virtual int32[] PaintingRoles()
	{
		return CQt.QAbstractItemDelegate_PaintingRoles(this.nativePtr);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QItemDelegate_new")]
	public static extern void* QItemDelegate_new();
	[LinkName("QItemDelegate_new2")]
	public static extern void* QItemDelegate_new2(void* parent);
	[LinkName("QItemDelegate_MetaObject")]
	public static extern void* QItemDelegate_MetaObject(void* c_this);
	[LinkName("QItemDelegate_Metacast")]
	public static extern void* QItemDelegate_Metacast(void* c_this, char8[] param1);
	[LinkName("QItemDelegate_Metacall")]
	public static extern int32 QItemDelegate_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QItemDelegate_Tr")]
	public static extern libqt_string QItemDelegate_Tr(char8[] s);
	[LinkName("QItemDelegate_HasClipping")]
	public static extern bool QItemDelegate_HasClipping(void* c_this);
	[LinkName("QItemDelegate_SetClipping")]
	public static extern void QItemDelegate_SetClipping(void* c_this, bool clip);
	[LinkName("QItemDelegate_Paint")]
	public static extern void QItemDelegate_Paint(void* c_this, void* painter, void* option, void* index);
	[LinkName("QItemDelegate_SizeHint")]
	public static extern void QItemDelegate_SizeHint(void* c_this, void* option, void* index);
	[LinkName("QItemDelegate_CreateEditor")]
	public static extern void* QItemDelegate_CreateEditor(void* c_this, void* parent, void* option, void* index);
	[LinkName("QItemDelegate_SetEditorData")]
	public static extern void QItemDelegate_SetEditorData(void* c_this, void* editor, void* index);
	[LinkName("QItemDelegate_SetModelData")]
	public static extern void QItemDelegate_SetModelData(void* c_this, void* editor, void* model, void* index);
	[LinkName("QItemDelegate_UpdateEditorGeometry")]
	public static extern void QItemDelegate_UpdateEditorGeometry(void* c_this, void* editor, void* option, void* index);
	[LinkName("QItemDelegate_ItemEditorFactory")]
	public static extern void* QItemDelegate_ItemEditorFactory(void* c_this);
	[LinkName("QItemDelegate_SetItemEditorFactory")]
	public static extern void QItemDelegate_SetItemEditorFactory(void* c_this, void* factory);
	[LinkName("QItemDelegate_DrawDisplay")]
	public static extern void QItemDelegate_DrawDisplay(void* c_this, void* painter, void* option, void* rect, libqt_string text);
	[LinkName("QItemDelegate_DrawDecoration")]
	public static extern void QItemDelegate_DrawDecoration(void* c_this, void* painter, void* option, void* rect, void* pixmap);
	[LinkName("QItemDelegate_DrawFocus")]
	public static extern void QItemDelegate_DrawFocus(void* c_this, void* painter, void* option, void* rect);
	[LinkName("QItemDelegate_DrawCheck")]
	public static extern void QItemDelegate_DrawCheck(void* c_this, void* painter, void* option, void* rect, int64 state);
	[LinkName("QItemDelegate_DrawBackground")]
	public static extern void QItemDelegate_DrawBackground(void* c_this, void* painter, void* option, void* index);
	[LinkName("QItemDelegate_DoLayout")]
	public static extern void QItemDelegate_DoLayout(void* c_this, void* option, void* checkRect, void* iconRect, void* textRect, bool hint);
	[LinkName("QItemDelegate_Rect")]
	public static extern void QItemDelegate_Rect(void* c_this, void* option, void* index, int32 role);
	[LinkName("QItemDelegate_EventFilter")]
	public static extern bool QItemDelegate_EventFilter(void* c_this, void* object, void* event);
	[LinkName("QItemDelegate_EditorEvent")]
	public static extern bool QItemDelegate_EditorEvent(void* c_this, void* event, void* model, void* option, void* index);
	[LinkName("QItemDelegate_SetOptions")]
	public static extern void QItemDelegate_SetOptions(void* c_this, void* index, void* option);
	[LinkName("QItemDelegate_Decoration")]
	public static extern void QItemDelegate_Decoration(void* c_this, void* option, void* variant);
	[LinkName("QItemDelegate_DoCheck")]
	public static extern void QItemDelegate_DoCheck(void* c_this, void* option, void* bounding, void* variant);
	[LinkName("QItemDelegate_TextRectangle")]
	public static extern void QItemDelegate_TextRectangle(void* c_this, void* painter, void* rect, void* font, libqt_string text);
	[LinkName("QItemDelegate_Tr2")]
	public static extern libqt_string QItemDelegate_Tr2(char8[] s, char8[] c);
	[LinkName("QItemDelegate_Tr3")]
	public static extern libqt_string QItemDelegate_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QItemDelegate_Delete")]
	public static extern void QItemDelegate_Delete(void* self);
}