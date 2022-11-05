package io.realm.internal;

import java.lang.ref.ReferenceQueue;
/* compiled from: Context.java */
/* loaded from: classes3.dex */
public class d {
    private static final ReferenceQueue<g> b = new ReferenceQueue<>();
    private static final Thread c = new Thread(new f(b));

    /* renamed from: a  reason: collision with root package name */
    static final d f5794a = new d();

    static {
        c.setName("RealmFinalizingDaemon");
        c.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(g gVar) {
        new NativeObjectReference(this, gVar, b);
    }
}
