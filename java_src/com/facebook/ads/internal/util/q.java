package com.facebook.ads.internal.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
/* loaded from: classes.dex */
public class q extends AsyncTask<String, Void, Bitmap[]> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2250a = q.class.getSimpleName();
    private final Context b;
    private final ImageView c;
    private final com.facebook.ads.internal.view.e d;
    private r e;

    public q(ImageView imageView) {
        this.b = imageView.getContext();
        this.d = null;
        this.c = imageView;
    }

    public q(com.facebook.ads.internal.view.e eVar) {
        this.b = eVar.getContext();
        this.d = eVar;
        this.c = null;
    }

    public q a(r rVar) {
        this.e = rVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(Bitmap[] bitmapArr) {
        if (this.c != null) {
            this.c.setImageBitmap(bitmapArr[0]);
        }
        if (this.d != null) {
            this.d.a(bitmapArr[0], bitmapArr[1]);
        }
        if (this.e != null) {
            this.e.a();
        }
    }

    public void a(String... strArr) {
        executeOnExecutor(THREAD_POOL_EXECUTOR, strArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: b */
    public Bitmap[] doInBackground(String... strArr) {
        Throwable th;
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3 = null;
        String str = strArr[0];
        try {
            bitmap2 = com.facebook.ads.internal.c.c.a(this.b).a(str);
            try {
                if (this.d != null && bitmap2 != null) {
                    try {
                        ae aeVar = new ae(bitmap2);
                        aeVar.a(Math.round(bitmap2.getWidth() / 40.0f));
                        bitmap3 = aeVar.a();
                    } catch (Throwable th2) {
                        th = th2;
                        bitmap = bitmap2;
                        Log.e(f2250a, "Error downloading image: " + str, th);
                        d.a(c.a(th, null));
                        bitmap3 = bitmap2;
                        bitmap2 = bitmap;
                        return new Bitmap[]{bitmap2, bitmap3};
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bitmap = bitmap2;
                bitmap2 = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bitmap = null;
            bitmap2 = null;
        }
        return new Bitmap[]{bitmap2, bitmap3};
    }
}
