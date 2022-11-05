package com.facebook.ads.internal.util;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes.dex */
class ac extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final aj f2215a;

    public ac(Handler handler, aj ajVar) {
        super(handler);
        this.f2215a = ajVar;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return false;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        this.f2215a.e();
    }
}
