using System;
using System.Interop;
namespace Qt;

public class QAbstractTextDocumentLayout
{
	protected void* nativePtr;
	
	public this(void* doc)
	{
		this.nativePtr = CQt.QAbstractTextDocumentLayout_new(doc);
	}
	
	public ~this()
	{
		CQt.QAbstractTextDocumentLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractTextDocumentLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAbstractTextDocumentLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractTextDocumentLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAbstractTextDocumentLayout_Tr(s);
	}
	
	public virtual void Draw(void* painter, QAbstractTextDocumentLayout__PaintContext* context)
	{
		CQt.QAbstractTextDocumentLayout_Draw(this.nativePtr, painter, context);
	}
	
	public virtual int32 HitTest(void* point, int64 accuracy)
	{
		return CQt.QAbstractTextDocumentLayout_HitTest(this.nativePtr, point, accuracy);
	}
	
	public libqt_string AnchorAt(void* pos)
	{
		return CQt.QAbstractTextDocumentLayout_AnchorAt(this.nativePtr, pos);
	}
	
	public libqt_string ImageAt(void* pos)
	{
		return CQt.QAbstractTextDocumentLayout_ImageAt(this.nativePtr, pos);
	}
	
	public void FormatAt(void* pos)
	{
		CQt.QAbstractTextDocumentLayout_FormatAt(this.nativePtr, pos);
	}
	
	public void BlockWithMarkerAt(void* pos)
	{
		CQt.QAbstractTextDocumentLayout_BlockWithMarkerAt(this.nativePtr, pos);
	}
	
	public virtual int32 PageCount()
	{
		return CQt.QAbstractTextDocumentLayout_PageCount(this.nativePtr);
	}
	
	public virtual void DocumentSize()
	{
		CQt.QAbstractTextDocumentLayout_DocumentSize(this.nativePtr);
	}
	
	public virtual void FrameBoundingRect(void* frame)
	{
		CQt.QAbstractTextDocumentLayout_FrameBoundingRect(this.nativePtr, frame);
	}
	
	public virtual void BlockBoundingRect(void* block)
	{
		CQt.QAbstractTextDocumentLayout_BlockBoundingRect(this.nativePtr, block);
	}
	
	public void SetPaintDevice(void* device)
	{
		CQt.QAbstractTextDocumentLayout_SetPaintDevice(this.nativePtr, device);
	}
	
