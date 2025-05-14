using System;
using System.Interop;
namespace Qt;

public interface IQProxyStyle
{
	void* NativePtr { get; }
}
public struct QProxyStylePtr : IQProxyStyle, IDisposable, IQCommonStyle
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QProxyStyle_new());
	}
	
	public void Dispose()
	{
		CQt.QProxyStyle_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QProxyStyle_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QProxyStyle_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QProxyStyle_Metacall(this.nativePtr, (int64)param1, param2, param3);
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
		CQt.QProxyStyle_SetBaseStyle(this.nativePtr, (style == default || style.NativePtr == default) ? default : style.NativePtr);
	}
	
	public void DrawPrimitive(int64 element, IQStyleOption option, IQPainter painter, IQWidget widget)
	{
		CQt.QProxyStyle_DrawPrimitive(this.nativePtr, (int64)element, (option == default || option.NativePtr == default) ? default : option.NativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void DrawControl(int64 element, IQStyleOption option, IQPainter painter, IQWidget widget)
	{
		CQt.QProxyStyle_DrawControl(this.nativePtr, (int64)element, (option == default || option.NativePtr == default) ? default : option.NativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void DrawComplexControl(int64 control, IQStyleOptionComplex option, IQPainter painter, IQWidget widget)
	{
		CQt.QProxyStyle_DrawComplexControl(this.nativePtr, (int64)control, (option == default || option.NativePtr == default) ? default : option.NativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void DrawItemText(IQPainter painter, IQRect rect, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		CQt.QProxyStyle_DrawItemText(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, flags, (pal == default || pal.NativePtr == default) ? default : pal.NativePtr, enabled, libqt_string(text), (int64)textRole);
	}
	
	public void DrawItemPixmap(IQPainter painter, IQRect rect, int32 alignment, IQPixmap pixmap)
	{
		CQt.QProxyStyle_DrawItemPixmap(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, alignment, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void SizeFromContents(int64 typeVal, IQStyleOption option, IQSize size, IQWidget widget)
	{
		CQt.QProxyStyle_SizeFromContents(this.nativePtr, (int64)typeVal, (option == default || option.NativePtr == default) ? default : option.NativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void SubElementRect(int64 element, IQStyleOption option, IQWidget widget)
	{
		CQt.QProxyStyle_SubElementRect(this.nativePtr, (int64)element, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void SubControlRect(int64 cc, IQStyleOptionComplex opt, int64 sc, IQWidget widget)
	{
		CQt.QProxyStyle_SubControlRect(this.nativePtr, (int64)cc, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (int64)sc, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void ItemTextRect(IQFontMetrics fm, IQRect r, int32 flags, bool enabled, String text)
	{
		CQt.QProxyStyle_ItemTextRect(this.nativePtr, (fm == default || fm.NativePtr == default) ? default : fm.NativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, enabled, libqt_string(text));
	}
	
	public void ItemPixmapRect(IQRect r, int32 flags, IQPixmap pixmap)
	{
		CQt.QProxyStyle_ItemPixmapRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public int64 HitTestComplexControl(int64 control, IQStyleOptionComplex option, IQPoint pos, IQWidget widget)
	{
		return CQt.QProxyStyle_HitTestComplexControl(this.nativePtr, (int64)control, (option == default || option.NativePtr == default) ? default : option.NativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int32 StyleHint(int64 hint, IQStyleOption option, IQWidget widget, IQStyleHintReturn returnData)
	{
		return CQt.QProxyStyle_StyleHint(this.nativePtr, (int64)hint, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, (returnData == default || returnData.NativePtr == default) ? default : returnData.NativePtr);
	}
	
	public int32 PixelMetric(int64 metric, IQStyleOption option, IQWidget widget)
	{
		return CQt.QProxyStyle_PixelMetric(this.nativePtr, (int64)metric, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return CQt.QProxyStyle_LayoutSpacing(this.nativePtr, (int64)control1, (int64)control2, (int64)orientation, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void StandardIcon(int64 standardIcon, IQStyleOption option, IQWidget widget)
	{
		CQt.QProxyStyle_StandardIcon(this.nativePtr, (int64)standardIcon, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void StandardPixmap(int64 standardPixmap, IQStyleOption opt, IQWidget widget)
	{
		CQt.QProxyStyle_StandardPixmap(this.nativePtr, (int64)standardPixmap, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void GeneratedIconPixmap(int64 iconMode, IQPixmap pixmap, IQStyleOption opt)
	{
		CQt.QProxyStyle_GeneratedIconPixmap(this.nativePtr, (int64)iconMode, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr);
	}
	
	public void StandardPalette()
	{
		CQt.QProxyStyle_StandardPalette(this.nativePtr);
	}
	
	public void Polish(IQWidget widget)
	{
		CQt.QProxyStyle_Polish(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void PolishWithPal(IQPalette pal)
	{
		CQt.QProxyStyle_PolishWithPal(this.nativePtr, (pal == default || pal.NativePtr == default) ? default : pal.NativePtr);
	}
	
	public void PolishWithApp(IQApplication app)
	{
		CQt.QProxyStyle_PolishWithApp(this.nativePtr, (app == default || app.NativePtr == default) ? default : app.NativePtr);
	}
	
	public void Unpolish(IQWidget widget)
	{
		CQt.QProxyStyle_Unpolish(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void UnpolishWithApp(IQApplication app)
	{
		CQt.QProxyStyle_UnpolishWithApp(this.nativePtr, (app == default || app.NativePtr == default) ? default : app.NativePtr);
	}
	
	public bool Event(IQEvent e)
	{
		return CQt.QProxyStyle_Event(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QProxyStyle_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QProxyStyle_Tr3(s, c, n);
	}
	
	public void PolishWithWidget(IQWidget widget)
	{
		CQt.QCommonStyle_PolishWithWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void UnpolishWithApplication(IQApplication application)
	{
		CQt.QCommonStyle_UnpolishWithApplication(this.nativePtr, (application == default || application.NativePtr == default) ? default : application.NativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QStyle_Name(this.nativePtr);
	}
	
	public void PolishWithApplication(IQApplication application)
	{
		CQt.QStyle_PolishWithApplication(this.nativePtr, (application == default || application.NativePtr == default) ? default : application.NativePtr);
	}
	
	public void PolishWithPalette(IQPalette palette)
	{
		CQt.QStyle_PolishWithPalette(this.nativePtr, (palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public static void VisualRect(int64 direction, IQRect boundingRect, IQRect logicalRect)
	{
		CQt.QStyle_VisualRect((int64)direction, (boundingRect == default || boundingRect.NativePtr == default) ? default : boundingRect.NativePtr, (logicalRect == default || logicalRect.NativePtr == default) ? default : logicalRect.NativePtr);
	}
	
	public static void VisualPos(int64 direction, IQRect boundingRect, IQPoint logicalPos)
	{
		CQt.QStyle_VisualPos((int64)direction, (boundingRect == default || boundingRect.NativePtr == default) ? default : boundingRect.NativePtr, (logicalPos == default || logicalPos.NativePtr == default) ? default : logicalPos.NativePtr);
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
		return CQt.QStyle_VisualAlignment((int64)direction, alignment);
	}
	
	public static void AlignedRect(int64 direction, int64 alignment, IQSize size, IQRect rectangle)
	{
		CQt.QStyle_AlignedRect((int64)direction, alignment, (size == default || size.NativePtr == default) ? default : size.NativePtr, (rectangle == default || rectangle.NativePtr == default) ? default : rectangle.NativePtr);
	}
	
	public int32 CombinedLayoutSpacing(int64 controls1, int64 controls2, int64 orientation)
	{
		return CQt.QStyle_CombinedLayoutSpacing(this.nativePtr, controls1, controls2, (int64)orientation);
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
		return CQt.QStyle_CombinedLayoutSpacing4(this.nativePtr, controls1, controls2, (int64)orientation, (option == default || option.NativePtr == default) ? default : option.NativePtr);
	}
	
	public int32 CombinedLayoutSpacing5(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return CQt.QStyle_CombinedLayoutSpacing5(this.nativePtr, controls1, controls2, (int64)orientation, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
public class QProxyStyle
{
	public QProxyStylePtr handle;
	
	public static implicit operator QProxyStylePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QProxyStylePtr.New();
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
		return QProxyStylePtr.Tr(s);
	}
	
	public void* BaseStyle()
	{
		return this.handle.BaseStyle();
	}
	
	public void SetBaseStyle(IQStyle style)
	{
		this.handle.SetBaseStyle(style);
	}
	
	public virtual void DrawPrimitive(int64 element, IQStyleOption option, IQPainter painter, IQWidget widget)
	{
		this.handle.DrawPrimitive(element, option, painter, widget);
	}
	
	public virtual void DrawControl(int64 element, IQStyleOption option, IQPainter painter, IQWidget widget)
	{
		this.handle.DrawControl(element, option, painter, widget);
	}
	
	public virtual void DrawComplexControl(int64 control, IQStyleOptionComplex option, IQPainter painter, IQWidget widget)
	{
		this.handle.DrawComplexControl(control, option, painter, widget);
	}
	
	public virtual void DrawItemText(IQPainter painter, IQRect rect, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		this.handle.DrawItemText(painter, rect, flags, pal, enabled, text, textRole);
	}
	
	public virtual void DrawItemPixmap(IQPainter painter, IQRect rect, int32 alignment, IQPixmap pixmap)
	{
		this.handle.DrawItemPixmap(painter, rect, alignment, pixmap);
	}
	
	public virtual void SizeFromContents(int64 typeVal, IQStyleOption option, IQSize size, IQWidget widget)
	{
		this.handle.SizeFromContents(typeVal, option, size, widget);
	}
	
	public virtual void SubElementRect(int64 element, IQStyleOption option, IQWidget widget)
	{
		this.handle.SubElementRect(element, option, widget);
	}
	
	public virtual void SubControlRect(int64 cc, IQStyleOptionComplex opt, int64 sc, IQWidget widget)
	{
		this.handle.SubControlRect(cc, opt, sc, widget);
	}
	
	public virtual void ItemTextRect(IQFontMetrics fm, IQRect r, int32 flags, bool enabled, String text)
	{
		this.handle.ItemTextRect(fm, r, flags, enabled, text);
	}
	
	public virtual void ItemPixmapRect(IQRect r, int32 flags, IQPixmap pixmap)
	{
		this.handle.ItemPixmapRect(r, flags, pixmap);
	}
	
	public virtual int64 HitTestComplexControl(int64 control, IQStyleOptionComplex option, IQPoint pos, IQWidget widget)
	{
		return this.handle.HitTestComplexControl(control, option, pos, widget);
	}
	
	public virtual int32 StyleHint(int64 hint, IQStyleOption option, IQWidget widget, IQStyleHintReturn returnData)
	{
		return this.handle.StyleHint(hint, option, widget, returnData);
	}
	
	public virtual int32 PixelMetric(int64 metric, IQStyleOption option, IQWidget widget)
	{
		return this.handle.PixelMetric(metric, option, widget);
	}
	
	public virtual int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return this.handle.LayoutSpacing(control1, control2, orientation, option, widget);
	}
	
	public virtual void StandardIcon(int64 standardIcon, IQStyleOption option, IQWidget widget)
	{
		this.handle.StandardIcon(standardIcon, option, widget);
	}
	
	public virtual void StandardPixmap(int64 standardPixmap, IQStyleOption opt, IQWidget widget)
	{
		this.handle.StandardPixmap(standardPixmap, opt, widget);
	}
	
	public virtual void GeneratedIconPixmap(int64 iconMode, IQPixmap pixmap, IQStyleOption opt)
	{
		this.handle.GeneratedIconPixmap(iconMode, pixmap, opt);
	}
	
	public virtual void StandardPalette()
	{
		this.handle.StandardPalette();
	}
	
	public virtual void Polish(IQWidget widget)
	{
		this.handle.Polish(widget);
	}
	
	public virtual void PolishWithPal(IQPalette pal)
	{
		this.handle.PolishWithPal(pal);
	}
	
	public virtual void PolishWithApp(IQApplication app)
	{
		this.handle.PolishWithApp(app);
	}
	
	public virtual void Unpolish(IQWidget widget)
	{
		this.handle.Unpolish(widget);
	}
	
	public virtual void UnpolishWithApp(IQApplication app)
	{
		this.handle.UnpolishWithApp(app);
	}
	
	public virtual bool Event(IQEvent e)
	{
		return this.handle.Event(e);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QProxyStylePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QProxyStylePtr.Tr3(s, c, n);
	}
	
	public virtual void PolishWithWidget(IQWidget widget)
	{
		this.handle.PolishWithWidget(widget);
	}
	
	public virtual void UnpolishWithApplication(IQApplication application)
	{
		this.handle.UnpolishWithApplication(application);
	}
	
	public libqt_string Name()
	{
		return this.handle.Name();
	}
	
	public virtual void PolishWithApplication(IQApplication application)
	{
		this.handle.PolishWithApplication(application);
	}
	
	public virtual void PolishWithPalette(IQPalette palette)
	{
		this.handle.PolishWithPalette(palette);
	}
	
	public static void VisualRect(int64 direction, IQRect boundingRect, IQRect logicalRect)
	{
		QProxyStylePtr.VisualRect(direction, boundingRect, logicalRect);
	}
	
	public static void VisualPos(int64 direction, IQRect boundingRect, IQPoint logicalPos)
	{
		QProxyStylePtr.VisualPos(direction, boundingRect, logicalPos);
	}
	
	public static int32 SliderPositionFromValue(int32 min, int32 max, int32 val, int32 space)
	{
		return QProxyStylePtr.SliderPositionFromValue(min, max, val, space);
	}
	
	public static int32 SliderValueFromPosition(int32 min, int32 max, int32 pos, int32 space)
	{
		return QProxyStylePtr.SliderValueFromPosition(min, max, pos, space);
	}
	
	public static int64 VisualAlignment(int64 direction, int64 alignment)
	{
		return QProxyStylePtr.VisualAlignment(direction, alignment);
	}
	
	public static void AlignedRect(int64 direction, int64 alignment, IQSize size, IQRect rectangle)
	{
		QProxyStylePtr.AlignedRect(direction, alignment, size, rectangle);
	}
	
	public int32 CombinedLayoutSpacing(int64 controls1, int64 controls2, int64 orientation)
	{
		return this.handle.CombinedLayoutSpacing(controls1, controls2, orientation);
	}
	
	public void* Proxy()
	{
		return this.handle.Proxy();
	}
	
	public static int32 SliderPositionFromValue5(int32 min, int32 max, int32 val, int32 space, bool upsideDown)
	{
		return QProxyStylePtr.SliderPositionFromValue5(min, max, val, space, upsideDown);
	}
	
	public static int32 SliderValueFromPosition5(int32 min, int32 max, int32 pos, int32 space, bool upsideDown)
	{
		return QProxyStylePtr.SliderValueFromPosition5(min, max, pos, space, upsideDown);
	}
	
	public int32 CombinedLayoutSpacing4(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option)
	{
		return this.handle.CombinedLayoutSpacing4(controls1, controls2, orientation, option);
	}
	
	public int32 CombinedLayoutSpacing5(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return this.handle.CombinedLayoutSpacing5(controls1, controls2, orientation, option, widget);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
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
		QProxyStylePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QProxyStylePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QProxyStylePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QProxyStylePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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