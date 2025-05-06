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
public struct QWizard : QDialog
{
	[LinkName("QWizard_new")]
	public static extern QWizard* QWizard_new(QWidget* parent);
	[LinkName("QWizard_new2")]
	public static extern QWizard* QWizard_new2();
	[LinkName("QWizard_new3")]
	public static extern QWizard* QWizard_new3(QWidget* parent, int64 flags);
	[LinkName("QWizard_MetaObject")]
	public static extern QMetaObject* QWizard_MetaObject(Self* c_this);
	[LinkName("QWizard_Metacast")]
	public static extern void* QWizard_Metacast(Self* c_this, char8[] param1);
	[LinkName("QWizard_Metacall")]
	public static extern int32 QWizard_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QWizard_Tr")]
	public static extern libqt_string QWizard_Tr(char8[] s);
	[LinkName("QWizard_AddPage")]
	public static extern int32 QWizard_AddPage(Self* c_this, QWizardPage* page);
	[LinkName("QWizard_SetPage")]
	public static extern void QWizard_SetPage(Self* c_this, int32 id, QWizardPage* page);
	[LinkName("QWizard_RemovePage")]
	public static extern void QWizard_RemovePage(Self* c_this, int32 id);
	[LinkName("QWizard_Page")]
	public static extern QWizardPage* QWizard_Page(Self* c_this, int32 id);
	[LinkName("QWizard_HasVisitedPage")]
	public static extern bool QWizard_HasVisitedPage(Self* c_this, int32 id);
	[LinkName("QWizard_VisitedIds")]
	public static extern int32[] QWizard_VisitedIds(Self* c_this);
	[LinkName("QWizard_PageIds")]
	public static extern int32[] QWizard_PageIds(Self* c_this);
	[LinkName("QWizard_SetStartId")]
	public static extern void QWizard_SetStartId(Self* c_this, int32 id);
	[LinkName("QWizard_StartId")]
	public static extern int32 QWizard_StartId(Self* c_this);
	[LinkName("QWizard_CurrentPage")]
	public static extern QWizardPage* QWizard_CurrentPage(Self* c_this);
	[LinkName("QWizard_CurrentId")]
	public static extern int32 QWizard_CurrentId(Self* c_this);
	[LinkName("QWizard_ValidateCurrentPage")]
	public static extern bool QWizard_ValidateCurrentPage(Self* c_this);
	[LinkName("QWizard_NextId")]
	public static extern int32 QWizard_NextId(Self* c_this);
	[LinkName("QWizard_SetField")]
	public static extern void QWizard_SetField(Self* c_this, libqt_string name, QVariant* value);
	[LinkName("QWizard_Field")]
	public static extern QVariant QWizard_Field(Self* c_this, libqt_string name);
	[LinkName("QWizard_SetWizardStyle")]
	public static extern void QWizard_SetWizardStyle(Self* c_this, int64 style);
	[LinkName("QWizard_WizardStyle")]
	public static extern int64 QWizard_WizardStyle(Self* c_this);
	[LinkName("QWizard_SetOption")]
	public static extern void QWizard_SetOption(Self* c_this, int64 option);
	[LinkName("QWizard_TestOption")]
	public static extern bool QWizard_TestOption(Self* c_this, int64 option);
	[LinkName("QWizard_SetOptions")]
	public static extern void QWizard_SetOptions(Self* c_this, int64 options);
	[LinkName("QWizard_Options")]
	public static extern int64 QWizard_Options(Self* c_this);
	[LinkName("QWizard_SetButtonText")]
	public static extern void QWizard_SetButtonText(Self* c_this, int64 which, libqt_string text);
	[LinkName("QWizard_ButtonText")]
	public static extern libqt_string QWizard_ButtonText(Self* c_this, int64 which);
	[LinkName("QWizard_SetButtonLayout")]
	public static extern void QWizard_SetButtonLayout(Self* c_this, int64[] layout);
	[LinkName("QWizard_SetButton")]
	public static extern void QWizard_SetButton(Self* c_this, int64 which, QAbstractButton* button);
	[LinkName("QWizard_Button")]
	public static extern QAbstractButton* QWizard_Button(Self* c_this, int64 which);
	[LinkName("QWizard_SetTitleFormat")]
	public static extern void QWizard_SetTitleFormat(Self* c_this, int64 format);
	[LinkName("QWizard_TitleFormat")]
	public static extern int64 QWizard_TitleFormat(Self* c_this);
	[LinkName("QWizard_SetSubTitleFormat")]
	public static extern void QWizard_SetSubTitleFormat(Self* c_this, int64 format);
	[LinkName("QWizard_SubTitleFormat")]
	public static extern int64 QWizard_SubTitleFormat(Self* c_this);
	[LinkName("QWizard_SetPixmap")]
	public static extern void QWizard_SetPixmap(Self* c_this, int64 which, QPixmap* pixmap);
	[LinkName("QWizard_Pixmap")]
	public static extern QPixmap QWizard_Pixmap(Self* c_this, int64 which);
	[LinkName("QWizard_SetSideWidget")]
	public static extern void QWizard_SetSideWidget(Self* c_this, QWidget* widget);
	[LinkName("QWizard_SideWidget")]
	public static extern QWidget* QWizard_SideWidget(Self* c_this);
	[LinkName("QWizard_SetDefaultProperty")]
	public static extern void QWizard_SetDefaultProperty(Self* c_this, char8[] className, char8[] property, char8[] changedSignal);
	[LinkName("QWizard_SetVisible")]
	public static extern void QWizard_SetVisible(Self* c_this, bool visible);
	[LinkName("QWizard_SizeHint")]
	public static extern QSize QWizard_SizeHint(Self* c_this);
	[LinkName("QWizard_CurrentIdChanged")]
	public static extern void QWizard_CurrentIdChanged(Self* c_this, int32 id);
	[LinkName("QWizard_HelpRequested")]
	public static extern void QWizard_HelpRequested(Self* c_this);
	[LinkName("QWizard_CustomButtonClicked")]
	public static extern void QWizard_CustomButtonClicked(Self* c_this, int32 which);
	[LinkName("QWizard_PageAdded")]
	public static extern void QWizard_PageAdded(Self* c_this, int32 id);
	[LinkName("QWizard_PageRemoved")]
	public static extern void QWizard_PageRemoved(Self* c_this, int32 id);
	[LinkName("QWizard_Back")]
	public static extern void QWizard_Back(Self* c_this);
	[LinkName("QWizard_Next")]
	public static extern void QWizard_Next(Self* c_this);
	[LinkName("QWizard_SetCurrentId")]
	public static extern void QWizard_SetCurrentId(Self* c_this, int32 id);
	[LinkName("QWizard_Restart")]
	public static extern void QWizard_Restart(Self* c_this);
	[LinkName("QWizard_Event")]
	public static extern bool QWizard_Event(Self* c_this, QEvent* event);
	[LinkName("QWizard_ResizeEvent")]
	public static extern void QWizard_ResizeEvent(Self* c_this, QResizeEvent* event);
	[LinkName("QWizard_PaintEvent")]
	public static extern void QWizard_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QWizard_Done")]
	public static extern void QWizard_Done(Self* c_this, int32 result);
	[LinkName("QWizard_InitializePage")]
	public static extern void QWizard_InitializePage(Self* c_this, int32 id);
	[LinkName("QWizard_CleanupPage")]
	public static extern void QWizard_CleanupPage(Self* c_this, int32 id);
	[LinkName("QWizard_Tr2")]
	public static extern libqt_string QWizard_Tr2(char8[] s, char8[] c);
	[LinkName("QWizard_Tr3")]
	public static extern libqt_string QWizard_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QWizard_SetOption2")]
	public static extern void QWizard_SetOption2(Self* c_this, int64 option, bool on);
}
public struct QWizardPage : QWidget
{
	[LinkName("QWizardPage_new")]
	public static extern QWizardPage* QWizardPage_new(QWidget* parent);
	[LinkName("QWizardPage_new2")]
	public static extern QWizardPage* QWizardPage_new2();
	[LinkName("QWizardPage_MetaObject")]
	public static extern QMetaObject* QWizardPage_MetaObject(Self* c_this);
	[LinkName("QWizardPage_Metacast")]
	public static extern void* QWizardPage_Metacast(Self* c_this, char8[] param1);
	[LinkName("QWizardPage_Metacall")]
	public static extern int32 QWizardPage_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QWizardPage_Tr")]
	public static extern libqt_string QWizardPage_Tr(char8[] s);
	[LinkName("QWizardPage_SetTitle")]
	public static extern void QWizardPage_SetTitle(Self* c_this, libqt_string title);
	[LinkName("QWizardPage_Title")]
	public static extern libqt_string QWizardPage_Title(Self* c_this);
	[LinkName("QWizardPage_SetSubTitle")]
	public static extern void QWizardPage_SetSubTitle(Self* c_this, libqt_string subTitle);
	[LinkName("QWizardPage_SubTitle")]
	public static extern libqt_string QWizardPage_SubTitle(Self* c_this);
	[LinkName("QWizardPage_SetPixmap")]
	public static extern void QWizardPage_SetPixmap(Self* c_this, int64 which, QPixmap* pixmap);
	[LinkName("QWizardPage_Pixmap")]
	public static extern QPixmap QWizardPage_Pixmap(Self* c_this, int64 which);
	[LinkName("QWizardPage_SetFinalPage")]
	public static extern void QWizardPage_SetFinalPage(Self* c_this, bool finalPage);
	[LinkName("QWizardPage_IsFinalPage")]
	public static extern bool QWizardPage_IsFinalPage(Self* c_this);
	[LinkName("QWizardPage_SetCommitPage")]
	public static extern void QWizardPage_SetCommitPage(Self* c_this, bool commitPage);
	[LinkName("QWizardPage_IsCommitPage")]
	public static extern bool QWizardPage_IsCommitPage(Self* c_this);
	[LinkName("QWizardPage_SetButtonText")]
	public static extern void QWizardPage_SetButtonText(Self* c_this, int64 which, libqt_string text);
	[LinkName("QWizardPage_ButtonText")]
	public static extern libqt_string QWizardPage_ButtonText(Self* c_this, int64 which);
	[LinkName("QWizardPage_InitializePage")]
	public static extern void QWizardPage_InitializePage(Self* c_this);
	[LinkName("QWizardPage_CleanupPage")]
	public static extern void QWizardPage_CleanupPage(Self* c_this);
	[LinkName("QWizardPage_ValidatePage")]
	public static extern bool QWizardPage_ValidatePage(Self* c_this);
	[LinkName("QWizardPage_IsComplete")]
	public static extern bool QWizardPage_IsComplete(Self* c_this);
	[LinkName("QWizardPage_NextId")]
	public static extern int32 QWizardPage_NextId(Self* c_this);
	[LinkName("QWizardPage_CompleteChanged")]
	public static extern void QWizardPage_CompleteChanged(Self* c_this);
	[LinkName("QWizardPage_SetField")]
	public static extern void QWizardPage_SetField(Self* c_this, libqt_string name, QVariant* value);
	[LinkName("QWizardPage_Field")]
	public static extern QVariant QWizardPage_Field(Self* c_this, libqt_string name);
	[LinkName("QWizardPage_RegisterField")]
	public static extern void QWizardPage_RegisterField(Self* c_this, libqt_string name, QWidget* widget);
	[LinkName("QWizardPage_Wizard")]
	public static extern QWizard* QWizardPage_Wizard(Self* c_this);
	[LinkName("QWizardPage_Tr2")]
	public static extern libqt_string QWizardPage_Tr2(char8[] s, char8[] c);
	[LinkName("QWizardPage_Tr3")]
	public static extern libqt_string QWizardPage_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QWizardPage_RegisterField3")]
	public static extern void QWizardPage_RegisterField3(Self* c_this, libqt_string name, QWidget* widget, char8[] property);
	[LinkName("QWizardPage_RegisterField4")]
	public static extern void QWizardPage_RegisterField4(Self* c_this, libqt_string name, QWidget* widget, char8[] property, char8[] changedSignal);
}