package com.google.android.exoplayer2;
/* compiled from: RendererConfiguration.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f3300a = new l(0);
    public final int b;

    public l(int i) {
        this.b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.b == ((l) obj).b;
    }

    public int hashCode() {
        return this.b;
    }
}