	public void* PaintDevice()
	{
		return CQt.QAbstractTextDocumentLayout_PaintDevice(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QAbstractTextDocumentLayout_Document(this.nativePtr);
	}
	
	public void RegisterHandler(int32 objectType, void* component)
	{
		CQt.QAbstractTextDocumentLayout_RegisterHandler(this.nativePtr, objectType, component);
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
	
	public virtual void ResizeInlineObject(void item, int32 posInDocument, void* format)
	{
		CQt.QAbstractTextDocumentLayout_ResizeInlineObject(this.nativePtr, item, posInDocument, format);
	}
	
	public virtual void PositionInlineObject(void item, int32 posInDocument, void* format)
	{
		CQt.QAbstractTextDocumentLayout_PositionInlineObject(this.nativePtr, item, posInDocument, format);
	}
	
	public virtual void DrawInlineObject(void* painter, void* rect, void object, int32 posInDocument, void* format)
	{
		CQt.QAbstractTextDocumentLayout_DrawInlineObject(this.nativePtr, painter, rect, object, posInDocument, format);
	}
	
	public int32 FormatIndex(int32 pos)
	{
		return CQt.QAbstractTextDocumentLayout_FormatIndex(this.nativePtr, pos);
	}
	
	public void Format(int32 pos)
	{
		CQt.QAbstractTextDocumentLayout_Format(this.nativePtr, pos);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAbstractTextDocumentLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAbstractTextDocumentLayout_Tr3(s, c, n);
	}
	
	public void UnregisterHandler2(int32 objectType, void* component)
	{
		CQt.QAbstractTextDocumentLayout_UnregisterHandler2(this.nativePtr, objectType, component);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
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
	[LinkName("QAbstractTextDocumentLayout_new")]
	public static extern void* QAbstractTextDocumentLayout_new(void* doc);
	[LinkName("QAbstractTextDocumentLayout_MetaObject")]
	public static extern void* QAbstractTextDocumentLayout_MetaObject(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_Metacast")]
	public static extern void* QAbstractTextDocumentLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractTextDocumentLayout_Metacall")]
	public static extern int32 QAbstractTextDocumentLayout_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractTextDocumentLayout_Tr")]
	public static extern libqt_string QAbstractTextDocumentLayout_Tr(char8[] s);
	[LinkName("QAbstractTextDocumentLayout_Draw")]
	public static extern void QAbstractTextDocumentLayout_Draw(void* c_this, void* painter, QAbstractTextDocumentLayout__PaintContext* context);
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
	public static extern libqt_string QAbstractTextDocumentLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractTextDocumentLayout_Tr3")]
	public static extern libqt_string QAbstractTextDocumentLayout_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractTextDocumentLayout_UnregisterHandler2")]
	public static extern void QAbstractTextDocumentLayout_UnregisterHandler2(void* c_this, int32 objectType, void* component);
	[LinkName("QAbstractTextDocumentLayout_Connect_Update1")]
	public static extern void QAbstractTextDocumentLayout_Connect_Update1(void* c_this, c_intptr slot);
	/// Delete this object from C++ memory
	[LinkName("QAbstractTextDocumentLayout_Delete")]
	public static extern void QAbstractTextDocumentLayout_Delete(void* self);
}
public class QTextObjectInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QTextObjectInterface_Delete(this.nativePtr);
	}
	
	public virtual void IntrinsicSize(void* doc, int32 posInDocument, void* format)
	{
		CQt.QTextObjectInterface_IntrinsicSize(this.nativePtr, doc, posInDocument, format);
	}
	
	public virtual void DrawObject(void* painter, void* rect, void* doc, int32 posInDocument, void* format)
	{
		CQt.QTextObjectInterface_DrawObject(this.nativePtr, painter, rect, doc, posInDocument, format);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QTextObjectInterface_OperatorAssign(this.nativePtr, param1);
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
public class QAbstractTextDocumentLayout__Selection
{
	protected void* nativePtr;
	
	public this(QAbstractTextDocumentLayout__Selection* param1)
	{
		this.nativePtr = CQt.QAbstractTextDocumentLayout__Selection_new(param1);
	}
	
	public ~this()
	{
		CQt.QAbstractTextDocumentLayout__Selection_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QAbstractTextDocumentLayout__Selection* param1)
	{
		CQt.QAbstractTextDocumentLayout__Selection_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAbstractTextDocumentLayout__Selection_new")]
	public static extern void* QAbstractTextDocumentLayout__Selection_new(QAbstractTextDocumentLayout__Selection* param1);
	[LinkName("QAbstractTextDocumentLayout__Selection_OperatorAssign")]
	public static extern void QAbstractTextDocumentLayout__Selection_OperatorAssign(void* c_this, QAbstractTextDocumentLayout__Selection* param1);
	/// Delete this object from C++ memory
	[LinkName("QAbstractTextDocumentLayout__Selection_Delete")]
	public static extern void QAbstractTextDocumentLayout__Selection_Delete(void* self);
}
public class QAbstractTextDocumentLayout__PaintContext
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAbstractTextDocumentLayout__PaintContext_new();
	}
	
	public ~this()
	{
		CQt.QAbstractTextDocumentLayout__PaintContext_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QAbstractTextDocumentLayout__PaintContext* param1)
	{
		CQt.QAbstractTextDocumentLayout__PaintContext_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAbstractTextDocumentLayout__PaintContext_new")]
	public static extern void* QAbstractTextDocumentLayout__PaintContext_new();
	[LinkName("QAbstractTextDocumentLayout__PaintContext_new2")]
	public static extern void* QAbstractTextDocumentLayout__PaintContext_new2(QAbstractTextDocumentLayout__PaintContext* param1);
	[LinkName("QAbstractTextDocumentLayout__PaintContext_OperatorAssign")]
	public static extern void QAbstractTextDocumentLayout__PaintContext_OperatorAssign(void* c_this, QAbstractTextDocumentLayout__PaintContext* param1);
	/// Delete this object from C++ memory
	[LinkName("QAbstractTextDocumentLayout__PaintContext_Delete")]
	public static extern void QAbstractTextDocumentLayout__PaintContext_Delete(void* self);
}