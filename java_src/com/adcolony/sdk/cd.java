package com.adcolony.sdk;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cd implements Runnable {
    private Thread b;

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<cc> f1272a = new ArrayList<>();
    private Object c = new Object();
    private Object d = new Object();
    private Boolean e = false;
    private boolean f = false;

    private static String d() {
        return "AdColonyPubServices";
    }

    public void a(cc ccVar) {
        synchronized (this.c) {
            this.f1272a.add(ccVar);
        }
    }

    public void a() {
        if (!e()) {
            this.b = new Thread(this);
            this.b.start();
            this.f = true;
        }
    }

    private boolean e() {
        return this.b != null && this.b.isAlive() && this.f;
    }

    public void b() {
        cb.b(d(), "Signalling pump manager.", true);
        synchronized (this.d) {
            this.e = true;
            this.d.notifyAll();
        }
    }

    public void c() {
        Boolean bool = false;
        synchronized (this.d) {
            if (!this.e.booleanValue()) {
                bool = true;
            }
            this.e = false;
            if (bool.booleanValue()) {
                cb.b(d(), "Pump manager waiting", true);
                try {
                    this.d.wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                cb.b(d(), "Pump manager DONE waiting.", true);
            }
        }
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
        try {
            ArrayList arrayList = new ArrayList();
            while (true) {
                cb.b(d(), "Starting to process managers.", true);
                arrayList.clear();
                synchronized (this.c) {
                    arrayList.addAll(this.f1272a);
                }
                for (cc ccVar : co.a((Iterable) arrayList)) {
                    if (ccVar != null) {
                        ccVar.b();
                    }
                }
                cb.b(d(), "Done updating managers.", true);
                c();
            }
        } catch (Exception e) {
            cb.b(d(), "Unhandled exception caught in internal message pump");
            bz.aK().a(e, "Unhandled exception caught in internal message pump", true);
        }
    }
}
