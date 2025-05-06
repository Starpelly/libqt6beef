using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFutureInterfaceBase__State
{
	NoState = 0,
	Running = 1,
	Started = 2,
	Finished = 4,
	Canceled = 8,
	Suspending = 16,
	Suspended = 32,
	Throttled = 64,
	Pending = 128,
}
[AllowDuplicates]
public enum QFutureInterfaceBase__CancelMode
{
	CancelOnly = 0,
	CancelAndFinish = 1,
}
public struct QFutureInterfaceBase
{
	[LinkName("QFutureInterfaceBase_new")]
	public static extern void* QFutureInterfaceBase_new();
	[LinkName("QFutureInterfaceBase_new2")]
	public static extern void* QFutureInterfaceBase_new2(QFutureInterfaceBase other);
	[LinkName("QFutureInterfaceBase_new3")]
	public static extern void* QFutureInterfaceBase_new3(int64 initialState);
	[LinkName("QFutureInterfaceBase_OperatorAssign")]
	public static extern void QFutureInterfaceBase_OperatorAssign(void* c_this, QFutureInterfaceBase other);
	[LinkName("QFutureInterfaceBase_ReportStarted")]
	public static extern void QFutureInterfaceBase_ReportStarted(void* c_this);
	[LinkName("QFutureInterfaceBase_ReportFinished")]
	public static extern void QFutureInterfaceBase_ReportFinished(void* c_this);
	[LinkName("QFutureInterfaceBase_ReportCanceled")]
	public static extern void QFutureInterfaceBase_ReportCanceled(void* c_this);
	[LinkName("QFutureInterfaceBase_ReportResultsReady")]
	public static extern void QFutureInterfaceBase_ReportResultsReady(void* c_this, int32 beginIndex, int32 endIndex);
	[LinkName("QFutureInterfaceBase_SetRunnable")]
	public static extern void QFutureInterfaceBase_SetRunnable(void* c_this, QRunnable runnable);
	[LinkName("QFutureInterfaceBase_SetThreadPool")]
	public static extern void QFutureInterfaceBase_SetThreadPool(void* c_this, QThreadPool pool);
	[LinkName("QFutureInterfaceBase_ThreadPool")]
	public static extern QThreadPool QFutureInterfaceBase_ThreadPool(void* c_this);
	[LinkName("QFutureInterfaceBase_SetFilterMode")]
	public static extern void QFutureInterfaceBase_SetFilterMode(void* c_this, bool enable);
	[LinkName("QFutureInterfaceBase_SetProgressRange")]
	public static extern void QFutureInterfaceBase_SetProgressRange(void* c_this, int32 minimum, int32 maximum);
	[LinkName("QFutureInterfaceBase_ProgressMinimum")]
	public static extern int32 QFutureInterfaceBase_ProgressMinimum(void* c_this);
	[LinkName("QFutureInterfaceBase_ProgressMaximum")]
	public static extern int32 QFutureInterfaceBase_ProgressMaximum(void* c_this);
	[LinkName("QFutureInterfaceBase_IsProgressUpdateNeeded")]
	public static extern bool QFutureInterfaceBase_IsProgressUpdateNeeded(void* c_this);
	[LinkName("QFutureInterfaceBase_SetProgressValue")]
	public static extern void QFutureInterfaceBase_SetProgressValue(void* c_this, int32 progressValue);
	[LinkName("QFutureInterfaceBase_ProgressValue")]
	public static extern int32 QFutureInterfaceBase_ProgressValue(void* c_this);
	[LinkName("QFutureInterfaceBase_SetProgressValueAndText")]
	public static extern void QFutureInterfaceBase_SetProgressValueAndText(void* c_this, int32 progressValue, char8[] progressText);
	[LinkName("QFutureInterfaceBase_ProgressText")]
	public static extern char8[] QFutureInterfaceBase_ProgressText(void* c_this);
	[LinkName("QFutureInterfaceBase_SetExpectedResultCount")]
	public static extern void QFutureInterfaceBase_SetExpectedResultCount(void* c_this, int32 resultCount);
	[LinkName("QFutureInterfaceBase_ExpectedResultCount")]
	public static extern int32 QFutureInterfaceBase_ExpectedResultCount(void* c_this);
	[LinkName("QFutureInterfaceBase_ResultCount")]
	public static extern int32 QFutureInterfaceBase_ResultCount(void* c_this);
	[LinkName("QFutureInterfaceBase_QueryState")]
	public static extern bool QFutureInterfaceBase_QueryState(void* c_this, int64 state);
	[LinkName("QFutureInterfaceBase_IsRunning")]
	public static extern bool QFutureInterfaceBase_IsRunning(void* c_this);
	[LinkName("QFutureInterfaceBase_IsStarted")]
	public static extern bool QFutureInterfaceBase_IsStarted(void* c_this);
	[LinkName("QFutureInterfaceBase_IsCanceled")]
	public static extern bool QFutureInterfaceBase_IsCanceled(void* c_this);
	[LinkName("QFutureInterfaceBase_IsFinished")]
	public static extern bool QFutureInterfaceBase_IsFinished(void* c_this);
	[LinkName("QFutureInterfaceBase_IsPaused")]
	public static extern bool QFutureInterfaceBase_IsPaused(void* c_this);
	[LinkName("QFutureInterfaceBase_SetPaused")]
	public static extern void QFutureInterfaceBase_SetPaused(void* c_this, bool paused);
	[LinkName("QFutureInterfaceBase_TogglePaused")]
	public static extern void QFutureInterfaceBase_TogglePaused(void* c_this);
	[LinkName("QFutureInterfaceBase_IsSuspending")]
	public static extern bool QFutureInterfaceBase_IsSuspending(void* c_this);
	[LinkName("QFutureInterfaceBase_IsSuspended")]
	public static extern bool QFutureInterfaceBase_IsSuspended(void* c_this);
	[LinkName("QFutureInterfaceBase_IsThrottled")]
	public static extern bool QFutureInterfaceBase_IsThrottled(void* c_this);
	[LinkName("QFutureInterfaceBase_IsResultReadyAt")]
	public static extern bool QFutureInterfaceBase_IsResultReadyAt(void* c_this, int32 index);
	[LinkName("QFutureInterfaceBase_IsValid")]
	public static extern bool QFutureInterfaceBase_IsValid(void* c_this);
	[LinkName("QFutureInterfaceBase_LoadState")]
	public static extern int32 QFutureInterfaceBase_LoadState(void* c_this);
	[LinkName("QFutureInterfaceBase_Cancel")]
	public static extern void QFutureInterfaceBase_Cancel(void* c_this);
	[LinkName("QFutureInterfaceBase_CancelAndFinish")]
	public static extern void QFutureInterfaceBase_CancelAndFinish(void* c_this);
	[LinkName("QFutureInterfaceBase_SetSuspended")]
	public static extern void QFutureInterfaceBase_SetSuspended(void* c_this, bool suspendVal);
	[LinkName("QFutureInterfaceBase_ToggleSuspended")]
	public static extern void QFutureInterfaceBase_ToggleSuspended(void* c_this);
	[LinkName("QFutureInterfaceBase_ReportSuspended")]
	public static extern void QFutureInterfaceBase_ReportSuspended(void* c_this);
	[LinkName("QFutureInterfaceBase_SetThrottled")]
	public static extern void QFutureInterfaceBase_SetThrottled(void* c_this, bool enable);
	[LinkName("QFutureInterfaceBase_WaitForFinished")]
	public static extern void QFutureInterfaceBase_WaitForFinished(void* c_this);
	[LinkName("QFutureInterfaceBase_WaitForNextResult")]
	public static extern bool QFutureInterfaceBase_WaitForNextResult(void* c_this);
	[LinkName("QFutureInterfaceBase_WaitForResult")]
	public static extern void QFutureInterfaceBase_WaitForResult(void* c_this, int32 resultIndex);
	[LinkName("QFutureInterfaceBase_WaitForResume")]
	public static extern void QFutureInterfaceBase_WaitForResume(void* c_this);
	[LinkName("QFutureInterfaceBase_SuspendIfRequested")]
	public static extern void QFutureInterfaceBase_SuspendIfRequested(void* c_this);
	[LinkName("QFutureInterfaceBase_Mutex")]
	public static extern QMutex QFutureInterfaceBase_Mutex(void* c_this);
	[LinkName("QFutureInterfaceBase_HasException")]
	public static extern bool QFutureInterfaceBase_HasException(void* c_this);
	[LinkName("QFutureInterfaceBase_OperatorEqual")]
	public static extern bool QFutureInterfaceBase_OperatorEqual(void* c_this, QFutureInterfaceBase other);
	[LinkName("QFutureInterfaceBase_OperatorNotEqual")]
	public static extern bool QFutureInterfaceBase_OperatorNotEqual(void* c_this, QFutureInterfaceBase other);
	[LinkName("QFutureInterfaceBase_Swap")]
	public static extern void QFutureInterfaceBase_Swap(void* c_this, QFutureInterfaceBase other);
	[LinkName("QFutureInterfaceBase_IsChainCanceled")]
	public static extern bool QFutureInterfaceBase_IsChainCanceled(void* c_this);
}