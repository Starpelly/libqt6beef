using System;
using System.Interop;
namespace Qt;

public interface IQItemDelegate
{
	void* NativePtr { get; }
}
public struct QItemDelegatePtr : IQItemDelegate, IDisposable, IQAbstractItemDelegate
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QItemDelegate_new());
	}
	
	public void Dispose()
	{
		CQt.QItemDelegate_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QItemDelegate_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QItemDelegate_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QItemDelegate_Metacall(this.nativePtr, (int64)param1, param2, param3);
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
	
	public void Paint(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QItemDelegate_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SizeHint(IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QItemDelegate_SizeHint(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void* CreateEditor(IQWidget parent, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QItemDelegate_CreateEditor(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetEditorData(IQWidget editor, IQModelIndex index)
	{
		CQt.QItemDelegate_SetEditorData(this.nativePtr, (editor == default || editor.NativePtr == default) ? default : editor.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetModelData(IQWidget editor, IQAbstractItemModel model, IQModelIndex index)
	{
		CQt.QItemDelegate_SetModelData(this.nativePtr, (editor == default || editor.NativePtr == default) ? default : editor.NativePtr, (model == default || model.NativePtr == default) ? default : model.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void UpdateEditorGeometry(IQWidget editor, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QItemDelegate_UpdateEditorGeometry(this.nativePtr, (editor == default || editor.NativePtr == default) ? default : editor.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void* ItemEditorFactory()
	{
		return CQt.QItemDelegate_ItemEditorFactory(this.nativePtr);
	}
	
	public void SetItemEditorFactory(IQItemEditorFactory factory)
	{
		CQt.QItemDelegate_SetItemEditorFactory(this.nativePtr, (factory == default || factory.NativePtr == default) ? default : factory.NativePtr);
	}
	
	public void DrawDisplay(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, String text)
	{
		CQt.QItemDelegate_DrawDisplay(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, libqt_string(text));
	}
	
	public void DrawDecoration(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, IQPixmap pixmap)
	{
		CQt.QItemDelegate_DrawDecoration(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void DrawFocus(IQPainter painter, IQStyleOptionViewItem option, IQRect rect)
	{
		CQt.QItemDelegate_DrawFocus(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void DrawCheck(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, int64 state)
	{
		CQt.QItemDelegate_DrawCheck(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (int64)state);
	}
	
	public void DrawBackground(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QItemDelegate_DrawBackground(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void DoLayout(IQStyleOptionViewItem option, IQRect checkRect, IQRect iconRect, IQRect textRect, bool hint)
	{
		CQt.QItemDelegate_DoLayout(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (checkRect == default || checkRect.NativePtr == default) ? default : checkRect.NativePtr, (iconRect == default || iconRect.NativePtr == default) ? default : iconRect.NativePtr, (textRect == default || textRect.NativePtr == default) ? default : textRect.NativePtr, hint);
	}
	
	public void Rect(IQStyleOptionViewItem option, IQModelIndex index, int32 role)
	{
		CQt.QItemDelegate_Rect(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, role);
	}
	
	public bool EventFilter(IQObject object, IQEvent event)
	{
		return CQt.QItemDelegate_EventFilter(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EditorEvent(IQEvent event, IQAbstractItemModel model, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QItemDelegate_EditorEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr, (model == default || model.NativePtr == default) ? default : model.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetOptions(IQModelIndex index, IQStyleOptionViewItem option)
	{
		CQt.QItemDelegate_SetOptions(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr);
	}
	
	public void Decoration(IQStyleOptionViewItem option, IQVariant variant)
	{
		CQt.QItemDelegate_Decoration(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void DoCheck(IQStyleOptionViewItem option, IQRect bounding, IQVariant variant)
	{
		CQt.QItemDelegate_DoCheck(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (bounding == default || bounding.NativePtr == default) ? default : bounding.NativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void TextRectangle(IQPainter painter, IQRect rect, IQFont font, String text)
	{
		CQt.QItemDelegate_TextRectangle(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr, libqt_string(text));
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QItemDelegate_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QItemDelegate_Tr3(s, c, n);
	}
	
	public void DestroyEditor(IQWidget editor, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_DestroyEditor(this.nativePtr, (editor == default || editor.NativePtr == default) ? default : editor.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool HelpEvent(IQHelpEvent event, IQAbstractItemView view, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QAbstractItemDelegate_HelpEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr, (view == default || view.NativePtr == default) ? default : view.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int32[] PaintingRoles()
	{
		return CQt.QAbstractItemDelegate_PaintingRoles(this.nativePtr);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QItemDelegate
{
	public QItemDelegatePtr handle;
	
	public static implicit operator QItemDelegatePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QItemDelegatePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QItemDelegatePtr.Tr(s);
	}
	
	public bool HasClipping()
	{
		return this.handle.HasClipping();
	}
	
	public void SetClipping(bool clip)
	{
		this.handle.SetClipping(clip);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		this.handle.Paint(painter, option, index);
	}
	
	public virtual void SizeHint(IQStyleOptionViewItem option, IQModelIndex index)
	{
		this.handle.SizeHint(option, index);
	}
	
	public virtual void* CreateEditor(IQWidget parent, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return this.handle.CreateEditor(parent, option, index);
	}
	
	public virtual void SetEditorData(IQWidget editor, IQModelIndex index)
	{
		this.handle.SetEditorData(editor, index);
	}
	
	public virtual void SetModelData(IQWidget editor, IQAbstractItemModel model, IQModelIndex index)
	{
		this.handle.SetModelData(editor, model, index);
	}
	
	public virtual void UpdateEditorGeometry(IQWidget editor, IQStyleOptionViewItem option, IQModelIndex index)
	{
		this.handle.UpdateEditorGeometry(editor, option, index);
	}
	
	public void* ItemEditorFactory()
	{
		return this.handle.ItemEditorFactory();
	}
	
	public void SetItemEditorFactory(IQItemEditorFactory factory)
	{
		this.handle.SetItemEditorFactory(factory);
	}
	
	public virtual void DrawDisplay(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, String text)
	{
		this.handle.DrawDisplay(painter, option, rect, text);
	}
	
	public virtual void DrawDecoration(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, IQPixmap pixmap)
	{
		this.handle.DrawDecoration(painter, option, rect, pixmap);
	}
	
	public virtual void DrawFocus(IQPainter painter, IQStyleOptionViewItem option, IQRect rect)
	{
		this.handle.DrawFocus(painter, option, rect);
	}
	
	public virtual void DrawCheck(IQPainter painter, IQStyleOptionViewItem option, IQRect rect, int64 state)
	{
		this.handle.DrawCheck(painter, option, rect, state);
	}
	
	public void DrawBackground(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		this.handle.DrawBackground(painter, option, index);
	}
	
	public void DoLayout(IQStyleOptionViewItem option, IQRect checkRect, IQRect iconRect, IQRect textRect, bool hint)
	{
		this.handle.DoLayout(option, checkRect, iconRect, textRect, hint);
	}
	
	public void Rect(IQStyleOptionViewItem option, IQModelIndex index, int32 role)
	{
		this.handle.Rect(option, index, role);
	}
	
	public virtual bool EventFilter(IQObject object, IQEvent event)
	{
		return this.handle.EventFilter(object, event);
	}
	
	public virtual bool EditorEvent(IQEvent event, IQAbstractItemModel model, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return this.handle.EditorEvent(event, model, option, index);
	}
	
	public void SetOptions(IQModelIndex index, IQStyleOptionViewItem option)
	{
		this.handle.SetOptions(index, option);
	}
	
	public void Decoration(IQStyleOptionViewItem option, IQVariant variant)
	{
		this.handle.Decoration(option, variant);
	}
	
	public void DoCheck(IQStyleOptionViewItem option, IQRect bounding, IQVariant variant)
	{
		this.handle.DoCheck(option, bounding, variant);
	}
	
	public void TextRectangle(IQPainter painter, IQRect rect, IQFont font, String text)
	{
		this.handle.TextRectangle(painter, rect, font, text);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QItemDelegatePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QItemDelegatePtr.Tr3(s, c, n);
	}
	
	public virtual void DestroyEditor(IQWidget editor, IQModelIndex index)
	{
		this.handle.DestroyEditor(editor, index);
	}
	
	public virtual bool HelpEvent(IQHelpEvent event, IQAbstractItemView view, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return this.handle.HelpEvent(event, view, option, index);
	}
	
	public virtual int32[] PaintingRoles()
	{
		return this.handle.PaintingRoles();
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QItemDelegatePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QItemDelegatePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QItemDelegatePtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QItemDelegatePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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