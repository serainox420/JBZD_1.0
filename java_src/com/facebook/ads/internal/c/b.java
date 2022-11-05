package com.facebook.ads.internal.c;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2120a = b.class.getSimpleName();
    private final c d;
    private final d e;
    private final Handler b = new Handler();
    private final ExecutorService c = Executors.newFixedThreadPool(10);
    private final List<Callable<Boolean>> f = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Callable<Boolean> {
        private final String b;

        public a(String str) {
            this.b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Boolean call() {
            b.this.d.a(this.b);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.facebook.ads.internal.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0096b implements Callable<Boolean> {
        private final String b;

        public CallableC0096b(String str) {
            this.b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Boolean call() {
            b.this.e.a(this.b);
            return true;
        }
    }

    public b(Context context) {
        this.d = c.a(context);
        this.e = d.a(context);
    }

    public void a(final com.facebook.ads.internal.c.a aVar) {
        final ArrayList arrayList = new ArrayList(this.f);
        this.c.submit(new Runnable() { // from class: com.facebook.ads.internal.c.b.1
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<Future> arrayList2 = new ArrayList(arrayList.size());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(b.this.c.submit((Callable) it.next()));
                }
                try {
                    for (Future future : arrayList2) {
                        future.get();
                    }
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(b.f2120a, "Exception while executing cache downloads.", e);
                }
                b.this.b.post(new Runnable() { // from class: com.facebook.ads.internal.c.b.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aVar.a();
                    }
                });
            }
        });
        this.f.clear();
    }

    public void a(String str) {
        this.f.add(new a(str));
    }

    public void b(String str) {
        this.f.add(new CallableC0096b(str));
    }

    public String c(String str) {
        return this.e.b(str);
    }
}
