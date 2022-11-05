package io.fabric.sdk.android.services.settings;

import android.content.Context;
import android.graphics.BitmapFactory;
/* compiled from: IconRequest.java */
/* loaded from: classes3.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public final String f5720a;
    public final int b;
    public final int c;
    public final int d;

    public n(String str, int i, int i2, int i3) {
        this.f5720a = str;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public static n a(Context context, String str) {
        if (str != null) {
            try {
                int l = io.fabric.sdk.android.services.common.i.l(context);
                io.fabric.sdk.android.c.h().a("Fabric", "App icon resource ID is " + l);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeResource(context.getResources(), l, options);
                return new n(str, l, options.outWidth, options.outHeight);
            } catch (Exception e) {
                io.fabric.sdk.android.c.h().e("Fabric", "Failed to load icon", e);
            }
        }
        return null;
    }
}
