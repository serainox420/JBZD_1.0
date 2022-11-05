package com.adcolony.sdk;

import java.util.ArrayList;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bz extends bg {
    private static bz ap;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized bz aK() {
        bz bzVar;
        synchronized (bz.class) {
            if (ap == null) {
                ap = new bz();
            }
            bzVar = ap;
        }
        return bzVar;
    }

    private bz() {
        f();
    }

    @Override // com.adcolony.sdk.bg
    String a() {
        return "AdColonyPubServices";
    }

    @Override // com.adcolony.sdk.bg
    ArrayList<String> b() {
        return new ArrayList<>();
    }

    @Override // com.adcolony.sdk.bg
    void a(String str) {
    }

    @Override // com.adcolony.sdk.bg
    void a(Map<String, Object> map) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.adcolony.sdk.bg
    public void c() {
        aK().c.a(new bv() { // from class: com.adcolony.sdk.bz.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (bz.this.z()) {
                    bz.this.n.a(true);
                }
            }
        });
    }

    @Override // com.adcolony.sdk.bg
    int d() {
        return aK().p.I.size();
    }

    @Override // com.adcolony.sdk.bg
    boolean e() {
        return aK().y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.adcolony.sdk.bg
    public void b(String str) {
        if (co.f() && !am()) {
            try {
                aK().ay().e(str);
            } catch (Exception e) {
                a(e, "YvolverImpl.sendCommand");
            }
        }
    }
}
