using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QWizard__WizardButton
{
	BackButton = 0,
	NextButton = 1,
	CommitButton = 2,
	FinishButton = 3,
	CancelButton = 4,
	HelpButton = 5,
	CustomButton1 = 6,
	CustomButton2 = 7,
	CustomButton3 = 8,
	Stretch = 9,
	NoButton = -1,
	NStandardButtons = 6,
	NButtons = 9,
}
[AllowDuplicates]
public enum QWizard__WizardPixmap
{
	WatermarkPixmap = 0,
	LogoPixmap = 1,
	BannerPixmap = 2,
	BackgroundPixmap = 3,
	NPixmaps = 4,
}
[AllowDuplicates]
public enum QWizard__WizardStyle
{
	ClassicStyle = 0,
	ModernStyle = 1,
	MacStyle = 2,
	AeroStyle = 3,
	NStyles = 4,
}
[AllowDuplicates]
public enum QWizard__WizardOption
{
	IndependentPages = 1,
	IgnoreSubTitles = 2,
	ExtendedWatermarkPixmap = 4,
	NoDefaultButton = 8,
	NoBackButtonOnStartPage = 16,
	NoBackButtonOnLastPage = 32,
	DisabledBackButtonOnLastPage = 64,
	HaveNextButtonOnLastPage = 128,
	HaveFinishButtonOnEarlyPages = 256,
	NoCancelButton = 512,
	CancelButtonOnLeft = 1024,
	HaveHelpButton = 2048,
	HelpButtonOnRight = 4096,
	HaveCustomButton1 = 8192,
	HaveCustomButton2 = 16384,
	HaveCustomButton3 = 32768,
	NoCancelButtonOnLastPage = 65536,
}
public struct QWizard
{
	[LinkName("QWizard_new")]
	public static extern void* QWizard_new(QWidget parent);
	[LinkName("QWizard_new2")]
	public static extern void* QWizard_new2();
	[LinkName("QWizard_new3")]
	public static extern void* QWizard_new3(QWidget parent, int64 flags);
	[LinkName("QWizard_MetaObject")]
	public static extern QMetaObject QWizard_MetaObject(void* c_this);
	[LinkName("QWizard_Metacast")]
	public static extern void QWizard_Metacast(void* c_this, char8[] param1);
	[LinkName("QWizard_Metacall")]
	public static extern int32 QWizard_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QWizard_Tr")]
	public static extern char8[] QWizard_Tr(char8[] s);
	[LinkName("QWizard_AddPage")]
	public static extern int32 QWizard_AddPage(void* c_this, QWizardPage page);
	[LinkName("QWizard_SetPage")]
	public static extern void QWizard_SetPage(void* c_this, int32 id, QWizardPage page);
	[LinkName("QWizard_RemovePage")]
	public static extern void QWizard_RemovePage(void* c_this, int32 id);
	[LinkName("QWizard_Page")]
	public static extern QWizardPage QWizard_Page(void* c_this, int32 id);
	[LinkName("QWizard_HasVisitedPage")]
	public static extern bool QWizard_HasVisitedPage(void* c_this, int32 id);
	[LinkName("QWizard_VisitedIds")]
	public static extern int32[] QWizard_VisitedIds(void* c_this);
	[LinkName("QWizard_PageIds")]
	public static extern int32[] QWizard_PageIds(void* c_this);
	[LinkName("QWizard_SetStartId")]
	public static extern void QWizard_SetStartId(void* c_this, int32 id);
	[LinkName("QWizard_StartId")]
	public static extern int32 QWizard_StartId(void* c_this);
	[LinkName("QWizard_CurrentPage")]
	public static extern QWizardPage QWizard_CurrentPage(void* c_this);
	[LinkName("QWizard_CurrentId")]
	public static extern int32 QWizard_CurrentId(void* c_this);
	[LinkName("QWizard_ValidateCurrentPage")]
	public static extern bool QWizard_ValidateCurrentPage(void* c_this);
	[LinkName("QWizard_NextId")]
	public static extern int32 QWizard_NextId(void* c_this);
	[LinkName("QWizard_SetField")]
	public static extern void QWizard_SetField(void* c_this, char8[] name, QVariant value);
	[LinkName("QWizard_Field")]
	public static extern QVariant QWizard_Field(void* c_this, char8[] name);
	[LinkName("QWizard_SetWizardStyle")]
	public static extern void QWizard_SetWizardStyle(void* c_this, int64 style);
	[LinkName("QWizard_WizardStyle")]
	public static extern int64 QWizard_WizardStyle(void* c_this);
	[LinkName("QWizard_SetOption")]
	public static extern void QWizard_SetOption(void* c_this, int64 option);
	[LinkName("QWizard_TestOption")]
	public static extern bool QWizard_TestOption(void* c_this, int64 option);
	[LinkName("QWizard_SetOptions")]
	public static extern void QWizard_SetOptions(void* c_this, int64 options);
	[LinkName("QWizard_Options")]
	public static extern int64 QWizard_Options(void* c_this);
	[LinkName("QWizard_SetButtonText")]
	public static extern void QWizard_SetButtonText(void* c_this, int64 which, char8[] text);
	[LinkName("QWizard_ButtonText")]
	public static extern char8[] QWizard_ButtonText(void* c_this, int64 which);
	[LinkName("QWizard_SetButtonLayout")]
	public static extern void QWizard_SetButtonLayout(void* c_this, int64[] layout);
	[LinkName("QWizard_SetButton")]
	public static extern void QWizard_SetButton(void* c_this, int64 which, QAbstractButton button);
	[LinkName("QWizard_Button")]
	public static extern QAbstractButton QWizard_Button(void* c_this, int64 which);
	[LinkName("QWizard_SetTitleFormat")]
	public static extern void QWizard_SetTitleFormat(void* c_this, int64 format);
	[LinkName("QWizard_TitleFormat")]
	public static extern int64 QWizard_TitleFormat(void* c_this);
	[LinkName("QWizard_SetSubTitleFormat")]
	public static extern void QWizard_SetSubTitleFormat(void* c_this, int64 format);
	[LinkName("QWizard_SubTitleFormat")]
	public static extern int64 QWizard_SubTitleFormat(void* c_this);
	[LinkName("QWizard_SetPixmap")]
	public static extern void QWizard_SetPixmap(void* c_this, int64 which, QPixmap pixmap);
	[LinkName("QWizard_Pixmap")]
	public static extern QPixmap QWizard_Pixmap(void* c_this, int64 which);
	[LinkName("QWizard_SetSideWidget")]
	public static extern void QWizard_SetSideWidget(void* c_this, QWidget widget);
	[LinkName("QWizard_SideWidget")]
	public static extern QWidget QWizard_SideWidget(void* c_this);
	[LinkName("QWizard_SetDefaultProperty")]
	public static extern void QWizard_SetDefaultProperty(void* c_this, char8[] className, char8[] property, char8[] changedSignal);
	[LinkName("QWizard_SetVisible")]
	public static extern void QWizard_SetVisible(void* c_this, bool visible);
	[LinkName("QWizard_SizeHint")]
	public static extern QSize QWizard_SizeHint(void* c_this);
	[LinkName("QWizard_CurrentIdChanged")]
	public static extern void QWizard_CurrentIdChanged(void* c_this, int32 id);
	[LinkName("QWizard_HelpRequested")]
	public static extern void QWizard_HelpRequested(void* c_this);
	[LinkName("QWizard_CustomButtonClicked")]
	public static extern void QWizard_CustomButtonClicked(void* c_this, int32 which);
	[LinkName("QWizard_PageAdded")]
	public static extern void QWizard_PageAdded(void* c_this, int32 id);
	[LinkName("QWizard_PageRemoved")]
	public static extern void QWizard_PageRemoved(void* c_this, int32 id);
	[LinkName("QWizard_Back")]
	public static extern void QWizard_Back(void* c_this);
	[LinkName("QWizard_Next")]
	public static extern void QWizard_Next(void* c_this);
	[LinkName("QWizard_SetCurrentId")]
	public static extern void QWizard_SetCurrentId(void* c_this, int32 id);
	[LinkName("QWizard_Restart")]
	public static extern void QWizard_Restart(void* c_this);
	[LinkName("QWizard_Event")]
	public static extern bool QWizard_Event(void* c_this, QEvent event);
	[LinkName("QWizard_ResizeEvent")]
	public static extern void QWizard_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QWizard_PaintEvent")]
	public static extern void QWizard_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QWizard_Done")]
	public static extern void QWizard_Done(void* c_this, int32 result);
	[LinkName("QWizard_InitializePage")]
	public static extern void QWizard_InitializePage(void* c_this, int32 id);
	[LinkName("QWizard_CleanupPage")]
	public static extern void QWizard_CleanupPage(void* c_this, int32 id);
	[LinkName("QWizard_Tr2")]
	public static extern char8[] QWizard_Tr2(char8[] s, char8[] c);
	[LinkName("QWizard_Tr3")]
	public static extern char8[] QWizard_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QWizard_SetOption2")]
	public static extern void QWizard_SetOption2(void* c_this, int64 option, bool on);
}
public struct QWizardPage
{
	[LinkName("QWizardPage_new")]
	public static extern void* QWizardPage_new(QWidget parent);
	[LinkName("QWizardPage_new2")]
	public static extern void* QWizardPage_new2();
	[LinkName("QWizardPage_MetaObject")]
	public static extern QMetaObject QWizardPage_MetaObject(void* c_this);
	[LinkName("QWizardPage_Metacast")]
	public static extern void QWizardPage_Metacast(void* c_this, char8[] param1);
	[LinkName("QWizardPage_Metacall")]
	public static extern int32 QWizardPage_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QWizardPage_Tr")]
	public static extern char8[] QWizardPage_Tr(char8[] s);
	[LinkName("QWizardPage_SetTitle")]
	public static extern void QWizardPage_SetTitle(void* c_this, char8[] title);
	[LinkName("QWizardPage_Title")]
	public static extern char8[] QWizardPage_Title(void* c_this);
	[LinkName("QWizardPage_SetSubTitle")]
	public static extern void QWizardPage_SetSubTitle(void* c_this, char8[] subTitle);
	[LinkName("QWizardPage_SubTitle")]
	public static extern char8[] QWizardPage_SubTitle(void* c_this);
	[LinkName("QWizardPage_SetPixmap")]
	public static extern void QWizardPage_SetPixmap(void* c_this, int64 which, QPixmap pixmap);
	[LinkName("QWizardPage_Pixmap")]
	public static extern QPixmap QWizardPage_Pixmap(void* c_this, int64 which);
	[LinkName("QWizardPage_SetFinalPage")]
	public static extern void QWizardPage_SetFinalPage(void* c_this, bool finalPage);
	[LinkName("QWizardPage_IsFinalPage")]
	public static extern bool QWizardPage_IsFinalPage(void* c_this);
	[LinkName("QWizardPage_SetCommitPage")]
	public static extern void QWizardPage_SetCommitPage(void* c_this, bool commitPage);
	[LinkName("QWizardPage_IsCommitPage")]
	public static extern bool QWizardPage_IsCommitPage(void* c_this);
	[LinkName("QWizardPage_SetButtonText")]
	public static extern void QWizardPage_SetButtonText(void* c_this, int64 which, char8[] text);
	[LinkName("QWizardPage_ButtonText")]
	public static extern char8[] QWizardPage_ButtonText(void* c_this, int64 which);
	[LinkName("QWizardPage_InitializePage")]
	public static extern void QWizardPage_InitializePage(void* c_this);
	[LinkName("QWizardPage_CleanupPage")]
	public static extern void QWizardPage_CleanupPage(void* c_this);
	[LinkName("QWizardPage_ValidatePage")]
	public static extern bool QWizardPage_ValidatePage(void* c_this);
	[LinkName("QWizardPage_IsComplete")]
	public static extern bool QWizardPage_IsComplete(void* c_this);
	[LinkName("QWizardPage_NextId")]
	public static extern int32 QWizardPage_NextId(void* c_this);
	[LinkName("QWizardPage_CompleteChanged")]
	public static extern void QWizardPage_CompleteChanged(void* c_this);
	[LinkName("QWizardPage_SetField")]
	public static extern void QWizardPage_SetField(void* c_this, char8[] name, QVariant value);
	[LinkName("QWizardPage_Field")]
	public static extern QVariant QWizardPage_Field(void* c_this, char8[] name);
	[LinkName("QWizardPage_RegisterField")]
	public static extern void QWizardPage_RegisterField(void* c_this, char8[] name, QWidget widget);
	[LinkName("QWizardPage_Wizard")]
	public static extern QWizard QWizardPage_Wizard(void* c_this);
	[LinkName("QWizardPage_Tr2")]
	public static extern char8[] QWizardPage_Tr2(char8[] s, char8[] c);
	[LinkName("QWizardPage_Tr3")]
	public static extern char8[] QWizardPage_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QWizardPage_RegisterField3")]
	public static extern void QWizardPage_RegisterField3(void* c_this, char8[] name, QWidget widget, char8[] property);
	[LinkName("QWizardPage_RegisterField4")]
	public static extern void QWizardPage_RegisterField4(void* c_this, char8[] name, QWidget widget, char8[] property, char8[] changedSignal);
}