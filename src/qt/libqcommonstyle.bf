using System;
using System.Interop;
namespace Qt;

public interface IQCommonStyle
{
	void* NativePtr { get; }
}
public struct QCommonStylePtr : IQCommonStyle, IDisposable, IQStyle
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCommonStyle_new());
	}
	
	public void Dispose()
	{
		CQt.QCommonStyle_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QCommonStyle_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QCommonStyle_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QCommonStyle_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QCommonStyle_Tr(s);
	}
	
	public void DrawPrimitive(int64 pe, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		CQt.QCommonStyle_DrawPrimitive(this.nativePtr, (int64)pe, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void DrawControl(int64 element, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		CQt.QCommonStyle_DrawControl(this.nativePtr, (int64)element, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void SubElementRect(int64 r, IQStyleOption opt, IQWidget widget)
	{
		CQt.QCommonStyle_SubElementRect(this.nativePtr, (int64)r, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void DrawComplexControl(int64 cc, IQStyleOptionComplex opt, IQPainter p, IQWidget w)
	{
		CQt.QCommonStyle_DrawComplexControl(this.nativePtr, (int64)cc, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public int64 HitTestComplexControl(int64 cc, IQStyleOptionComplex opt, IQPoint pt, IQWidget w)
	{
		return CQt.QCommonStyle_HitTestComplexControl(this.nativePtr, (int64)cc, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void SubControlRect(int64 cc, IQStyleOptionComplex opt, int64 sc, IQWidget w)
	{
		CQt.QCommonStyle_SubControlRect(this.nativePtr, (int64)cc, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (int64)sc, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void SizeFromContents(int64 ct, IQStyleOption opt, IQSize contentsSize, IQWidget widget)
	{
		CQt.QCommonStyle_SizeFromContents(this.nativePtr, (int64)ct, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (contentsSize == default || contentsSize.NativePtr == default) ? default : contentsSize.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int32 PixelMetric(int64 m, IQStyleOption opt, IQWidget widget)
	{
		return CQt.QCommonStyle_PixelMetric(this.nativePtr, (int64)m, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int32 StyleHint(int64 sh, IQStyleOption opt, IQWidget w, IQStyleHintReturn shret)
	{
		return CQt.QCommonStyle_StyleHint(this.nativePtr, (int64)sh, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr, (shret == default || shret.NativePtr == default) ? default : shret.NativePtr);
	}
	
	public void StandardIcon(int64 standardIcon, IQStyleOption opt, IQWidget widget)
	{
		CQt.QCommonStyle_StandardIcon(this.nativePtr, (int64)standardIcon, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void StandardPixmap(int64 sp, IQStyleOption opt, IQWidget widget)
	{
		CQt.QCommonStyle_StandardPixmap(this.nativePtr, (int64)sp, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void GeneratedIconPixmap(int64 iconMode, IQPixmap pixmap, IQStyleOption opt)
	{
		CQt.QCommonStyle_GeneratedIconPixmap(this.nativePtr, (int64)iconMode, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr, (opt == default || opt.NativePtr == default) ? default : opt.NativePtr);
	}
	
	public int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return CQt.QCommonStyle_LayoutSpacing(this.nativePtr, (int64)control1, (int64)control2, (int64)orientation, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void Polish(IQPalette param1)
	{
		CQt.QCommonStyle_Polish(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void PolishWithApp(IQApplication app)
	{
		CQt.QCommonStyle_PolishWithApp(this.nativePtr, (app == default || app.NativePtr == default) ? default : app.NativePtr);
	}
	
	public void PolishWithWidget(IQWidget widget)
	{
		CQt.QCommonStyle_PolishWithWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void Unpolish(IQWidget widget)
	{
		CQt.QCommonStyle_Unpolish(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void UnpolishWithApplication(IQApplication application)
	{
		CQt.QCommonStyle_UnpolishWithApplication(this.nativePtr, (application == default || application.NativePtr == default) ? default : application.NativePtr);
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
	
	public void PolishWithApplication(IQApplication application)
	{
		CQt.QStyle_PolishWithApplication(this.nativePtr, (application == default || application.NativePtr == default) ? default : application.NativePtr);
	}
	
	public void PolishWithPalette(IQPalette palette)
	{
		CQt.QStyle_PolishWithPalette(this.nativePtr, (palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public void ItemTextRect(IQFontMetrics fm, IQRect r, int32 flags, bool enabled, String text)
	{
		CQt.QStyle_ItemTextRect(this.nativePtr, (fm == default || fm.NativePtr == default) ? default : fm.NativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, enabled, libqt_string(text));
	}
	
	public void ItemPixmapRect(IQRect r, int32 flags, IQPixmap pixmap)
	{
		CQt.QStyle_ItemPixmapRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr, flags, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void DrawItemText(IQPainter painter, IQRect rect, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		CQt.QStyle_DrawItemText(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, flags, (pal == default || pal.NativePtr == default) ? default : pal.NativePtr, enabled, libqt_string(text), (int64)textRole);
	}
	
	public void DrawItemPixmap(IQPainter painter, IQRect rect, int32 alignment, IQPixmap pixmap)
	{
		CQt.QStyle_DrawItemPixmap(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, alignment, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void StandardPalette()
	{
		CQt.QStyle_StandardPalette(this.nativePtr);
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
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
public class QCommonStyle
{
	public QCommonStylePtr handle;
	
	public static implicit operator QCommonStylePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCommonStylePtr.New();
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
		return QCommonStylePtr.Tr(s);
	}
	
	public virtual void DrawPrimitive(int64 pe, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		this.handle.DrawPrimitive(pe, opt, p, w);
	}
	
	public virtual void DrawControl(int64 element, IQStyleOption opt, IQPainter p, IQWidget w)
	{
		this.handle.DrawControl(element, opt, p, w);
	}
	
	public virtual void SubElementRect(int64 r, IQStyleOption opt, IQWidget widget)
	{
		this.handle.SubElementRect(r, opt, widget);
	}
	
	public virtual void DrawComplexControl(int64 cc, IQStyleOptionComplex opt, IQPainter p, IQWidget w)
	{
		this.handle.DrawComplexControl(cc, opt, p, w);
	}
	
	public virtual int64 HitTestComplexControl(int64 cc, IQStyleOptionComplex opt, IQPoint pt, IQWidget w)
	{
		return this.handle.HitTestComplexControl(cc, opt, pt, w);
	}
	
	public virtual void SubControlRect(int64 cc, IQStyleOptionComplex opt, int64 sc, IQWidget w)
	{
		this.handle.SubControlRect(cc, opt, sc, w);
	}
	
	public virtual void SizeFromContents(int64 ct, IQStyleOption opt, IQSize contentsSize, IQWidget widget)
	{
		this.handle.SizeFromContents(ct, opt, contentsSize, widget);
	}
	
	public virtual int32 PixelMetric(int64 m, IQStyleOption opt, IQWidget widget)
	{
		return this.handle.PixelMetric(m, opt, widget);
	}
	
	public virtual int32 StyleHint(int64 sh, IQStyleOption opt, IQWidget w, IQStyleHintReturn shret)
	{
		return this.handle.StyleHint(sh, opt, w, shret);
	}
	
	public virtual void StandardIcon(int64 standardIcon, IQStyleOption opt, IQWidget widget)
	{
		this.handle.StandardIcon(standardIcon, opt, widget);
	}
	
	public virtual void StandardPixmap(int64 sp, IQStyleOption opt, IQWidget widget)
	{
		this.handle.StandardPixmap(sp, opt, widget);
	}
	
	public virtual void GeneratedIconPixmap(int64 iconMode, IQPixmap pixmap, IQStyleOption opt)
	{
		this.handle.GeneratedIconPixmap(iconMode, pixmap, opt);
	}
	
	public virtual int32 LayoutSpacing(int64 control1, int64 control2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return this.handle.LayoutSpacing(control1, control2, orientation, option, widget);
	}
	
	public virtual void Polish(IQPalette param1)
	{
		this.handle.Polish(param1);
	}
	
	public virtual void PolishWithApp(IQApplication app)
	{
		this.handle.PolishWithApp(app);
	}
	
	public virtual void PolishWithWidget(IQWidget widget)
	{
		this.handle.PolishWithWidget(widget);
	}
	
	public virtual void Unpolish(IQWidget widget)
	{
		this.handle.Unpolish(widget);
	}
	
	public virtual void UnpolishWithApplication(IQApplication application)
	{
		this.handle.UnpolishWithApplication(application);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QCommonStylePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QCommonStylePtr.Tr3(s, c, n);
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
	
	public virtual void ItemTextRect(IQFontMetrics fm, IQRect r, int32 flags, bool enabled, String text)
	{
		this.handle.ItemTextRect(fm, r, flags, enabled, text);
	}
	
	public virtual void ItemPixmapRect(IQRect r, int32 flags, IQPixmap pixmap)
	{
		this.handle.ItemPixmapRect(r, flags, pixmap);
	}
	
	public virtual void DrawItemText(IQPainter painter, IQRect rect, int32 flags, IQPalette pal, bool enabled, String text, int64 textRole)
	{
		this.handle.DrawItemText(painter, rect, flags, pal, enabled, text, textRole);
	}
	
	public virtual void DrawItemPixmap(IQPainter painter, IQRect rect, int32 alignment, IQPixmap pixmap)
	{
		this.handle.DrawItemPixmap(painter, rect, alignment, pixmap);
	}
	
	public virtual void StandardPalette()
	{
		this.handle.StandardPalette();
	}
	
	public static void VisualRect(int64 direction, IQRect boundingRect, IQRect logicalRect)
	{
		QCommonStylePtr.VisualRect(direction, boundingRect, logicalRect);
	}
	
	public static void VisualPos(int64 direction, IQRect boundingRect, IQPoint logicalPos)
	{
		QCommonStylePtr.VisualPos(direction, boundingRect, logicalPos);
	}
	
	public static int32 SliderPositionFromValue(int32 min, int32 max, int32 val, int32 space)
	{
		return QCommonStylePtr.SliderPositionFromValue(min, max, val, space);
	}
	
	public static int32 SliderValueFromPosition(int32 min, int32 max, int32 pos, int32 space)
	{
		return QCommonStylePtr.SliderValueFromPosition(min, max, pos, space);
	}
	
	public static int64 VisualAlignment(int64 direction, int64 alignment)
	{
		return QCommonStylePtr.VisualAlignment(direction, alignment);
	}
	
	public static void AlignedRect(int64 direction, int64 alignment, IQSize size, IQRect rectangle)
	{
		QCommonStylePtr.AlignedRect(direction, alignment, size, rectangle);
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
		return QCommonStylePtr.SliderPositionFromValue5(min, max, val, space, upsideDown);
	}
	
	public static int32 SliderValueFromPosition5(int32 min, int32 max, int32 pos, int32 space, bool upsideDown)
	{
		return QCommonStylePtr.SliderValueFromPosition5(min, max, pos, space, upsideDown);
	}
	
	public int32 CombinedLayoutSpacing4(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option)
	{
		return this.handle.CombinedLayoutSpacing4(controls1, controls2, orientation, option);
	}
	
	public int32 CombinedLayoutSpacing5(int64 controls1, int64 controls2, int64 orientation, IQStyleOption option, IQWidget widget)
	{
		return this.handle.CombinedLayoutSpacing5(controls1, controls2, orientation, option, widget);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
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
		QCommonStylePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QCommonStylePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QCommonStylePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QCommonStylePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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