package com.inmobi.commons.uid;
/* loaded from: classes2.dex */
public class AdvertisingId {

    /* renamed from: a  reason: collision with root package name */
    private String f3826a;
    private boolean b;

    public boolean isLimitAdTracking() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.b = z;
    }

    public String getAdId() {
        return this.f3826a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f3826a = str;
    }
}
