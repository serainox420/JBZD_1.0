package com.flurry.android;
/* loaded from: classes2.dex */
public enum FlurrySyndicationEventName {
    REBLOG("Reblog"),
    FAST_REBLOG("FastReblog"),
    SOURCE_LINK("SourceClick"),
    LIKE("Like");
    

    /* renamed from: a  reason: collision with root package name */
    private String f2386a;

    FlurrySyndicationEventName(String str) {
        this.f2386a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f2386a;
    }
}
