using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMediaFormat__FileFormat
{
	UnspecifiedFormat = -1,
	WMV = 0,
	AVI = 1,
	Matroska = 2,
	MPEG4 = 3,
	Ogg = 4,
	QuickTime = 5,
	WebM = 6,
	Mpeg4Audio = 7,
	AAC = 8,
	WMA = 9,
	MP3 = 10,
	FLAC = 11,
	Wave = 12,
	LastFileFormat = 12,
}
[AllowDuplicates]
public enum QMediaFormat__AudioCodec
{
	Unspecified = -1,
	MP3 = 0,
	AAC = 1,
	AC3 = 2,
	EAC3 = 3,
	FLAC = 4,
	DolbyTrueHD = 5,
	Opus = 6,
	Vorbis = 7,
	Wave = 8,
	WMA = 9,
	ALAC = 10,
	LastAudioCodec = 10,
}
[AllowDuplicates]
public enum QMediaFormat__VideoCodec
{
	Unspecified = -1,
	MPEG1 = 0,
	MPEG2 = 1,
	MPEG4 = 2,
	H264 = 3,
	H265 = 4,
	VP8 = 5,
	VP9 = 6,
	AV1 = 7,
	Theora = 8,
	WMV = 9,
	MotionJPEG = 10,
	LastVideoCodec = 10,
}
[AllowDuplicates]
public enum QMediaFormat__ConversionMode
{
	Encode = 0,
	Decode = 1,
}
[AllowDuplicates]
public enum QMediaFormat__ResolveFlags
{
	NoFlags = 0,
	RequiresVideo = 1,
}
public struct QMediaFormat
{
	[LinkName("QMediaFormat_new")]
	public static extern QMediaFormat* QMediaFormat_new();
	[LinkName("QMediaFormat_new2")]
	public static extern QMediaFormat* QMediaFormat_new2(QMediaFormat* other);
	[LinkName("QMediaFormat_new3")]
	public static extern QMediaFormat* QMediaFormat_new3(int64 format);
	[LinkName("QMediaFormat_OperatorAssign")]
	public static extern void QMediaFormat_OperatorAssign(Self* c_this, QMediaFormat* other);
	[LinkName("QMediaFormat_Swap")]
	public static extern void QMediaFormat_Swap(Self* c_this, QMediaFormat* other);
	[LinkName("QMediaFormat_FileFormat")]
	public static extern int64 QMediaFormat_FileFormat(Self* c_this);
	[LinkName("QMediaFormat_SetFileFormat")]
	public static extern void QMediaFormat_SetFileFormat(Self* c_this, int64 f);
	[LinkName("QMediaFormat_SetVideoCodec")]
	public static extern void QMediaFormat_SetVideoCodec(Self* c_this, int64 codec);
	[LinkName("QMediaFormat_VideoCodec")]
	public static extern int64 QMediaFormat_VideoCodec(Self* c_this);
	[LinkName("QMediaFormat_SetAudioCodec")]
	public static extern void QMediaFormat_SetAudioCodec(Self* c_this, int64 codec);
	[LinkName("QMediaFormat_AudioCodec")]
	public static extern int64 QMediaFormat_AudioCodec(Self* c_this);
	[LinkName("QMediaFormat_IsSupported")]
	public static extern bool QMediaFormat_IsSupported(Self* c_this, int64 mode);
	[LinkName("QMediaFormat_MimeType")]
	public static extern QMimeType QMediaFormat_MimeType(Self* c_this);
	[LinkName("QMediaFormat_SupportedFileFormats")]
	public static extern int64[] QMediaFormat_SupportedFileFormats(Self* c_this, int64 m);
	[LinkName("QMediaFormat_SupportedVideoCodecs")]
	public static extern int64[] QMediaFormat_SupportedVideoCodecs(Self* c_this, int64 m);
	[LinkName("QMediaFormat_SupportedAudioCodecs")]
	public static extern int64[] QMediaFormat_SupportedAudioCodecs(Self* c_this, int64 m);
	[LinkName("QMediaFormat_FileFormatName")]
	public static extern libqt_string QMediaFormat_FileFormatName(int64 fileFormat);
	[LinkName("QMediaFormat_AudioCodecName")]
	public static extern libqt_string QMediaFormat_AudioCodecName(int64 codec);
	[LinkName("QMediaFormat_VideoCodecName")]
	public static extern libqt_string QMediaFormat_VideoCodecName(int64 codec);
	[LinkName("QMediaFormat_FileFormatDescription")]
	public static extern libqt_string QMediaFormat_FileFormatDescription(int64 fileFormat);
	[LinkName("QMediaFormat_AudioCodecDescription")]
	public static extern libqt_string QMediaFormat_AudioCodecDescription(int64 codec);
	[LinkName("QMediaFormat_VideoCodecDescription")]
	public static extern libqt_string QMediaFormat_VideoCodecDescription(int64 codec);
	[LinkName("QMediaFormat_OperatorEqual")]
	public static extern bool QMediaFormat_OperatorEqual(Self* c_this, QMediaFormat* other);
	[LinkName("QMediaFormat_OperatorNotEqual")]
	public static extern bool QMediaFormat_OperatorNotEqual(Self* c_this, QMediaFormat* other);
	[LinkName("QMediaFormat_ResolveForEncoding")]
	public static extern void QMediaFormat_ResolveForEncoding(Self* c_this, int64 flags);
}