package com.mopub.common.util;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import android.os.Build;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes3.dex */
public class AsyncTasks {

    /* renamed from: a  reason: collision with root package name */
    private static Executor f4386a;

    static {
        a();
    }

    @TargetApi(11)
    private static void a() {
        if (Build.VERSION.SDK_INT >= 11) {
            f4386a = AsyncTask.THREAD_POOL_EXECUTOR;
        } else {
            f4386a = Executors.newSingleThreadExecutor();
        }
    }

    @VisibleForTesting
    public static void setExecutor(Executor executor) {
        f4386a = executor;
    }

    @TargetApi(11)
    public static <P> void safeExecuteOnExecutor(AsyncTask<P, ?, ?> asyncTask, P... pArr) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        Preconditions.checkUiThread("AsyncTask must be executed on the main thread");
        if (Build.VERSION.SDK_INT >= 11) {
            asyncTask.executeOnExecutor(f4386a, pArr);
        } else {
            asyncTask.execute(pArr);
        }
    }
}
