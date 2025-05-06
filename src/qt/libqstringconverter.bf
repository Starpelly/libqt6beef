using System;
using System.Interop;
namespace Qt;

public struct QStringEncoder : QStringConverter
{
	[LinkName("QStringEncoder_new")]
	public static extern QStringEncoder* QStringEncoder_new();
	[LinkName("QStringEncoder_new2")]
	public static extern QStringEncoder* QStringEncoder_new2(int64 encoding);
	[LinkName("QStringEncoder_new3")]
	public static extern QStringEncoder* QStringEncoder_new3(char8[] name);
	[LinkName("QStringEncoder_new4")]
	public static extern QStringEncoder* QStringEncoder_new4(int64 encoding, int64 flags);
	[LinkName("QStringEncoder_new5")]
	public static extern QStringEncoder* QStringEncoder_new5(char8[] name, int64 flags);
	[LinkName("QStringEncoder_RequiredSpace")]
	public static extern int32 QStringEncoder_RequiredSpace(Self* c_this, int32 inputLength);
}
public struct QStringDecoder : QStringConverter
{
	[LinkName("QStringDecoder_new")]
	public static extern QStringDecoder* QStringDecoder_new(int64 encoding);
	[LinkName("QStringDecoder_new2")]
	public static extern QStringDecoder* QStringDecoder_new2();
	[LinkName("QStringDecoder_new3")]
	public static extern QStringDecoder* QStringDecoder_new3(char8[] name);
	[LinkName("QStringDecoder_new4")]
	public static extern QStringDecoder* QStringDecoder_new4(int64 encoding, int64 flags);
	[LinkName("QStringDecoder_new5")]
	public static extern QStringDecoder* QStringDecoder_new5(char8[] name, int64 f);
	[LinkName("QStringDecoder_RequiredSpace")]
	public static extern int32 QStringDecoder_RequiredSpace(Self* c_this, int32 inputLength);
	[LinkName("QStringDecoder_AppendToBuffer")]
	public static extern QChar* QStringDecoder_AppendToBuffer(Self* c_this, QChar* _out, QByteArrayView ba);
	[LinkName("QStringDecoder_DecoderForHtml")]
	public static extern QStringDecoder QStringDecoder_DecoderForHtml(QByteArrayView data);
}