package android.support.v4.os;

import android.os.AsyncTask;
import android.os.Build;
/* compiled from: AsyncTaskCompat.java */
/* loaded from: classes.dex */
public final class a {
    public static <Params, Progress, Result> AsyncTask<Params, Progress, Result> a(AsyncTask<Params, Progress, Result> asyncTask, Params... paramsArr) {
        if (asyncTask == null) {
            throw new IllegalArgumentException("task can not be null");
        }
        if (Build.VERSION.SDK_INT >= 11) {
            b.a(asyncTask, paramsArr);
        } else {
            asyncTask.execute(paramsArr);
        }
        return asyncTask;
    }
}
