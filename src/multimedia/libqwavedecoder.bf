using System;
using System.Interop;
namespace Qt;

public struct QWaveDecoder
{
	[LinkName("QWaveDecoder_new")]
	public static extern void* QWaveDecoder_new(QIODevice device);
	[LinkName("QWaveDecoder_new2")]
	public static extern void* QWaveDecoder_new2(QIODevice device, QAudioFormat format);
	[LinkName("QWaveDecoder_new3")]
	public static extern void* QWaveDecoder_new3(QIODevice device, QObject parent);
	[LinkName("QWaveDecoder_new4")]
	public static extern void* QWaveDecoder_new4(QIODevice device, QAudioFormat format, QObject parent);
	[LinkName("QWaveDecoder_MetaObject")]
	public static extern QMetaObject QWaveDecoder_MetaObject(void* c_this);
	[LinkName("QWaveDecoder_Metacast")]
	public static extern void QWaveDecoder_Metacast(void* c_this, char8[] param1);
	[LinkName("QWaveDecoder_Metacall")]
	public static extern int32 QWaveDecoder_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QWaveDecoder_Tr")]
	public static extern char8[] QWaveDecoder_Tr(char8[] s);
	[LinkName("QWaveDecoder_AudioFormat")]
	public static extern QAudioFormat QWaveDecoder_AudioFormat(void* c_this);
	[LinkName("QWaveDecoder_GetDevice")]
	public static extern QIODevice QWaveDecoder_GetDevice(void* c_this);
	[LinkName("QWaveDecoder_Duration")]
	public static extern int32 QWaveDecoder_Duration(void* c_this);
	[LinkName("QWaveDecoder_HeaderLength")]
	public static extern int64 QWaveDecoder_HeaderLength();
	[LinkName("QWaveDecoder_Open")]
	public static extern bool QWaveDecoder_Open(void* c_this, int64 mode);
	[LinkName("QWaveDecoder_Close")]
	public static extern void QWaveDecoder_Close(void* c_this);
	[LinkName("QWaveDecoder_Seek")]
	public static extern bool QWaveDecoder_Seek(void* c_this, int64 pos);
	[LinkName("QWaveDecoder_Pos")]
	public static extern int64 QWaveDecoder_Pos(void* c_this);
	[LinkName("QWaveDecoder_Size")]
	public static extern int64 QWaveDecoder_Size(void* c_this);
	[LinkName("QWaveDecoder_IsSequential")]
	public static extern bool QWaveDecoder_IsSequential(void* c_this);
	[LinkName("QWaveDecoder_BytesAvailable")]
	public static extern int64 QWaveDecoder_BytesAvailable(void* c_this);
	[LinkName("QWaveDecoder_FormatKnown")]
	public static extern void QWaveDecoder_FormatKnown(void* c_this);
	[LinkName("QWaveDecoder_ParsingError")]
	public static extern void QWaveDecoder_ParsingError(void* c_this);
	[LinkName("QWaveDecoder_Tr2")]
	public static extern char8[] QWaveDecoder_Tr2(char8[] s, char8[] c);
	[LinkName("QWaveDecoder_Tr3")]
	public static extern char8[] QWaveDecoder_Tr3(char8[] s, char8[] c, int32 n);
}