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
public struct QDateTimeEdit : QAbstractSpinBox
{
	[LinkName("QDateTimeEdit_new")]
	public static extern QDateTimeEdit* QDateTimeEdit_new(QWidget* parent);
	[LinkName("QDateTimeEdit_new2")]
	public static extern QDateTimeEdit* QDateTimeEdit_new2();
	[LinkName("QDateTimeEdit_new3")]
	public static extern QDateTimeEdit* QDateTimeEdit_new3(QDateTime* dt);
	[LinkName("QDateTimeEdit_new4")]
	public static extern QDateTimeEdit* QDateTimeEdit_new4(QDate d);
	[LinkName("QDateTimeEdit_new5")]
	public static extern QDateTimeEdit* QDateTimeEdit_new5(QTime t);
	[LinkName("QDateTimeEdit_new6")]
	public static extern QDateTimeEdit* QDateTimeEdit_new6(QDateTime* dt, QWidget* parent);
	[LinkName("QDateTimeEdit_new7")]
	public static extern QDateTimeEdit* QDateTimeEdit_new7(QDate d, QWidget* parent);
	[LinkName("QDateTimeEdit_new8")]
	public static extern QDateTimeEdit* QDateTimeEdit_new8(QTime t, QWidget* parent);
	[LinkName("QDateTimeEdit_MetaObject")]
	public static extern QMetaObject* QDateTimeEdit_MetaObject(Self* c_this);
	[LinkName("QDateTimeEdit_Metacast")]
	public static extern void* QDateTimeEdit_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDateTimeEdit_Metacall")]
	public static extern int32 QDateTimeEdit_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDateTimeEdit_Tr")]
	public static extern libqt_string QDateTimeEdit_Tr(char8[] s);
	[LinkName("QDateTimeEdit_DateTime")]
	public static extern QDateTime QDateTimeEdit_DateTime(Self* c_this);
	[LinkName("QDateTimeEdit_Date")]
	public static extern QDate QDateTimeEdit_Date(Self* c_this);
	[LinkName("QDateTimeEdit_Time")]
	public static extern QTime QDateTimeEdit_Time(Self* c_this);
	[LinkName("QDateTimeEdit_Calendar")]
	public static extern QCalendar QDateTimeEdit_Calendar(Self* c_this);
	[LinkName("QDateTimeEdit_SetCalendar")]
	public static extern void QDateTimeEdit_SetCalendar(Self* c_this, QCalendar calendar);
	[LinkName("QDateTimeEdit_MinimumDateTime")]
	public static extern QDateTime QDateTimeEdit_MinimumDateTime(Self* c_this);
	[LinkName("QDateTimeEdit_ClearMinimumDateTime")]
	public static extern void QDateTimeEdit_ClearMinimumDateTime(Self* c_this);
	[LinkName("QDateTimeEdit_SetMinimumDateTime")]
	public static extern void QDateTimeEdit_SetMinimumDateTime(Self* c_this, QDateTime* dt);
	[LinkName("QDateTimeEdit_MaximumDateTime")]
	public static extern QDateTime QDateTimeEdit_MaximumDateTime(Self* c_this);
	[LinkName("QDateTimeEdit_ClearMaximumDateTime")]
	public static extern void QDateTimeEdit_ClearMaximumDateTime(Self* c_this);
	[LinkName("QDateTimeEdit_SetMaximumDateTime")]
	public static extern void QDateTimeEdit_SetMaximumDateTime(Self* c_this, QDateTime* dt);
	[LinkName("QDateTimeEdit_SetDateTimeRange")]
	public static extern void QDateTimeEdit_SetDateTimeRange(Self* c_this, QDateTime* min, QDateTime* max);
	[LinkName("QDateTimeEdit_MinimumDate")]
	public static extern QDate QDateTimeEdit_MinimumDate(Self* c_this);
	[LinkName("QDateTimeEdit_SetMinimumDate")]
	public static extern void QDateTimeEdit_SetMinimumDate(Self* c_this, QDate min);
	[LinkName("QDateTimeEdit_ClearMinimumDate")]
	public static extern void QDateTimeEdit_ClearMinimumDate(Self* c_this);
	[LinkName("QDateTimeEdit_MaximumDate")]
	public static extern QDate QDateTimeEdit_MaximumDate(Self* c_this);
	[LinkName("QDateTimeEdit_SetMaximumDate")]
	public static extern void QDateTimeEdit_SetMaximumDate(Self* c_this, QDate max);
	[LinkName("QDateTimeEdit_ClearMaximumDate")]
	public static extern void QDateTimeEdit_ClearMaximumDate(Self* c_this);
	[LinkName("QDateTimeEdit_SetDateRange")]
	public static extern void QDateTimeEdit_SetDateRange(Self* c_this, QDate min, QDate max);
	[LinkName("QDateTimeEdit_MinimumTime")]
	public static extern QTime QDateTimeEdit_MinimumTime(Self* c_this);
	[LinkName("QDateTimeEdit_SetMinimumTime")]
	public static extern void QDateTimeEdit_SetMinimumTime(Self* c_this, QTime min);
	[LinkName("QDateTimeEdit_ClearMinimumTime")]
	public static extern void QDateTimeEdit_ClearMinimumTime(Self* c_this);
	[LinkName("QDateTimeEdit_MaximumTime")]
	public static extern QTime QDateTimeEdit_MaximumTime(Self* c_this);
	[LinkName("QDateTimeEdit_SetMaximumTime")]
	public static extern void QDateTimeEdit_SetMaximumTime(Self* c_this, QTime max);
	[LinkName("QDateTimeEdit_ClearMaximumTime")]
	public static extern void QDateTimeEdit_ClearMaximumTime(Self* c_this);
	[LinkName("QDateTimeEdit_SetTimeRange")]
	public static extern void QDateTimeEdit_SetTimeRange(Self* c_this, QTime min, QTime max);
	[LinkName("QDateTimeEdit_DisplayedSections")]
	public static extern int64 QDateTimeEdit_DisplayedSections(Self* c_this);
	[LinkName("QDateTimeEdit_CurrentSection")]
	public static extern int64 QDateTimeEdit_CurrentSection(Self* c_this);
	[LinkName("QDateTimeEdit_SectionAt")]
	public static extern int64 QDateTimeEdit_SectionAt(Self* c_this, int32 index);
	[LinkName("QDateTimeEdit_SetCurrentSection")]
	public static extern void QDateTimeEdit_SetCurrentSection(Self* c_this, int64 section);
	[LinkName("QDateTimeEdit_CurrentSectionIndex")]
	public static extern int32 QDateTimeEdit_CurrentSectionIndex(Self* c_this);
	[LinkName("QDateTimeEdit_SetCurrentSectionIndex")]
	public static extern void QDateTimeEdit_SetCurrentSectionIndex(Self* c_this, int32 index);
	[LinkName("QDateTimeEdit_CalendarWidget")]
	public static extern QCalendarWidget* QDateTimeEdit_CalendarWidget(Self* c_this);
	[LinkName("QDateTimeEdit_SetCalendarWidget")]
	public static extern void QDateTimeEdit_SetCalendarWidget(Self* c_this, QCalendarWidget* calendarWidget);
	[LinkName("QDateTimeEdit_SectionCount")]
	public static extern int32 QDateTimeEdit_SectionCount(Self* c_this);
	[LinkName("QDateTimeEdit_SetSelectedSection")]
	public static extern void QDateTimeEdit_SetSelectedSection(Self* c_this, int64 section);
	[LinkName("QDateTimeEdit_SectionText")]
	public static extern libqt_string QDateTimeEdit_SectionText(Self* c_this, int64 section);
	[LinkName("QDateTimeEdit_DisplayFormat")]
	public static extern libqt_string QDateTimeEdit_DisplayFormat(Self* c_this);
	[LinkName("QDateTimeEdit_SetDisplayFormat")]
	public static extern void QDateTimeEdit_SetDisplayFormat(Self* c_this, libqt_string format);
	[LinkName("QDateTimeEdit_CalendarPopup")]
	public static extern bool QDateTimeEdit_CalendarPopup(Self* c_this);
	[LinkName("QDateTimeEdit_SetCalendarPopup")]
	public static extern void QDateTimeEdit_SetCalendarPopup(Self* c_this, bool enable);
	[LinkName("QDateTimeEdit_TimeSpec")]
	public static extern int64 QDateTimeEdit_TimeSpec(Self* c_this);
	[LinkName("QDateTimeEdit_SetTimeSpec")]
	public static extern void QDateTimeEdit_SetTimeSpec(Self* c_this, int64 spec);
	[LinkName("QDateTimeEdit_SizeHint")]
	public static extern QSize QDateTimeEdit_SizeHint(Self* c_this);
	[LinkName("QDateTimeEdit_Clear")]
	public static extern void QDateTimeEdit_Clear(Self* c_this);
	[LinkName("QDateTimeEdit_StepBy")]
	public static extern void QDateTimeEdit_StepBy(Self* c_this, int32 steps);
	[LinkName("QDateTimeEdit_Event")]
	public static extern bool QDateTimeEdit_Event(Self* c_this, QEvent* event);
	[LinkName("QDateTimeEdit_DateTimeChanged")]
	public static extern void QDateTimeEdit_DateTimeChanged(Self* c_this, QDateTime* dateTime);
	[LinkName("QDateTimeEdit_TimeChanged")]
	public static extern void QDateTimeEdit_TimeChanged(Self* c_this, QTime time);
	[LinkName("QDateTimeEdit_DateChanged")]
	public static extern void QDateTimeEdit_DateChanged(Self* c_this, QDate date);
	[LinkName("QDateTimeEdit_SetDateTime")]
	public static extern void QDateTimeEdit_SetDateTime(Self* c_this, QDateTime* dateTime);
	[LinkName("QDateTimeEdit_SetDate")]
	public static extern void QDateTimeEdit_SetDate(Self* c_this, QDate date);
	[LinkName("QDateTimeEdit_SetTime")]
	public static extern void QDateTimeEdit_SetTime(Self* c_this, QTime time);
	[LinkName("QDateTimeEdit_KeyPressEvent")]
	public static extern void QDateTimeEdit_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QDateTimeEdit_WheelEvent")]
	public static extern void QDateTimeEdit_WheelEvent(Self* c_this, QWheelEvent* event);
	[LinkName("QDateTimeEdit_FocusInEvent")]
	public static extern void QDateTimeEdit_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QDateTimeEdit_FocusNextPrevChild")]
	public static extern bool QDateTimeEdit_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QDateTimeEdit_Validate")]
	public static extern int64 QDateTimeEdit_Validate(Self* c_this, libqt_string input, int32* pos);
	[LinkName("QDateTimeEdit_Fixup")]
	public static extern void QDateTimeEdit_Fixup(Self* c_this, libqt_string input);
	[LinkName("QDateTimeEdit_DateTimeFromText")]
	public static extern QDateTime QDateTimeEdit_DateTimeFromText(Self* c_this, libqt_string text);
	[LinkName("QDateTimeEdit_TextFromDateTime")]
	public static extern libqt_string QDateTimeEdit_TextFromDateTime(Self* c_this, QDateTime* dt);
	[LinkName("QDateTimeEdit_StepEnabled")]
	public static extern int64 QDateTimeEdit_StepEnabled(Self* c_this);
	[LinkName("QDateTimeEdit_MousePressEvent")]
	public static extern void QDateTimeEdit_MousePressEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QDateTimeEdit_PaintEvent")]
	public static extern void QDateTimeEdit_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QDateTimeEdit_InitStyleOption")]
	public static extern void QDateTimeEdit_InitStyleOption(Self* c_this, QStyleOptionSpinBox* option);
	[LinkName("QDateTimeEdit_Tr2")]
	public static extern libqt_string QDateTimeEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QDateTimeEdit_Tr3")]
	public static extern libqt_string QDateTimeEdit_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTimeEdit : QDateTimeEdit
{
	[LinkName("QTimeEdit_new")]
	public static extern QTimeEdit* QTimeEdit_new(QWidget* parent);
	[LinkName("QTimeEdit_new2")]
	public static extern QTimeEdit* QTimeEdit_new2();
	[LinkName("QTimeEdit_new3")]
	public static extern QTimeEdit* QTimeEdit_new3(QTime time);
	[LinkName("QTimeEdit_new4")]
	public static extern QTimeEdit* QTimeEdit_new4(QTime time, QWidget* parent);
	[LinkName("QTimeEdit_MetaObject")]
	public static extern QMetaObject* QTimeEdit_MetaObject(Self* c_this);
	[LinkName("QTimeEdit_Metacast")]
	public static extern void* QTimeEdit_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTimeEdit_Metacall")]
	public static extern int32 QTimeEdit_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTimeEdit_Tr")]
	public static extern libqt_string QTimeEdit_Tr(char8[] s);
	[LinkName("QTimeEdit_UserTimeChanged")]
	public static extern void QTimeEdit_UserTimeChanged(Self* c_this, QTime time);
	[LinkName("QTimeEdit_Tr2")]
	public static extern libqt_string QTimeEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QTimeEdit_Tr3")]
	public static extern libqt_string QTimeEdit_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QDateEdit : QDateTimeEdit
{
	[LinkName("QDateEdit_new")]
	public static extern QDateEdit* QDateEdit_new(QWidget* parent);
	[LinkName("QDateEdit_new2")]
	public static extern QDateEdit* QDateEdit_new2();
	[LinkName("QDateEdit_new3")]
	public static extern QDateEdit* QDateEdit_new3(QDate date);
	[LinkName("QDateEdit_new4")]
	public static extern QDateEdit* QDateEdit_new4(QDate date, QWidget* parent);
	[LinkName("QDateEdit_MetaObject")]
	public static extern QMetaObject* QDateEdit_MetaObject(Self* c_this);
	[LinkName("QDateEdit_Metacast")]
	public static extern void* QDateEdit_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDateEdit_Metacall")]
	public static extern int32 QDateEdit_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDateEdit_Tr")]
	public static extern libqt_string QDateEdit_Tr(char8[] s);
	[LinkName("QDateEdit_UserDateChanged")]
	public static extern void QDateEdit_UserDateChanged(Self* c_this, QDate date);
	[LinkName("QDateEdit_Tr2")]
	public static extern libqt_string QDateEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QDateEdit_Tr3")]
	public static extern libqt_string QDateEdit_Tr3(char8[] s, char8[] c, int32 n);
}