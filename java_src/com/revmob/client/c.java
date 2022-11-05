package com.revmob.client;

import android.app.Activity;
import com.revmob.internal.RMLog;
/* loaded from: classes3.dex */
public final class c extends f {

    /* renamed from: a  reason: collision with root package name */
    private com.revmob.a.g f4788a;

    public c(Activity activity) {
        this.f4788a = new com.revmob.a.g(activity);
    }

    @Override // com.revmob.client.f
    public final void a(String str) {
        this.f4788a.a();
        RMLog.i("Install registered on server");
    }

    @Override // com.revmob.client.f
    public final void b(String str) {
        RMLog.w("Install not registered on server. Did you set a valid App ID? If not, collect one at http://revmob.com.");
    }
}
