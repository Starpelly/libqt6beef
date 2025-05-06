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
	public static extern QFutureInterfaceBase* QFutureInterfaceBase_new();
	[LinkName("QFutureInterfaceBase_new2")]
	public static extern QFutureInterfaceBase* QFutureInterfaceBase_new2(QFutureInterfaceBase* other);
	[LinkName("QFutureInterfaceBase_new3")]
	public static extern QFutureInterfaceBase* QFutureInterfaceBase_new3(int64 initialState);
	[LinkName("QFutureInterfaceBase_OperatorAssign")]
	public static extern void QFutureInterfaceBase_OperatorAssign(Self* c_this, QFutureInterfaceBase* other);
	[LinkName("QFutureInterfaceBase_ReportStarted")]
	public static extern void QFutureInterfaceBase_ReportStarted(Self* c_this);
	[LinkName("QFutureInterfaceBase_ReportFinished")]
	public static extern void QFutureInterfaceBase_ReportFinished(Self* c_this);
	[LinkName("QFutureInterfaceBase_ReportCanceled")]
	public static extern void QFutureInterfaceBase_ReportCanceled(Self* c_this);
	[LinkName("QFutureInterfaceBase_ReportResultsReady")]
	public static extern void QFutureInterfaceBase_ReportResultsReady(Self* c_this, int32 beginIndex, int32 endIndex);
	[LinkName("QFutureInterfaceBase_SetRunnable")]
	public static extern void QFutureInterfaceBase_SetRunnable(Self* c_this, QRunnable* runnable);
	[LinkName("QFutureInterfaceBase_SetThreadPool")]
	public static extern void QFutureInterfaceBase_SetThreadPool(Self* c_this, QThreadPool* pool);
	[LinkName("QFutureInterfaceBase_ThreadPool")]
	public static extern QThreadPool* QFutureInterfaceBase_ThreadPool(Self* c_this);
	[LinkName("QFutureInterfaceBase_SetFilterMode")]
	public static extern void QFutureInterfaceBase_SetFilterMode(Self* c_this, bool enable);
	[LinkName("QFutureInterfaceBase_SetProgressRange")]
	public static extern void QFutureInterfaceBase_SetProgressRange(Self* c_this, int32 minimum, int32 maximum);
	[LinkName("QFutureInterfaceBase_ProgressMinimum")]
	public static extern int32 QFutureInterfaceBase_ProgressMinimum(Self* c_this);
	[LinkName("QFutureInterfaceBase_ProgressMaximum")]
	public static extern int32 QFutureInterfaceBase_ProgressMaximum(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsProgressUpdateNeeded")]
	public static extern bool QFutureInterfaceBase_IsProgressUpdateNeeded(Self* c_this);
	[LinkName("QFutureInterfaceBase_SetProgressValue")]
	public static extern void QFutureInterfaceBase_SetProgressValue(Self* c_this, int32 progressValue);
	[LinkName("QFutureInterfaceBase_ProgressValue")]
	public static extern int32 QFutureInterfaceBase_ProgressValue(Self* c_this);
	[LinkName("QFutureInterfaceBase_SetProgressValueAndText")]
	public static extern void QFutureInterfaceBase_SetProgressValueAndText(Self* c_this, int32 progressValue, libqt_string progressText);
	[LinkName("QFutureInterfaceBase_ProgressText")]
	public static extern libqt_string QFutureInterfaceBase_ProgressText(Self* c_this);
	[LinkName("QFutureInterfaceBase_SetExpectedResultCount")]
	public static extern void QFutureInterfaceBase_SetExpectedResultCount(Self* c_this, int32 resultCount);
	[LinkName("QFutureInterfaceBase_ExpectedResultCount")]
	public static extern int32 QFutureInterfaceBase_ExpectedResultCount(Self* c_this);
	[LinkName("QFutureInterfaceBase_ResultCount")]
	public static extern int32 QFutureInterfaceBase_ResultCount(Self* c_this);
	[LinkName("QFutureInterfaceBase_QueryState")]
	public static extern bool QFutureInterfaceBase_QueryState(Self* c_this, int64 state);
	[LinkName("QFutureInterfaceBase_IsRunning")]
	public static extern bool QFutureInterfaceBase_IsRunning(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsStarted")]
	public static extern bool QFutureInterfaceBase_IsStarted(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsCanceled")]
	public static extern bool QFutureInterfaceBase_IsCanceled(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsFinished")]
	public static extern bool QFutureInterfaceBase_IsFinished(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsPaused")]
	public static extern bool QFutureInterfaceBase_IsPaused(Self* c_this);
	[LinkName("QFutureInterfaceBase_SetPaused")]
	public static extern void QFutureInterfaceBase_SetPaused(Self* c_this, bool paused);
	[LinkName("QFutureInterfaceBase_TogglePaused")]
	public static extern void QFutureInterfaceBase_TogglePaused(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsSuspending")]
	public static extern bool QFutureInterfaceBase_IsSuspending(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsSuspended")]
	public static extern bool QFutureInterfaceBase_IsSuspended(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsThrottled")]
	public static extern bool QFutureInterfaceBase_IsThrottled(Self* c_this);
	[LinkName("QFutureInterfaceBase_IsResultReadyAt")]
	public static extern bool QFutureInterfaceBase_IsResultReadyAt(Self* c_this, int32 index);
	[LinkName("QFutureInterfaceBase_IsValid")]
	public static extern bool QFutureInterfaceBase_IsValid(Self* c_this);
	[LinkName("QFutureInterfaceBase_LoadState")]
	public static extern int32 QFutureInterfaceBase_LoadState(Self* c_this);
	[LinkName("QFutureInterfaceBase_Cancel")]
	public static extern void QFutureInterfaceBase_Cancel(Self* c_this);
	[LinkName("QFutureInterfaceBase_CancelAndFinish")]
	public static extern void QFutureInterfaceBase_CancelAndFinish(Self* c_this);
	[LinkName("QFutureInterfaceBase_SetSuspended")]
	public static extern void QFutureInterfaceBase_SetSuspended(Self* c_this, bool suspendVal);
	[LinkName("QFutureInterfaceBase_ToggleSuspended")]
	public static extern void QFutureInterfaceBase_ToggleSuspended(Self* c_this);
	[LinkName("QFutureInterfaceBase_ReportSuspended")]
	public static extern void QFutureInterfaceBase_ReportSuspended(Self* c_this);
	[LinkName("QFutureInterfaceBase_SetThrottled")]
	public static extern void QFutureInterfaceBase_SetThrottled(Self* c_this, bool enable);
	[LinkName("QFutureInterfaceBase_WaitForFinished")]
	public static extern void QFutureInterfaceBase_WaitForFinished(Self* c_this);
	[LinkName("QFutureInterfaceBase_WaitForNextResult")]
	public static extern bool QFutureInterfaceBase_WaitForNextResult(Self* c_this);
	[LinkName("QFutureInterfaceBase_WaitForResult")]
	public static extern void QFutureInterfaceBase_WaitForResult(Self* c_this, int32 resultIndex);
	[LinkName("QFutureInterfaceBase_WaitForResume")]
	public static extern void QFutureInterfaceBase_WaitForResume(Self* c_this);
	[LinkName("QFutureInterfaceBase_SuspendIfRequested")]
	public static extern void QFutureInterfaceBase_SuspendIfRequested(Self* c_this);
	[LinkName("QFutureInterfaceBase_Mutex")]
	public static extern QMutex* QFutureInterfaceBase_Mutex(Self* c_this);
	[LinkName("QFutureInterfaceBase_HasException")]
	public static extern bool QFutureInterfaceBase_HasException(Self* c_this);
	[LinkName("QFutureInterfaceBase_OperatorEqual")]
	public static extern bool QFutureInterfaceBase_OperatorEqual(Self* c_this, QFutureInterfaceBase* other);
	[LinkName("QFutureInterfaceBase_OperatorNotEqual")]
	public static extern bool QFutureInterfaceBase_OperatorNotEqual(Self* c_this, QFutureInterfaceBase* other);
	[LinkName("QFutureInterfaceBase_Swap")]
	public static extern void QFutureInterfaceBase_Swap(Self* c_this, QFutureInterfaceBase* other);
	[LinkName("QFutureInterfaceBase_IsChainCanceled")]
	public static extern bool QFutureInterfaceBase_IsChainCanceled(Self* c_this);
}