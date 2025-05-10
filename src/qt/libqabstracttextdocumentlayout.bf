using System;
using System.Interop;
namespace Qt;

public interface IQAbstractTextDocumentLayout
{
	void* NativePtr { get; }
}
public class QAbstractTextDocumentLayout : IQAbstractTextDocumentLayout, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQTextDocument doc)
	{
		this.nativePtr = CQt.QAbstractTextDocumentLayout_new((doc == null) ? null : (void*)doc.NativePtr);
	}
	
	public ~this()
	{
		CQt.QAbstractTextDocumentLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractTextDocumentLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QAbstractTextDocumentLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractTextDocumentLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QAbstractTextDocumentLayout_Tr(s);
	}
	
	public virtual void Draw(IQPainter painter, QAbstractTextDocumentLayout__PaintContext context)
	{
		CQt.QAbstractTextDocumentLayout_Draw(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (context == default) ? default : (void*)context.NativePtr);
	}
	
	public virtual int32 HitTest(IQPointF point, int64 accuracy)
	{
		return CQt.QAbstractTextDocumentLayout_HitTest(this.nativePtr, (point == default) ? default : (void*)point.NativePtr, accuracy);
	}
	
	public libqt_string AnchorAt(IQPointF pos)
	{
		return CQt.QAbstractTextDocumentLayout_AnchorAt(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
	}
	
	public libqt_string ImageAt(IQPointF pos)
	{
		return CQt.QAbstractTextDocumentLayout_ImageAt(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
	}
	
	public void FormatAt(IQPointF pos)
	{
		CQt.QAbstractTextDocumentLayout_FormatAt(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
	}
	
	public void BlockWithMarkerAt(IQPointF pos)
	{
		CQt.QAbstractTextDocumentLayout_BlockWithMarkerAt(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
	}
	
	public virtual int32 PageCount()
	{
		return CQt.QAbstractTextDocumentLayout_PageCount(this.nativePtr);
	}
	
	public virtual void DocumentSize()
	{
		CQt.QAbstractTextDocumentLayout_DocumentSize(this.nativePtr);
	}
	
	public virtual void FrameBoundingRect(IQTextFrame frame)
	{
		CQt.QAbstractTextDocumentLayout_FrameBoundingRect(this.nativePtr, (frame == null) ? null : (void*)frame.NativePtr);
	}
	
	public virtual void BlockBoundingRect(IQTextBlock block)
	{
		CQt.QAbstractTextDocumentLayout_BlockBoundingRect(this.nativePtr, (block == default) ? default : (void*)block.NativePtr);
	}
	
	public void SetPaintDevice(IQPaintDevice device)
	{
		CQt.QAbstractTextDocumentLayout_SetPaintDevice(this.nativePtr, (device == null) ? null : (void*)device.NativePtr);
	}
	
	public void* PaintDevice()
	{
		return CQt.QAbstractTextDocumentLayout_PaintDevice(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QAbstractTextDocumentLayout_Document(this.nativePtr);
	}
	
	public void RegisterHandler(int32 objectType, IQObject component)
	{
		CQt.QAbstractTextDocumentLayout_RegisterHandler(this.nativePtr, objectType, (component == null) ? null : (void*)component.NativePtr);
	}
	
	public void UnregisterHandler(int32 objectType)
	{
		CQt.QAbstractTextDocumentLayout_UnregisterHandler(this.nativePtr, objectType);
	}
	
	public void* HandlerForObject(int32 objectType)
	{
		return CQt.QAbstractTextDocumentLayout_HandlerForObject(this.nativePtr, objectType);
	}
	
	public virtual void DocumentChanged(int32 from, int32 charsRemoved, int32 charsAdded)
	{
		CQt.QAbstractTextDocumentLayout_DocumentChanged(this.nativePtr, from, charsRemoved, charsAdded);
	}
	
	public virtual void ResizeInlineObject(IQTextInlineObject item, int32 posInDocument, IQTextFormat format)
	{
		CQt.QAbstractTextDocumentLayout_ResizeInlineObject(this.nativePtr, (item == default) ? default : (void)item.NativePtr, posInDocument, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public virtual void PositionInlineObject(IQTextInlineObject item, int32 posInDocument, IQTextFormat format)
	{
		CQt.QAbstractTextDocumentLayout_PositionInlineObject(this.nativePtr, (item == default) ? default : (void)item.NativePtr, posInDocument, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public virtual void DrawInlineObject(IQPainter painter, IQRectF rect, IQTextInlineObject object, int32 posInDocument, IQTextFormat format)
	{
		CQt.QAbstractTextDocumentLayout_DrawInlineObject(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, (object == default) ? default : (void)object.NativePtr, posInDocument, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public int32 FormatIndex(int32 pos)
	{
		return CQt.QAbstractTextDocumentLayout_FormatIndex(this.nativePtr, pos);
	}
	
	public void Format(int32 pos)
	{
		CQt.QAbstractTextDocumentLayout_Format(this.nativePtr, pos);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QAbstractTextDocumentLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QAbstractTextDocumentLayout_Tr3(s, c, n);
	}
	
	public void UnregisterHandler2(int32 objectType, IQObject component)
	{
		CQt.QAbstractTextDocumentLayout_UnregisterHandler2(this.nativePtr, objectType, (component == null) ? null : (void*)component.NativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
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
	[LinkName("QAbstractTextDocumentLayout_new")]
	public static extern void* QAbstractTextDocumentLayout_new(void* doc);
	[LinkName("QAbstractTextDocumentLayout_MetaObject")]
	public static extern void* QAbstractTextDocumentLayout_MetaObject(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_Metacast")]
	public static extern void* QAbstractTextDocumentLayout_Metacast(void* c_this, char8* param1);
	[LinkName("QAbstractTextDocumentLayout_Metacall")]
	public static extern int32 QAbstractTextDocumentLayout_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QAbstractTextDocumentLayout_Tr")]
	public static extern libqt_string QAbstractTextDocumentLayout_Tr(char8* s);
	[LinkName("QAbstractTextDocumentLayout_Draw")]
	public static extern void QAbstractTextDocumentLayout_Draw(void* c_this, void* painter, void* context);
	[LinkName("QAbstractTextDocumentLayout_HitTest")]
	public static extern int32 QAbstractTextDocumentLayout_HitTest(void* c_this, void* point, int64 accuracy);
	[LinkName("QAbstractTextDocumentLayout_AnchorAt")]
	public static extern libqt_string QAbstractTextDocumentLayout_AnchorAt(void* c_this, void* pos);
	[LinkName("QAbstractTextDocumentLayout_ImageAt")]
	public static extern libqt_string QAbstractTextDocumentLayout_ImageAt(void* c_this, void* pos);
	[LinkName("QAbstractTextDocumentLayout_FormatAt")]
	public static extern void QAbstractTextDocumentLayout_FormatAt(void* c_this, void* pos);
	[LinkName("QAbstractTextDocumentLayout_BlockWithMarkerAt")]
	public static extern void QAbstractTextDocumentLayout_BlockWithMarkerAt(void* c_this, void* pos);
	[LinkName("QAbstractTextDocumentLayout_PageCount")]
	public static extern int32 QAbstractTextDocumentLayout_PageCount(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_DocumentSize")]
	public static extern void QAbstractTextDocumentLayout_DocumentSize(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_FrameBoundingRect")]
	public static extern void QAbstractTextDocumentLayout_FrameBoundingRect(void* c_this, void* frame);
	[LinkName("QAbstractTextDocumentLayout_BlockBoundingRect")]
	public static extern void QAbstractTextDocumentLayout_BlockBoundingRect(void* c_this, void* block);
	[LinkName("QAbstractTextDocumentLayout_SetPaintDevice")]
	public static extern void QAbstractTextDocumentLayout_SetPaintDevice(void* c_this, void* device);
	[LinkName("QAbstractTextDocumentLayout_PaintDevice")]
	public static extern void* QAbstractTextDocumentLayout_PaintDevice(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_Document")]
	public static extern void* QAbstractTextDocumentLayout_Document(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_RegisterHandler")]
	public static extern void QAbstractTextDocumentLayout_RegisterHandler(void* c_this, int32 objectType, void* component);
	[LinkName("QAbstractTextDocumentLayout_UnregisterHandler")]
	public static extern void QAbstractTextDocumentLayout_UnregisterHandler(void* c_this, int32 objectType);
	[LinkName("QAbstractTextDocumentLayout_HandlerForObject")]
	public static extern void* QAbstractTextDocumentLayout_HandlerForObject(void* c_this, int32 objectType);
	[LinkName("QAbstractTextDocumentLayout_Connect_Update")]
	public static extern void QAbstractTextDocumentLayout_Connect_Update(void* c_this, c_intptr slot);
	[LinkName("QAbstractTextDocumentLayout_Connect_UpdateBlock")]
	public static extern void QAbstractTextDocumentLayout_Connect_UpdateBlock(void* c_this, c_intptr slot);
	[LinkName("QAbstractTextDocumentLayout_Connect_DocumentSizeChanged")]
	public static extern void QAbstractTextDocumentLayout_Connect_DocumentSizeChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractTextDocumentLayout_Connect_PageCountChanged")]
	public static extern void QAbstractTextDocumentLayout_Connect_PageCountChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractTextDocumentLayout_DocumentChanged")]
	public static extern void QAbstractTextDocumentLayout_DocumentChanged(void* c_this, int32 from, int32 charsRemoved, int32 charsAdded);
	[LinkName("QAbstractTextDocumentLayout_ResizeInlineObject")]
	public static extern void QAbstractTextDocumentLayout_ResizeInlineObject(void* c_this, void item, int32 posInDocument, void* format);
	[LinkName("QAbstractTextDocumentLayout_PositionInlineObject")]
	public static extern void QAbstractTextDocumentLayout_PositionInlineObject(void* c_this, void item, int32 posInDocument, void* format);
	[LinkName("QAbstractTextDocumentLayout_DrawInlineObject")]
	public static extern void QAbstractTextDocumentLayout_DrawInlineObject(void* c_this, void* painter, void* rect, void object, int32 posInDocument, void* format);
	[LinkName("QAbstractTextDocumentLayout_FormatIndex")]
	public static extern int32 QAbstractTextDocumentLayout_FormatIndex(void* c_this, int32 pos);
	[LinkName("QAbstractTextDocumentLayout_Format")]
	public static extern void QAbstractTextDocumentLayout_Format(void* c_this, int32 pos);
	[LinkName("QAbstractTextDocumentLayout_Tr2")]
	public static extern libqt_string QAbstractTextDocumentLayout_Tr2(char8* s, char8* c);
	[LinkName("QAbstractTextDocumentLayout_Tr3")]
	public static extern libqt_string QAbstractTextDocumentLayout_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QAbstractTextDocumentLayout_UnregisterHandler2")]
	public static extern void QAbstractTextDocumentLayout_UnregisterHandler2(void* c_this, int32 objectType, void* component);
	[LinkName("QAbstractTextDocumentLayout_Connect_Update1")]
	public static extern void QAbstractTextDocumentLayout_Connect_Update1(void* c_this, c_intptr slot);
	/// Delete this object from C++ memory
	[LinkName("QAbstractTextDocumentLayout_Delete")]
	public static extern void QAbstractTextDocumentLayout_Delete(void* self);
}
public interface IQTextObjectInterface
{
	void* NativePtr { get; }
}
public class QTextObjectInterface : IQTextObjectInterface
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QTextObjectInterface_Delete(this.nativePtr);
	}
	
	public virtual void IntrinsicSize(IQTextDocument doc, int32 posInDocument, IQTextFormat format)
	{
		CQt.QTextObjectInterface_IntrinsicSize(this.nativePtr, (doc == null) ? null : (void*)doc.NativePtr, posInDocument, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public virtual void DrawObject(IQPainter painter, IQRectF rect, IQTextDocument doc, int32 posInDocument, IQTextFormat format)
	{
		CQt.QTextObjectInterface_DrawObject(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, (doc == null) ? null : (void*)doc.NativePtr, posInDocument, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void OperatorAssign(IQTextObjectInterface param1)
	{
		CQt.QTextObjectInterface_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTextObjectInterface_IntrinsicSize")]
	public static extern void QTextObjectInterface_IntrinsicSize(void* c_this, void* doc, int32 posInDocument, void* format);
	[LinkName("QTextObjectInterface_DrawObject")]
	public static extern void QTextObjectInterface_DrawObject(void* c_this, void* painter, void* rect, void* doc, int32 posInDocument, void* format);
	[LinkName("QTextObjectInterface_OperatorAssign")]
	public static extern void QTextObjectInterface_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QTextObjectInterface_Delete")]
	public static extern void QTextObjectInterface_Delete(void* self);
}
public interface IQAbstractTextDocumentLayout__Selection
{
	void* NativePtr { get; }
}
public class QAbstractTextDocumentLayout__Selection : IQAbstractTextDocumentLayout__Selection
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QAbstractTextDocumentLayout__Selection param1)
	{
		this.nativePtr = CQt.QAbstractTextDocumentLayout__Selection_new((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public ~this()
	{
		CQt.QAbstractTextDocumentLayout__Selection_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QAbstractTextDocumentLayout__Selection param1)
	{
		CQt.QAbstractTextDocumentLayout__Selection_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAbstractTextDocumentLayout__Selection_new")]
	public static extern void* QAbstractTextDocumentLayout__Selection_new(void* param1);
	[LinkName("QAbstractTextDocumentLayout__Selection_OperatorAssign")]
	public static extern void QAbstractTextDocumentLayout__Selection_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAbstractTextDocumentLayout__Selection_Delete")]
	public static extern void QAbstractTextDocumentLayout__Selection_Delete(void* self);
}
public interface IQAbstractTextDocumentLayout__PaintContext
{
	void* NativePtr { get; }
}
public class QAbstractTextDocumentLayout__PaintContext : IQAbstractTextDocumentLayout__PaintContext
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAbstractTextDocumentLayout__PaintContext_new();
	}
	
	public ~this()
	{
		CQt.QAbstractTextDocumentLayout__PaintContext_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QAbstractTextDocumentLayout__PaintContext param1)
	{
		CQt.QAbstractTextDocumentLayout__PaintContext_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAbstractTextDocumentLayout__PaintContext_new")]
	public static extern void* QAbstractTextDocumentLayout__PaintContext_new();
	[LinkName("QAbstractTextDocumentLayout__PaintContext_new2")]
	public static extern void* QAbstractTextDocumentLayout__PaintContext_new2(void* param1);
	[LinkName("QAbstractTextDocumentLayout__PaintContext_OperatorAssign")]
	public static extern void QAbstractTextDocumentLayout__PaintContext_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAbstractTextDocumentLayout__PaintContext_Delete")]
	public static extern void QAbstractTextDocumentLayout__PaintContext_Delete(void* self);
}