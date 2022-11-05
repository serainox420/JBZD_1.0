package com.facebook.ads.internal.g;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.facebook.ads.internal.util.y;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2159a = e.class.getSimpleName();
    private static final String b = com.facebook.ads.internal.server.b.b();
    private final a c;
    private final ConnectivityManager e;
    private final com.facebook.ads.internal.i.a.a f;
    private final long h;
    private final long i;
    private volatile boolean k;
    private int l;
    private long m;
    private final Runnable j = new Runnable() { // from class: com.facebook.ads.internal.g.e.1
        /* JADX WARN: Type inference failed for: r0v5, types: [com.facebook.ads.internal.g.e$1$1] */
        @Override // java.lang.Runnable
        public void run() {
            e.this.k = false;
            if (e.this.d.getQueue().isEmpty()) {
                new AsyncTask<Void, Void, Void>() { // from class: com.facebook.ads.internal.g.e.1.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* renamed from: a */
                    public Void doInBackground(Void... voidArr) {
                        e.b(e.this);
                        if (e.this.m > 0) {
                            try {
                                Thread.sleep(e.this.m);
                            } catch (InterruptedException e) {
                            }
                        }
                        e.this.b();
                        return null;
                    }
                }.executeOnExecutor(e.this.d, new Void[0]);
            }
        }
    };
    private final ThreadPoolExecutor d = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    private final Handler g = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        JSONObject a();

        boolean a(JSONArray jSONArray);

        void b();
    }

    public e(Context context, a aVar) {
        this.c = aVar;
        this.e = (ConnectivityManager) context.getSystemService("connectivity");
        this.f = y.b(context);
        this.h = com.facebook.ads.internal.h.d(context);
        this.i = com.facebook.ads.internal.h.e(context);
    }

    private void a() {
        if (this.l >= 3) {
            c();
            a(false);
            return;
        }
        if (this.l == 1) {
            this.m = 2000L;
        } else {
            this.m *= 2;
        }
        a(true);
    }

    private void a(long j) {
        this.g.postDelayed(this.j, j);
    }

    static /* synthetic */ int b(e eVar) {
        int i = eVar.l + 1;
        eVar.l = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            NetworkInfo activeNetworkInfo = this.e.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                a(this.i);
                return;
            }
            JSONObject a2 = this.c.a();
            if (a2 == null) {
                c();
                return;
            }
            com.facebook.ads.internal.i.a.p pVar = new com.facebook.ads.internal.i.a.p();
            pVar.put("payload", a2.toString());
            com.facebook.ads.internal.i.a.n b2 = this.f.b(b, pVar);
            String e = b2 != null ? b2.e() : null;
            if (TextUtils.isEmpty(e)) {
                a();
            } else if (b2.a() != 200) {
                a();
            } else if (!this.c.a(new JSONArray(e))) {
                a();
            } else {
                c();
            }
        } catch (Exception e2) {
            a();
        }
    }

    private void c() {
        this.l = 0;
        this.m = 0L;
        if (this.d.getQueue().size() == 0) {
            this.c.b();
        }
    }

    public void a(boolean z) {
        if (z || !this.k) {
            this.k = true;
            this.g.removeCallbacks(this.j);
            a(z ? this.h : this.i);
        }
    }
}
