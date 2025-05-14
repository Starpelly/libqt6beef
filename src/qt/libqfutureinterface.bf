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
public interface IQFutureInterfaceBase
{
	void* NativePtr { get; }
}
public struct QFutureInterfaceBasePtr : IQFutureInterfaceBase, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QFutureInterfaceBase_new());
	}
	
	public void Dispose()
	{
		CQt.QFutureInterfaceBase_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQFutureInterfaceBase other)
	{
		CQt.QFutureInterfaceBase_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void ReportStarted()
	{
		CQt.QFutureInterfaceBase_ReportStarted(this.nativePtr);
	}
	
	public void ReportFinished()
	{
		CQt.QFutureInterfaceBase_ReportFinished(this.nativePtr);
	}
	
	public void ReportCanceled()
	{
		CQt.QFutureInterfaceBase_ReportCanceled(this.nativePtr);
	}
	
	public void ReportResultsReady(int32 beginIndex, int32 endIndex)
	{
		CQt.QFutureInterfaceBase_ReportResultsReady(this.nativePtr, beginIndex, endIndex);
	}
	
	public void SetRunnable(IQRunnable runnable)
	{
		CQt.QFutureInterfaceBase_SetRunnable(this.nativePtr, (runnable == default || runnable.NativePtr == default) ? default : runnable.NativePtr);
	}
	
	public void SetThreadPool(IQThreadPool pool)
	{
		CQt.QFutureInterfaceBase_SetThreadPool(this.nativePtr, (pool == default || pool.NativePtr == default) ? default : pool.NativePtr);
	}
	
	public void* ThreadPool()
	{
		return CQt.QFutureInterfaceBase_ThreadPool(this.nativePtr);
	}
	
	public void SetFilterMode(bool enable)
	{
		CQt.QFutureInterfaceBase_SetFilterMode(this.nativePtr, enable);
	}
	
	public void SetProgressRange(int32 minimum, int32 maximum)
	{
		CQt.QFutureInterfaceBase_SetProgressRange(this.nativePtr, minimum, maximum);
	}
	
	public int32 ProgressMinimum()
	{
		return CQt.QFutureInterfaceBase_ProgressMinimum(this.nativePtr);
	}
	
	public int32 ProgressMaximum()
	{
		return CQt.QFutureInterfaceBase_ProgressMaximum(this.nativePtr);
	}
	
	public bool IsProgressUpdateNeeded()
	{
		return CQt.QFutureInterfaceBase_IsProgressUpdateNeeded(this.nativePtr);
	}
	
	public void SetProgressValue(int32 progressValue)
	{
		CQt.QFutureInterfaceBase_SetProgressValue(this.nativePtr, progressValue);
	}
	
	public int32 ProgressValue()
	{
		return CQt.QFutureInterfaceBase_ProgressValue(this.nativePtr);
	}
	
	public void SetProgressValueAndText(int32 progressValue, String progressText)
	{
		CQt.QFutureInterfaceBase_SetProgressValueAndText(this.nativePtr, progressValue, libqt_string(progressText));
	}
	
	public libqt_string ProgressText()
	{
		return CQt.QFutureInterfaceBase_ProgressText(this.nativePtr);
	}
	
	public void SetExpectedResultCount(int32 resultCount)
	{
		CQt.QFutureInterfaceBase_SetExpectedResultCount(this.nativePtr, resultCount);
	}
	
	public int32 ExpectedResultCount()
	{
		return CQt.QFutureInterfaceBase_ExpectedResultCount(this.nativePtr);
	}
	
	public int32 ResultCount()
	{
		return CQt.QFutureInterfaceBase_ResultCount(this.nativePtr);
	}
	
	public bool QueryState(int64 state)
	{
		return CQt.QFutureInterfaceBase_QueryState(this.nativePtr, (int64)state);
	}
	
	public bool IsRunning()
	{
		return CQt.QFutureInterfaceBase_IsRunning(this.nativePtr);
	}
	
	public bool IsStarted()
	{
		return CQt.QFutureInterfaceBase_IsStarted(this.nativePtr);
	}
	
	public bool IsCanceled()
	{
		return CQt.QFutureInterfaceBase_IsCanceled(this.nativePtr);
	}
	
	public bool IsFinished()
	{
		return CQt.QFutureInterfaceBase_IsFinished(this.nativePtr);
	}
	
	public bool IsPaused()
	{
		return CQt.QFutureInterfaceBase_IsPaused(this.nativePtr);
	}
	
	public void SetPaused(bool paused)
	{
		CQt.QFutureInterfaceBase_SetPaused(this.nativePtr, paused);
	}
	
	public void TogglePaused()
	{
		CQt.QFutureInterfaceBase_TogglePaused(this.nativePtr);
	}
	
	public bool IsSuspending()
	{
		return CQt.QFutureInterfaceBase_IsSuspending(this.nativePtr);
	}
	
	public bool IsSuspended()
	{
		return CQt.QFutureInterfaceBase_IsSuspended(this.nativePtr);
	}
	
	public bool IsThrottled()
	{
		return CQt.QFutureInterfaceBase_IsThrottled(this.nativePtr);
	}
	
	public bool IsResultReadyAt(int32 index)
	{
		return CQt.QFutureInterfaceBase_IsResultReadyAt(this.nativePtr, index);
	}
	
	public bool IsValid()
	{
		return CQt.QFutureInterfaceBase_IsValid(this.nativePtr);
	}
	
	public int32 LoadState()
	{
		return CQt.QFutureInterfaceBase_LoadState(this.nativePtr);
	}
	
	public void Cancel()
	{
		CQt.QFutureInterfaceBase_Cancel(this.nativePtr);
	}
	
	public void CancelAndFinish()
	{
		CQt.QFutureInterfaceBase_CancelAndFinish(this.nativePtr);
	}
	
	public void SetSuspended(bool suspendVal)
	{
		CQt.QFutureInterfaceBase_SetSuspended(this.nativePtr, suspendVal);
	}
	
	public void ToggleSuspended()
	{
		CQt.QFutureInterfaceBase_ToggleSuspended(this.nativePtr);
	}
	
	public void ReportSuspended()
	{
		CQt.QFutureInterfaceBase_ReportSuspended(this.nativePtr);
	}
	
	public void SetThrottled(bool enable)
	{
		CQt.QFutureInterfaceBase_SetThrottled(this.nativePtr, enable);
	}
	
	public void WaitForFinished()
	{
		CQt.QFutureInterfaceBase_WaitForFinished(this.nativePtr);
	}
	
	public bool WaitForNextResult()
	{
		return CQt.QFutureInterfaceBase_WaitForNextResult(this.nativePtr);
	}
	
	public void WaitForResult(int32 resultIndex)
	{
		CQt.QFutureInterfaceBase_WaitForResult(this.nativePtr, resultIndex);
	}
	
	public void WaitForResume()
	{
		CQt.QFutureInterfaceBase_WaitForResume(this.nativePtr);
	}
	
	public void SuspendIfRequested()
	{
		CQt.QFutureInterfaceBase_SuspendIfRequested(this.nativePtr);
	}
	
	public void* Mutex()
	{
		return CQt.QFutureInterfaceBase_Mutex(this.nativePtr);
	}
	
	public bool HasException()
	{
		return CQt.QFutureInterfaceBase_HasException(this.nativePtr);
	}
	
	public bool OperatorEqual(IQFutureInterfaceBase other)
	{
		return CQt.QFutureInterfaceBase_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQFutureInterfaceBase other)
	{
		return CQt.QFutureInterfaceBase_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQFutureInterfaceBase other)
	{
		CQt.QFutureInterfaceBase_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsChainCanceled()
	{
		return CQt.QFutureInterfaceBase_IsChainCanceled(this.nativePtr);
	}
	
}
public class QFutureInterfaceBase
{
	public QFutureInterfaceBasePtr handle;
	
	public static implicit operator QFutureInterfaceBasePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QFutureInterfaceBasePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQFutureInterfaceBase other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void ReportStarted()
	{
		this.handle.ReportStarted();
	}
	
	public void ReportFinished()
	{
		this.handle.ReportFinished();
	}
	
	public void ReportCanceled()
	{
		this.handle.ReportCanceled();
	}
	
	public void ReportResultsReady(int32 beginIndex, int32 endIndex)
	{
		this.handle.ReportResultsReady(beginIndex, endIndex);
	}
	
	public void SetRunnable(IQRunnable runnable)
	{
		this.handle.SetRunnable(runnable);
	}
	
	public void SetThreadPool(IQThreadPool pool)
	{
		this.handle.SetThreadPool(pool);
	}
	
	public void* ThreadPool()
	{
		return this.handle.ThreadPool();
	}
	
	public void SetFilterMode(bool enable)
	{
		this.handle.SetFilterMode(enable);
	}
	
	public void SetProgressRange(int32 minimum, int32 maximum)
	{
		this.handle.SetProgressRange(minimum, maximum);
	}
	
	public int32 ProgressMinimum()
	{
		return this.handle.ProgressMinimum();
	}
	
	public int32 ProgressMaximum()
	{
		return this.handle.ProgressMaximum();
	}
	
	public bool IsProgressUpdateNeeded()
	{
		return this.handle.IsProgressUpdateNeeded();
	}
	
	public void SetProgressValue(int32 progressValue)
	{
		this.handle.SetProgressValue(progressValue);
	}
	
	public int32 ProgressValue()
	{
		return this.handle.ProgressValue();
	}
	
	public void SetProgressValueAndText(int32 progressValue, String progressText)
	{
		this.handle.SetProgressValueAndText(progressValue, progressText);
	}
	
	public libqt_string ProgressText()
	{
		return this.handle.ProgressText();
	}
	
	public void SetExpectedResultCount(int32 resultCount)
	{
		this.handle.SetExpectedResultCount(resultCount);
	}
	
	public int32 ExpectedResultCount()
	{
		return this.handle.ExpectedResultCount();
	}
	
	public int32 ResultCount()
	{
		return this.handle.ResultCount();
	}
	
	public bool QueryState(int64 state)
	{
		return this.handle.QueryState(state);
	}
	
	public bool IsRunning()
	{
		return this.handle.IsRunning();
	}
	
	public bool IsStarted()
	{
		return this.handle.IsStarted();
	}
	
	public bool IsCanceled()
	{
		return this.handle.IsCanceled();
	}
	
	public bool IsFinished()
	{
		return this.handle.IsFinished();
	}
	
	public bool IsPaused()
	{
		return this.handle.IsPaused();
	}
	
	public void SetPaused(bool paused)
	{
		this.handle.SetPaused(paused);
	}
	
	public void TogglePaused()
	{
		this.handle.TogglePaused();
	}
	
	public bool IsSuspending()
	{
		return this.handle.IsSuspending();
	}
	
	public bool IsSuspended()
	{
		return this.handle.IsSuspended();
	}
	
	public bool IsThrottled()
	{
		return this.handle.IsThrottled();
	}
	
	public bool IsResultReadyAt(int32 index)
	{
		return this.handle.IsResultReadyAt(index);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int32 LoadState()
	{
		return this.handle.LoadState();
	}
	
	public void Cancel()
	{
		this.handle.Cancel();
	}
	
	public void CancelAndFinish()
	{
		this.handle.CancelAndFinish();
	}
	
	public void SetSuspended(bool suspendVal)
	{
		this.handle.SetSuspended(suspendVal);
	}
	
	public void ToggleSuspended()
	{
		this.handle.ToggleSuspended();
	}
	
	public void ReportSuspended()
	{
		this.handle.ReportSuspended();
	}
	
	public void SetThrottled(bool enable)
	{
		this.handle.SetThrottled(enable);
	}
	
	public void WaitForFinished()
	{
		this.handle.WaitForFinished();
	}
	
	public bool WaitForNextResult()
	{
		return this.handle.WaitForNextResult();
	}
	
	public void WaitForResult(int32 resultIndex)
	{
		this.handle.WaitForResult(resultIndex);
	}
	
	public void WaitForResume()
	{
		this.handle.WaitForResume();
	}
	
	public void SuspendIfRequested()
	{
		this.handle.SuspendIfRequested();
	}
	
	public void* Mutex()
	{
		return this.handle.Mutex();
	}
	
	public bool HasException()
	{
		return this.handle.HasException();
	}
	
	public bool OperatorEqual(IQFutureInterfaceBase other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQFutureInterfaceBase other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public void Swap(IQFutureInterfaceBase other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsChainCanceled()
	{
		return this.handle.IsChainCanceled();
	}
	
}
extension CQt
{
	[LinkName("QFutureInterfaceBase_new")]
	public static extern void* QFutureInterfaceBase_new();
	[LinkName("QFutureInterfaceBase_new2")]
	public static extern void* QFutureInterfaceBase_new2(void* other);
	[LinkName("QFutureInterfaceBase_new3")]
	public static extern void* QFutureInterfaceBase_new3(int64 initialState);
	[LinkName("QFutureInterfaceBase_OperatorAssign")]
	public static extern void QFutureInterfaceBase_OperatorAssign(void* c_this, void* other);
	[LinkName("QFutureInterfaceBase_ReportStarted")]
	public static extern void QFutureInterfaceBase_ReportStarted(void* c_this);
	[LinkName("QFutureInterfaceBase_ReportFinished")]
	public static extern void QFutureInterfaceBase_ReportFinished(void* c_this);
	[LinkName("QFutureInterfaceBase_ReportCanceled")]
	public static extern void QFutureInterfaceBase_ReportCanceled(void* c_this);
	[LinkName("QFutureInterfaceBase_ReportResultsReady")]
	public static extern void QFutureInterfaceBase_ReportResultsReady(void* c_this, int32 beginIndex, int32 endIndex);
	[LinkName("QFutureInterfaceBase_SetRunnable")]
	public static extern void QFutureInterfaceBase_SetRunnable(void* c_this, void* runnable);
	[LinkName("QFutureInterfaceBase_SetThreadPool")]
	public static extern void QFutureInterfaceBase_SetThreadPool(void* c_this, void* pool);
	[LinkName("QFutureInterfaceBase_ThreadPool")]
	public static extern void* QFutureInterfaceBase_ThreadPool(void* c_this);
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
	public static extern void QFutureInterfaceBase_SetProgressValueAndText(void* c_this, int32 progressValue, libqt_string progressText);
	[LinkName("QFutureInterfaceBase_ProgressText")]
	public static extern libqt_string QFutureInterfaceBase_ProgressText(void* c_this);
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
	public static extern void* QFutureInterfaceBase_Mutex(void* c_this);
	[LinkName("QFutureInterfaceBase_HasException")]
	public static extern bool QFutureInterfaceBase_HasException(void* c_this);
	[LinkName("QFutureInterfaceBase_OperatorEqual")]
	public static extern bool QFutureInterfaceBase_OperatorEqual(void* c_this, void* other);
	[LinkName("QFutureInterfaceBase_OperatorNotEqual")]
	public static extern bool QFutureInterfaceBase_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QFutureInterfaceBase_Swap")]
	public static extern void QFutureInterfaceBase_Swap(void* c_this, void* other);
	[LinkName("QFutureInterfaceBase_IsChainCanceled")]
	public static extern bool QFutureInterfaceBase_IsChainCanceled(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QFutureInterfaceBase_Delete")]
	public static extern void QFutureInterfaceBase_Delete(void* self);
}