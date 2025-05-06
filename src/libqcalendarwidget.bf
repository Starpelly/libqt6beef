using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCalendarWidget__HorizontalHeaderFormat
{
	NoHorizontalHeader = 0,
	SingleLetterDayNames = 1,
	ShortDayNames = 2,
	LongDayNames = 3,
}
[AllowDuplicates]
public enum QCalendarWidget__VerticalHeaderFormat
{
	NoVerticalHeader = 0,
	ISOWeekNumbers = 1,
}
[AllowDuplicates]
public enum QCalendarWidget__SelectionMode
{
	NoSelection = 0,
	SingleSelection = 1,
}
public struct QCalendarWidget
{
	[LinkName("QCalendarWidget_new")]
	public static extern void* QCalendarWidget_new(QWidget parent);
	[LinkName("QCalendarWidget_new2")]
	public static extern void* QCalendarWidget_new2();
	[LinkName("QCalendarWidget_MetaObject")]
	public static extern QMetaObject QCalendarWidget_MetaObject(void* c_this);
	[LinkName("QCalendarWidget_Metacast")]
	public static extern void QCalendarWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QCalendarWidget_Metacall")]
	public static extern int32 QCalendarWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QCalendarWidget_Tr")]
	public static extern char8[] QCalendarWidget_Tr(char8[] s);
	[LinkName("QCalendarWidget_SizeHint")]
	public static extern QSize QCalendarWidget_SizeHint(void* c_this);
	[LinkName("QCalendarWidget_MinimumSizeHint")]
	public static extern QSize QCalendarWidget_MinimumSizeHint(void* c_this);
	[LinkName("QCalendarWidget_SelectedDate")]
	public static extern QDate QCalendarWidget_SelectedDate(void* c_this);
	[LinkName("QCalendarWidget_YearShown")]
	public static extern int32 QCalendarWidget_YearShown(void* c_this);
	[LinkName("QCalendarWidget_MonthShown")]
	public static extern int32 QCalendarWidget_MonthShown(void* c_this);
	[LinkName("QCalendarWidget_MinimumDate")]
	public static extern QDate QCalendarWidget_MinimumDate(void* c_this);
	[LinkName("QCalendarWidget_SetMinimumDate")]
	public static extern void QCalendarWidget_SetMinimumDate(void* c_this, QDate date);
	[LinkName("QCalendarWidget_MaximumDate")]
	public static extern QDate QCalendarWidget_MaximumDate(void* c_this);
	[LinkName("QCalendarWidget_SetMaximumDate")]
	public static extern void QCalendarWidget_SetMaximumDate(void* c_this, QDate date);
	[LinkName("QCalendarWidget_FirstDayOfWeek")]
	public static extern int64 QCalendarWidget_FirstDayOfWeek(void* c_this);
	[LinkName("QCalendarWidget_SetFirstDayOfWeek")]
	public static extern void QCalendarWidget_SetFirstDayOfWeek(void* c_this, int64 dayOfWeek);
	[LinkName("QCalendarWidget_IsNavigationBarVisible")]
	public static extern bool QCalendarWidget_IsNavigationBarVisible(void* c_this);
	[LinkName("QCalendarWidget_IsGridVisible")]
	public static extern bool QCalendarWidget_IsGridVisible(void* c_this);
	[LinkName("QCalendarWidget_Calendar")]
	public static extern QCalendar QCalendarWidget_Calendar(void* c_this);
	[LinkName("QCalendarWidget_SetCalendar")]
	public static extern void QCalendarWidget_SetCalendar(void* c_this, QCalendar calendar);
	[LinkName("QCalendarWidget_SelectionMode")]
	public static extern int64 QCalendarWidget_SelectionMode(void* c_this);
	[LinkName("QCalendarWidget_SetSelectionMode")]
	public static extern void QCalendarWidget_SetSelectionMode(void* c_this, int64 mode);
	[LinkName("QCalendarWidget_HorizontalHeaderFormat")]
	public static extern int64 QCalendarWidget_HorizontalHeaderFormat(void* c_this);
	[LinkName("QCalendarWidget_SetHorizontalHeaderFormat")]
	public static extern void QCalendarWidget_SetHorizontalHeaderFormat(void* c_this, int64 format);
	[LinkName("QCalendarWidget_VerticalHeaderFormat")]
	public static extern int64 QCalendarWidget_VerticalHeaderFormat(void* c_this);
	[LinkName("QCalendarWidget_SetVerticalHeaderFormat")]
	public static extern void QCalendarWidget_SetVerticalHeaderFormat(void* c_this, int64 format);
	[LinkName("QCalendarWidget_HeaderTextFormat")]
	public static extern QTextCharFormat QCalendarWidget_HeaderTextFormat(void* c_this);
	[LinkName("QCalendarWidget_SetHeaderTextFormat")]
	public static extern void QCalendarWidget_SetHeaderTextFormat(void* c_this, QTextCharFormat format);
	[LinkName("QCalendarWidget_WeekdayTextFormat")]
	public static extern QTextCharFormat QCalendarWidget_WeekdayTextFormat(void* c_this, int64 dayOfWeek);
	[LinkName("QCalendarWidget_SetWeekdayTextFormat")]
	public static extern void QCalendarWidget_SetWeekdayTextFormat(void* c_this, int64 dayOfWeek, QTextCharFormat format);
	[LinkName("QCalendarWidget_DateTextFormat")]
	public static extern void* QCalendarWidget_DateTextFormat(void* c_this);
	[LinkName("QCalendarWidget_DateTextFormatWithDate")]
	public static extern QTextCharFormat QCalendarWidget_DateTextFormatWithDate(void* c_this, QDate date);
	[LinkName("QCalendarWidget_SetDateTextFormat")]
	public static extern void QCalendarWidget_SetDateTextFormat(void* c_this, QDate date, QTextCharFormat format);
	[LinkName("QCalendarWidget_IsDateEditEnabled")]
	public static extern bool QCalendarWidget_IsDateEditEnabled(void* c_this);
	[LinkName("QCalendarWidget_SetDateEditEnabled")]
	public static extern void QCalendarWidget_SetDateEditEnabled(void* c_this, bool enable);
	[LinkName("QCalendarWidget_DateEditAcceptDelay")]
	public static extern int32 QCalendarWidget_DateEditAcceptDelay(void* c_this);
	[LinkName("QCalendarWidget_SetDateEditAcceptDelay")]
	public static extern void QCalendarWidget_SetDateEditAcceptDelay(void* c_this, int32 delay);
	[LinkName("QCalendarWidget_Event")]
	public static extern bool QCalendarWidget_Event(void* c_this, QEvent event);
	[LinkName("QCalendarWidget_EventFilter")]
	public static extern bool QCalendarWidget_EventFilter(void* c_this, QObject watched, QEvent event);
	[LinkName("QCalendarWidget_MousePressEvent")]
	public static extern void QCalendarWidget_MousePressEvent(void* c_this, QMouseEvent event);
	[LinkName("QCalendarWidget_ResizeEvent")]
	public static extern void QCalendarWidget_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QCalendarWidget_KeyPressEvent")]
	public static extern void QCalendarWidget_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QCalendarWidget_PaintCell")]
	public static extern void QCalendarWidget_PaintCell(void* c_this, QPainter painter, QRect rect, QDate date);
	[LinkName("QCalendarWidget_UpdateCell")]
	public static extern void QCalendarWidget_UpdateCell(void* c_this, QDate date);
	[LinkName("QCalendarWidget_UpdateCells")]
	public static extern void QCalendarWidget_UpdateCells(void* c_this);
	[LinkName("QCalendarWidget_SetSelectedDate")]
	public static extern void QCalendarWidget_SetSelectedDate(void* c_this, QDate date);
	[LinkName("QCalendarWidget_SetDateRange")]
	public static extern void QCalendarWidget_SetDateRange(void* c_this, QDate min, QDate max);
	[LinkName("QCalendarWidget_SetCurrentPage")]
	public static extern void QCalendarWidget_SetCurrentPage(void* c_this, int32 year, int32 month);
	[LinkName("QCalendarWidget_SetGridVisible")]
	public static extern void QCalendarWidget_SetGridVisible(void* c_this, bool show);
	[LinkName("QCalendarWidget_SetNavigationBarVisible")]
	public static extern void QCalendarWidget_SetNavigationBarVisible(void* c_this, bool visible);
	[LinkName("QCalendarWidget_ShowNextMonth")]
	public static extern void QCalendarWidget_ShowNextMonth(void* c_this);
	[LinkName("QCalendarWidget_ShowPreviousMonth")]
	public static extern void QCalendarWidget_ShowPreviousMonth(void* c_this);
	[LinkName("QCalendarWidget_ShowNextYear")]
	public static extern void QCalendarWidget_ShowNextYear(void* c_this);
	[LinkName("QCalendarWidget_ShowPreviousYear")]
	public static extern void QCalendarWidget_ShowPreviousYear(void* c_this);
	[LinkName("QCalendarWidget_ShowSelectedDate")]
	public static extern void QCalendarWidget_ShowSelectedDate(void* c_this);
	[LinkName("QCalendarWidget_ShowToday")]
	public static extern void QCalendarWidget_ShowToday(void* c_this);
	[LinkName("QCalendarWidget_SelectionChanged")]
	public static extern void QCalendarWidget_SelectionChanged(void* c_this);
	[LinkName("QCalendarWidget_Clicked")]
	public static extern void QCalendarWidget_Clicked(void* c_this, QDate date);
	[LinkName("QCalendarWidget_Activated")]
	public static extern void QCalendarWidget_Activated(void* c_this, QDate date);
	[LinkName("QCalendarWidget_CurrentPageChanged")]
	public static extern void QCalendarWidget_CurrentPageChanged(void* c_this, int32 year, int32 month);
	[LinkName("QCalendarWidget_Tr2")]
	public static extern char8[] QCalendarWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QCalendarWidget_Tr3")]
	public static extern char8[] QCalendarWidget_Tr3(char8[] s, char8[] c, int32 n);
}