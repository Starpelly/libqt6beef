using System;
using System.Interop;
using Qt;

namespace Sandbox;

class TestWindow : QMainWindow
{
	QMenuBar m_menubar ~ delete _;
	QPushButton m_button ~ delete _;

	public this(IQWidget parent) : base(parent)
	{
		Resize(1280, 720);

		m_menubar = new QMenuBar(this);
		m_menubar.AddActionWithText("File");
		m_menubar.AddActionWithText("Edit");
		m_menubar.AddActionWithText("View");
		m_menubar.AddActionWithText("Build");
		m_menubar.AddActionWithText("Debug");
		m_menubar.AddActionWithText("Test");
		m_menubar.AddActionWithText("Window");
		m_menubar.AddActionWithText("Help");

		SetMenuBar(m_menubar);

		m_button = new QPushButton(this);
		m_button.SetText("Hello!");

		m_button.SetGeometry(32, 32, 64, 32);
	}

	public void Init()
	{
		// QMessageBox.AboutQt(this);
	}
}

class Program
{
	/*
	static int buttonClickCount = 0;

	public static void OnButtonCallback(QAbstractButton* self)
	{
		buttonClickCount++;
		QAbstractButton.QAbstractButton_SetText(self, .(scope $"Clicked {buttonClickCount} times"));
	}
	*/

	public static int Main(String[] args)
	{
		int32 argc = (int32)args.Count;

		scope QApplication(&argc, null);

		// QApplication.SetStyle(QStyleFactory.Create("fusion"));
		Qt.CQt.QApplication_SetStyle(Qt.CQt.QStyleFactory_Create(.("windowsvista")));

		let mainwindow = scope TestWindow(null);
		mainwindow.Show();
		mainwindow.Init();

		return QApplication.Exec();
	}
}