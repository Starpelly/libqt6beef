using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QClipboard__Mode
{
	Clipboard = 0,
	Selection = 1,
	FindBuffer = 2,
	LastMode = 2,
}
public class QClipboard
{
	protected void* nativePtr;
	
	public virtual void* MetaObject()
	{
		return CQt.QClipboard_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QClipboard_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QClipboard_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QClipboard_Tr(s);
	}
	
	public void Clear()
	{
		CQt.QClipboard_Clear(this.nativePtr);
	}
	
	public bool SupportsSelection()
	{
		return CQt.QClipboard_SupportsSelection(this.nativePtr);
	}
	
	public bool SupportsFindBuffer()
	{
		return CQt.QClipboard_SupportsFindBuffer(this.nativePtr);
	}
	
	public bool OwnsSelection()
	{
		return CQt.QClipboard_OwnsSelection(this.nativePtr);
	}
	
	public bool OwnsClipboard()
	{
		return CQt.QClipboard_OwnsClipboard(this.nativePtr);
	}
	
	public bool OwnsFindBuffer()
	{
		return CQt.QClipboard_OwnsFindBuffer(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QClipboard_Text(this.nativePtr);
	}
	
	public libqt_string TextWithSubtype(libqt_string subtype)
	{
		return CQt.QClipboard_TextWithSubtype(this.nativePtr, subtype);
	}
	
	public void SetText(libqt_string param1)
	{
		CQt.QClipboard_SetText(this.nativePtr, param1);
	}
	
	public void* MimeData()
	{
		return CQt.QClipboard_MimeData(this.nativePtr);
	}
	
	public void SetMimeData(void* data)
	{
		CQt.QClipboard_SetMimeData(this.nativePtr, data);
	}
	
	public void Image()
	{
		CQt.QClipboard_Image(this.nativePtr);
	}
	
	public void Pixmap()
	{
		CQt.QClipboard_Pixmap(this.nativePtr);
	}
	
	public void SetImage(void* param1)
	{
		CQt.QClipboard_SetImage(this.nativePtr, param1);
	}
	
	public void SetPixmap(void* param1)
	{
		CQt.QClipboard_SetPixmap(this.nativePtr, param1);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QClipboard_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QClipboard_Tr3(s, c, n);
	}
	
	public void Clear1(int64 mode)
	{
		CQt.QClipboard_Clear1(this.nativePtr, mode);
	}
	
	public libqt_string Text1(int64 mode)
	{
		return CQt.QClipboard_Text1(this.nativePtr, mode);
	}
	
	public libqt_string Text2(libqt_string subtype, int64 mode)
	{
		return CQt.QClipboard_Text2(this.nativePtr, subtype, mode);
	}
	
	public void SetText2(libqt_string param1, int64 mode)
	{
		CQt.QClipboard_SetText2(this.nativePtr, param1, mode);
	}
	
	public void* MimeData1(int64 mode)
	{
		return CQt.QClipboard_MimeData1(this.nativePtr, mode);
	}
	
	public void SetMimeData2(void* data, int64 mode)
	{
		CQt.QClipboard_SetMimeData2(this.nativePtr, data, mode);
	}
	
	public void Image1(int64 mode)
	{
		CQt.QClipboard_Image1(this.nativePtr, mode);
	}
	
	public void Pixmap1(int64 mode)
	{
		CQt.QClipboard_Pixmap1(this.nativePtr, mode);
	}
	
	public void SetImage2(void* param1, int64 mode)
	{
		CQt.QClipboard_SetImage2(this.nativePtr, param1, mode);
	}
	
	public void SetPixmap2(void* param1, int64 mode)
	{
		CQt.QClipboard_SetPixmap2(this.nativePtr, param1, mode);
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
	[LinkName("QClipboard_MetaObject")]
	public static extern void* QClipboard_MetaObject(void* c_this);
	[LinkName("QClipboard_Metacast")]
	public static extern void* QClipboard_Metacast(void* c_this, char8[] param1);
	[LinkName("QClipboard_Metacall")]
	public static extern int32 QClipboard_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QClipboard_Tr")]
	public static extern libqt_string QClipboard_Tr(char8[] s);
	[LinkName("QClipboard_Clear")]
	public static extern void QClipboard_Clear(void* c_this);
	[LinkName("QClipboard_SupportsSelection")]
	public static extern bool QClipboard_SupportsSelection(void* c_this);
	[LinkName("QClipboard_SupportsFindBuffer")]
	public static extern bool QClipboard_SupportsFindBuffer(void* c_this);
	[LinkName("QClipboard_OwnsSelection")]
	public static extern bool QClipboard_OwnsSelection(void* c_this);
	[LinkName("QClipboard_OwnsClipboard")]
	public static extern bool QClipboard_OwnsClipboard(void* c_this);
	[LinkName("QClipboard_OwnsFindBuffer")]
	public static extern bool QClipboard_OwnsFindBuffer(void* c_this);
	[LinkName("QClipboard_Text")]
	public static extern libqt_string QClipboard_Text(void* c_this);
	[LinkName("QClipboard_TextWithSubtype")]
	public static extern libqt_string QClipboard_TextWithSubtype(void* c_this, libqt_string subtype);
	[LinkName("QClipboard_SetText")]
	public static extern void QClipboard_SetText(void* c_this, libqt_string param1);
	[LinkName("QClipboard_MimeData")]
	public static extern void* QClipboard_MimeData(void* c_this);
	[LinkName("QClipboard_SetMimeData")]
	public static extern void QClipboard_SetMimeData(void* c_this, void* data);
	[LinkName("QClipboard_Image")]
	public static extern void QClipboard_Image(void* c_this);
	[LinkName("QClipboard_Pixmap")]
	public static extern void QClipboard_Pixmap(void* c_this);
	[LinkName("QClipboard_SetImage")]
	public static extern void QClipboard_SetImage(void* c_this, void* param1);
	[LinkName("QClipboard_SetPixmap")]
	public static extern void QClipboard_SetPixmap(void* c_this, void* param1);
	[LinkName("QClipboard_Connect_Changed")]
	public static extern void QClipboard_Connect_Changed(void* c_this, c_intptr slot);
	[LinkName("QClipboard_Connect_SelectionChanged")]
	public static extern void QClipboard_Connect_SelectionChanged(void* c_this, c_intptr slot);
	[LinkName("QClipboard_Connect_FindBufferChanged")]
	public static extern void QClipboard_Connect_FindBufferChanged(void* c_this, c_intptr slot);
	[LinkName("QClipboard_Connect_DataChanged")]
	public static extern void QClipboard_Connect_DataChanged(void* c_this, c_intptr slot);
	[LinkName("QClipboard_Tr2")]
	public static extern libqt_string QClipboard_Tr2(char8[] s, char8[] c);
	[LinkName("QClipboard_Tr3")]
	public static extern libqt_string QClipboard_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QClipboard_Clear1")]
	public static extern void QClipboard_Clear1(void* c_this, int64 mode);
	[LinkName("QClipboard_Text1")]
	public static extern libqt_string QClipboard_Text1(void* c_this, int64 mode);
	[LinkName("QClipboard_Text2")]
	public static extern libqt_string QClipboard_Text2(void* c_this, libqt_string subtype, int64 mode);
	[LinkName("QClipboard_SetText2")]
	public static extern void QClipboard_SetText2(void* c_this, libqt_string param1, int64 mode);
	[LinkName("QClipboard_MimeData1")]
	public static extern void* QClipboard_MimeData1(void* c_this, int64 mode);
	[LinkName("QClipboard_SetMimeData2")]
	public static extern void QClipboard_SetMimeData2(void* c_this, void* data, int64 mode);
	[LinkName("QClipboard_Image1")]
	public static extern void QClipboard_Image1(void* c_this, int64 mode);
	[LinkName("QClipboard_Pixmap1")]
	public static extern void QClipboard_Pixmap1(void* c_this, int64 mode);
	[LinkName("QClipboard_SetImage2")]
	public static extern void QClipboard_SetImage2(void* c_this, void* param1, int64 mode);
	[LinkName("QClipboard_SetPixmap2")]
	public static extern void QClipboard_SetPixmap2(void* c_this, void* param1, int64 mode);
}