package com.smartadserver.android.library.c;

import android.content.Context;
import android.util.SparseArray;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: SASMediationAdManager.java */
/* loaded from: classes3.dex */
public class h {
    private SASAdView d;
    private Context e;
    private com.smartadserver.android.library.model.a c = null;

    /* renamed from: a  reason: collision with root package name */
    HashMap<Integer, String> f5366a = null;
    SparseArray<i> b = new SparseArray<>();

    /* compiled from: SASMediationAdManager.java */
    /* loaded from: classes3.dex */
    private class a implements i.a {
        private int b;
        private String c;
        private boolean d;

        private a() {
            this.b = -1;
            this.c = null;
            this.d = false;
        }

        public int a() {
            return this.b;
        }

        public String b() {
            return this.c;
        }

        @Override // com.smartadserver.android.library.c.i.a
        public synchronized boolean c() {
            boolean z = true;
            synchronized (this) {
                this.b = 1;
                synchronized (this) {
                    notify();
                }
                return z;
            }
            if (this.d) {
                z = false;
            }
            return z;
        }

        @Override // com.smartadserver.android.library.c.i.a
        public synchronized void a(String str) {
            this.b = 0;
            this.c = str;
            synchronized (this) {
                notify();
            }
        }

        @Override // com.smartadserver.android.library.c.i.a
        public void d() {
            if (h.this.c != null) {
                h.this.a();
            }
        }

        public void e() {
            this.d = true;
        }
    }

    protected void a() {
    }

    public h(Context context, SASAdView sASAdView) {
        this.e = context;
        this.d = sASAdView;
    }

    public com.smartadserver.android.library.model.a a(com.smartadserver.android.library.model.a[] aVarArr, long j) {
        int a2;
        String str;
        Class<? extends i> a3;
        this.c = null;
        this.f5366a = new HashMap<>();
        ArrayList arrayList = new ArrayList();
        for (com.smartadserver.android.library.model.a aVar : aVarArr) {
            int a4 = aVar.a();
            if (j.c(a4)) {
                arrayList.add(aVar);
            } else {
                this.f5366a.put(Integer.valueOf(a4), "the " + j.b(a4) + " SDK is not available in this application");
            }
        }
        com.smartadserver.android.library.model.a[] aVarArr2 = (com.smartadserver.android.library.model.a[]) arrayList.toArray(new com.smartadserver.android.library.model.a[arrayList.size()]);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= aVarArr2.length) {
                break;
            }
            long length = j / (aVarArr2.length - i2);
            com.smartadserver.android.library.model.a aVar2 = aVarArr2[i2];
            int a5 = aVar2.a();
            final HashMap<String, String> b = aVar2.b();
            com.smartadserver.android.library.g.c.a("SASMediationAdManager", "splitTimeout for mediation SDK " + a5 + ":" + length);
            if (this.b.get(a5) == null && (a3 = j.a(a5)) != null) {
                try {
                    this.b.put(a5, a3.getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception e) {
                    com.smartadserver.android.library.g.c.a("SASMediationAdManager", "Can not instantiate adapter " + a3);
                    e.printStackTrace();
                }
            }
            final i iVar = this.b.get(a5);
            if (iVar != null) {
                final a aVar3 = new a();
                long currentTimeMillis = System.currentTimeMillis();
                synchronized (aVar3) {
                    com.smartadserver.android.library.g.c.h().post(new Runnable() { // from class: com.smartadserver.android.library.c.h.1
                        @Override // java.lang.Runnable
                        public void run() {
                            iVar.a(h.this.e, h.this.d, b, aVar3);
                        }
                    });
                    try {
                        aVar3.wait(length);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    a2 = aVar3.a();
                    if (a2 == -1) {
                        aVar3.e();
                    }
                }
                if (a2 == 1) {
                    this.c = aVar2;
                    aVar2.a(iVar.a());
                    break;
                }
                if (a2 == 0) {
                    str = aVar3.b();
                } else {
                    str = "the " + j.b(a5) + " Ad network did not respond in " + length + "ms";
                }
                this.f5366a.put(Integer.valueOf(a5), str);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 < length) {
                    j -= currentTimeMillis2;
                }
            }
            i = i2 + 1;
        }
        com.smartadserver.android.library.g.c.a("SASMediationAdManager", "Mediation SDK errors " + this.f5366a);
        return this.c;
    }

    public HashMap<Integer, String> b() {
        return this.f5366a;
    }

    public void c() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.b.size()) {
                this.b.get(this.b.keyAt(i2)).b();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
