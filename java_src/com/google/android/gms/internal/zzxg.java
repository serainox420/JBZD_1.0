package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.RemoteException;
import com.google.android.gms.internal.zzxi;
/* loaded from: classes2.dex */
public class zzxg extends AsyncTask<Uri, Long, Bitmap> {
    private static final zzyz zzapV = new zzyz("FetchBitmapTask");
    private final zzxh zzatf;
    private final zza zzatg;

    /* loaded from: classes2.dex */
    public interface zza {
        void onPostExecute(Bitmap bitmap);
    }

    /* loaded from: classes2.dex */
    public static class zzb {
        public zzxg zza(Context context, int i, int i2, boolean z, zza zzaVar) {
            return new zzxg(context, i, i2, z, zzaVar);
        }

        public zzxg zza(Context context, zza zzaVar) {
            return new zzxg(context, zzaVar);
        }
    }

    /* loaded from: classes2.dex */
    private class zzc extends zzxi.zza {
        private zzc() {
        }

        @Override // com.google.android.gms.internal.zzxi
        public void zzb(long j, long j2) {
            zzxg.this.publishProgress(Long.valueOf(j), Long.valueOf(j2));
        }

        @Override // com.google.android.gms.internal.zzxi
        public int zzsB() {
            return 10298208;
        }
    }

    public zzxg(Context context, int i, int i2, boolean z, long j, int i3, int i4, int i5, zza zzaVar) {
        this.zzatf = zzwv.zza(context.getApplicationContext(), this, new zzc(), i, i2, z, j, i3, i4, i5);
        this.zzatg = zzaVar;
    }

    public zzxg(Context context, int i, int i2, boolean z, zza zzaVar) {
        this(context, i, i2, z, 2097152L, 5, 333, 10000, zzaVar);
    }

    public zzxg(Context context, zza zzaVar) {
        this(context, 0, 0, false, 2097152L, 5, 333, 10000, zzaVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Bitmap doInBackground(Uri... uriArr) {
        if (uriArr.length != 1 || uriArr[0] == null) {
            return null;
        }
        try {
            return this.zzatf.zzq(uriArr[0]);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "doFetch", zzxh.class.getSimpleName());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        if (this.zzatg != null) {
            this.zzatg.onPostExecute(bitmap);
        }
    }

    @TargetApi(11)
    public AsyncTask<Uri, Long, Bitmap> zzp(Uri uri) {
        int i = Build.VERSION.SDK_INT;
        return executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uri);
    }
}
