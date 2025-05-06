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
public struct QDateTimeEdit
{
	[LinkName("QDateTimeEdit_new")]
	public static extern void* QDateTimeEdit_new(QWidget parent);
	[LinkName("QDateTimeEdit_new2")]
	public static extern void* QDateTimeEdit_new2();
	[LinkName("QDateTimeEdit_new3")]
	public static extern void* QDateTimeEdit_new3(QDateTime dt);
	[LinkName("QDateTimeEdit_new4")]
	public static extern void* QDateTimeEdit_new4(QDate d);
	[LinkName("QDateTimeEdit_new5")]
	public static extern void* QDateTimeEdit_new5(QTime t);
	[LinkName("QDateTimeEdit_new6")]
	public static extern void* QDateTimeEdit_new6(QDateTime dt, QWidget parent);
	[LinkName("QDateTimeEdit_new7")]
	public static extern void* QDateTimeEdit_new7(QDate d, QWidget parent);
	[LinkName("QDateTimeEdit_new8")]
	public static extern void* QDateTimeEdit_new8(QTime t, QWidget parent);
	[LinkName("QDateTimeEdit_MetaObject")]
	public static extern QMetaObject QDateTimeEdit_MetaObject(void* c_this);
	[LinkName("QDateTimeEdit_Metacast")]
	public static extern void QDateTimeEdit_Metacast(void* c_this, char8[] param1);
	[LinkName("QDateTimeEdit_Metacall")]
	public static extern int32 QDateTimeEdit_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDateTimeEdit_Tr")]
	public static extern char8[] QDateTimeEdit_Tr(char8[] s);
	[LinkName("QDateTimeEdit_DateTime")]
	public static extern QDateTime QDateTimeEdit_DateTime(void* c_this);
	[LinkName("QDateTimeEdit_Date")]
	public static extern QDate QDateTimeEdit_Date(void* c_this);
	[LinkName("QDateTimeEdit_Time")]
	public static extern QTime QDateTimeEdit_Time(void* c_this);
	[LinkName("QDateTimeEdit_Calendar")]
	public static extern QCalendar QDateTimeEdit_Calendar(void* c_this);
	[LinkName("QDateTimeEdit_SetCalendar")]
	public static extern void QDateTimeEdit_SetCalendar(void* c_this, QCalendar calendar);
	[LinkName("QDateTimeEdit_MinimumDateTime")]
	public static extern QDateTime QDateTimeEdit_MinimumDateTime(void* c_this);
	[LinkName("QDateTimeEdit_ClearMinimumDateTime")]
	public static extern void QDateTimeEdit_ClearMinimumDateTime(void* c_this);
	[LinkName("QDateTimeEdit_SetMinimumDateTime")]
	public static extern void QDateTimeEdit_SetMinimumDateTime(void* c_this, QDateTime dt);
	[LinkName("QDateTimeEdit_MaximumDateTime")]
	public static extern QDateTime QDateTimeEdit_MaximumDateTime(void* c_this);
	[LinkName("QDateTimeEdit_ClearMaximumDateTime")]
	public static extern void QDateTimeEdit_ClearMaximumDateTime(void* c_this);
	[LinkName("QDateTimeEdit_SetMaximumDateTime")]
	public static extern void QDateTimeEdit_SetMaximumDateTime(void* c_this, QDateTime dt);
	[LinkName("QDateTimeEdit_SetDateTimeRange")]
	public static extern void QDateTimeEdit_SetDateTimeRange(void* c_this, QDateTime min, QDateTime max);
	[LinkName("QDateTimeEdit_MinimumDate")]
	public static extern QDate QDateTimeEdit_MinimumDate(void* c_this);
	[LinkName("QDateTimeEdit_SetMinimumDate")]
	public static extern void QDateTimeEdit_SetMinimumDate(void* c_this, QDate min);
	[LinkName("QDateTimeEdit_ClearMinimumDate")]
	public static extern void QDateTimeEdit_ClearMinimumDate(void* c_this);
	[LinkName("QDateTimeEdit_MaximumDate")]
	public static extern QDate QDateTimeEdit_MaximumDate(void* c_this);
	[LinkName("QDateTimeEdit_SetMaximumDate")]
	public static extern void QDateTimeEdit_SetMaximumDate(void* c_this, QDate max);
	[LinkName("QDateTimeEdit_ClearMaximumDate")]
	public static extern void QDateTimeEdit_ClearMaximumDate(void* c_this);
	[LinkName("QDateTimeEdit_SetDateRange")]
	public static extern void QDateTimeEdit_SetDateRange(void* c_this, QDate min, QDate max);
	[LinkName("QDateTimeEdit_MinimumTime")]
	public static extern QTime QDateTimeEdit_MinimumTime(void* c_this);
	[LinkName("QDateTimeEdit_SetMinimumTime")]
	public static extern void QDateTimeEdit_SetMinimumTime(void* c_this, QTime min);
	[LinkName("QDateTimeEdit_ClearMinimumTime")]
	public static extern void QDateTimeEdit_ClearMinimumTime(void* c_this);
	[LinkName("QDateTimeEdit_MaximumTime")]
	public static extern QTime QDateTimeEdit_MaximumTime(void* c_this);
	[LinkName("QDateTimeEdit_SetMaximumTime")]
	public static extern void QDateTimeEdit_SetMaximumTime(void* c_this, QTime max);
	[LinkName("QDateTimeEdit_ClearMaximumTime")]
	public static extern void QDateTimeEdit_ClearMaximumTime(void* c_this);
	[LinkName("QDateTimeEdit_SetTimeRange")]
	public static extern void QDateTimeEdit_SetTimeRange(void* c_this, QTime min, QTime max);
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
	public static extern QCalendarWidget QDateTimeEdit_CalendarWidget(void* c_this);
	[LinkName("QDateTimeEdit_SetCalendarWidget")]
	public static extern void QDateTimeEdit_SetCalendarWidget(void* c_this, QCalendarWidget calendarWidget);
	[LinkName("QDateTimeEdit_SectionCount")]
	public static extern int32 QDateTimeEdit_SectionCount(void* c_this);
	[LinkName("QDateTimeEdit_SetSelectedSection")]
	public static extern void QDateTimeEdit_SetSelectedSection(void* c_this, int64 section);
	[LinkName("QDateTimeEdit_SectionText")]
	public static extern char8[] QDateTimeEdit_SectionText(void* c_this, int64 section);
	[LinkName("QDateTimeEdit_DisplayFormat")]
	public static extern char8[] QDateTimeEdit_DisplayFormat(void* c_this);
	[LinkName("QDateTimeEdit_SetDisplayFormat")]
	public static extern void QDateTimeEdit_SetDisplayFormat(void* c_this, char8[] format);
	[LinkName("QDateTimeEdit_CalendarPopup")]
	public static extern bool QDateTimeEdit_CalendarPopup(void* c_this);
	[LinkName("QDateTimeEdit_SetCalendarPopup")]
	public static extern void QDateTimeEdit_SetCalendarPopup(void* c_this, bool enable);
	[LinkName("QDateTimeEdit_TimeSpec")]
	public static extern int64 QDateTimeEdit_TimeSpec(void* c_this);
	[LinkName("QDateTimeEdit_SetTimeSpec")]
	public static extern void QDateTimeEdit_SetTimeSpec(void* c_this, int64 spec);
	[LinkName("QDateTimeEdit_SizeHint")]
	public static extern QSize QDateTimeEdit_SizeHint(void* c_this);
	[LinkName("QDateTimeEdit_Clear")]
	public static extern void QDateTimeEdit_Clear(void* c_this);
	[LinkName("QDateTimeEdit_StepBy")]
	public static extern void QDateTimeEdit_StepBy(void* c_this, int32 steps);
	[LinkName("QDateTimeEdit_Event")]
	public static extern bool QDateTimeEdit_Event(void* c_this, QEvent event);
	[LinkName("QDateTimeEdit_DateTimeChanged")]
	public static extern void QDateTimeEdit_DateTimeChanged(void* c_this, QDateTime dateTime);
	[LinkName("QDateTimeEdit_TimeChanged")]
	public static extern void QDateTimeEdit_TimeChanged(void* c_this, QTime time);
	[LinkName("QDateTimeEdit_DateChanged")]
	public static extern void QDateTimeEdit_DateChanged(void* c_this, QDate date);
	[LinkName("QDateTimeEdit_SetDateTime")]
	public static extern void QDateTimeEdit_SetDateTime(void* c_this, QDateTime dateTime);
	[LinkName("QDateTimeEdit_SetDate")]
	public static extern void QDateTimeEdit_SetDate(void* c_this, QDate date);
	[LinkName("QDateTimeEdit_SetTime")]
	public static extern void QDateTimeEdit_SetTime(void* c_this, QTime time);
	[LinkName("QDateTimeEdit_KeyPressEvent")]
	public static extern void QDateTimeEdit_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QDateTimeEdit_WheelEvent")]
	public static extern void QDateTimeEdit_WheelEvent(void* c_this, QWheelEvent event);
	[LinkName("QDateTimeEdit_FocusInEvent")]
	public static extern void QDateTimeEdit_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QDateTimeEdit_FocusNextPrevChild")]
	public static extern bool QDateTimeEdit_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QDateTimeEdit_Validate")]
	public static extern int64 QDateTimeEdit_Validate(void* c_this, char8[] input, int32 pos);
	[LinkName("QDateTimeEdit_Fixup")]
	public static extern void QDateTimeEdit_Fixup(void* c_this, char8[] input);
	[LinkName("QDateTimeEdit_DateTimeFromText")]
	public static extern QDateTime QDateTimeEdit_DateTimeFromText(void* c_this, char8[] text);
	[LinkName("QDateTimeEdit_TextFromDateTime")]
	public static extern char8[] QDateTimeEdit_TextFromDateTime(void* c_this, QDateTime dt);
	[LinkName("QDateTimeEdit_StepEnabled")]
	public static extern int64 QDateTimeEdit_StepEnabled(void* c_this);
	[LinkName("QDateTimeEdit_MousePressEvent")]
	public static extern void QDateTimeEdit_MousePressEvent(void* c_this, QMouseEvent event);
	[LinkName("QDateTimeEdit_PaintEvent")]
	public static extern void QDateTimeEdit_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QDateTimeEdit_InitStyleOption")]
	public static extern void QDateTimeEdit_InitStyleOption(void* c_this, QStyleOptionSpinBox option);
	[LinkName("QDateTimeEdit_Tr2")]
	public static extern char8[] QDateTimeEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QDateTimeEdit_Tr3")]
	public static extern char8[] QDateTimeEdit_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTimeEdit
{
	[LinkName("QTimeEdit_new")]
	public static extern void* QTimeEdit_new(QWidget parent);
	[LinkName("QTimeEdit_new2")]
	public static extern void* QTimeEdit_new2();
	[LinkName("QTimeEdit_new3")]
	public static extern void* QTimeEdit_new3(QTime time);
	[LinkName("QTimeEdit_new4")]
	public static extern void* QTimeEdit_new4(QTime time, QWidget parent);
	[LinkName("QTimeEdit_MetaObject")]
	public static extern QMetaObject QTimeEdit_MetaObject(void* c_this);
	[LinkName("QTimeEdit_Metacast")]
	public static extern void QTimeEdit_Metacast(void* c_this, char8[] param1);
	[LinkName("QTimeEdit_Metacall")]
	public static extern int32 QTimeEdit_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTimeEdit_Tr")]
	public static extern char8[] QTimeEdit_Tr(char8[] s);
	[LinkName("QTimeEdit_UserTimeChanged")]
	public static extern void QTimeEdit_UserTimeChanged(void* c_this, QTime time);
	[LinkName("QTimeEdit_Tr2")]
	public static extern char8[] QTimeEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QTimeEdit_Tr3")]
	public static extern char8[] QTimeEdit_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QDateEdit
{
	[LinkName("QDateEdit_new")]
	public static extern void* QDateEdit_new(QWidget parent);
	[LinkName("QDateEdit_new2")]
	public static extern void* QDateEdit_new2();
	[LinkName("QDateEdit_new3")]
	public static extern void* QDateEdit_new3(QDate date);
	[LinkName("QDateEdit_new4")]
	public static extern void* QDateEdit_new4(QDate date, QWidget parent);
	[LinkName("QDateEdit_MetaObject")]
	public static extern QMetaObject QDateEdit_MetaObject(void* c_this);
	[LinkName("QDateEdit_Metacast")]
	public static extern void QDateEdit_Metacast(void* c_this, char8[] param1);
	[LinkName("QDateEdit_Metacall")]
	public static extern int32 QDateEdit_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDateEdit_Tr")]
	public static extern char8[] QDateEdit_Tr(char8[] s);
	[LinkName("QDateEdit_UserDateChanged")]
	public static extern void QDateEdit_UserDateChanged(void* c_this, QDate date);
	[LinkName("QDateEdit_Tr2")]
	public static extern char8[] QDateEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QDateEdit_Tr3")]
	public static extern char8[] QDateEdit_Tr3(char8[] s, char8[] c, int32 n);
}