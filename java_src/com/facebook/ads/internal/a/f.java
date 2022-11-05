package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.h;
/* loaded from: classes.dex */
public class f extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2075a = f.class.getSimpleName();
    private final Context b;
    private final String c;
    private final Uri d;

    public f(Context context, String str, Uri uri) {
        this.b = context;
        this.c = str;
        this.d = uri;
    }

    @Override // com.facebook.ads.internal.a.a
    public c.a a() {
        return c.a.OPEN_LINK;
    }

    @Override // com.facebook.ads.internal.a.a
    public void b() {
        try {
            Log.w("REDIRECTACTION: ", this.d.toString());
            h.a(this.b, this.d, this.c);
        } catch (Exception e) {
            Log.d(f2075a, "Failed to open link url: " + this.d.toString(), e);
        }
    }
}
