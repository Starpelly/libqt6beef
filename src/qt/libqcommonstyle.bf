using System;
using System.Interop;
namespace Qt;

public class QCommonStyle
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCommonStyle_new();
	}
	
	public ~this()
	{
		CQt.QCommonStyle_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QCommonStyle_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QCommonStyle_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QCommonStyle_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QCommonStyle_Tr(s);
	}
	
	public virtual void DrawPrimitive(int64 pe, void* opt, void* p, void* w)
	{
		CQt.QCommonStyle_DrawPrimitive(this.nativePtr, pe, opt, p, w);
	}
	
	public virtual void DrawControl(int64 element, void* opt, void* p, void* w)
	{
		CQt.QCommonStyle_DrawControl(this.nativePtr, element, opt, p, w);
	}
	
	public virtual void SubElementRect(int64 r, void* opt, void* widget)
	{
		CQt.QCommonStyle_SubElementRect(this.nativePtr, r, opt, widget);
	}
	
	public virtual void DrawComplexControl(int64 cc, void* opt, void* p, void* w)
	{
		CQt.QCommonStyle_DrawComplexControl(this.nativePtr, cc, opt, p, w);
	}
	
	public virtual int64 HitTestComplexControl(int64 cc, void* opt, void* pt, void* w)
	{
		return CQt.QCommonStyle_HitTestComplexControl(this.nativePtr, cc, opt, pt, w);
	}
	
	public virtual void SubControlRect(int64 cc, void* opt, int64 sc, void* w)
	{
		CQt.QCommonStyle_SubControlRect(this.nativePtr, cc, opt, sc, w);
	}
	
	public virtual void SizeFromContents(int64 ct, void* opt, void* contentsSize, void* widget)
	{
		CQt.QCommonStyle_SizeFromContents(this.nativePtr, ct, opt, contentsSize, widget);
	}
	
	public virtual int32 PixelMetric(int64 m, void* opt, void* widget)
	{
		return CQt.QCommonStyle_PixelMetric(this.nativePtr, m, opt, widget);
	}
	
	public virtual int32 StyleHint(int64 sh, void* opt, void* w, void* shret)
	{
		return CQt.QCommonStyle_StyleHint(this.nativePtr, sh, opt, w, shret);
	}
	
	public virtual void StandardIcon(int64 standardIcon, void* opt, void* widget)
	{
		CQt.QCommonStyle_StandardIcon(this.nativePtr, standardIcon, opt, widget);
	}
	
	public virtual void StandardPixmap(int64 sp, void* opt, void* widget)
	{
		CQt.QCommonStyle_StandardPixmap(this.nativePtr, sp, opt, widget);
	}
	
	public virtual void GeneratedIconPixmap(int64 iconMode, void* pixmap, void* opt)
	{
		CQt.QCommonStyle_GeneratedIconPixmap(this.nativePtr, iconMode, pixmap, opt);
	}
	
	public virtual int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, void* option, void* widget)
	{
		return CQt.QCommonStyle_LayoutSpacing(this.nativePtr, control1, control2, orientation, option, widget);
	}
	
	public virtual void Polish(void* param1)
	{
		CQt.QCommonStyle_Polish(this.nativePtr, param1);
	}
	
	public virtual void PolishWithApp(void* app)
	{
		CQt.QCommonStyle_PolishWithApp(this.nativePtr, app);
	}
	
	public virtual void PolishWithWidget(void* widget)
	{
		CQt.QCommonStyle_PolishWithWidget(this.nativePtr, widget);
	}
	
	public virtual void Unpolish(void* widget)
	{
		CQt.QCommonStyle_Unpolish(this.nativePtr, widget);
	}
	
	public virtual void UnpolishWithApplication(void* application)
	{
		CQt.QCommonStyle_UnpolishWithApplication(this.nativePtr, application);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QCommonStyle_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QCommonStyle_Tr3(s, c, n);
	}
	
	public libqt_string Name()
	{
		return CQt.QStyle_Name(this.nativePtr);
	}
	
	public virtual void PolishWithApplication(void* application)
	{
		CQt.QStyle_PolishWithApplication(this.nativePtr, application);
	}
	
	public virtual void PolishWithPalette(void* palette)
	{
		CQt.QStyle_PolishWithPalette(this.nativePtr, palette);
	}
	
	public virtual void ItemTextRect(void* fm, void* r, int32 flags, bool enabled, libqt_string text)
	{
		CQt.QStyle_ItemTextRect(this.nativePtr, fm, r, flags, enabled, text);
	}
	
	public virtual void ItemPixmapRect(void* r, int32 flags, void* pixmap)
	{
		CQt.QStyle_ItemPixmapRect(this.nativePtr, r, flags, pixmap);
	}
	
	public virtual void DrawItemText(void* painter, void* rect, int32 flags, void* pal, bool enabled, libqt_string text, int64 textRole)
	{
		CQt.QStyle_DrawItemText(this.nativePtr, painter, rect, flags, pal, enabled, text, textRole);
	}
	
	public virtual void DrawItemPixmap(void* painter, void* rect, int32 alignment, void* pixmap)
	{
		CQt.QStyle_DrawItemPixmap(this.nativePtr, painter, rect, alignment, pixmap);
	}
	
	public virtual void StandardPalette()
	{
		CQt.QStyle_StandardPalette(this.nativePtr);
	}
	
	public static void VisualRect(int64 direction, void* boundingRect, void* logicalRect)
	{
		CQt.QStyle_VisualRect(direction, boundingRect, logicalRect);
	}
	
	public static void VisualPos(int64 direction, void* boundingRect, void* logicalPos)
	{
		CQt.QStyle_VisualPos(direction, boundingRect, logicalPos);
	}
	
	public static int32 SliderPositionFromValue(int32 min, int32 max, int32 val, int32 space)
	{
		return CQt.QStyle_SliderPositionFromValue(min, max, val, space);
	}
	
	public static int32 SliderValueFromPosition(int32 min, int32 max, int32 pos, int32 space)
	{
		return CQt.QStyle_SliderValueFromPosition(min, max, pos, space);
	}
	
	public static int64 VisualAlignment(int64 direction, int64 alignment)
	{
		return CQt.QStyle_VisualAlignment(direction, alignment);
	}
	
	public static void AlignedRect(int64 direction, int64 alignment, void* size, void* rectangle)
	{
		CQt.QStyle_AlignedRect(direction, alignment, size, rectangle);
	}
	
	public int32 CombinedLayoutSpacing(int64 controls1, int64 controls2, int64 orientation)
	{
		return CQt.QStyle_CombinedLayoutSpacing(this.nativePtr, controls1, controls2, orientation);
	}
	
	public void* Proxy()
	{
		return CQt.QStyle_Proxy(this.nativePtr);
	}
	
	public static int32 SliderPositionFromValue5(int32 min, int32 max, int32 val, int32 space, bool upsideDown)
	{
		return CQt.QStyle_SliderPositionFromValue5(min, max, val, space, upsideDown);
	}
	
	public static int32 SliderValueFromPosition5(int32 min, int32 max, int32 pos, int32 space, bool upsideDown)
	{
		return CQt.QStyle_SliderValueFromPosition5(min, max, pos, space, upsideDown);
	}
	
	public int32 CombinedLayoutSpacing4(int64 controls1, int64 controls2, int64 orientation, void* option)
	{
		return CQt.QStyle_CombinedLayoutSpacing4(this.nativePtr, controls1, controls2, orientation, option);
	}
	
	public int32 CombinedLayoutSpacing5(int64 controls1, int64 controls2, int64 orientation, void* option, void* widget)
	{
		return CQt.QStyle_CombinedLayoutSpacing5(this.nativePtr, controls1, controls2, orientation, option, widget);
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
	[LinkName("QCommonStyle_new")]
	public static extern void* QCommonStyle_new();
	[LinkName("QCommonStyle_MetaObject")]
	public static extern void* QCommonStyle_MetaObject(void* c_this);
	[LinkName("QCommonStyle_Metacast")]
	public static extern void* QCommonStyle_Metacast(void* c_this, char8[] param1);
	[LinkName("QCommonStyle_Metacall")]
	public static extern int32 QCommonStyle_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QCommonStyle_Tr")]
	public static extern libqt_string QCommonStyle_Tr(char8[] s);
	[LinkName("QCommonStyle_DrawPrimitive")]
	public static extern void QCommonStyle_DrawPrimitive(void* c_this, int64 pe, void* opt, void* p, void* w);
	[LinkName("QCommonStyle_DrawControl")]
	public static extern void QCommonStyle_DrawControl(void* c_this, int64 element, void* opt, void* p, void* w);
	[LinkName("QCommonStyle_SubElementRect")]
	public static extern void QCommonStyle_SubElementRect(void* c_this, int64 r, void* opt, void* widget);
	[LinkName("QCommonStyle_DrawComplexControl")]
	public static extern void QCommonStyle_DrawComplexControl(void* c_this, int64 cc, void* opt, void* p, void* w);
	[LinkName("QCommonStyle_HitTestComplexControl")]
	public static extern int64 QCommonStyle_HitTestComplexControl(void* c_this, int64 cc, void* opt, void* pt, void* w);
	[LinkName("QCommonStyle_SubControlRect")]
	public static extern void QCommonStyle_SubControlRect(void* c_this, int64 cc, void* opt, int64 sc, void* w);
	[LinkName("QCommonStyle_SizeFromContents")]
	public static extern void QCommonStyle_SizeFromContents(void* c_this, int64 ct, void* opt, void* contentsSize, void* widget);
	[LinkName("QCommonStyle_PixelMetric")]
	public static extern int32 QCommonStyle_PixelMetric(void* c_this, int64 m, void* opt, void* widget);
	[LinkName("QCommonStyle_StyleHint")]
	public static extern int32 QCommonStyle_StyleHint(void* c_this, int64 sh, void* opt, void* w, void* shret);
	[LinkName("QCommonStyle_StandardIcon")]
	public static extern void QCommonStyle_StandardIcon(void* c_this, int64 standardIcon, void* opt, void* widget);
	[LinkName("QCommonStyle_StandardPixmap")]
	public static extern void QCommonStyle_StandardPixmap(void* c_this, int64 sp, void* opt, void* widget);
	[LinkName("QCommonStyle_GeneratedIconPixmap")]
	public static extern void QCommonStyle_GeneratedIconPixmap(void* c_this, int64 iconMode, void* pixmap, void* opt);
	[LinkName("QCommonStyle_LayoutSpacing")]
	public static extern int32 QCommonStyle_LayoutSpacing(void* c_this, int64 control1, int64 control2, int64 orientation, void* option, void* widget);
	[LinkName("QCommonStyle_Polish")]
	public static extern void QCommonStyle_Polish(void* c_this, void* param1);
	[LinkName("QCommonStyle_PolishWithApp")]
	public static extern void QCommonStyle_PolishWithApp(void* c_this, void* app);
	[LinkName("QCommonStyle_PolishWithWidget")]
	public static extern void QCommonStyle_PolishWithWidget(void* c_this, void* widget);
	[LinkName("QCommonStyle_Unpolish")]
	public static extern void QCommonStyle_Unpolish(void* c_this, void* widget);
	[LinkName("QCommonStyle_UnpolishWithApplication")]
	public static extern void QCommonStyle_UnpolishWithApplication(void* c_this, void* application);
	[LinkName("QCommonStyle_Tr2")]
	public static extern libqt_string QCommonStyle_Tr2(char8[] s, char8[] c);
	[LinkName("QCommonStyle_Tr3")]
	public static extern libqt_string QCommonStyle_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QCommonStyle_Delete")]
	public static extern void QCommonStyle_Delete(void* self);
}