using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDateTimeEdit__Section
{
	NoSection = 0,
	AmPmSection = 1,
	MSecSection = 2,
	SecondSection = 4,
	MinuteSection = 8,
	HourSection = 16,
	DaySection = 256,
	MonthSection = 512,
	YearSection = 1024,
	TimeSections_Mask = 31,
	DateSections_Mask = 1792,
}
public interface IQDateTimeEdit
{
	void* NativePtr { get; }
}
public class QDateTimeEdit : IQDateTimeEdit, IQAbstractSpinBox
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget parent)
	{
		this.nativePtr = CQt.QDateTimeEdit_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QDateTimeEdit_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QDateTimeEdit_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QDateTimeEdit_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QDateTimeEdit_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QDateTimeEdit_Tr(s);
	}
	
	public void DateTime()
	{
		CQt.QDateTimeEdit_DateTime(this.nativePtr);
	}
	
	public void Date()
	{
		CQt.QDateTimeEdit_Date(this.nativePtr);
	}
	
	public void Time()
	{
		CQt.QDateTimeEdit_Time(this.nativePtr);
	}
	
	public void Calendar()
	{
		CQt.QDateTimeEdit_Calendar(this.nativePtr);
	}
	
	public void SetCalendar(IQCalendar calendar)
	{
		CQt.QDateTimeEdit_SetCalendar(this.nativePtr, (calendar == default) ? default : (void)calendar.NativePtr);
	}
	
	public void MinimumDateTime()
	{
		CQt.QDateTimeEdit_MinimumDateTime(this.nativePtr);
	}
	
	public void ClearMinimumDateTime()
	{
		CQt.QDateTimeEdit_ClearMinimumDateTime(this.nativePtr);
	}
	
	public void SetMinimumDateTime(IQDateTime dt)
	{
		CQt.QDateTimeEdit_SetMinimumDateTime(this.nativePtr, (dt == default) ? default : (void*)dt.NativePtr);
	}
	
	public void MaximumDateTime()
	{
		CQt.QDateTimeEdit_MaximumDateTime(this.nativePtr);
	}
	
	public void ClearMaximumDateTime()
	{
		CQt.QDateTimeEdit_ClearMaximumDateTime(this.nativePtr);
	}
	
	public void SetMaximumDateTime(IQDateTime dt)
	{
		CQt.QDateTimeEdit_SetMaximumDateTime(this.nativePtr, (dt == default) ? default : (void*)dt.NativePtr);
	}
	
	public void SetDateTimeRange(IQDateTime min, IQDateTime max)
	{
		CQt.QDateTimeEdit_SetDateTimeRange(this.nativePtr, (min == default) ? default : (void*)min.NativePtr, (max == default) ? default : (void*)max.NativePtr);
	}
	
	public void MinimumDate()
	{
		CQt.QDateTimeEdit_MinimumDate(this.nativePtr);
	}
	
	public void SetMinimumDate(IQDate min)
	{
		CQt.QDateTimeEdit_SetMinimumDate(this.nativePtr, (min == default) ? default : (void)min.NativePtr);
	}
	
	public void ClearMinimumDate()
	{
		CQt.QDateTimeEdit_ClearMinimumDate(this.nativePtr);
	}
	
	public void MaximumDate()
	{
		CQt.QDateTimeEdit_MaximumDate(this.nativePtr);
	}
	
	public void SetMaximumDate(IQDate max)
	{
		CQt.QDateTimeEdit_SetMaximumDate(this.nativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void ClearMaximumDate()
	{
		CQt.QDateTimeEdit_ClearMaximumDate(this.nativePtr);
	}
	
	public void SetDateRange(IQDate min, IQDate max)
	{
		CQt.QDateTimeEdit_SetDateRange(this.nativePtr, (min == default) ? default : (void)min.NativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void MinimumTime()
	{
		CQt.QDateTimeEdit_MinimumTime(this.nativePtr);
	}
	
	public void SetMinimumTime(IQTime min)
	{
		CQt.QDateTimeEdit_SetMinimumTime(this.nativePtr, (min == default) ? default : (void)min.NativePtr);
	}
	
	public void ClearMinimumTime()
	{
		CQt.QDateTimeEdit_ClearMinimumTime(this.nativePtr);
	}
	
	public void MaximumTime()
	{
		CQt.QDateTimeEdit_MaximumTime(this.nativePtr);
	}
	
	public void SetMaximumTime(IQTime max)
	{
		CQt.QDateTimeEdit_SetMaximumTime(this.nativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void ClearMaximumTime()
	{
		CQt.QDateTimeEdit_ClearMaximumTime(this.nativePtr);
	}
	
	public void SetTimeRange(IQTime min, IQTime max)
	{
		CQt.QDateTimeEdit_SetTimeRange(this.nativePtr, (min == default) ? default : (void)min.NativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public int64 DisplayedSections()
	{
		return CQt.QDateTimeEdit_DisplayedSections(this.nativePtr);
	}
	
	public int64 CurrentSection()
	{
		return CQt.QDateTimeEdit_CurrentSection(this.nativePtr);
	}
	
	public int64 SectionAt(int32 index)
	{
		return CQt.QDateTimeEdit_SectionAt(this.nativePtr, index);
	}
	
	public void SetCurrentSection(int64 section)
	{
		CQt.QDateTimeEdit_SetCurrentSection(this.nativePtr, section);
	}
	
	public int32 CurrentSectionIndex()
	{
		return CQt.QDateTimeEdit_CurrentSectionIndex(this.nativePtr);
	}
	
	public void SetCurrentSectionIndex(int32 index)
	{
		CQt.QDateTimeEdit_SetCurrentSectionIndex(this.nativePtr, index);
	}
	
	public void* CalendarWidget()
	{
		return CQt.QDateTimeEdit_CalendarWidget(this.nativePtr);
	}
	
	public void SetCalendarWidget(IQCalendarWidget calendarWidget)
	{
		CQt.QDateTimeEdit_SetCalendarWidget(this.nativePtr, (calendarWidget == null) ? null : (void*)calendarWidget.NativePtr);
	}
	
	public int32 SectionCount()
	{
		return CQt.QDateTimeEdit_SectionCount(this.nativePtr);
	}
	
	public void SetSelectedSection(int64 section)
	{
		CQt.QDateTimeEdit_SetSelectedSection(this.nativePtr, section);
	}
	
	public libqt_string SectionText(int64 section)
	{
		return CQt.QDateTimeEdit_SectionText(this.nativePtr, section);
	}
	
	public libqt_string DisplayFormat()
	{
		return CQt.QDateTimeEdit_DisplayFormat(this.nativePtr);
	}
	
	public void SetDisplayFormat(String format)
	{
		CQt.QDateTimeEdit_SetDisplayFormat(this.nativePtr, libqt_string(format));
	}
	
	public bool CalendarPopup()
	{
		return CQt.QDateTimeEdit_CalendarPopup(this.nativePtr);
	}
	
	public void SetCalendarPopup(bool enable)
	{
		CQt.QDateTimeEdit_SetCalendarPopup(this.nativePtr, enable);
	}
	
	public int64 TimeSpec()
	{
		return CQt.QDateTimeEdit_TimeSpec(this.nativePtr);
	}
	
	public void SetTimeSpec(int64 spec)
	{
		CQt.QDateTimeEdit_SetTimeSpec(this.nativePtr, spec);
	}
	
	public virtual void SizeHint()
	{
		CQt.QDateTimeEdit_SizeHint(this.nativePtr);
	}
	
	public virtual void Clear()
	{
		CQt.QDateTimeEdit_Clear(this.nativePtr);
	}
	
	public virtual void StepBy(int32 steps)
	{
		CQt.QDateTimeEdit_StepBy(this.nativePtr, steps);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QDateTimeEdit_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public void SetDateTime(IQDateTime dateTime)
	{
		CQt.QDateTimeEdit_SetDateTime(this.nativePtr, (dateTime == default) ? default : (void*)dateTime.NativePtr);
	}
	
	public void SetDate(IQDate date)
	{
		CQt.QDateTimeEdit_SetDate(this.nativePtr, (date == default) ? default : (void)date.NativePtr);
	}
	
	public void SetTime(IQTime time)
	{
		CQt.QDateTimeEdit_SetTime(this.nativePtr, (time == default) ? default : (void)time.NativePtr);
	}
	
	public virtual void KeyPressEvent(IQKeyEvent event)
	{
		CQt.QDateTimeEdit_KeyPressEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void WheelEvent(IQWheelEvent event)
	{
		CQt.QDateTimeEdit_WheelEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void FocusInEvent(IQFocusEvent event)
	{
		CQt.QDateTimeEdit_FocusInEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QDateTimeEdit_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public virtual int64 Validate(String input, int32* pos)
	{
		return CQt.QDateTimeEdit_Validate(this.nativePtr, libqt_string(input), pos);
	}
	
	public virtual void Fixup(String input)
	{
		CQt.QDateTimeEdit_Fixup(this.nativePtr, libqt_string(input));
	}
	
	public virtual void DateTimeFromText(String text)
	{
		CQt.QDateTimeEdit_DateTimeFromText(this.nativePtr, libqt_string(text));
	}
	
	public virtual libqt_string TextFromDateTime(IQDateTime dt)
	{
		return CQt.QDateTimeEdit_TextFromDateTime(this.nativePtr, (dt == default) ? default : (void*)dt.NativePtr);
	}
	
	public virtual int64 StepEnabled()
	{
		return CQt.QDateTimeEdit_StepEnabled(this.nativePtr);
	}
	
	public virtual void MousePressEvent(IQMouseEvent event)
	{
		CQt.QDateTimeEdit_MousePressEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void PaintEvent(IQPaintEvent event)
	{
		CQt.QDateTimeEdit_PaintEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void InitStyleOption(IQStyleOptionSpinBox option)
	{
		CQt.QDateTimeEdit_InitStyleOption(this.nativePtr, (option == null) ? null : (void*)option.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QDateTimeEdit_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QDateTimeEdit_Tr3(s, c, n);
	}
	
	public int64 ButtonSymbols()
	{
		return CQt.QAbstractSpinBox_ButtonSymbols(this.nativePtr);
	}
	
	public void SetButtonSymbols(int64 bs)
	{
		CQt.QAbstractSpinBox_SetButtonSymbols(this.nativePtr, bs);
	}
	
	public void SetCorrectionMode(int64 cm)
	{
		CQt.QAbstractSpinBox_SetCorrectionMode(this.nativePtr, cm);
	}
	
	public int64 CorrectionMode()
	{
		return CQt.QAbstractSpinBox_CorrectionMode(this.nativePtr);
	}
	
	public bool HasAcceptableInput()
	{
		return CQt.QAbstractSpinBox_HasAcceptableInput(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QAbstractSpinBox_Text(this.nativePtr);
	}
	
	public libqt_string SpecialValueText()
	{
		return CQt.QAbstractSpinBox_SpecialValueText(this.nativePtr);
	}
	
	public void SetSpecialValueText(String txt)
	{
		CQt.QAbstractSpinBox_SetSpecialValueText(this.nativePtr, libqt_string(txt));
	}
	
	public bool Wrapping()
	{
		return CQt.QAbstractSpinBox_Wrapping(this.nativePtr);
	}
	
	public void SetWrapping(bool w)
	{
		CQt.QAbstractSpinBox_SetWrapping(this.nativePtr, w);
	}
	
	public void SetReadOnly(bool r)
	{
		CQt.QAbstractSpinBox_SetReadOnly(this.nativePtr, r);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QAbstractSpinBox_IsReadOnly(this.nativePtr);
	}
	
	public void SetKeyboardTracking(bool kt)
	{
		CQt.QAbstractSpinBox_SetKeyboardTracking(this.nativePtr, kt);
	}
	
	public bool KeyboardTracking()
	{
		return CQt.QAbstractSpinBox_KeyboardTracking(this.nativePtr);
	}
	
	public void SetAlignment(int64 flag)
	{
		CQt.QAbstractSpinBox_SetAlignment(this.nativePtr, flag);
	}
	
	public int64 Alignment()
	{
		return CQt.QAbstractSpinBox_Alignment(this.nativePtr);
	}
	
	public void SetFrame(bool frame)
	{
		CQt.QAbstractSpinBox_SetFrame(this.nativePtr, frame);
	}
	
	public bool HasFrame()
	{
		return CQt.QAbstractSpinBox_HasFrame(this.nativePtr);
	}
	
	public void SetAccelerated(bool on)
	{
		CQt.QAbstractSpinBox_SetAccelerated(this.nativePtr, on);
	}
	
	public bool IsAccelerated()
	{
		return CQt.QAbstractSpinBox_IsAccelerated(this.nativePtr);
	}
	
	public void SetGroupSeparatorShown(bool shown)
	{
		CQt.QAbstractSpinBox_SetGroupSeparatorShown(this.nativePtr, shown);
	}
	
	public bool IsGroupSeparatorShown()
	{
		return CQt.QAbstractSpinBox_IsGroupSeparatorShown(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QAbstractSpinBox_MinimumSizeHint(this.nativePtr);
	}
	
	public void InterpretText()
	{
		CQt.QAbstractSpinBox_InterpretText(this.nativePtr);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		CQt.QAbstractSpinBox_InputMethodQuery(this.nativePtr, param1);
	}
	
	public void StepUp()
	{
		CQt.QAbstractSpinBox_StepUp(this.nativePtr);
	}
	
	public void StepDown()
	{
		CQt.QAbstractSpinBox_StepDown(this.nativePtr);
	}
	
	public void SelectAll()
	{
		CQt.QAbstractSpinBox_SelectAll(this.nativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(IQStyle style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, (style == null) ? null : (void*)style.NativePtr);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QWidget_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default) ? default : (void*)minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default) ? default : (void*)maximumSize.NativePtr);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default) ? default : (void*)sizeIncrement.NativePtr);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default) ? default : (void*)baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default) ? default : (void*)fixedSize.NativePtr);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default) ? default : (void*)palette.NativePtr);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QWidget_SetFont(this.nativePtr, (font == default) ? default : (void*)font.NativePtr);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(IQPaintDevice target)
	{
		CQt.QWidget_Render(this.nativePtr, (target == null) ? null : (void*)target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == null) ? null : (void*)effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, libqt_string(windowTitle));
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, libqt_string(styleSheet));
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, libqt_string(windowIconText));
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(String windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, libqt_string(windowRole));
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(String filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, libqt_string(filePath));
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(String name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, libqt_string(description));
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == null) ? null : (void*)param1.NativePtr, (param2 == null) ? null : (void*)param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == null) ? null : (void*)focusProxy.NativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Update()
	{
		CQt.QWidget_Update(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QWidget_SetVisible(this.nativePtr, visible);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(IQWidget param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default) ? default : (void*)geometry.NativePtr);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, libqt_string(geometry));
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, (sizePolicy == default) ? default : (void)sizePolicy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(IQLayout layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, (layout == null) ? null : (void*)layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default) ? default : (void*)param3.NativePtr);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(IQAction action)
	{
		CQt.QWidget_AddAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, (screen == null) ? null : (void*)screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == null) ? null : (void*)window.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default) ? default : (void*)rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default) ? default : (void*)key.NativePtr, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr, flags);
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
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QDateTimeEdit_new")]
	public static extern void* QDateTimeEdit_new(void* parent);
	[LinkName("QDateTimeEdit_new2")]
	public static extern void* QDateTimeEdit_new2();
	[LinkName("QDateTimeEdit_new3")]
	public static extern void* QDateTimeEdit_new3(void* dt);
	[LinkName("QDateTimeEdit_new4")]
	public static extern void* QDateTimeEdit_new4(void d);
	[LinkName("QDateTimeEdit_new5")]
	public static extern void* QDateTimeEdit_new5(void t);
	[LinkName("QDateTimeEdit_new6")]
	public static extern void* QDateTimeEdit_new6(void* dt, void* parent);
	[LinkName("QDateTimeEdit_new7")]
	public static extern void* QDateTimeEdit_new7(void d, void* parent);
	[LinkName("QDateTimeEdit_new8")]
	public static extern void* QDateTimeEdit_new8(void t, void* parent);
	[LinkName("QDateTimeEdit_MetaObject")]
	public static extern void* QDateTimeEdit_MetaObject(void* c_this);
	[LinkName("QDateTimeEdit_Metacast")]
	public static extern void* QDateTimeEdit_Metacast(void* c_this, char8* param1);
	[LinkName("QDateTimeEdit_Metacall")]
	public static extern int32 QDateTimeEdit_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QDateTimeEdit_Tr")]
	public static extern libqt_string QDateTimeEdit_Tr(char8* s);
	[LinkName("QDateTimeEdit_DateTime")]
	public static extern void QDateTimeEdit_DateTime(void* c_this);
	[LinkName("QDateTimeEdit_Date")]
	public static extern void QDateTimeEdit_Date(void* c_this);
	[LinkName("QDateTimeEdit_Time")]
	public static extern void QDateTimeEdit_Time(void* c_this);
	[LinkName("QDateTimeEdit_Calendar")]
	public static extern void QDateTimeEdit_Calendar(void* c_this);
	[LinkName("QDateTimeEdit_SetCalendar")]
	public static extern void QDateTimeEdit_SetCalendar(void* c_this, void calendar);
	[LinkName("QDateTimeEdit_MinimumDateTime")]
	public static extern void QDateTimeEdit_MinimumDateTime(void* c_this);
	[LinkName("QDateTimeEdit_ClearMinimumDateTime")]
	public static extern void QDateTimeEdit_ClearMinimumDateTime(void* c_this);
	[LinkName("QDateTimeEdit_SetMinimumDateTime")]
	public static extern void QDateTimeEdit_SetMinimumDateTime(void* c_this, void* dt);
	[LinkName("QDateTimeEdit_MaximumDateTime")]
	public static extern void QDateTimeEdit_MaximumDateTime(void* c_this);
	[LinkName("QDateTimeEdit_ClearMaximumDateTime")]
	public static extern void QDateTimeEdit_ClearMaximumDateTime(void* c_this);
	[LinkName("QDateTimeEdit_SetMaximumDateTime")]
	public static extern void QDateTimeEdit_SetMaximumDateTime(void* c_this, void* dt);
	[LinkName("QDateTimeEdit_SetDateTimeRange")]
	public static extern void QDateTimeEdit_SetDateTimeRange(void* c_this, void* min, void* max);
	[LinkName("QDateTimeEdit_MinimumDate")]
	public static extern void QDateTimeEdit_MinimumDate(void* c_this);
	[LinkName("QDateTimeEdit_SetMinimumDate")]
	public static extern void QDateTimeEdit_SetMinimumDate(void* c_this, void min);
	[LinkName("QDateTimeEdit_ClearMinimumDate")]
	public static extern void QDateTimeEdit_ClearMinimumDate(void* c_this);
	[LinkName("QDateTimeEdit_MaximumDate")]
	public static extern void QDateTimeEdit_MaximumDate(void* c_this);
	[LinkName("QDateTimeEdit_SetMaximumDate")]
	public static extern void QDateTimeEdit_SetMaximumDate(void* c_this, void max);
	[LinkName("QDateTimeEdit_ClearMaximumDate")]
	public static extern void QDateTimeEdit_ClearMaximumDate(void* c_this);
	[LinkName("QDateTimeEdit_SetDateRange")]
	public static extern void QDateTimeEdit_SetDateRange(void* c_this, void min, void max);
	[LinkName("QDateTimeEdit_MinimumTime")]
	public static extern void QDateTimeEdit_MinimumTime(void* c_this);
	[LinkName("QDateTimeEdit_SetMinimumTime")]
	public static extern void QDateTimeEdit_SetMinimumTime(void* c_this, void min);
	[LinkName("QDateTimeEdit_ClearMinimumTime")]
	public static extern void QDateTimeEdit_ClearMinimumTime(void* c_this);
	[LinkName("QDateTimeEdit_MaximumTime")]
	public static extern void QDateTimeEdit_MaximumTime(void* c_this);
	[LinkName("QDateTimeEdit_SetMaximumTime")]
	public static extern void QDateTimeEdit_SetMaximumTime(void* c_this, void max);
	[LinkName("QDateTimeEdit_ClearMaximumTime")]
	public static extern void QDateTimeEdit_ClearMaximumTime(void* c_this);
	[LinkName("QDateTimeEdit_SetTimeRange")]
	public static extern void QDateTimeEdit_SetTimeRange(void* c_this, void min, void max);
	[LinkName("QDateTimeEdit_DisplayedSections")]
	public static extern int64 QDateTimeEdit_DisplayedSections(void* c_this);
	[LinkName("QDateTimeEdit_CurrentSection")]
	public static extern int64 QDateTimeEdit_CurrentSection(void* c_this);
	[LinkName("QDateTimeEdit_SectionAt")]
	public static extern int64 QDateTimeEdit_SectionAt(void* c_this, int32 index);
	[LinkName("QDateTimeEdit_SetCurrentSection")]
	public static extern void QDateTimeEdit_SetCurrentSection(void* c_this, int64 section);
	[LinkName("QDateTimeEdit_CurrentSectionIndex")]
	public static extern int32 QDateTimeEdit_CurrentSectionIndex(void* c_this);
	[LinkName("QDateTimeEdit_SetCurrentSectionIndex")]
	public static extern void QDateTimeEdit_SetCurrentSectionIndex(void* c_this, int32 index);
	[LinkName("QDateTimeEdit_CalendarWidget")]
	public static extern void* QDateTimeEdit_CalendarWidget(void* c_this);
	[LinkName("QDateTimeEdit_SetCalendarWidget")]
	public static extern void QDateTimeEdit_SetCalendarWidget(void* c_this, void* calendarWidget);
	[LinkName("QDateTimeEdit_SectionCount")]
	public static extern int32 QDateTimeEdit_SectionCount(void* c_this);
	[LinkName("QDateTimeEdit_SetSelectedSection")]
	public static extern void QDateTimeEdit_SetSelectedSection(void* c_this, int64 section);
	[LinkName("QDateTimeEdit_SectionText")]
	public static extern libqt_string QDateTimeEdit_SectionText(void* c_this, int64 section);
	[LinkName("QDateTimeEdit_DisplayFormat")]
	public static extern libqt_string QDateTimeEdit_DisplayFormat(void* c_this);
	[LinkName("QDateTimeEdit_SetDisplayFormat")]
	public static extern void QDateTimeEdit_SetDisplayFormat(void* c_this, libqt_string format);
	[LinkName("QDateTimeEdit_CalendarPopup")]
	public static extern bool QDateTimeEdit_CalendarPopup(void* c_this);
	[LinkName("QDateTimeEdit_SetCalendarPopup")]
	public static extern void QDateTimeEdit_SetCalendarPopup(void* c_this, bool enable);
	[LinkName("QDateTimeEdit_TimeSpec")]
	public static extern int64 QDateTimeEdit_TimeSpec(void* c_this);
	[LinkName("QDateTimeEdit_SetTimeSpec")]
	public static extern void QDateTimeEdit_SetTimeSpec(void* c_this, int64 spec);
	[LinkName("QDateTimeEdit_SizeHint")]
	public static extern void QDateTimeEdit_SizeHint(void* c_this);
	[LinkName("QDateTimeEdit_Clear")]
	public static extern void QDateTimeEdit_Clear(void* c_this);
	[LinkName("QDateTimeEdit_StepBy")]
	public static extern void QDateTimeEdit_StepBy(void* c_this, int32 steps);
	[LinkName("QDateTimeEdit_Event")]
	public static extern bool QDateTimeEdit_Event(void* c_this, void* event);
	[LinkName("QDateTimeEdit_Connect_DateTimeChanged")]
	public static extern void QDateTimeEdit_Connect_DateTimeChanged(void* c_this, c_intptr slot);
	[LinkName("QDateTimeEdit_Connect_TimeChanged")]
	public static extern void QDateTimeEdit_Connect_TimeChanged(void* c_this, c_intptr slot);
	[LinkName("QDateTimeEdit_Connect_DateChanged")]
	public static extern void QDateTimeEdit_Connect_DateChanged(void* c_this, c_intptr slot);
	[LinkName("QDateTimeEdit_SetDateTime")]
	public static extern void QDateTimeEdit_SetDateTime(void* c_this, void* dateTime);
	[LinkName("QDateTimeEdit_SetDate")]
	public static extern void QDateTimeEdit_SetDate(void* c_this, void date);
	[LinkName("QDateTimeEdit_SetTime")]
	public static extern void QDateTimeEdit_SetTime(void* c_this, void time);
	[LinkName("QDateTimeEdit_KeyPressEvent")]
	public static extern void QDateTimeEdit_KeyPressEvent(void* c_this, void* event);
	[LinkName("QDateTimeEdit_WheelEvent")]
	public static extern void QDateTimeEdit_WheelEvent(void* c_this, void* event);
	[LinkName("QDateTimeEdit_FocusInEvent")]
	public static extern void QDateTimeEdit_FocusInEvent(void* c_this, void* event);
	[LinkName("QDateTimeEdit_FocusNextPrevChild")]
	public static extern bool QDateTimeEdit_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QDateTimeEdit_Validate")]
	public static extern int64 QDateTimeEdit_Validate(void* c_this, libqt_string input, int32* pos);
	[LinkName("QDateTimeEdit_Fixup")]
	public static extern void QDateTimeEdit_Fixup(void* c_this, libqt_string input);
	[LinkName("QDateTimeEdit_DateTimeFromText")]
	public static extern void QDateTimeEdit_DateTimeFromText(void* c_this, libqt_string text);
	[LinkName("QDateTimeEdit_TextFromDateTime")]
	public static extern libqt_string QDateTimeEdit_TextFromDateTime(void* c_this, void* dt);
	[LinkName("QDateTimeEdit_StepEnabled")]
	public static extern int64 QDateTimeEdit_StepEnabled(void* c_this);
	[LinkName("QDateTimeEdit_MousePressEvent")]
	public static extern void QDateTimeEdit_MousePressEvent(void* c_this, void* event);
	[LinkName("QDateTimeEdit_PaintEvent")]
	public static extern void QDateTimeEdit_PaintEvent(void* c_this, void* event);
	[LinkName("QDateTimeEdit_InitStyleOption")]
	public static extern void QDateTimeEdit_InitStyleOption(void* c_this, void* option);
	[LinkName("QDateTimeEdit_Tr2")]
	public static extern libqt_string QDateTimeEdit_Tr2(char8* s, char8* c);
	[LinkName("QDateTimeEdit_Tr3")]
	public static extern libqt_string QDateTimeEdit_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QDateTimeEdit_Delete")]
	public static extern void QDateTimeEdit_Delete(void* self);
}
public interface IQTimeEdit
{
	void* NativePtr { get; }
}
public class QTimeEdit : IQTimeEdit, IQDateTimeEdit
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget parent)
	{
		this.nativePtr = CQt.QTimeEdit_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QTimeEdit_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTimeEdit_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QTimeEdit_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTimeEdit_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTimeEdit_Tr(s);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTimeEdit_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTimeEdit_Tr3(s, c, n);
	}
	
	public void DateTime()
	{
		CQt.QDateTimeEdit_DateTime(this.nativePtr);
	}
	
	public void Date()
	{
		CQt.QDateTimeEdit_Date(this.nativePtr);
	}
	
	public void Time()
	{
		CQt.QDateTimeEdit_Time(this.nativePtr);
	}
	
	public void Calendar()
	{
		CQt.QDateTimeEdit_Calendar(this.nativePtr);
	}
	
	public void SetCalendar(IQCalendar calendar)
	{
		CQt.QDateTimeEdit_SetCalendar(this.nativePtr, (calendar == default) ? default : (void)calendar.NativePtr);
	}
	
	public void MinimumDateTime()
	{
		CQt.QDateTimeEdit_MinimumDateTime(this.nativePtr);
	}
	
	public void ClearMinimumDateTime()
	{
		CQt.QDateTimeEdit_ClearMinimumDateTime(this.nativePtr);
	}
	
	public void SetMinimumDateTime(IQDateTime dt)
	{
		CQt.QDateTimeEdit_SetMinimumDateTime(this.nativePtr, (dt == default) ? default : (void*)dt.NativePtr);
	}
	
	public void MaximumDateTime()
	{
		CQt.QDateTimeEdit_MaximumDateTime(this.nativePtr);
	}
	
	public void ClearMaximumDateTime()
	{
		CQt.QDateTimeEdit_ClearMaximumDateTime(this.nativePtr);
	}
	
	public void SetMaximumDateTime(IQDateTime dt)
	{
		CQt.QDateTimeEdit_SetMaximumDateTime(this.nativePtr, (dt == default) ? default : (void*)dt.NativePtr);
	}
	
	public void SetDateTimeRange(IQDateTime min, IQDateTime max)
	{
		CQt.QDateTimeEdit_SetDateTimeRange(this.nativePtr, (min == default) ? default : (void*)min.NativePtr, (max == default) ? default : (void*)max.NativePtr);
	}
	
	public void MinimumDate()
	{
		CQt.QDateTimeEdit_MinimumDate(this.nativePtr);
	}
	
	public void SetMinimumDate(IQDate min)
	{
		CQt.QDateTimeEdit_SetMinimumDate(this.nativePtr, (min == default) ? default : (void)min.NativePtr);
	}
	
	public void ClearMinimumDate()
	{
		CQt.QDateTimeEdit_ClearMinimumDate(this.nativePtr);
	}
	
	public void MaximumDate()
	{
		CQt.QDateTimeEdit_MaximumDate(this.nativePtr);
	}
	
	public void SetMaximumDate(IQDate max)
	{
		CQt.QDateTimeEdit_SetMaximumDate(this.nativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void ClearMaximumDate()
	{
		CQt.QDateTimeEdit_ClearMaximumDate(this.nativePtr);
	}
	
	public void SetDateRange(IQDate min, IQDate max)
	{
		CQt.QDateTimeEdit_SetDateRange(this.nativePtr, (min == default) ? default : (void)min.NativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void MinimumTime()
	{
		CQt.QDateTimeEdit_MinimumTime(this.nativePtr);
	}
	
	public void SetMinimumTime(IQTime min)
	{
		CQt.QDateTimeEdit_SetMinimumTime(this.nativePtr, (min == default) ? default : (void)min.NativePtr);
	}
	
	public void ClearMinimumTime()
	{
		CQt.QDateTimeEdit_ClearMinimumTime(this.nativePtr);
	}
	
	public void MaximumTime()
	{
		CQt.QDateTimeEdit_MaximumTime(this.nativePtr);
	}
	
	public void SetMaximumTime(IQTime max)
	{
		CQt.QDateTimeEdit_SetMaximumTime(this.nativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void ClearMaximumTime()
	{
		CQt.QDateTimeEdit_ClearMaximumTime(this.nativePtr);
	}
	
	public void SetTimeRange(IQTime min, IQTime max)
	{
		CQt.QDateTimeEdit_SetTimeRange(this.nativePtr, (min == default) ? default : (void)min.NativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public int64 DisplayedSections()
	{
		return CQt.QDateTimeEdit_DisplayedSections(this.nativePtr);
	}
	
	public int64 CurrentSection()
	{
		return CQt.QDateTimeEdit_CurrentSection(this.nativePtr);
	}
	
	public int64 SectionAt(int32 index)
	{
		return CQt.QDateTimeEdit_SectionAt(this.nativePtr, index);
	}
	
	public void SetCurrentSection(int64 section)
	{
		CQt.QDateTimeEdit_SetCurrentSection(this.nativePtr, section);
	}
	
	public int32 CurrentSectionIndex()
	{
		return CQt.QDateTimeEdit_CurrentSectionIndex(this.nativePtr);
	}
	
	public void SetCurrentSectionIndex(int32 index)
	{
		CQt.QDateTimeEdit_SetCurrentSectionIndex(this.nativePtr, index);
	}
	
	public void* CalendarWidget()
	{
		return CQt.QDateTimeEdit_CalendarWidget(this.nativePtr);
	}
	
	public void SetCalendarWidget(IQCalendarWidget calendarWidget)
	{
		CQt.QDateTimeEdit_SetCalendarWidget(this.nativePtr, (calendarWidget == null) ? null : (void*)calendarWidget.NativePtr);
	}
	
	public int32 SectionCount()
	{
		return CQt.QDateTimeEdit_SectionCount(this.nativePtr);
	}
	
	public void SetSelectedSection(int64 section)
	{
		CQt.QDateTimeEdit_SetSelectedSection(this.nativePtr, section);
	}
	
	public libqt_string SectionText(int64 section)
	{
		return CQt.QDateTimeEdit_SectionText(this.nativePtr, section);
	}
	
	public libqt_string DisplayFormat()
	{
		return CQt.QDateTimeEdit_DisplayFormat(this.nativePtr);
	}
	
	public void SetDisplayFormat(String format)
	{
		CQt.QDateTimeEdit_SetDisplayFormat(this.nativePtr, libqt_string(format));
	}
	
	public bool CalendarPopup()
	{
		return CQt.QDateTimeEdit_CalendarPopup(this.nativePtr);
	}
	
	public void SetCalendarPopup(bool enable)
	{
		CQt.QDateTimeEdit_SetCalendarPopup(this.nativePtr, enable);
	}
	
	public int64 TimeSpec()
	{
		return CQt.QDateTimeEdit_TimeSpec(this.nativePtr);
	}
	
	public void SetTimeSpec(int64 spec)
	{
		CQt.QDateTimeEdit_SetTimeSpec(this.nativePtr, spec);
	}
	
	public virtual void SizeHint()
	{
		CQt.QDateTimeEdit_SizeHint(this.nativePtr);
	}
	
	public virtual void Clear()
	{
		CQt.QDateTimeEdit_Clear(this.nativePtr);
	}
	
	public virtual void StepBy(int32 steps)
	{
		CQt.QDateTimeEdit_StepBy(this.nativePtr, steps);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QDateTimeEdit_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public void SetDateTime(IQDateTime dateTime)
	{
		CQt.QDateTimeEdit_SetDateTime(this.nativePtr, (dateTime == default) ? default : (void*)dateTime.NativePtr);
	}
	
	public void SetDate(IQDate date)
	{
		CQt.QDateTimeEdit_SetDate(this.nativePtr, (date == default) ? default : (void)date.NativePtr);
	}
	
	public void SetTime(IQTime time)
	{
		CQt.QDateTimeEdit_SetTime(this.nativePtr, (time == default) ? default : (void)time.NativePtr);
	}
	
	public int64 ButtonSymbols()
	{
		return CQt.QAbstractSpinBox_ButtonSymbols(this.nativePtr);
	}
	
	public void SetButtonSymbols(int64 bs)
	{
		CQt.QAbstractSpinBox_SetButtonSymbols(this.nativePtr, bs);
	}
	
	public void SetCorrectionMode(int64 cm)
	{
		CQt.QAbstractSpinBox_SetCorrectionMode(this.nativePtr, cm);
	}
	
	public int64 CorrectionMode()
	{
		return CQt.QAbstractSpinBox_CorrectionMode(this.nativePtr);
	}
	
	public bool HasAcceptableInput()
	{
		return CQt.QAbstractSpinBox_HasAcceptableInput(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QAbstractSpinBox_Text(this.nativePtr);
	}
	
	public libqt_string SpecialValueText()
	{
		return CQt.QAbstractSpinBox_SpecialValueText(this.nativePtr);
	}
	
	public void SetSpecialValueText(String txt)
	{
		CQt.QAbstractSpinBox_SetSpecialValueText(this.nativePtr, libqt_string(txt));
	}
	
	public bool Wrapping()
	{
		return CQt.QAbstractSpinBox_Wrapping(this.nativePtr);
	}
	
	public void SetWrapping(bool w)
	{
		CQt.QAbstractSpinBox_SetWrapping(this.nativePtr, w);
	}
	
	public void SetReadOnly(bool r)
	{
		CQt.QAbstractSpinBox_SetReadOnly(this.nativePtr, r);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QAbstractSpinBox_IsReadOnly(this.nativePtr);
	}
	
	public void SetKeyboardTracking(bool kt)
	{
		CQt.QAbstractSpinBox_SetKeyboardTracking(this.nativePtr, kt);
	}
	
	public bool KeyboardTracking()
	{
		return CQt.QAbstractSpinBox_KeyboardTracking(this.nativePtr);
	}
	
	public void SetAlignment(int64 flag)
	{
		CQt.QAbstractSpinBox_SetAlignment(this.nativePtr, flag);
	}
	
	public int64 Alignment()
	{
		return CQt.QAbstractSpinBox_Alignment(this.nativePtr);
	}
	
	public void SetFrame(bool frame)
	{
		CQt.QAbstractSpinBox_SetFrame(this.nativePtr, frame);
	}
	
	public bool HasFrame()
	{
		return CQt.QAbstractSpinBox_HasFrame(this.nativePtr);
	}
	
	public void SetAccelerated(bool on)
	{
		CQt.QAbstractSpinBox_SetAccelerated(this.nativePtr, on);
	}
	
	public bool IsAccelerated()
	{
		return CQt.QAbstractSpinBox_IsAccelerated(this.nativePtr);
	}
	
	public void SetGroupSeparatorShown(bool shown)
	{
		CQt.QAbstractSpinBox_SetGroupSeparatorShown(this.nativePtr, shown);
	}
	
	public bool IsGroupSeparatorShown()
	{
		return CQt.QAbstractSpinBox_IsGroupSeparatorShown(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QAbstractSpinBox_MinimumSizeHint(this.nativePtr);
	}
	
	public void InterpretText()
	{
		CQt.QAbstractSpinBox_InterpretText(this.nativePtr);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		CQt.QAbstractSpinBox_InputMethodQuery(this.nativePtr, param1);
	}
	
	public virtual int64 Validate(String input, int32* pos)
	{
		return CQt.QAbstractSpinBox_Validate(this.nativePtr, libqt_string(input), pos);
	}
	
	public virtual void Fixup(String input)
	{
		CQt.QAbstractSpinBox_Fixup(this.nativePtr, libqt_string(input));
	}
	
	public void StepUp()
	{
		CQt.QAbstractSpinBox_StepUp(this.nativePtr);
	}
	
	public void StepDown()
	{
		CQt.QAbstractSpinBox_StepDown(this.nativePtr);
	}
	
	public void SelectAll()
	{
		CQt.QAbstractSpinBox_SelectAll(this.nativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(IQStyle style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, (style == null) ? null : (void*)style.NativePtr);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QWidget_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default) ? default : (void*)minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default) ? default : (void*)maximumSize.NativePtr);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default) ? default : (void*)sizeIncrement.NativePtr);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default) ? default : (void*)baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default) ? default : (void*)fixedSize.NativePtr);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default) ? default : (void*)palette.NativePtr);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QWidget_SetFont(this.nativePtr, (font == default) ? default : (void*)font.NativePtr);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(IQPaintDevice target)
	{
		CQt.QWidget_Render(this.nativePtr, (target == null) ? null : (void*)target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == null) ? null : (void*)effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, libqt_string(windowTitle));
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, libqt_string(styleSheet));
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, libqt_string(windowIconText));
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(String windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, libqt_string(windowRole));
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(String filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, libqt_string(filePath));
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(String name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, libqt_string(description));
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == null) ? null : (void*)param1.NativePtr, (param2 == null) ? null : (void*)param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == null) ? null : (void*)focusProxy.NativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Update()
	{
		CQt.QWidget_Update(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QWidget_SetVisible(this.nativePtr, visible);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(IQWidget param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default) ? default : (void*)geometry.NativePtr);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, libqt_string(geometry));
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, (sizePolicy == default) ? default : (void)sizePolicy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(IQLayout layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, (layout == null) ? null : (void*)layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default) ? default : (void*)param3.NativePtr);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(IQAction action)
	{
		CQt.QWidget_AddAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, (screen == null) ? null : (void*)screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == null) ? null : (void*)window.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default) ? default : (void*)rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default) ? default : (void*)key.NativePtr, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr, flags);
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
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QTimeEdit_new")]
	public static extern void* QTimeEdit_new(void* parent);
	[LinkName("QTimeEdit_new2")]
	public static extern void* QTimeEdit_new2();
	[LinkName("QTimeEdit_new3")]
	public static extern void* QTimeEdit_new3(void time);
	[LinkName("QTimeEdit_new4")]
	public static extern void* QTimeEdit_new4(void time, void* parent);
	[LinkName("QTimeEdit_MetaObject")]
	public static extern void* QTimeEdit_MetaObject(void* c_this);
	[LinkName("QTimeEdit_Metacast")]
	public static extern void* QTimeEdit_Metacast(void* c_this, char8* param1);
	[LinkName("QTimeEdit_Metacall")]
	public static extern int32 QTimeEdit_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTimeEdit_Tr")]
	public static extern libqt_string QTimeEdit_Tr(char8* s);
	[LinkName("QTimeEdit_Connect_UserTimeChanged")]
	public static extern void QTimeEdit_Connect_UserTimeChanged(void* c_this, c_intptr slot);
	[LinkName("QTimeEdit_Tr2")]
	public static extern libqt_string QTimeEdit_Tr2(char8* s, char8* c);
	[LinkName("QTimeEdit_Tr3")]
	public static extern libqt_string QTimeEdit_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTimeEdit_Delete")]
	public static extern void QTimeEdit_Delete(void* self);
}
public interface IQDateEdit
{
	void* NativePtr { get; }
}
public class QDateEdit : IQDateEdit, IQDateTimeEdit
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget parent)
	{
		this.nativePtr = CQt.QDateEdit_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QDateEdit_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QDateEdit_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QDateEdit_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QDateEdit_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QDateEdit_Tr(s);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QDateEdit_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QDateEdit_Tr3(s, c, n);
	}
	
	public void DateTime()
	{
		CQt.QDateTimeEdit_DateTime(this.nativePtr);
	}
	
	public void Date()
	{
		CQt.QDateTimeEdit_Date(this.nativePtr);
	}
	
	public void Time()
	{
		CQt.QDateTimeEdit_Time(this.nativePtr);
	}
	
	public void Calendar()
	{
		CQt.QDateTimeEdit_Calendar(this.nativePtr);
	}
	
	public void SetCalendar(IQCalendar calendar)
	{
		CQt.QDateTimeEdit_SetCalendar(this.nativePtr, (calendar == default) ? default : (void)calendar.NativePtr);
	}
	
	public void MinimumDateTime()
	{
		CQt.QDateTimeEdit_MinimumDateTime(this.nativePtr);
	}
	
	public void ClearMinimumDateTime()
	{
		CQt.QDateTimeEdit_ClearMinimumDateTime(this.nativePtr);
	}
	
	public void SetMinimumDateTime(IQDateTime dt)
	{
		CQt.QDateTimeEdit_SetMinimumDateTime(this.nativePtr, (dt == default) ? default : (void*)dt.NativePtr);
	}
	
	public void MaximumDateTime()
	{
		CQt.QDateTimeEdit_MaximumDateTime(this.nativePtr);
	}
	
	public void ClearMaximumDateTime()
	{
		CQt.QDateTimeEdit_ClearMaximumDateTime(this.nativePtr);
	}
	
	public void SetMaximumDateTime(IQDateTime dt)
	{
		CQt.QDateTimeEdit_SetMaximumDateTime(this.nativePtr, (dt == default) ? default : (void*)dt.NativePtr);
	}
	
	public void SetDateTimeRange(IQDateTime min, IQDateTime max)
	{
		CQt.QDateTimeEdit_SetDateTimeRange(this.nativePtr, (min == default) ? default : (void*)min.NativePtr, (max == default) ? default : (void*)max.NativePtr);
	}
	
	public void MinimumDate()
	{
		CQt.QDateTimeEdit_MinimumDate(this.nativePtr);
	}
	
	public void SetMinimumDate(IQDate min)
	{
		CQt.QDateTimeEdit_SetMinimumDate(this.nativePtr, (min == default) ? default : (void)min.NativePtr);
	}
	
	public void ClearMinimumDate()
	{
		CQt.QDateTimeEdit_ClearMinimumDate(this.nativePtr);
	}
	
	public void MaximumDate()
	{
		CQt.QDateTimeEdit_MaximumDate(this.nativePtr);
	}
	
	public void SetMaximumDate(IQDate max)
	{
		CQt.QDateTimeEdit_SetMaximumDate(this.nativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void ClearMaximumDate()
	{
		CQt.QDateTimeEdit_ClearMaximumDate(this.nativePtr);
	}
	
	public void SetDateRange(IQDate min, IQDate max)
	{
		CQt.QDateTimeEdit_SetDateRange(this.nativePtr, (min == default) ? default : (void)min.NativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void MinimumTime()
	{
		CQt.QDateTimeEdit_MinimumTime(this.nativePtr);
	}
	
	public void SetMinimumTime(IQTime min)
	{
		CQt.QDateTimeEdit_SetMinimumTime(this.nativePtr, (min == default) ? default : (void)min.NativePtr);
	}
	
	public void ClearMinimumTime()
	{
		CQt.QDateTimeEdit_ClearMinimumTime(this.nativePtr);
	}
	
	public void MaximumTime()
	{
		CQt.QDateTimeEdit_MaximumTime(this.nativePtr);
	}
	
	public void SetMaximumTime(IQTime max)
	{
		CQt.QDateTimeEdit_SetMaximumTime(this.nativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public void ClearMaximumTime()
	{
		CQt.QDateTimeEdit_ClearMaximumTime(this.nativePtr);
	}
	
	public void SetTimeRange(IQTime min, IQTime max)
	{
		CQt.QDateTimeEdit_SetTimeRange(this.nativePtr, (min == default) ? default : (void)min.NativePtr, (max == default) ? default : (void)max.NativePtr);
	}
	
	public int64 DisplayedSections()
	{
		return CQt.QDateTimeEdit_DisplayedSections(this.nativePtr);
	}
	
	public int64 CurrentSection()
	{
		return CQt.QDateTimeEdit_CurrentSection(this.nativePtr);
	}
	
	public int64 SectionAt(int32 index)
	{
		return CQt.QDateTimeEdit_SectionAt(this.nativePtr, index);
	}
	
	public void SetCurrentSection(int64 section)
	{
		CQt.QDateTimeEdit_SetCurrentSection(this.nativePtr, section);
	}
	
	public int32 CurrentSectionIndex()
	{
		return CQt.QDateTimeEdit_CurrentSectionIndex(this.nativePtr);
	}
	
	public void SetCurrentSectionIndex(int32 index)
	{
		CQt.QDateTimeEdit_SetCurrentSectionIndex(this.nativePtr, index);
	}
	
	public void* CalendarWidget()
	{
		return CQt.QDateTimeEdit_CalendarWidget(this.nativePtr);
	}
	
	public void SetCalendarWidget(IQCalendarWidget calendarWidget)
	{
		CQt.QDateTimeEdit_SetCalendarWidget(this.nativePtr, (calendarWidget == null) ? null : (void*)calendarWidget.NativePtr);
	}
	
	public int32 SectionCount()
	{
		return CQt.QDateTimeEdit_SectionCount(this.nativePtr);
	}
	
	public void SetSelectedSection(int64 section)
	{
		CQt.QDateTimeEdit_SetSelectedSection(this.nativePtr, section);
	}
	
	public libqt_string SectionText(int64 section)
	{
		return CQt.QDateTimeEdit_SectionText(this.nativePtr, section);
	}
	
	public libqt_string DisplayFormat()
	{
		return CQt.QDateTimeEdit_DisplayFormat(this.nativePtr);
	}
	
	public void SetDisplayFormat(String format)
	{
		CQt.QDateTimeEdit_SetDisplayFormat(this.nativePtr, libqt_string(format));
	}
	
	public bool CalendarPopup()
	{
		return CQt.QDateTimeEdit_CalendarPopup(this.nativePtr);
	}
	
	public void SetCalendarPopup(bool enable)
	{
		CQt.QDateTimeEdit_SetCalendarPopup(this.nativePtr, enable);
	}
	
	public int64 TimeSpec()
	{
		return CQt.QDateTimeEdit_TimeSpec(this.nativePtr);
	}
	
	public void SetTimeSpec(int64 spec)
	{
		CQt.QDateTimeEdit_SetTimeSpec(this.nativePtr, spec);
	}
	
	public virtual void SizeHint()
	{
		CQt.QDateTimeEdit_SizeHint(this.nativePtr);
	}
	
	public virtual void Clear()
	{
		CQt.QDateTimeEdit_Clear(this.nativePtr);
	}
	
	public virtual void StepBy(int32 steps)
	{
		CQt.QDateTimeEdit_StepBy(this.nativePtr, steps);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QDateTimeEdit_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public void SetDateTime(IQDateTime dateTime)
	{
		CQt.QDateTimeEdit_SetDateTime(this.nativePtr, (dateTime == default) ? default : (void*)dateTime.NativePtr);
	}
	
	public void SetDate(IQDate date)
	{
		CQt.QDateTimeEdit_SetDate(this.nativePtr, (date == default) ? default : (void)date.NativePtr);
	}
	
	public void SetTime(IQTime time)
	{
		CQt.QDateTimeEdit_SetTime(this.nativePtr, (time == default) ? default : (void)time.NativePtr);
	}
	
	public int64 ButtonSymbols()
	{
		return CQt.QAbstractSpinBox_ButtonSymbols(this.nativePtr);
	}
	
	public void SetButtonSymbols(int64 bs)
	{
		CQt.QAbstractSpinBox_SetButtonSymbols(this.nativePtr, bs);
	}
	
	public void SetCorrectionMode(int64 cm)
	{
		CQt.QAbstractSpinBox_SetCorrectionMode(this.nativePtr, cm);
	}
	
	public int64 CorrectionMode()
	{
		return CQt.QAbstractSpinBox_CorrectionMode(this.nativePtr);
	}
	
	public bool HasAcceptableInput()
	{
		return CQt.QAbstractSpinBox_HasAcceptableInput(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QAbstractSpinBox_Text(this.nativePtr);
	}
	
	public libqt_string SpecialValueText()
	{
		return CQt.QAbstractSpinBox_SpecialValueText(this.nativePtr);
	}
	
	public void SetSpecialValueText(String txt)
	{
		CQt.QAbstractSpinBox_SetSpecialValueText(this.nativePtr, libqt_string(txt));
	}
	
	public bool Wrapping()
	{
		return CQt.QAbstractSpinBox_Wrapping(this.nativePtr);
	}
	
	public void SetWrapping(bool w)
	{
		CQt.QAbstractSpinBox_SetWrapping(this.nativePtr, w);
	}
	
	public void SetReadOnly(bool r)
	{
		CQt.QAbstractSpinBox_SetReadOnly(this.nativePtr, r);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QAbstractSpinBox_IsReadOnly(this.nativePtr);
	}
	
	public void SetKeyboardTracking(bool kt)
	{
		CQt.QAbstractSpinBox_SetKeyboardTracking(this.nativePtr, kt);
	}
	
	public bool KeyboardTracking()
	{
		return CQt.QAbstractSpinBox_KeyboardTracking(this.nativePtr);
	}
	
	public void SetAlignment(int64 flag)
	{
		CQt.QAbstractSpinBox_SetAlignment(this.nativePtr, flag);
	}
	
	public int64 Alignment()
	{
		return CQt.QAbstractSpinBox_Alignment(this.nativePtr);
	}
	
	public void SetFrame(bool frame)
	{
		CQt.QAbstractSpinBox_SetFrame(this.nativePtr, frame);
	}
	
	public bool HasFrame()
	{
		return CQt.QAbstractSpinBox_HasFrame(this.nativePtr);
	}
	
	public void SetAccelerated(bool on)
	{
		CQt.QAbstractSpinBox_SetAccelerated(this.nativePtr, on);
	}
	
	public bool IsAccelerated()
	{
		return CQt.QAbstractSpinBox_IsAccelerated(this.nativePtr);
	}
	
	public void SetGroupSeparatorShown(bool shown)
	{
		CQt.QAbstractSpinBox_SetGroupSeparatorShown(this.nativePtr, shown);
	}
	
	public bool IsGroupSeparatorShown()
	{
		return CQt.QAbstractSpinBox_IsGroupSeparatorShown(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QAbstractSpinBox_MinimumSizeHint(this.nativePtr);
	}
	
	public void InterpretText()
	{
		CQt.QAbstractSpinBox_InterpretText(this.nativePtr);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		CQt.QAbstractSpinBox_InputMethodQuery(this.nativePtr, param1);
	}
	
	public virtual int64 Validate(String input, int32* pos)
	{
		return CQt.QAbstractSpinBox_Validate(this.nativePtr, libqt_string(input), pos);
	}
	
	public virtual void Fixup(String input)
	{
		CQt.QAbstractSpinBox_Fixup(this.nativePtr, libqt_string(input));
	}
	
	public void StepUp()
	{
		CQt.QAbstractSpinBox_StepUp(this.nativePtr);
	}
	
	public void StepDown()
	{
		CQt.QAbstractSpinBox_StepDown(this.nativePtr);
	}
	
	public void SelectAll()
	{
		CQt.QAbstractSpinBox_SelectAll(this.nativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(IQStyle style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, (style == null) ? null : (void*)style.NativePtr);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QWidget_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default) ? default : (void*)minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default) ? default : (void*)maximumSize.NativePtr);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default) ? default : (void*)sizeIncrement.NativePtr);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default) ? default : (void*)baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default) ? default : (void*)fixedSize.NativePtr);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default) ? default : (void*)palette.NativePtr);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QWidget_SetFont(this.nativePtr, (font == default) ? default : (void*)font.NativePtr);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(IQPaintDevice target)
	{
		CQt.QWidget_Render(this.nativePtr, (target == null) ? null : (void*)target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == null) ? null : (void*)effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, libqt_string(windowTitle));
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, libqt_string(styleSheet));
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, libqt_string(windowIconText));
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(String windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, libqt_string(windowRole));
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(String filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, libqt_string(filePath));
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(String name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, libqt_string(description));
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == null) ? null : (void*)param1.NativePtr, (param2 == null) ? null : (void*)param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == null) ? null : (void*)focusProxy.NativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Update()
	{
		CQt.QWidget_Update(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QWidget_SetVisible(this.nativePtr, visible);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(IQWidget param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default) ? default : (void*)geometry.NativePtr);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, libqt_string(geometry));
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, (sizePolicy == default) ? default : (void)sizePolicy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(IQLayout layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, (layout == null) ? null : (void*)layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default) ? default : (void*)param3.NativePtr);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(IQAction action)
	{
		CQt.QWidget_AddAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, (screen == null) ? null : (void*)screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == null) ? null : (void*)window.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default) ? default : (void*)rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default) ? default : (void*)key.NativePtr, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr, flags);
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
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QDateEdit_new")]
	public static extern void* QDateEdit_new(void* parent);
	[LinkName("QDateEdit_new2")]
	public static extern void* QDateEdit_new2();
	[LinkName("QDateEdit_new3")]
	public static extern void* QDateEdit_new3(void date);
	[LinkName("QDateEdit_new4")]
	public static extern void* QDateEdit_new4(void date, void* parent);
	[LinkName("QDateEdit_MetaObject")]
	public static extern void* QDateEdit_MetaObject(void* c_this);
	[LinkName("QDateEdit_Metacast")]
	public static extern void* QDateEdit_Metacast(void* c_this, char8* param1);
	[LinkName("QDateEdit_Metacall")]
	public static extern int32 QDateEdit_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QDateEdit_Tr")]
	public static extern libqt_string QDateEdit_Tr(char8* s);
	[LinkName("QDateEdit_Connect_UserDateChanged")]
	public static extern void QDateEdit_Connect_UserDateChanged(void* c_this, c_intptr slot);
	[LinkName("QDateEdit_Tr2")]
	public static extern libqt_string QDateEdit_Tr2(char8* s, char8* c);
	[LinkName("QDateEdit_Tr3")]
	public static extern libqt_string QDateEdit_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QDateEdit_Delete")]
	public static extern void QDateEdit_Delete(void* self);
}