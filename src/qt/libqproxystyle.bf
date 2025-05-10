using System;
using System.Interop;
namespace Qt;

public interface IQProxyStyle
{
	void* NativePtr { get; }
}
public class QProxyStyle : IQProxyStyle, IQCommonStyle
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QProxyStyle_new();
	}
	
	public ~this()
	{
		CQt.QProxyStyle_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QProxyStyle_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QProxyStyle_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QProxyStyle_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QProxyStyle_Tr(s);
	}
	
	public void* BaseStyle()
	{
		return CQt.QProxyStyle_BaseStyle(this.nativePtr);
	}
	
	public void SetBaseStyle(IQStyle style)
	{
		CQt.QProxyStyle_SetBaseStyle(this.nativePtr, (style == null) ? null : (void*)style.NativePtr);
	}
	
	public virtual void DrawPrimitive(int64 element, IQStyleOption option, IQPainter painter, IQWidget widget)
	{
		CQt.QProxyStyle_DrawPrimitive(this.nativePtr, element, (option == null) ? null : (void*)option.NativePtr, (painter == null) ? null : (void*)painter.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void DrawControl(int64 element, IQStyleOption option, IQPainter painter, IQWidget widget)
	{
		CQt.QProxyStyle_DrawControl(this.nativePtr, element, (option == null) ? null : (void*)option.NativePtr, (painter == null) ? null : (void*)painter.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void DrawComplexControl(int64 control, IQStyleOptionComplex option, IQPainter painter, IQWidget widget)
	{
		CQt.QProxyStyle_DrawComplexControl(this.nativePtr, control, (option == null) ? null : (void*)option.NativePtr, (painter == null) ? null : (void*)painter.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void DrawItemText(IQPainter painter, IQRect rect, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		CQt.QProxyStyle_DrawItemText(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, flags, (pal == default) ? default : (void*)pal.NativePtr, enabled, libqt_string(text), textRole);
	}
	
	public virtual void DrawItemPixmap(IQPainter painter, IQRect rect, int32 alignment, IQPixmap pixmap)
	{
		CQt.QProxyStyle_DrawItemPixmap(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (rect == default) ? default : (void*)rect.NativePtr, alignment, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public virtual void SizeFromContents(int64 typeVal, IQStyleOption option, IQSize size, IQWidget widget)
	{
		CQt.QProxyStyle_SizeFromContents(this.nativePtr, typeVal, (option == null) ? null : (void*)option.NativePtr, (size == default) ? default : (void*)size.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void SubElementRect(int64 element, IQStyleOption option, IQWidget widget)
	{
		CQt.QProxyStyle_SubElementRect(this.nativePtr, element, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void SubControlRect(int64 cc, IQStyleOptionComplex opt, int64 sc, IQWidget widget)
	{
		CQt.QProxyStyle_SubControlRect(this.nativePtr, cc, (opt == null) ? null : (void*)opt.NativePtr, sc, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void ItemTextRect(IQFontMetrics fm, IQRect r, int32 flags, bool enabled, String text)
	{
		CQt.QProxyStyle_ItemTextRect(this.nativePtr, (fm == default) ? default : (void*)fm.NativePtr, (r == default) ? default : (void*)r.NativePtr, flags, enabled, libqt_string(text));
	}
	
	public virtual void ItemPixmapRect(IQRect r, int32 flags, IQPixmap pixmap)
	{
		CQt.QProxyStyle_ItemPixmapRect(this.nativePtr, (r == default) ? default : (void*)r.NativePtr, flags, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public virtual int64 HitTestComplexControl(int64 control, IQStyleOptionComplex option, IQPoint pos, IQWidget widget)
	{
		return CQt.QProxyStyle_HitTestComplexControl(this.nativePtr, control, (option == null) ? null : (void*)option.NativePtr, (pos == default) ? default : (void*)pos.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual int32 StyleHint(int64 hint, IQStyleOption option, IQWidget widget, IQStyleHintReturn returnData)
	{
		return CQt.QProxyStyle_StyleHint(this.nativePtr, hint, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr, (returnData == null) ? null : (void*)returnData.NativePtr);
	}
	
	public virtual int32 PixelMetric(int64 metric, IQStyleOption option, IQWidget widget)
	{
		return CQt.QProxyStyle_PixelMetric(this.nativePtr, metric, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return CQt.QProxyStyle_LayoutSpacing(this.nativePtr, control1, control2, orientation, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void StandardIcon(int64 standardIcon, IQStyleOption option, IQWidget widget)
	{
		CQt.QProxyStyle_StandardIcon(this.nativePtr, standardIcon, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void StandardPixmap(int64 standardPixmap, IQStyleOption opt, IQWidget widget)
	{
		CQt.QProxyStyle_StandardPixmap(this.nativePtr, standardPixmap, (opt == null) ? null : (void*)opt.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void GeneratedIconPixmap(int64 iconMode, IQPixmap pixmap, IQStyleOption opt)
	{
		CQt.QProxyStyle_GeneratedIconPixmap(this.nativePtr, iconMode, (pixmap == default) ? default : (void*)pixmap.NativePtr, (opt == null) ? null : (void*)opt.NativePtr);
	}
	
	public virtual void StandardPalette()
	{
		CQt.QProxyStyle_StandardPalette(this.nativePtr);
	}
	
	public virtual void Polish(IQWidget widget)
	{
		CQt.QProxyStyle_Polish(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void PolishWithPal(IQPalette pal)
	{
		CQt.QProxyStyle_PolishWithPal(this.nativePtr, (pal == default) ? default : (void*)pal.NativePtr);
	}
	
	public virtual void PolishWithApp(IQApplication app)
	{
		CQt.QProxyStyle_PolishWithApp(this.nativePtr, (app == null) ? null : (void*)app.NativePtr);
	}
	
	public virtual void Unpolish(IQWidget widget)
	{
		CQt.QProxyStyle_Unpolish(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void UnpolishWithApp(IQApplication app)
	{
		CQt.QProxyStyle_UnpolishWithApp(this.nativePtr, (app == null) ? null : (void*)app.NativePtr);
	}
	
	public virtual bool Event(IQEvent e)
	{
		return CQt.QProxyStyle_Event(this.nativePtr, (e == null) ? null : (void*)e.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QProxyStyle_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QProxyStyle_Tr3(s, c, n);
	}
	
	public virtual void PolishWithWidget(IQWidget widget)
	{
		CQt.QCommonStyle_PolishWithWidget(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void UnpolishWithApplication(IQApplication application)
	{
		CQt.QCommonStyle_UnpolishWithApplication(this.nativePtr, (application == null) ? null : (void*)application.NativePtr);
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
	[LinkName("QProxyStyle_new")]
	public static extern void* QProxyStyle_new();
	[LinkName("QProxyStyle_new2")]
	public static extern void* QProxyStyle_new2(libqt_string key);
	[LinkName("QProxyStyle_new3")]
	public static extern void* QProxyStyle_new3(void* style);
	[LinkName("QProxyStyle_MetaObject")]
	public static extern void* QProxyStyle_MetaObject(void* c_this);
	[LinkName("QProxyStyle_Metacast")]
	public static extern void* QProxyStyle_Metacast(void* c_this, char8* param1);
	[LinkName("QProxyStyle_Metacall")]
	public static extern int32 QProxyStyle_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QProxyStyle_Tr")]
	public static extern libqt_string QProxyStyle_Tr(char8* s);
	[LinkName("QProxyStyle_BaseStyle")]
	public static extern void* QProxyStyle_BaseStyle(void* c_this);
	[LinkName("QProxyStyle_SetBaseStyle")]
	public static extern void QProxyStyle_SetBaseStyle(void* c_this, void* style);
	[LinkName("QProxyStyle_DrawPrimitive")]
	public static extern void QProxyStyle_DrawPrimitive(void* c_this, int64 element, void* option, void* painter, void* widget);
	[LinkName("QProxyStyle_DrawControl")]
	public static extern void QProxyStyle_DrawControl(void* c_this, int64 element, void* option, void* painter, void* widget);
	[LinkName("QProxyStyle_DrawComplexControl")]
	public static extern void QProxyStyle_DrawComplexControl(void* c_this, int64 control, void* option, void* painter, void* widget);
	[LinkName("QProxyStyle_DrawItemText")]
	public static extern void QProxyStyle_DrawItemText(void* c_this, void* painter, void* rect, int32 flags, void* pal, bool enabled, libqt_string text, int64 textRole);
	[LinkName("QProxyStyle_DrawItemPixmap")]
	public static extern void QProxyStyle_DrawItemPixmap(void* c_this, void* painter, void* rect, int32 alignment, void* pixmap);
	[LinkName("QProxyStyle_SizeFromContents")]
	public static extern void QProxyStyle_SizeFromContents(void* c_this, int64 typeVal, void* option, void* size, void* widget);
	[LinkName("QProxyStyle_SubElementRect")]
	public static extern void QProxyStyle_SubElementRect(void* c_this, int64 element, void* option, void* widget);
	[LinkName("QProxyStyle_SubControlRect")]
	public static extern void QProxyStyle_SubControlRect(void* c_this, int64 cc, void* opt, int64 sc, void* widget);
	[LinkName("QProxyStyle_ItemTextRect")]
	public static extern void QProxyStyle_ItemTextRect(void* c_this, void* fm, void* r, int32 flags, bool enabled, libqt_string text);
	[LinkName("QProxyStyle_ItemPixmapRect")]
	public static extern void QProxyStyle_ItemPixmapRect(void* c_this, void* r, int32 flags, void* pixmap);
	[LinkName("QProxyStyle_HitTestComplexControl")]
	public static extern int64 QProxyStyle_HitTestComplexControl(void* c_this, int64 control, void* option, void* pos, void* widget);
	[LinkName("QProxyStyle_StyleHint")]
	public static extern int32 QProxyStyle_StyleHint(void* c_this, int64 hint, void* option, void* widget, void* returnData);
	[LinkName("QProxyStyle_PixelMetric")]
	public static extern int32 QProxyStyle_PixelMetric(void* c_this, int64 metric, void* option, void* widget);
	[LinkName("QProxyStyle_LayoutSpacing")]
	public static extern int32 QProxyStyle_LayoutSpacing(void* c_this, int64 control1, int64 control2, int64 orientation, void* option, void* widget);
	[LinkName("QProxyStyle_StandardIcon")]
	public static extern void QProxyStyle_StandardIcon(void* c_this, int64 standardIcon, void* option, void* widget);
	[LinkName("QProxyStyle_StandardPixmap")]
	public static extern void QProxyStyle_StandardPixmap(void* c_this, int64 standardPixmap, void* opt, void* widget);
	[LinkName("QProxyStyle_GeneratedIconPixmap")]
	public static extern void QProxyStyle_GeneratedIconPixmap(void* c_this, int64 iconMode, void* pixmap, void* opt);
	[LinkName("QProxyStyle_StandardPalette")]
	public static extern void QProxyStyle_StandardPalette(void* c_this);
	[LinkName("QProxyStyle_Polish")]
	public static extern void QProxyStyle_Polish(void* c_this, void* widget);
	[LinkName("QProxyStyle_PolishWithPal")]
	public static extern void QProxyStyle_PolishWithPal(void* c_this, void* pal);
	[LinkName("QProxyStyle_PolishWithApp")]
	public static extern void QProxyStyle_PolishWithApp(void* c_this, void* app);
	[LinkName("QProxyStyle_Unpolish")]
	public static extern void QProxyStyle_Unpolish(void* c_this, void* widget);
	[LinkName("QProxyStyle_UnpolishWithApp")]
	public static extern void QProxyStyle_UnpolishWithApp(void* c_this, void* app);
	[LinkName("QProxyStyle_Event")]
	public static extern bool QProxyStyle_Event(void* c_this, void* e);
	[LinkName("QProxyStyle_Tr2")]
	public static extern libqt_string QProxyStyle_Tr2(char8* s, char8* c);
	[LinkName("QProxyStyle_Tr3")]
	public static extern libqt_string QProxyStyle_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QProxyStyle_Delete")]
	public static extern void QProxyStyle_Delete(void* self);
}