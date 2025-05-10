using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMediaMetaData__Key
{
	Title = 0,
	Author = 1,
	Comment = 2,
	Description = 3,
	Genre = 4,
	Date = 5,
	Language = 6,
	Publisher = 7,
	Copyright = 8,
	Url = 9,
	Duration = 10,
	MediaType = 11,
	FileFormat = 12,
	AudioBitRate = 13,
	AudioCodec = 14,
	VideoBitRate = 15,
	VideoCodec = 16,
	VideoFrameRate = 17,
	AlbumTitle = 18,
	AlbumArtist = 19,
	ContributingArtist = 20,
	TrackNumber = 21,
	Composer = 22,
	LeadPerformer = 23,
	ThumbnailImage = 24,
	CoverArtImage = 25,
	Orientation = 26,
	Resolution = 27,
}
public interface IQMediaMetaData
{
	void* NativePtr { get; }
}
public class QMediaMetaData : IQMediaMetaData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQMediaMetaData param1)
	{
		this.nativePtr = CQt.QMediaMetaData_new((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public ~this()
	{
		CQt.QMediaMetaData_Delete(this.nativePtr);
	}
	
	public void Value(int64 k)
	{
		CQt.QMediaMetaData_Value(this.nativePtr, k);
	}
	
	public void Insert(int64 k, IQVariant value)
	{
		CQt.QMediaMetaData_Insert(this.nativePtr, k, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Remove(int64 k)
	{
		CQt.QMediaMetaData_Remove(this.nativePtr, k);
	}
	
	public int64[] Keys()
	{
		return CQt.QMediaMetaData_Keys(this.nativePtr);
	}
	
	public void* OperatorSubscript(int64 k)
	{
		return CQt.QMediaMetaData_OperatorSubscript(this.nativePtr, k);
	}
	
	public void Clear()
	{
		CQt.QMediaMetaData_Clear(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QMediaMetaData_IsEmpty(this.nativePtr);
	}
	
	public libqt_string StringValue(int64 k)
	{
		return CQt.QMediaMetaData_StringValue(this.nativePtr, k);
	}
	
	public static libqt_string MetaDataKeyToString(int64 k)
	{
		return CQt.QMediaMetaData_MetaDataKeyToString(k);
	}
	
}
extension CQt
{
	[LinkName("QMediaMetaData_new")]
	public static extern void* QMediaMetaData_new(void* param1);
	[LinkName("QMediaMetaData_new2")]
	public static extern void* QMediaMetaData_new2();
	[LinkName("QMediaMetaData_Value")]
	public static extern void QMediaMetaData_Value(void* c_this, int64 k);
	[LinkName("QMediaMetaData_Insert")]
	public static extern void QMediaMetaData_Insert(void* c_this, int64 k, void* value);
	[LinkName("QMediaMetaData_Remove")]
	public static extern void QMediaMetaData_Remove(void* c_this, int64 k);
	[LinkName("QMediaMetaData_Keys")]
	public static extern int64[] QMediaMetaData_Keys(void* c_this);
	[LinkName("QMediaMetaData_OperatorSubscript")]
	public static extern void* QMediaMetaData_OperatorSubscript(void* c_this, int64 k);
	[LinkName("QMediaMetaData_Clear")]
	public static extern void QMediaMetaData_Clear(void* c_this);
	[LinkName("QMediaMetaData_IsEmpty")]
	public static extern bool QMediaMetaData_IsEmpty(void* c_this);
	[LinkName("QMediaMetaData_StringValue")]
	public static extern libqt_string QMediaMetaData_StringValue(void* c_this, int64 k);
	[LinkName("QMediaMetaData_MetaDataKeyToString")]
	public static extern libqt_string QMediaMetaData_MetaDataKeyToString(int64 k);
	/// Delete this object from C++ memory
	[LinkName("QMediaMetaData_Delete")]
	public static extern void QMediaMetaData_Delete(void* self);
}