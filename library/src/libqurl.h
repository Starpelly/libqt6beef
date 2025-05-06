#pragma once
#ifndef SRCC_LIBQURL_H
#define SRCC_LIBQURL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QUrl QUrl;
typedef struct QUrlQuery QUrlQuery;
#endif

#ifdef __cplusplus
typedef QUrl::AceProcessingOption AceProcessingOption;               // C++ enum
typedef QUrl::AceProcessingOptions AceProcessingOptions;             // C++ QFlags
typedef QUrl::ComponentFormattingOption ComponentFormattingOption;   // C++ enum
typedef QUrl::ComponentFormattingOptions ComponentFormattingOptions; // C++ QFlags
typedef QUrl::DataPtr DataPtr;                                       // C++ QFlags
typedef QUrl::FormattingOptions FormattingOptions;                   // C++ QFlags
typedef QUrl::ParsingMode ParsingMode;                               // C++ enum
typedef QUrl::UrlFormattingOption UrlFormattingOption;               // C++ enum
typedef QUrl::UserInputResolutionOption UserInputResolutionOption;   // C++ enum
typedef QUrl::UserInputResolutionOptions UserInputResolutionOptions; // C++ QFlags
#else
typedef int AceProcessingOptions;               // C ABI QFlags
typedef int ComponentFormattingOptions;         // C ABI QFlags
typedef int ParsingMode;                        // C ABI enum
typedef int UserInputResolutionOption;          // C ABI enum
typedef int UserInputResolutionOptions;         // C ABI QFlags
typedef unsigned int AceProcessingOption;       // C ABI enum
typedef unsigned int ComponentFormattingOption; // C ABI enum
typedef unsigned int UrlFormattingOption;       // C ABI enum
#endif

