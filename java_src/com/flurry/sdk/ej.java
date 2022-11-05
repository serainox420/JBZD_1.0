package com.flurry.sdk;
/* loaded from: classes2.dex */
public final class ej implements Comparable<ej> {

    /* renamed from: a  reason: collision with root package name */
    final String f2615a;
    final String b;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(ej ejVar) {
        ej ejVar2 = ejVar;
        int compareTo = this.f2615a.compareTo(ejVar2.f2615a);
        return compareTo != 0 ? compareTo : this.b.compareTo(ejVar2.b);
    }

    public ej(String str, String str2) {
        this.f2615a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ej)) {
            return false;
        }
        ej ejVar = (ej) obj;
        return ejVar.f2615a.equals(this.f2615a) && ejVar.b.equals(this.b);
    }

    public final int hashCode() {
        return this.f2615a.hashCode() + this.b.hashCode();
    }
}
