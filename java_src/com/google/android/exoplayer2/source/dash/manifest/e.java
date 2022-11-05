package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.util.u;
/* compiled from: RangedUri.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final long f3397a;
    public final long b;
    private final String c;
    private int d;

    public e(String str, long j, long j2) {
        this.c = str == null ? "" : str;
        this.f3397a = j;
        this.b = j2;
    }

    public Uri a(String str) {
        return u.a(str, this.c);
    }

    public String b(String str) {
        return u.b(str, this.c);
    }

    public e a(e eVar, String str) {
        e eVar2 = null;
        long j = -1;
        String b = b(str);
        if (eVar != null && b.equals(eVar.b(str))) {
            if (this.b != -1 && this.f3397a + this.b == eVar.f3397a) {
                long j2 = this.f3397a;
                if (eVar.b != -1) {
                    j = this.b + eVar.b;
                }
                eVar2 = new e(b, j2, j);
            } else if (eVar.b != -1 && eVar.f3397a + eVar.b == this.f3397a) {
                long j3 = eVar.f3397a;
                if (this.b != -1) {
                    j = eVar.b + this.b;
                }
                eVar2 = new e(b, j3, j);
            }
        }
        return eVar2;
    }

    public int hashCode() {
        if (this.d == 0) {
            this.d = ((((((int) this.f3397a) + 527) * 31) + ((int) this.b)) * 31) + this.c.hashCode();
        }
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f3397a == eVar.f3397a && this.b == eVar.b && this.c.equals(eVar.c);
    }
}