QTLIBC_API QUrl* QUrl_new();
QTLIBC_API QUrl* QUrl_new2(QUrl* copyVal);
QTLIBC_API QUrl* QUrl_new3(libqt_string url);
QTLIBC_API QUrl* QUrl_new4(libqt_string url, int mode);
QTLIBC_API void QUrl_OperatorAssign(QUrl* self, QUrl* copyVal);
QTLIBC_API void QUrl_OperatorAssignWithUrl(QUrl* self, libqt_string url);
QTLIBC_API void QUrl_Swap(QUrl* self, QUrl* other);
QTLIBC_API void QUrl_SetUrl(QUrl* self, libqt_string url);
QTLIBC_API libqt_string QUrl_Url(const QUrl* self);
QTLIBC_API libqt_string QUrl_ToString(const QUrl* self);
QTLIBC_API libqt_string QUrl_ToDisplayString(const QUrl* self);
QTLIBC_API libqt_string QUrl_ToEncoded(const QUrl* self);
QTLIBC_API QUrl* QUrl_FromEncoded(libqt_string url);
QTLIBC_API QUrl* QUrl_FromUserInput(libqt_string userInput);
QTLIBC_API bool QUrl_IsValid(const QUrl* self);
QTLIBC_API libqt_string QUrl_ErrorString(const QUrl* self);
QTLIBC_API bool QUrl_IsEmpty(const QUrl* self);
QTLIBC_API void QUrl_Clear(QUrl* self);
QTLIBC_API void QUrl_SetScheme(QUrl* self, libqt_string scheme);
QTLIBC_API libqt_string QUrl_Scheme(const QUrl* self);
QTLIBC_API void QUrl_SetAuthority(QUrl* self, libqt_string authority);
QTLIBC_API libqt_string QUrl_Authority(const QUrl* self);
QTLIBC_API void QUrl_SetUserInfo(QUrl* self, libqt_string userInfo);
QTLIBC_API libqt_string QUrl_UserInfo(const QUrl* self);
QTLIBC_API void QUrl_SetUserName(QUrl* self, libqt_string userName);
QTLIBC_API libqt_string QUrl_UserName(const QUrl* self);
QTLIBC_API void QUrl_SetPassword(QUrl* self, libqt_string password);
QTLIBC_API libqt_string QUrl_Password(const QUrl* self);
QTLIBC_API void QUrl_SetHost(QUrl* self, libqt_string host);
QTLIBC_API libqt_string QUrl_Host(const QUrl* self);
QTLIBC_API void QUrl_SetPort(QUrl* self, int port);
QTLIBC_API int QUrl_Port(const QUrl* self);
QTLIBC_API void QUrl_SetPath(QUrl* self, libqt_string path);
QTLIBC_API libqt_string QUrl_Path(const QUrl* self);
QTLIBC_API libqt_string QUrl_FileName(const QUrl* self);
QTLIBC_API bool QUrl_HasQuery(const QUrl* self);
QTLIBC_API void QUrl_SetQuery(QUrl* self, libqt_string query);
QTLIBC_API void QUrl_SetQueryWithQuery(QUrl* self, QUrlQuery* query);
QTLIBC_API libqt_string QUrl_Query(const QUrl* self);
QTLIBC_API bool QUrl_HasFragment(const QUrl* self);
QTLIBC_API libqt_string QUrl_Fragment(const QUrl* self);
QTLIBC_API void QUrl_SetFragment(QUrl* self, libqt_string fragment);
QTLIBC_API QUrl* QUrl_Resolved(const QUrl* self, QUrl* relative);
QTLIBC_API bool QUrl_IsRelative(const QUrl* self);
QTLIBC_API bool QUrl_IsParentOf(const QUrl* self, QUrl* url);
QTLIBC_API bool QUrl_IsLocalFile(const QUrl* self);
QTLIBC_API QUrl* QUrl_FromLocalFile(libqt_string localfile);
QTLIBC_API libqt_string QUrl_ToLocalFile(const QUrl* self);
QTLIBC_API void QUrl_Detach(QUrl* self);
QTLIBC_API bool QUrl_IsDetached(const QUrl* self);
QTLIBC_API bool QUrl_OperatorLesser(const QUrl* self, QUrl* url);
QTLIBC_API bool QUrl_OperatorEqual(const QUrl* self, QUrl* url);
QTLIBC_API bool QUrl_OperatorNotEqual(const QUrl* self, QUrl* url);
QTLIBC_API libqt_string QUrl_FromPercentEncoding(libqt_string param1);
QTLIBC_API libqt_string QUrl_ToPercentEncoding(libqt_string param1);
QTLIBC_API libqt_string QUrl_FromAce(libqt_string domain);
QTLIBC_API libqt_string QUrl_ToAce(libqt_string domain);
QTLIBC_API libqt_list /* of libqt_string */ QUrl_IdnWhitelist();
QTLIBC_API libqt_list /* of libqt_string */ QUrl_ToStringList(libqt_list /* of QUrl* */ uris);
QTLIBC_API libqt_list /* of QUrl* */ QUrl_FromStringList(libqt_list /* of libqt_string */ uris);
QTLIBC_API void QUrl_SetIdnWhitelist(libqt_list /* of libqt_string */ idnWhitelist);
QTLIBC_API void QUrl_SetUrl2(QUrl* self, libqt_string url, int mode);
QTLIBC_API QUrl* QUrl_FromEncoded2(libqt_string url, int mode);
QTLIBC_API QUrl* QUrl_FromUserInput2(libqt_string userInput, libqt_string workingDirectory);
QTLIBC_API QUrl* QUrl_FromUserInput3(libqt_string userInput, libqt_string workingDirectory, int options);
QTLIBC_API void QUrl_SetAuthority2(QUrl* self, libqt_string authority, int mode);
QTLIBC_API libqt_string QUrl_Authority1(const QUrl* self, int options);
QTLIBC_API void QUrl_SetUserInfo2(QUrl* self, libqt_string userInfo, int mode);
QTLIBC_API libqt_string QUrl_UserInfo1(const QUrl* self, int options);
QTLIBC_API void QUrl_SetUserName2(QUrl* self, libqt_string userName, int mode);
QTLIBC_API libqt_string QUrl_UserName1(const QUrl* self, int options);
QTLIBC_API void QUrl_SetPassword2(QUrl* self, libqt_string password, int mode);
QTLIBC_API libqt_string QUrl_Password1(const QUrl* self, int param1);
QTLIBC_API void QUrl_SetHost2(QUrl* self, libqt_string host, int mode);
QTLIBC_API libqt_string QUrl_Host1(const QUrl* self, int param1);
QTLIBC_API int QUrl_Port1(const QUrl* self, int defaultPort);
QTLIBC_API void QUrl_SetPath2(QUrl* self, libqt_string path, int mode);
QTLIBC_API libqt_string QUrl_Path1(const QUrl* self, int options);
QTLIBC_API libqt_string QUrl_FileName1(const QUrl* self, int options);
QTLIBC_API void QUrl_SetQuery2(QUrl* self, libqt_string query, int mode);
QTLIBC_API libqt_string QUrl_Query1(const QUrl* self, int param1);
QTLIBC_API libqt_string QUrl_Fragment1(const QUrl* self, int options);
QTLIBC_API void QUrl_SetFragment2(QUrl* self, libqt_string fragment, int mode);
QTLIBC_API libqt_string QUrl_ToPercentEncoding2(libqt_string param1, libqt_string exclude);
QTLIBC_API libqt_string QUrl_ToPercentEncoding3(libqt_string param1, libqt_string exclude, libqt_string include);
QTLIBC_API libqt_string QUrl_FromAce2(libqt_string domain, int options);
QTLIBC_API libqt_string QUrl_ToAce2(libqt_string domain, int options);
QTLIBC_API libqt_list /* of QUrl* */ QUrl_FromStringList2(libqt_list /* of libqt_string */ uris, int mode);
QTLIBC_API void QUrl_Delete(QUrl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
