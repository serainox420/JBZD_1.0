package com.flurry.sdk;

import android.os.Bundle;
/* loaded from: classes2.dex */
public class ez {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2647a = ez.class.getName();

    public static ey a(Bundle bundle) {
        if (bundle.getBoolean("com.flurry.android.is_image_post", false)) {
            return new ex(bundle);
        }
        if (bundle.getBoolean("com.flurry.android.is_text_post", false)) {
            return new fa(bundle);
        }
        km.a(6, f2647a, "This cannot happen. Its neither text or image post. lets move back.");
        return null;
    }
}
