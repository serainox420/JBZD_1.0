package com.flurry.sdk;
/* loaded from: classes2.dex */
public final class el {

    /* renamed from: a  reason: collision with root package name */
    public final String f2617a;
    public final String b;

    public el(String str, String str2) {
        this.f2617a = str;
        this.b = str2;
    }

    public final String toString() {
        return String.format("Token[%s , %s]", this.f2617a, this.b);
    }

    public final boolean a() {
        return "".equals(this.f2617a) && "".equals(this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        el elVar = (el) obj;
        return this.f2617a.equals(elVar.f2617a) && this.b.equals(elVar.b);
    }

    public final int hashCode() {
        return (this.f2617a.hashCode() * 31) + this.b.hashCode();
    }
}
