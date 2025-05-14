using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QUrl__ParsingMode
{
	TolerantMode = 0,
	StrictMode = 1,
	DecodedMode = 2,
}
[AllowDuplicates]
public enum QUrl__UrlFormattingOption
{
	None = 0,
	RemoveScheme = 1,
	RemovePassword = 2,
	RemoveUserInfo = 6,
	RemovePort = 8,
	RemoveAuthority = 30,
	RemovePath = 32,
	RemoveQuery = 64,
	RemoveFragment = 128,
	PreferLocalFile = 512,
	StripTrailingSlash = 1024,
	RemoveFilename = 2048,
	NormalizePathSegments = 4096,
}
[AllowDuplicates]
public enum QUrl__ComponentFormattingOption
{
	PrettyDecoded = 0,
	EncodeSpaces = 1048576,
	EncodeUnicode = 2097152,
	EncodeDelimiters = 12582912,
	EncodeReserved = 16777216,
	DecodeReserved = 33554432,
	FullyEncoded = 32505856,
	FullyDecoded = 133169152,
}
[AllowDuplicates]
public enum QUrl__UserInputResolutionOption
{
	DefaultResolution = 0,
	AssumeLocalFile = 1,
}
[AllowDuplicates]
public enum QUrl__AceProcessingOption
{
	IgnoreIDNWhitelist = 1,
	AceTransitionalProcessing = 2,
}
public interface IQUrl
{
	void* NativePtr { get; }
}
public struct QUrlPtr : IQUrl, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QUrl_new());
	}
	
	public void Dispose()
	{
		CQt.QUrl_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQUrl copyVal)
	{
		CQt.QUrl_OperatorAssign(this.nativePtr, (copyVal == default || copyVal.NativePtr == default) ? default : copyVal.NativePtr);
	}
	
	public void OperatorAssignWithUrl(String url)
	{
		CQt.QUrl_OperatorAssignWithUrl(this.nativePtr, libqt_string(url));
	}
	
	public void Swap(IQUrl other)
	{
		CQt.QUrl_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetUrl(String url)
	{
		CQt.QUrl_SetUrl(this.nativePtr, libqt_string(url));
	}
	
	public libqt_string Url()
	{
		return CQt.QUrl_Url(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QUrl_ToString(this.nativePtr);
	}
	
	public libqt_string ToDisplayString()
	{
		return CQt.QUrl_ToDisplayString(this.nativePtr);
	}
	
	public libqt_string ToEncoded()
	{
		return CQt.QUrl_ToEncoded(this.nativePtr);
	}
	
	public static void FromEncoded(String url)
	{
		CQt.QUrl_FromEncoded(libqt_string(url));
	}
	
	public static void FromUserInput(String userInput)
	{
		CQt.QUrl_FromUserInput(libqt_string(userInput));
	}
	
	public bool IsValid()
	{
		return CQt.QUrl_IsValid(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QUrl_ErrorString(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QUrl_IsEmpty(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QUrl_Clear(this.nativePtr);
	}
	
	public void SetScheme(String scheme)
	{
		CQt.QUrl_SetScheme(this.nativePtr, libqt_string(scheme));
	}
	
	public libqt_string Scheme()
	{
		return CQt.QUrl_Scheme(this.nativePtr);
	}
	
	public void SetAuthority(String authority)
	{
		CQt.QUrl_SetAuthority(this.nativePtr, libqt_string(authority));
	}
	
	public libqt_string Authority()
	{
		return CQt.QUrl_Authority(this.nativePtr);
	}
	
	public void SetUserInfo(String userInfo)
	{
		CQt.QUrl_SetUserInfo(this.nativePtr, libqt_string(userInfo));
	}
	
	public libqt_string UserInfo()
	{
		return CQt.QUrl_UserInfo(this.nativePtr);
	}
	
	public void SetUserName(String userName)
	{
		CQt.QUrl_SetUserName(this.nativePtr, libqt_string(userName));
	}
	
	public libqt_string UserName()
	{
		return CQt.QUrl_UserName(this.nativePtr);
	}
	
	public void SetPassword(String password)
	{
		CQt.QUrl_SetPassword(this.nativePtr, libqt_string(password));
	}
	
	public libqt_string Password()
	{
		return CQt.QUrl_Password(this.nativePtr);
	}
	
	public void SetHost(String host)
	{
		CQt.QUrl_SetHost(this.nativePtr, libqt_string(host));
	}
	
	public libqt_string Host()
	{
		return CQt.QUrl_Host(this.nativePtr);
	}
	
	public void SetPort(int32 port)
	{
		CQt.QUrl_SetPort(this.nativePtr, port);
	}
	
	public int32 Port()
	{
		return CQt.QUrl_Port(this.nativePtr);
	}
	
	public void SetPath(String path)
	{
		CQt.QUrl_SetPath(this.nativePtr, libqt_string(path));
	}
	
	public libqt_string Path()
	{
		return CQt.QUrl_Path(this.nativePtr);
	}
	
	public libqt_string FileName()
	{
		return CQt.QUrl_FileName(this.nativePtr);
	}
	
	public bool HasQuery()
	{
		return CQt.QUrl_HasQuery(this.nativePtr);
	}
	
	public void SetQuery(String query)
	{
		CQt.QUrl_SetQuery(this.nativePtr, libqt_string(query));
	}
	
	public void SetQueryWithQuery(IQUrlQuery query)
	{
		CQt.QUrl_SetQueryWithQuery(this.nativePtr, (query == default || query.NativePtr == default) ? default : query.NativePtr);
	}
	
	public libqt_string Query()
	{
		return CQt.QUrl_Query(this.nativePtr);
	}
	
	public bool HasFragment()
	{
		return CQt.QUrl_HasFragment(this.nativePtr);
	}
	
	public libqt_string Fragment()
	{
		return CQt.QUrl_Fragment(this.nativePtr);
	}
	
	public void SetFragment(String fragment)
	{
		CQt.QUrl_SetFragment(this.nativePtr, libqt_string(fragment));
	}
	
	public void Resolved(IQUrl relative)
	{
		CQt.QUrl_Resolved(this.nativePtr, (relative == default || relative.NativePtr == default) ? default : relative.NativePtr);
	}
	
	public bool IsRelative()
	{
		return CQt.QUrl_IsRelative(this.nativePtr);
	}
	
	public bool IsParentOf(IQUrl url)
	{
		return CQt.QUrl_IsParentOf(this.nativePtr, (url == default || url.NativePtr == default) ? default : url.NativePtr);
	}
	
	public bool IsLocalFile()
	{
		return CQt.QUrl_IsLocalFile(this.nativePtr);
	}
	
	public static void FromLocalFile(String localfile)
	{
		CQt.QUrl_FromLocalFile(libqt_string(localfile));
	}
	
	public libqt_string ToLocalFile()
	{
		return CQt.QUrl_ToLocalFile(this.nativePtr);
	}
	
	public void Detach()
	{
		CQt.QUrl_Detach(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QUrl_IsDetached(this.nativePtr);
	}
	
	public bool OperatorLesser(IQUrl url)
	{
		return CQt.QUrl_OperatorLesser(this.nativePtr, (url == default || url.NativePtr == default) ? default : url.NativePtr);
	}
	
	public bool OperatorEqual(IQUrl url)
	{
		return CQt.QUrl_OperatorEqual(this.nativePtr, (url == default || url.NativePtr == default) ? default : url.NativePtr);
	}
	
	public bool OperatorNotEqual(IQUrl url)
	{
		return CQt.QUrl_OperatorNotEqual(this.nativePtr, (url == default || url.NativePtr == default) ? default : url.NativePtr);
	}
	
	public static libqt_string FromPercentEncoding(String param1)
	{
		return CQt.QUrl_FromPercentEncoding(libqt_string(param1));
	}
	
	public static libqt_string ToPercentEncoding(String param1)
	{
		return CQt.QUrl_ToPercentEncoding(libqt_string(param1));
	}
	
	public static libqt_string FromAce(String domain)
	{
		return CQt.QUrl_FromAce(libqt_string(domain));
	}
	
	public static libqt_string ToAce(String domain)
	{
		return CQt.QUrl_ToAce(libqt_string(domain));
	}
	
	public static libqt_string[] IdnWhitelist()
	{
		return CQt.QUrl_IdnWhitelist();
	}
	
	public static libqt_string[] ToStringList(IQUrl[] uris)
	{
		return CQt.QUrl_ToStringList(null);
	}
	
	public static void[] FromStringList(String[] uris)
	{
		return CQt.QUrl_FromStringList(null);
	}
	
	public static void SetIdnWhitelist(String[] idnWhitelist)
	{
		CQt.QUrl_SetIdnWhitelist(null);
	}
	
	public void SetUrl2(String url, int64 mode)
	{
		CQt.QUrl_SetUrl2(this.nativePtr, libqt_string(url), (int64)mode);
	}
	
	public static void FromEncoded2(String url, int64 mode)
	{
		CQt.QUrl_FromEncoded2(libqt_string(url), (int64)mode);
	}
	
	public static void FromUserInput2(String userInput, String workingDirectory)
	{
		CQt.QUrl_FromUserInput2(libqt_string(userInput), libqt_string(workingDirectory));
	}
	
	public static void FromUserInput3(String userInput, String workingDirectory, int64 options)
	{
		CQt.QUrl_FromUserInput3(libqt_string(userInput), libqt_string(workingDirectory), options);
	}
	
	public void SetAuthority2(String authority, int64 mode)
	{
		CQt.QUrl_SetAuthority2(this.nativePtr, libqt_string(authority), (int64)mode);
	}
	
	public libqt_string Authority1(int64 options)
	{
		return CQt.QUrl_Authority1(this.nativePtr, options);
	}
	
	public void SetUserInfo2(String userInfo, int64 mode)
	{
		CQt.QUrl_SetUserInfo2(this.nativePtr, libqt_string(userInfo), (int64)mode);
	}
	
	public libqt_string UserInfo1(int64 options)
	{
		return CQt.QUrl_UserInfo1(this.nativePtr, options);
	}
	
	public void SetUserName2(String userName, int64 mode)
	{
		CQt.QUrl_SetUserName2(this.nativePtr, libqt_string(userName), (int64)mode);
	}
	
	public libqt_string UserName1(int64 options)
	{
		return CQt.QUrl_UserName1(this.nativePtr, options);
	}
	
	public void SetPassword2(String password, int64 mode)
	{
		CQt.QUrl_SetPassword2(this.nativePtr, libqt_string(password), (int64)mode);
	}
	
	public libqt_string Password1(int64 param1)
	{
		return CQt.QUrl_Password1(this.nativePtr, param1);
	}
	
	public void SetHost2(String host, int64 mode)
	{
		CQt.QUrl_SetHost2(this.nativePtr, libqt_string(host), (int64)mode);
	}
	
	public libqt_string Host1(int64 param1)
	{
		return CQt.QUrl_Host1(this.nativePtr, param1);
	}
	
	public int32 Port1(int32 defaultPort)
	{
		return CQt.QUrl_Port1(this.nativePtr, defaultPort);
	}
	
	public void SetPath2(String path, int64 mode)
	{
		CQt.QUrl_SetPath2(this.nativePtr, libqt_string(path), (int64)mode);
	}
	
	public libqt_string Path1(int64 options)
	{
		return CQt.QUrl_Path1(this.nativePtr, options);
	}
	
	public libqt_string FileName1(int64 options)
	{
		return CQt.QUrl_FileName1(this.nativePtr, options);
	}
	
	public void SetQuery2(String query, int64 mode)
	{
		CQt.QUrl_SetQuery2(this.nativePtr, libqt_string(query), (int64)mode);
	}
	
	public libqt_string Query1(int64 param1)
	{
		return CQt.QUrl_Query1(this.nativePtr, param1);
	}
	
	public libqt_string Fragment1(int64 options)
	{
		return CQt.QUrl_Fragment1(this.nativePtr, options);
	}
	
	public void SetFragment2(String fragment, int64 mode)
	{
		CQt.QUrl_SetFragment2(this.nativePtr, libqt_string(fragment), (int64)mode);
	}
	
	public static libqt_string ToPercentEncoding2(String param1, String exclude)
	{
		return CQt.QUrl_ToPercentEncoding2(libqt_string(param1), libqt_string(exclude));
	}
	
	public static libqt_string ToPercentEncoding3(String param1, String exclude, String include)
	{
		return CQt.QUrl_ToPercentEncoding3(libqt_string(param1), libqt_string(exclude), libqt_string(include));
	}
	
	public static libqt_string FromAce2(String domain, int64 options)
	{
		return CQt.QUrl_FromAce2(libqt_string(domain), options);
	}
	
	public static libqt_string ToAce2(String domain, int64 options)
	{
		return CQt.QUrl_ToAce2(libqt_string(domain), options);
	}
	
	public static void[] FromStringList2(String[] uris, int64 mode)
	{
		return CQt.QUrl_FromStringList2(null, (int64)mode);
	}
	
}
public class QUrl
{
	public QUrlPtr handle;
	
	public static implicit operator QUrlPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QUrlPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQUrl copyVal)
	{
		this.handle.OperatorAssign(copyVal);
	}
	
	public void OperatorAssignWithUrl(String url)
	{
		this.handle.OperatorAssignWithUrl(url);
	}
	
	public void Swap(IQUrl other)
	{
		this.handle.Swap(other);
	}
	
	public void SetUrl(String url)
	{
		this.handle.SetUrl(url);
	}
	
	public libqt_string Url()
	{
		return this.handle.Url();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public libqt_string ToDisplayString()
	{
		return this.handle.ToDisplayString();
	}
	
	public libqt_string ToEncoded()
	{
		return this.handle.ToEncoded();
	}
	
	public static void FromEncoded(String url)
	{
		QUrlPtr.FromEncoded(url);
	}
	
	public static void FromUserInput(String userInput)
	{
		QUrlPtr.FromUserInput(userInput);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public void SetScheme(String scheme)
	{
		this.handle.SetScheme(scheme);
	}
	
	public libqt_string Scheme()
	{
		return this.handle.Scheme();
	}
	
	public void SetAuthority(String authority)
	{
		this.handle.SetAuthority(authority);
	}
	
	public libqt_string Authority()
	{
		return this.handle.Authority();
	}
	
	public void SetUserInfo(String userInfo)
	{
		this.handle.SetUserInfo(userInfo);
	}
	
	public libqt_string UserInfo()
	{
		return this.handle.UserInfo();
	}
	
	public void SetUserName(String userName)
	{
		this.handle.SetUserName(userName);
	}
	
	public libqt_string UserName()
	{
		return this.handle.UserName();
	}
	
	public void SetPassword(String password)
	{
		this.handle.SetPassword(password);
	}
	
	public libqt_string Password()
	{
		return this.handle.Password();
	}
	
	public void SetHost(String host)
	{
		this.handle.SetHost(host);
	}
	
	public libqt_string Host()
	{
		return this.handle.Host();
	}
	
	public void SetPort(int32 port)
	{
		this.handle.SetPort(port);
	}
	
	public int32 Port()
	{
		return this.handle.Port();
	}
	
	public void SetPath(String path)
	{
		this.handle.SetPath(path);
	}
	
	public libqt_string Path()
	{
		return this.handle.Path();
	}
	
	public libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public bool HasQuery()
	{
		return this.handle.HasQuery();
	}
	
	public void SetQuery(String query)
	{
		this.handle.SetQuery(query);
	}
	
	public void SetQueryWithQuery(IQUrlQuery query)
	{
		this.handle.SetQueryWithQuery(query);
	}
	
	public libqt_string Query()
	{
		return this.handle.Query();
	}
	
	public bool HasFragment()
	{
		return this.handle.HasFragment();
	}
	
	public libqt_string Fragment()
	{
		return this.handle.Fragment();
	}
	
	public void SetFragment(String fragment)
	{
		this.handle.SetFragment(fragment);
	}
	
	public void Resolved(IQUrl relative)
	{
		this.handle.Resolved(relative);
	}
	
	public bool IsRelative()
	{
		return this.handle.IsRelative();
	}
	
	public bool IsParentOf(IQUrl url)
	{
		return this.handle.IsParentOf(url);
	}
	
	public bool IsLocalFile()
	{
		return this.handle.IsLocalFile();
	}
	
	public static void FromLocalFile(String localfile)
	{
		QUrlPtr.FromLocalFile(localfile);
	}
	
	public libqt_string ToLocalFile()
	{
		return this.handle.ToLocalFile();
	}
	
	public void Detach()
	{
		this.handle.Detach();
	}
	
	public bool IsDetached()
	{
		return this.handle.IsDetached();
	}
	
	public bool OperatorLesser(IQUrl url)
	{
		return this.handle.OperatorLesser(url);
	}
	
	public bool OperatorEqual(IQUrl url)
	{
		return this.handle.OperatorEqual(url);
	}
	
	public bool OperatorNotEqual(IQUrl url)
	{
		return this.handle.OperatorNotEqual(url);
	}
	
	public static libqt_string FromPercentEncoding(String param1)
	{
		return QUrlPtr.FromPercentEncoding(param1);
	}
	
	public static libqt_string ToPercentEncoding(String param1)
	{
		return QUrlPtr.ToPercentEncoding(param1);
	}
	
	public static libqt_string FromAce(String domain)
	{
		return QUrlPtr.FromAce(domain);
	}
	
	public static libqt_string ToAce(String domain)
	{
		return QUrlPtr.ToAce(domain);
	}
	
	public static libqt_string[] IdnWhitelist()
	{
		return QUrlPtr.IdnWhitelist();
	}
	
	public static libqt_string[] ToStringList(IQUrl[] uris)
	{
		return QUrlPtr.ToStringList(null);
	}
	
	public static void[] FromStringList(String[] uris)
	{
		return QUrlPtr.FromStringList(null);
	}
	
	public static void SetIdnWhitelist(String[] idnWhitelist)
	{
		QUrlPtr.SetIdnWhitelist(null);
	}
	
	public void SetUrl2(String url, int64 mode)
	{
		this.handle.SetUrl2(url, mode);
	}
	
	public static void FromEncoded2(String url, int64 mode)
	{
		QUrlPtr.FromEncoded2(url, mode);
	}
	
	public static void FromUserInput2(String userInput, String workingDirectory)
	{
		QUrlPtr.FromUserInput2(userInput, workingDirectory);
	}
	
	public static void FromUserInput3(String userInput, String workingDirectory, int64 options)
	{
		QUrlPtr.FromUserInput3(userInput, workingDirectory, options);
	}
	
	public void SetAuthority2(String authority, int64 mode)
	{
		this.handle.SetAuthority2(authority, mode);
	}
	
	public libqt_string Authority1(int64 options)
	{
		return this.handle.Authority1(options);
	}
	
	public void SetUserInfo2(String userInfo, int64 mode)
	{
		this.handle.SetUserInfo2(userInfo, mode);
	}
	
	public libqt_string UserInfo1(int64 options)
	{
		return this.handle.UserInfo1(options);
	}
	
	public void SetUserName2(String userName, int64 mode)
	{
		this.handle.SetUserName2(userName, mode);
	}
	
	public libqt_string UserName1(int64 options)
	{
		return this.handle.UserName1(options);
	}
	
	public void SetPassword2(String password, int64 mode)
	{
		this.handle.SetPassword2(password, mode);
	}
	
	public libqt_string Password1(int64 param1)
	{
		return this.handle.Password1(param1);
	}
	
	public void SetHost2(String host, int64 mode)
	{
		this.handle.SetHost2(host, mode);
	}
	
	public libqt_string Host1(int64 param1)
	{
		return this.handle.Host1(param1);
	}
	
	public int32 Port1(int32 defaultPort)
	{
		return this.handle.Port1(defaultPort);
	}
	
	public void SetPath2(String path, int64 mode)
	{
		this.handle.SetPath2(path, mode);
	}
	
	public libqt_string Path1(int64 options)
	{
		return this.handle.Path1(options);
	}
	
	public libqt_string FileName1(int64 options)
	{
		return this.handle.FileName1(options);
	}
	
	public void SetQuery2(String query, int64 mode)
	{
		this.handle.SetQuery2(query, mode);
	}
	
	public libqt_string Query1(int64 param1)
	{
		return this.handle.Query1(param1);
	}
	
	public libqt_string Fragment1(int64 options)
	{
		return this.handle.Fragment1(options);
	}
	
	public void SetFragment2(String fragment, int64 mode)
	{
		this.handle.SetFragment2(fragment, mode);
	}
	
	public static libqt_string ToPercentEncoding2(String param1, String exclude)
	{
		return QUrlPtr.ToPercentEncoding2(param1, exclude);
	}
	
	public static libqt_string ToPercentEncoding3(String param1, String exclude, String include)
	{
		return QUrlPtr.ToPercentEncoding3(param1, exclude, include);
	}
	
	public static libqt_string FromAce2(String domain, int64 options)
	{
		return QUrlPtr.FromAce2(domain, options);
	}
	
	public static libqt_string ToAce2(String domain, int64 options)
	{
		return QUrlPtr.ToAce2(domain, options);
	}
	
	public static void[] FromStringList2(String[] uris, int64 mode)
	{
		return QUrlPtr.FromStringList2(null, mode);
	}
	
}
extension CQt
{
	[LinkName("QUrl_new")]
	public static extern void* QUrl_new();
	[LinkName("QUrl_new2")]
	public static extern void* QUrl_new2(void* copyVal);
	[LinkName("QUrl_new3")]
	public static extern void* QUrl_new3(libqt_string url);
	[LinkName("QUrl_new4")]
	public static extern void* QUrl_new4(libqt_string url, int64 mode);
	[LinkName("QUrl_OperatorAssign")]
	public static extern void QUrl_OperatorAssign(void* c_this, void* copyVal);
	[LinkName("QUrl_OperatorAssignWithUrl")]
	public static extern void QUrl_OperatorAssignWithUrl(void* c_this, libqt_string url);
	[LinkName("QUrl_Swap")]
	public static extern void QUrl_Swap(void* c_this, void* other);
	[LinkName("QUrl_SetUrl")]
	public static extern void QUrl_SetUrl(void* c_this, libqt_string url);
	[LinkName("QUrl_Url")]
	public static extern libqt_string QUrl_Url(void* c_this);
	[LinkName("QUrl_ToString")]
	public static extern libqt_string QUrl_ToString(void* c_this);
	[LinkName("QUrl_ToDisplayString")]
	public static extern libqt_string QUrl_ToDisplayString(void* c_this);
	[LinkName("QUrl_ToEncoded")]
	public static extern libqt_string QUrl_ToEncoded(void* c_this);
	[LinkName("QUrl_FromEncoded")]
	public static extern void QUrl_FromEncoded(libqt_string url);
	[LinkName("QUrl_FromUserInput")]
	public static extern void QUrl_FromUserInput(libqt_string userInput);
	[LinkName("QUrl_IsValid")]
	public static extern bool QUrl_IsValid(void* c_this);
	[LinkName("QUrl_ErrorString")]
	public static extern libqt_string QUrl_ErrorString(void* c_this);
	[LinkName("QUrl_IsEmpty")]
	public static extern bool QUrl_IsEmpty(void* c_this);
	[LinkName("QUrl_Clear")]
	public static extern void QUrl_Clear(void* c_this);
	[LinkName("QUrl_SetScheme")]
	public static extern void QUrl_SetScheme(void* c_this, libqt_string scheme);
	[LinkName("QUrl_Scheme")]
	public static extern libqt_string QUrl_Scheme(void* c_this);
	[LinkName("QUrl_SetAuthority")]
	public static extern void QUrl_SetAuthority(void* c_this, libqt_string authority);
	[LinkName("QUrl_Authority")]
	public static extern libqt_string QUrl_Authority(void* c_this);
	[LinkName("QUrl_SetUserInfo")]
	public static extern void QUrl_SetUserInfo(void* c_this, libqt_string userInfo);
	[LinkName("QUrl_UserInfo")]
	public static extern libqt_string QUrl_UserInfo(void* c_this);
	[LinkName("QUrl_SetUserName")]
	public static extern void QUrl_SetUserName(void* c_this, libqt_string userName);
	[LinkName("QUrl_UserName")]
	public static extern libqt_string QUrl_UserName(void* c_this);
	[LinkName("QUrl_SetPassword")]
	public static extern void QUrl_SetPassword(void* c_this, libqt_string password);
	[LinkName("QUrl_Password")]
	public static extern libqt_string QUrl_Password(void* c_this);
	[LinkName("QUrl_SetHost")]
	public static extern void QUrl_SetHost(void* c_this, libqt_string host);
	[LinkName("QUrl_Host")]
	public static extern libqt_string QUrl_Host(void* c_this);
	[LinkName("QUrl_SetPort")]
	public static extern void QUrl_SetPort(void* c_this, int32 port);
	[LinkName("QUrl_Port")]
	public static extern int32 QUrl_Port(void* c_this);
	[LinkName("QUrl_SetPath")]
	public static extern void QUrl_SetPath(void* c_this, libqt_string path);
	[LinkName("QUrl_Path")]
	public static extern libqt_string QUrl_Path(void* c_this);
	[LinkName("QUrl_FileName")]
	public static extern libqt_string QUrl_FileName(void* c_this);
	[LinkName("QUrl_HasQuery")]
	public static extern bool QUrl_HasQuery(void* c_this);
	[LinkName("QUrl_SetQuery")]
	public static extern void QUrl_SetQuery(void* c_this, libqt_string query);
	[LinkName("QUrl_SetQueryWithQuery")]
	public static extern void QUrl_SetQueryWithQuery(void* c_this, void* query);
	[LinkName("QUrl_Query")]
	public static extern libqt_string QUrl_Query(void* c_this);
	[LinkName("QUrl_HasFragment")]
	public static extern bool QUrl_HasFragment(void* c_this);
	[LinkName("QUrl_Fragment")]
	public static extern libqt_string QUrl_Fragment(void* c_this);
	[LinkName("QUrl_SetFragment")]
	public static extern void QUrl_SetFragment(void* c_this, libqt_string fragment);
	[LinkName("QUrl_Resolved")]
	public static extern void QUrl_Resolved(void* c_this, void* relative);
	[LinkName("QUrl_IsRelative")]
	public static extern bool QUrl_IsRelative(void* c_this);
	[LinkName("QUrl_IsParentOf")]
	public static extern bool QUrl_IsParentOf(void* c_this, void* url);
	[LinkName("QUrl_IsLocalFile")]
	public static extern bool QUrl_IsLocalFile(void* c_this);
	[LinkName("QUrl_FromLocalFile")]
	public static extern void QUrl_FromLocalFile(libqt_string localfile);
	[LinkName("QUrl_ToLocalFile")]
	public static extern libqt_string QUrl_ToLocalFile(void* c_this);
	[LinkName("QUrl_Detach")]
	public static extern void QUrl_Detach(void* c_this);
	[LinkName("QUrl_IsDetached")]
	public static extern bool QUrl_IsDetached(void* c_this);
	[LinkName("QUrl_OperatorLesser")]
	public static extern bool QUrl_OperatorLesser(void* c_this, void* url);
	[LinkName("QUrl_OperatorEqual")]
	public static extern bool QUrl_OperatorEqual(void* c_this, void* url);
	[LinkName("QUrl_OperatorNotEqual")]
	public static extern bool QUrl_OperatorNotEqual(void* c_this, void* url);
	[LinkName("QUrl_FromPercentEncoding")]
	public static extern libqt_string QUrl_FromPercentEncoding(libqt_string param1);
	[LinkName("QUrl_ToPercentEncoding")]
	public static extern libqt_string QUrl_ToPercentEncoding(libqt_string param1);
	[LinkName("QUrl_FromAce")]
	public static extern libqt_string QUrl_FromAce(libqt_string domain);
	[LinkName("QUrl_ToAce")]
	public static extern libqt_string QUrl_ToAce(libqt_string domain);
	[LinkName("QUrl_IdnWhitelist")]
	public static extern libqt_string[] QUrl_IdnWhitelist();
	[LinkName("QUrl_ToStringList")]
	public static extern libqt_string[] QUrl_ToStringList(void[] uris);
	[LinkName("QUrl_FromStringList")]
	public static extern void[] QUrl_FromStringList(libqt_string[] uris);
	[LinkName("QUrl_SetIdnWhitelist")]
	public static extern void QUrl_SetIdnWhitelist(libqt_string[] idnWhitelist);
	[LinkName("QUrl_SetUrl2")]
	public static extern void QUrl_SetUrl2(void* c_this, libqt_string url, int64 mode);
	[LinkName("QUrl_FromEncoded2")]
	public static extern void QUrl_FromEncoded2(libqt_string url, int64 mode);
	[LinkName("QUrl_FromUserInput2")]
	public static extern void QUrl_FromUserInput2(libqt_string userInput, libqt_string workingDirectory);
	[LinkName("QUrl_FromUserInput3")]
	public static extern void QUrl_FromUserInput3(libqt_string userInput, libqt_string workingDirectory, int64 options);
	[LinkName("QUrl_SetAuthority2")]
	public static extern void QUrl_SetAuthority2(void* c_this, libqt_string authority, int64 mode);
	[LinkName("QUrl_Authority1")]
	public static extern libqt_string QUrl_Authority1(void* c_this, int64 options);
	[LinkName("QUrl_SetUserInfo2")]
	public static extern void QUrl_SetUserInfo2(void* c_this, libqt_string userInfo, int64 mode);
	[LinkName("QUrl_UserInfo1")]
	public static extern libqt_string QUrl_UserInfo1(void* c_this, int64 options);
	[LinkName("QUrl_SetUserName2")]
	public static extern void QUrl_SetUserName2(void* c_this, libqt_string userName, int64 mode);
	[LinkName("QUrl_UserName1")]
	public static extern libqt_string QUrl_UserName1(void* c_this, int64 options);
	[LinkName("QUrl_SetPassword2")]
	public static extern void QUrl_SetPassword2(void* c_this, libqt_string password, int64 mode);
	[LinkName("QUrl_Password1")]
	public static extern libqt_string QUrl_Password1(void* c_this, int64 param1);
	[LinkName("QUrl_SetHost2")]
	public static extern void QUrl_SetHost2(void* c_this, libqt_string host, int64 mode);
	[LinkName("QUrl_Host1")]
	public static extern libqt_string QUrl_Host1(void* c_this, int64 param1);
	[LinkName("QUrl_Port1")]
	public static extern int32 QUrl_Port1(void* c_this, int32 defaultPort);
	[LinkName("QUrl_SetPath2")]
	public static extern void QUrl_SetPath2(void* c_this, libqt_string path, int64 mode);
	[LinkName("QUrl_Path1")]
	public static extern libqt_string QUrl_Path1(void* c_this, int64 options);
	[LinkName("QUrl_FileName1")]
	public static extern libqt_string QUrl_FileName1(void* c_this, int64 options);
	[LinkName("QUrl_SetQuery2")]
	public static extern void QUrl_SetQuery2(void* c_this, libqt_string query, int64 mode);
	[LinkName("QUrl_Query1")]
	public static extern libqt_string QUrl_Query1(void* c_this, int64 param1);
	[LinkName("QUrl_Fragment1")]
	public static extern libqt_string QUrl_Fragment1(void* c_this, int64 options);
	[LinkName("QUrl_SetFragment2")]
	public static extern void QUrl_SetFragment2(void* c_this, libqt_string fragment, int64 mode);
	[LinkName("QUrl_ToPercentEncoding2")]
	public static extern libqt_string QUrl_ToPercentEncoding2(libqt_string param1, libqt_string exclude);
	[LinkName("QUrl_ToPercentEncoding3")]
	public static extern libqt_string QUrl_ToPercentEncoding3(libqt_string param1, libqt_string exclude, libqt_string include);
	[LinkName("QUrl_FromAce2")]
	public static extern libqt_string QUrl_FromAce2(libqt_string domain, int64 options);
	[LinkName("QUrl_ToAce2")]
	public static extern libqt_string QUrl_ToAce2(libqt_string domain, int64 options);
	[LinkName("QUrl_FromStringList2")]
	public static extern void[] QUrl_FromStringList2(libqt_string[] uris, int64 mode);
	/// Delete this object from C++ memory
	[LinkName("QUrl_Delete")]
	public static extern void QUrl_Delete(void* self);
}