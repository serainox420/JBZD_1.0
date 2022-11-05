package com.flurry.sdk;
/* loaded from: classes2.dex */
public final class hh {

    /* renamed from: a  reason: collision with root package name */
    public final r f2800a;
    public final String b;
    public final boolean c;
    private boolean d = false;

    public hh(r rVar, String str, boolean z) {
        this.f2800a = rVar;
        this.b = str;
        this.c = z;
    }

    public final String toString() {
        return "fAdObjectId: " + this.f2800a.e() + ", fLaunchUrl: " + this.b + ", fShouldCloseAd: " + this.c + ", fSendYCookie: " + this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        hh hhVar = (hh) obj;
        if (this.c == hhVar.c && this.d == hhVar.d && (this.f2800a == null ? hhVar.f2800a == null : this.f2800a.equals(hhVar.f2800a))) {
            if (this.b != null) {
                if (this.b.equals(hhVar.b)) {
                    return true;
                }
            } else if (hhVar.b == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = 1;
        int hashCode = ((this.c ? 1 : 0) + (((this.b != null ? this.b.hashCode() : 0) + ((this.f2800a != null ? this.f2800a.hashCode() : 0) * 31)) * 31)) * 31;
        if (!this.d) {
            i = 0;
        }
        return hashCode + i;
    }
}
