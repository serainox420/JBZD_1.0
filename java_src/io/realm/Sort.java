package io.realm;
/* loaded from: classes3.dex */
public enum Sort {
    ASCENDING(true),
    DESCENDING(false);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f5744a;

    Sort(boolean z) {
        this.f5744a = z;
    }

    public boolean getValue() {
        return this.f5744a;
    }
}
