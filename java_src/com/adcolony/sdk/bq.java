package com.adcolony.sdk;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bq extends cc {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<bp> f1210a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(cd cdVar) {
        super(cdVar);
        this.f1210a = new ArrayList<>();
    }

    public void a(bp bpVar) {
        synchronized (this.f1210a) {
            this.f1210a.add(bpVar);
            c();
        }
    }

    protected void a() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f1210a) {
            arrayList.addAll(this.f1210a);
            this.f1210a.clear();
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                bp bpVar = (bp) arrayList.get(i2);
                if (bpVar != null) {
                    try {
                        bpVar.a();
                        synchronized (bpVar) {
                            if (!bpVar.e()) {
                                bpVar.wait();
                            }
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.adcolony.sdk.cc
    public void b() {
        a();
    }
}
