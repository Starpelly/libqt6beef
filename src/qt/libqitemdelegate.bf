using System;
using System.Interop;
namespace Qt;

public interface IQItemDelegate
{
	void* NativePtr { get; }
}
public class QItemDelegate : IQItemDelegate, IQAbstractItemDelegate
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
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
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QItemDelegate_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QItemDelegate_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
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
	
	public virtual void Paint(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QItemDelegate_Paint(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void SizeHint(IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QItemDelegate_SizeHint(this.nativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void* CreateEditor(IQWidget parent, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QItemDelegate_CreateEditor(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void SetEditorData(IQWidget editor, IQModelIndex index)
	{
		CQt.QItemDelegate_SetEditorData(this.nativePtr, (editor == null) ? null : (void*)editor.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void SetModelData(IQWidget editor, IQAbstractItemModel model, IQModelIndex index)
	{
		CQt.QItemDelegate_SetModelData(this.nativePtr, (editor == null) ? null : (void*)editor.NativePtr, (model == null) ? null : (void*)model.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void UpdateEditorGeometry(IQWidget editor, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QItemDelegate_UpdateEditorGeometry(this.nativePtr, (editor == null) ? null : (void*)editor.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void* ItemEditorFactory()
	{
		return CQt.QItemDelegate_ItemEditorFactory(this.nativePtr);
	}
	
	public void SetItemEditorFactory(IQItemEditorFactory factory)
	{
		CQt.QItemDelegate_SetItemEditorFactory(this.nativePtr, (factory == null) ? null : (void*)factory.NativePtr);
	}
	
	public virtual void DrawDisplay(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, String text)
	{
		CQt.QItemDelegate_DrawDisplay(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == default) ? default : (void*)option.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, libqt_string(text));
	}
	
	public virtual void DrawDecoration(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, IQPixmap pixmap)
	{
		CQt.QItemDelegate_DrawDecoration(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == default) ? default : (void*)option.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public virtual void DrawFocus(IQPainter painter, IQStyleOptionViewItem option, IQRect rect)
	{
		CQt.QItemDelegate_DrawFocus(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == default) ? default : (void*)option.NativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public virtual void DrawCheck(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, int64 state)
	{
		CQt.QItemDelegate_DrawCheck(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == default) ? default : (void*)option.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, state);
	}
	
	public void DrawBackground(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QItemDelegate_DrawBackground(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void DoLayout(IQStyleOptionViewItem option, IQRect checkRect, IQRect iconRect, IQRect textRect, bool hint)
	{
		CQt.QItemDelegate_DoLayout(this.nativePtr, (option == default) ? default : (void*)option.NativePtr, (checkRect == null) ? null : (void*)checkRect.NativePtr, (iconRect == null) ? null : (void*)iconRect.NativePtr, (textRect == null) ? null : (void*)textRect.NativePtr, hint);
	}
	
	public void Rect(IQStyleOptionViewItem option, IQModelIndex index, int32 role)
	{
		CQt.QItemDelegate_Rect(this.nativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr, role);
	}
	
	public virtual bool EventFilter(IQObject object, IQEvent event)
	{
		return CQt.QItemDelegate_EventFilter(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EditorEvent(IQEvent event, IQAbstractItemModel model, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QItemDelegate_EditorEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr, (model == null) ? null : (void*)model.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void SetOptions(IQModelIndex index, IQStyleOptionViewItem option)
	{
		CQt.QItemDelegate_SetOptions(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, (option == default) ? default : (void*)option.NativePtr);
	}
	
	public void Decoration(IQStyleOptionViewItem option, IQVariant variant)
	{
		CQt.QItemDelegate_Decoration(this.nativePtr, (option == default) ? default : (void*)option.NativePtr, (variant == default) ? default : (void*)variant.NativePtr);
	}
	
	public void DoCheck(IQStyleOptionViewItem option, IQRect bounding, IQVariant variant)
	{
		CQt.QItemDelegate_DoCheck(this.nativePtr, (option == default) ? default : (void*)option.NativePtr, (bounding == default) ? default : (void*)bounding.NativePtr, (variant == default) ? default : (void*)variant.NativePtr);
	}
	
	public void TextRectangle(IQPainter painter, IQRect rect, IQFont font, String text)
	{
		CQt.QItemDelegate_TextRectangle(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, (font == default) ? default : (void*)font.NativePtr, libqt_string(text));
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QItemDelegate_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QItemDelegate_Tr3(s, c, n);
	}
	
	public virtual void DestroyEditor(IQWidget editor, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_DestroyEditor(this.nativePtr, (editor == null) ? null : (void*)editor.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual bool HelpEvent(IQHelpEvent event, IQAbstractItemView view, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QAbstractItemDelegate_HelpEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr, (view == null) ? null : (void*)view.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual int32[] PaintingRoles()
	{
		return CQt.QAbstractItemDelegate_PaintingRoles(this.nativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
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
	
	public bool Inherits(char8* classname)
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
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
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
	public static extern void* QItemDelegate_Metacast(void* c_this, char8* param1);
	[LinkName("QItemDelegate_Metacall")]
	public static extern int32 QItemDelegate_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QItemDelegate_Tr")]
	public static extern libqt_string QItemDelegate_Tr(char8* s);
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
	public static extern libqt_string QItemDelegate_Tr2(char8* s, char8* c);
	[LinkName("QItemDelegate_Tr3")]
	public static extern libqt_string QItemDelegate_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QItemDelegate_Delete")]
	public static extern void QItemDelegate_Delete(void* self);
}