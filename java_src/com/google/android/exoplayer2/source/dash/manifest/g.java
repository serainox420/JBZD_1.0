package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.util.v;
/* compiled from: SchemeValuePair.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f3399a;
    public final String b;

    public g(String str, String str2) {
        this.f3399a = str;
        this.b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return v.a(this.f3399a, gVar.f3399a) && v.a(this.b, gVar.b);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = (this.f3399a != null ? this.f3399a.hashCode() : 0) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }
}
