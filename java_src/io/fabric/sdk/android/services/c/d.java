package io.fabric.sdk.android.services.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import io.fabric.sdk.android.h;
/* compiled from: PreferenceStoreImpl.java */
/* loaded from: classes.dex */
public class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f5658a;
    private final String b;
    private final Context c;

    public d(Context context, String str) {
        if (context == null) {
            throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
        }
        this.c = context;
        this.b = str;
        this.f5658a = this.c.getSharedPreferences(this.b, 0);
    }

    @Deprecated
    public d(h hVar) {
        this(hVar.getContext(), hVar.getClass().getName());
    }

    @Override // io.fabric.sdk.android.services.c.c
    public SharedPreferences a() {
        return this.f5658a;
    }

    @Override // io.fabric.sdk.android.services.c.c
    public SharedPreferences.Editor b() {
        return this.f5658a.edit();
    }

    @Override // io.fabric.sdk.android.services.c.c
    @TargetApi(9)
    public boolean a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
            return true;
        }
        return editor.commit();
    }
}
