package com.applovin.impl.sdk;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bn f1618a;
    private int b;
    private String c;
    private Map d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(bn bnVar, String str, Map map) {
        this(bnVar, str, map, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(bn bnVar, String str, Map map, int i) {
        this.f1618a = bnVar;
        this.b = i;
        this.c = str + "&postback_ts=" + System.currentTimeMillis();
        this.d = map;
    }

    public int a() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    public String b() {
        return this.c;
    }

    public Map c() {
        return this.d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        bp bpVar = (bp) obj;
        if (this.b != bpVar.b) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(bpVar.c)) {
                return false;
            }
        } else if (bpVar.c != null) {
            return false;
        }
        if (this.d == null ? bpVar.d != null : !this.d.equals(bpVar.d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.c != null ? this.c.hashCode() : 0) + (this.b * 31)) * 31;
        if (this.d != null) {
            i = this.d.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        return "PostbackRequest{attemptNumber=" + this.b + ", targetUrl='" + this.c + "', requestBody=" + this.d + '}';
    }
}
