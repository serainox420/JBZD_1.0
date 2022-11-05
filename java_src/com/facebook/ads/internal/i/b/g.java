package com.facebook.ads.internal.i.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g {
    private final String b;
    private volatile e c;
    private final b e;
    private final c f;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f2193a = new AtomicInteger(0);
    private final List<b> d = new CopyOnWriteArrayList();

    /* loaded from: classes.dex */
    private static final class a extends Handler implements b {

        /* renamed from: a  reason: collision with root package name */
        private final String f2194a;
        private final List<b> b;

        public a(String str, List<b> list) {
            super(Looper.getMainLooper());
            this.f2194a = str;
            this.b = list;
        }

        @Override // com.facebook.ads.internal.i.b.b
        public void a(File file, String str, int i) {
            Message obtainMessage = obtainMessage();
            obtainMessage.arg1 = i;
            obtainMessage.obj = file;
            sendMessage(obtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            for (b bVar : this.b) {
                bVar.a((File) message.obj, this.f2194a, message.arg1);
            }
        }
    }

    public g(String str, c cVar) {
        this.b = (String) j.a(str);
        this.f = (c) j.a(cVar);
        this.e = new a(str, this.d);
    }

    private synchronized void c() {
        this.c = this.c == null ? e() : this.c;
    }

    private synchronized void d() {
        if (this.f2193a.decrementAndGet() <= 0) {
            this.c.a();
            this.c = null;
        }
    }

    private e e() {
        e eVar = new e(new h(this.b), new com.facebook.ads.internal.i.b.a.b(this.f.a(this.b), this.f.c));
        eVar.a(this.e);
        return eVar;
    }

    public void a() {
        this.d.clear();
        if (this.c != null) {
            this.c.a((b) null);
            this.c.a();
            this.c = null;
        }
        this.f2193a.set(0);
    }

    public void a(d dVar, Socket socket) {
        c();
        try {
            this.f2193a.incrementAndGet();
            this.c.a(dVar, socket);
        } finally {
            d();
        }
    }

    public int b() {
        return this.f2193a.get();
    }
}
