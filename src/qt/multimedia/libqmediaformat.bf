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
public interface IQMediaFormat
{
	void* NativePtr { get; }
}
public class QMediaFormat : IQMediaFormat
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMediaFormat_new();
	}
	
	public ~this()
	{
		CQt.QMediaFormat_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQMediaFormat other)
	{
		CQt.QMediaFormat_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQMediaFormat other)
	{
		CQt.QMediaFormat_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public int64 FileFormat()
	{
		return CQt.QMediaFormat_FileFormat(this.nativePtr);
	}
	
	public void SetFileFormat(int64 f)
	{
		CQt.QMediaFormat_SetFileFormat(this.nativePtr, f);
	}
	
	public void SetVideoCodec(int64 codec)
	{
		CQt.QMediaFormat_SetVideoCodec(this.nativePtr, codec);
	}
	
	public int64 VideoCodec()
	{
		return CQt.QMediaFormat_VideoCodec(this.nativePtr);
	}
	
	public void SetAudioCodec(int64 codec)
	{
		CQt.QMediaFormat_SetAudioCodec(this.nativePtr, codec);
	}
	
	public int64 AudioCodec()
	{
		return CQt.QMediaFormat_AudioCodec(this.nativePtr);
	}
	
	public bool IsSupported(int64 mode)
	{
		return CQt.QMediaFormat_IsSupported(this.nativePtr, mode);
	}
	
	public void MimeType()
	{
		CQt.QMediaFormat_MimeType(this.nativePtr);
	}
	
	public int64[] SupportedFileFormats(int64 m)
	{
		return CQt.QMediaFormat_SupportedFileFormats(this.nativePtr, m);
	}
	
	public int64[] SupportedVideoCodecs(int64 m)
	{
		return CQt.QMediaFormat_SupportedVideoCodecs(this.nativePtr, m);
	}
	
	public int64[] SupportedAudioCodecs(int64 m)
	{
		return CQt.QMediaFormat_SupportedAudioCodecs(this.nativePtr, m);
	}
	
	public static libqt_string FileFormatName(int64 fileFormat)
	{
		return CQt.QMediaFormat_FileFormatName(fileFormat);
	}
	
	public static libqt_string AudioCodecName(int64 codec)
	{
		return CQt.QMediaFormat_AudioCodecName(codec);
	}
	
	public static libqt_string VideoCodecName(int64 codec)
	{
		return CQt.QMediaFormat_VideoCodecName(codec);
	}
	
	public static libqt_string FileFormatDescription(int64 fileFormat)
	{
		return CQt.QMediaFormat_FileFormatDescription(fileFormat);
	}
	
	public static libqt_string AudioCodecDescription(int64 codec)
	{
		return CQt.QMediaFormat_AudioCodecDescription(codec);
	}
	
	public static libqt_string VideoCodecDescription(int64 codec)
	{
		return CQt.QMediaFormat_VideoCodecDescription(codec);
	}
	
	public bool OperatorEqual(IQMediaFormat other)
	{
		return CQt.QMediaFormat_OperatorEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQMediaFormat other)
	{
		return CQt.QMediaFormat_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void ResolveForEncoding(int64 flags)
	{
		CQt.QMediaFormat_ResolveForEncoding(this.nativePtr, flags);
	}
	
}
extension CQt
{
	[LinkName("QMediaFormat_new")]
	public static extern void* QMediaFormat_new();
	[LinkName("QMediaFormat_new2")]
	public static extern void* QMediaFormat_new2(void* other);
	[LinkName("QMediaFormat_new3")]
	public static extern void* QMediaFormat_new3(int64 format);
	[LinkName("QMediaFormat_OperatorAssign")]
	public static extern void QMediaFormat_OperatorAssign(void* c_this, void* other);
	[LinkName("QMediaFormat_Swap")]
	public static extern void QMediaFormat_Swap(void* c_this, void* other);
	[LinkName("QMediaFormat_FileFormat")]
	public static extern int64 QMediaFormat_FileFormat(void* c_this);
	[LinkName("QMediaFormat_SetFileFormat")]
	public static extern void QMediaFormat_SetFileFormat(void* c_this, int64 f);
	[LinkName("QMediaFormat_SetVideoCodec")]
	public static extern void QMediaFormat_SetVideoCodec(void* c_this, int64 codec);
	[LinkName("QMediaFormat_VideoCodec")]
	public static extern int64 QMediaFormat_VideoCodec(void* c_this);
	[LinkName("QMediaFormat_SetAudioCodec")]
	public static extern void QMediaFormat_SetAudioCodec(void* c_this, int64 codec);
	[LinkName("QMediaFormat_AudioCodec")]
	public static extern int64 QMediaFormat_AudioCodec(void* c_this);
	[LinkName("QMediaFormat_IsSupported")]
	public static extern bool QMediaFormat_IsSupported(void* c_this, int64 mode);
	[LinkName("QMediaFormat_MimeType")]
	public static extern void QMediaFormat_MimeType(void* c_this);
	[LinkName("QMediaFormat_SupportedFileFormats")]
	public static extern int64[] QMediaFormat_SupportedFileFormats(void* c_this, int64 m);
	[LinkName("QMediaFormat_SupportedVideoCodecs")]
	public static extern int64[] QMediaFormat_SupportedVideoCodecs(void* c_this, int64 m);
	[LinkName("QMediaFormat_SupportedAudioCodecs")]
	public static extern int64[] QMediaFormat_SupportedAudioCodecs(void* c_this, int64 m);
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
	public static extern bool QMediaFormat_OperatorEqual(void* c_this, void* other);
	[LinkName("QMediaFormat_OperatorNotEqual")]
	public static extern bool QMediaFormat_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QMediaFormat_ResolveForEncoding")]
	public static extern void QMediaFormat_ResolveForEncoding(void* c_this, int64 flags);
	/// Delete this object from C++ memory
	[LinkName("QMediaFormat_Delete")]
	public static extern void QMediaFormat_Delete(void* self);
}