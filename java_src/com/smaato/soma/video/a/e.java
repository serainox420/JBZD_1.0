package com.smaato.soma.video.a;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: SmaatoAsyncTasks.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static Executor f5292a;

    static {
        a();
    }

    @TargetApi(11)
    private static void a() {
        if (Build.VERSION.SDK_INT >= 11) {
            f5292a = AsyncTask.THREAD_POOL_EXECUTOR;
        } else {
            f5292a = Executors.newSingleThreadExecutor();
        }
    }

    @TargetApi(11)
    public static <P> void a(AsyncTask<P, ?, ?> asyncTask, P... pArr) {
        if (Build.VERSION.SDK_INT >= 11) {
            asyncTask.executeOnExecutor(f5292a, pArr);
        } else {
            asyncTask.execute(pArr);
        }
    }
}
