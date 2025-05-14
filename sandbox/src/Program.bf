using System;
using System.Interop;
using Qt;

namespace Sandbox;

class TestWindow : QMainWindow
{
	QMenuBar m_menubar ~ delete _;
	QPushButton m_button ~ delete _;

	// Bepis m_bepis ~ delete _;

	public this(IQWidget parent) : base(parent)
	{
		Resize(1280, 720);

		// Menubar
		{
			m_menubar = new QMenuBar(this);

			// File
			{
				let file = QMenuPtr(m_menubar.AddMenuWithTitle("File"));
				file.AddMenuWithTitle("Quit");
			}

			m_menubar.AddMenuWithTitle("Edit");
			m_menubar.AddMenuWithTitle("View");
			m_menubar.AddMenuWithTitle("Build");
			m_menubar.AddMenuWithTitle("Debug");
			m_menubar.AddMenuWithTitle("Test");
			m_menubar.AddMenuWithTitle("Window");

			// Help
			{
				QMenuPtr(m_menubar.AddMenuWithTitle("Help"));
			}

			SetMenuBar(m_menubar);
		}

		m_button = new QPushButton(this);
		m_button.SetText("Play Animation");

		m_button.Move(32, 32);

		/*
		m_bepis = new Bepis(this);
		m_bepis.Resize(200, 300);
		m_bepis.Move(32, 128);
		*/
	}

	public void Init()
	{
		// QMessageBox.AboutQt(this);
	}
}
/*
class Bepis : QWidget
{
	public this(IQWidget parent) : base(parent)
	{

	}

	public override void PaintEvent(IQPaintEvent event)
	{
		base.PaintEvent(event);

		let painter = scope QPainter();
		let pen = scope QPen();
		let brush = scope QBrush();
		let color = scope QColor(null);
		brush.SetColor(color);

		painter.SetPenWithPen(pen);
		painter.SetBrush(brush);

		let rect = scope QRectF(null);
		rect.SetWidth(100);
		rect.SetHeight(100);
		painter.DrawRect(rect);
	}
}
*/

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