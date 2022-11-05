package com.flurry.sdk;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public abstract class kg {
    protected String g;

    public kg(String str) {
        this.g = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Event must have a name!");
        }
        this.g = str;
    }

    public final String a() {
        return this.g;
    }

    public final void b() {
        ki.a().a(this);
    }
}
