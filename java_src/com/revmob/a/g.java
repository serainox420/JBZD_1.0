package com.revmob.a;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes3.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private Context f4739a;

    public g(Context context) {
        this.f4739a = context;
    }

    public final void a() {
        SharedPreferences.Editor edit = this.f4739a.getSharedPreferences("RevMob", 0).edit();
        edit.putBoolean("Registered", true);
        edit.commit();
    }

    public final boolean b() {
        return this.f4739a.getSharedPreferences("RevMob", 0).getBoolean("Registered", false);
    }
}
