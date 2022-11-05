package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.h;
import java.util.Map;
/* loaded from: classes.dex */
public class d extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2073a = d.class.getSimpleName();
    private final Context b;
    private final String c;
    private final Uri d;
    private final Map<String, String> e;

    public d(Context context, String str, Uri uri, Map<String, String> map) {
        this.b = context;
        this.c = str;
        this.d = uri;
        this.e = map;
    }

    @Override // com.facebook.ads.internal.a.a
    public c.a a() {
        return c.a.OPEN_LINK;
    }

    @Override // com.facebook.ads.internal.a.a
    public void b() {
        a(this.b, this.c, this.d, this.e);
        try {
            h.a(this.b, Uri.parse(this.d.getQueryParameter("link")), this.c);
        } catch (Exception e) {
            Log.d(f2073a, "Failed to open link url: " + this.d.toString(), e);
        }
    }
}
