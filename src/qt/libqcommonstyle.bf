using System;
using System.Interop;
namespace Qt;

public interface IQCommonStyle
{
	void* NativePtr { get; }
}
public class QCommonStyle : IQCommonStyle, IQStyle
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
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
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QCommonStyle_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QCommonStyle_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QCommonStyle_Tr(s);
	}
	
	public virtual void DrawPrimitive(int64 pe, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		CQt.QCommonStyle_DrawPrimitive(this.nativePtr, pe, (opt == null) ? null : (void*)opt.NativePtr, (p == null) ? null : (void*)p.NativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public virtual void DrawControl(int64 element, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		CQt.QCommonStyle_DrawControl(this.nativePtr, element, (opt == null) ? null : (void*)opt.NativePtr, (p == null) ? null : (void*)p.NativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public virtual void SubElementRect(int64 r, IQStyleOption opt, IQWidget widget)
	{
		CQt.QCommonStyle_SubElementRect(this.nativePtr, r, (opt == null) ? null : (void*)opt.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void DrawComplexControl(int64 cc, IQStyleOptionComplex opt, IQPainter p, IQWidget w)
	{
		CQt.QCommonStyle_DrawComplexControl(this.nativePtr, cc, (opt == null) ? null : (void*)opt.NativePtr, (p == null) ? null : (void*)p.NativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public virtual int64 HitTestComplexControl(int64 cc, IQStyleOptionComplex opt, IQPoint pt, IQWidget w)
	{
		return CQt.QCommonStyle_HitTestComplexControl(this.nativePtr, cc, (opt == null) ? null : (void*)opt.NativePtr, (pt == default) ? default : (void*)pt.NativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public virtual void SubControlRect(int64 cc, IQStyleOptionComplex opt, int64 sc, IQWidget w)
	{
		CQt.QCommonStyle_SubControlRect(this.nativePtr, cc, (opt == null) ? null : (void*)opt.NativePtr, sc, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public virtual void SizeFromContents(int64 ct, IQStyleOption opt, IQSize contentsSize, IQWidget widget)
	{
		CQt.QCommonStyle_SizeFromContents(this.nativePtr, ct, (opt == null) ? null : (void*)opt.NativePtr, (contentsSize == default) ? default : (void*)contentsSize.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual int32 PixelMetric(int64 m, IQStyleOption opt, IQWidget widget)
	{
		return CQt.QCommonStyle_PixelMetric(this.nativePtr, m, (opt == null) ? null : (void*)opt.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual int32 StyleHint(int64 sh, IQStyleOption opt, IQWidget w, IQStyleHintReturn shret)
	{
		return CQt.QCommonStyle_StyleHint(this.nativePtr, sh, (opt == null) ? null : (void*)opt.NativePtr, (w == null) ? null : (void*)w.NativePtr, (shret == null) ? null : (void*)shret.NativePtr);
	}
	
	public virtual void StandardIcon(int64 standardIcon, IQStyleOption opt, IQWidget widget)
	{
		CQt.QCommonStyle_StandardIcon(this.nativePtr, standardIcon, (opt == null) ? null : (void*)opt.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void StandardPixmap(int64 sp, IQStyleOption opt, IQWidget widget)
	{
		CQt.QCommonStyle_StandardPixmap(this.nativePtr, sp, (opt == null) ? null : (void*)opt.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void GeneratedIconPixmap(int64 iconMode, IQPixmap pixmap, IQStyleOption opt)
	{
		CQt.QCommonStyle_GeneratedIconPixmap(this.nativePtr, iconMode, (pixmap == default) ? default : (void*)pixmap.NativePtr, (opt == null) ? null : (void*)opt.NativePtr);
	}
	
	public virtual int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return CQt.QCommonStyle_LayoutSpacing(this.nativePtr, control1, control2, orientation, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void Polish(IQPalette param1)
	{
		CQt.QCommonStyle_Polish(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public virtual void PolishWithApp(IQApplication app)
	{
		CQt.QCommonStyle_PolishWithApp(this.nativePtr, (app == null) ? null : (void*)app.NativePtr);
	}
	
	public virtual void PolishWithWidget(IQWidget widget)
	{
		CQt.QCommonStyle_PolishWithWidget(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void Unpolish(IQWidget widget)
	{
		CQt.QCommonStyle_Unpolish(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void UnpolishWithApplication(IQApplication application)
	{
		CQt.QCommonStyle_UnpolishWithApplication(this.nativePtr, (application == null) ? null : (void*)application.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QCommonStyle_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QCommonStyle_Tr3(s, c, n);
	}
	
	public libqt_string Name()
	{
		return CQt.QStyle_Name(this.nativePtr);
	}
	
	public virtual void PolishWithApplication(IQApplication application)
	{
		CQt.QStyle_PolishWithApplication(this.nativePtr, (application == null) ? null : (void*)application.NativePtr);
	}
	
	public virtual void PolishWithPalette(IQPalette palette)
	{
		CQt.QStyle_PolishWithPalette(this.nativePtr, (palette == default) ? default : (void*)palette.NativePtr);
	}
	
	public virtual void ItemTextRect(IQFontMetrics fm, IQRect r, int32 flags, bool enabled, String text)
	{
		CQt.QStyle_ItemTextRect(this.nativePtr, (fm == default) ? default : (void*)fm.NativePtr, (r == default) ? default : (void*)r.NativePtr, flags, enabled, libqt_string(text));
	}
	
	public virtual void ItemPixmapRect(IQRect r, int32 flags, IQPixmap pixmap)
	{
		CQt.QStyle_ItemPixmapRect(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public virtual void DrawItemText(IQPainter painter, IQRect rect, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		CQt.QStyle_DrawItemText(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, flags, (pal == default) ? default : (void*)pal.NativePtr, enabled, libqt_string(text), textRole);
	}
	
	public virtual void DrawItemPixmap(IQPainter painter, IQRect rect, int32 alignment, IQPixmap pixmap)
	{
		CQt.QStyle_DrawItemPixmap(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, alignment, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public virtual void StandardPalette()
	{
		CQt.QStyle_StandardPalette(this.nativePtr);
	}
	
	public static void VisualRect(int64 direction, IQRect boundingRect, IQRect logicalRect)
	{
		CQt.QStyle_VisualRect(direction, (boundingRect == default) ? default : (void*)boundingRect.NativePtr, (logicalRect == default) ? default : (void*)logicalRect.NativePtr);
	}
	
	public static void VisualPos(int64 direction, IQRect boundingRect, IQPoint logicalPos)
	{
		CQt.QStyle_VisualPos(direction, (boundingRect == default) ? default : (void*)boundingRect.NativePtr, (logicalPos == default) ? default : (void*)logicalPos.NativePtr);
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
	
	public static void AlignedRect(int64 direction, int64 alignment, IQSize size, IQRect rectangle)
	{
		CQt.QStyle_AlignedRect(direction, alignment, (size == default) ? default : (void*)size.NativePtr, (rectangle == default) ? default : (void*)rectangle.NativePtr);
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
	
	public int32 CombinedLayoutSpacing4(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option)
	{
		return CQt.QStyle_CombinedLayoutSpacing4(this.nativePtr, controls1, controls2, orientation, (option == null) ? null : (void*)option.NativePtr);
	}
	
	public int32 CombinedLayoutSpacing5(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return CQt.QStyle_CombinedLayoutSpacing5(this.nativePtr, controls1, controls2, orientation, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
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
	[LinkName("QCommonStyle_new")]
	public static extern void* QCommonStyle_new();
	[LinkName("QCommonStyle_MetaObject")]
	public static extern void* QCommonStyle_MetaObject(void* c_this);
	[LinkName("QCommonStyle_Metacast")]
	public static extern void* QCommonStyle_Metacast(void* c_this, char8* param1);
	[LinkName("QCommonStyle_Metacall")]
	public static extern int32 QCommonStyle_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QCommonStyle_Tr")]
	public static extern libqt_string QCommonStyle_Tr(char8* s);
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
	public static extern libqt_string QCommonStyle_Tr2(char8* s, char8* c);
	[LinkName("QCommonStyle_Tr3")]
	public static extern libqt_string QCommonStyle_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QCommonStyle_Delete")]
	public static extern void QCommonStyle_Delete(void* self);
}