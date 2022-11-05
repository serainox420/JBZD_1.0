package com.facebook.ads.internal.g;

import android.content.Context;
import java.util.Map;
/* loaded from: classes.dex */
public class l extends d {
    protected String f;
    protected h g;

    public l(Context context, String str, double d, String str2, Map<String, String> map, String str3, h hVar) {
        super(context, str, d, str2, map);
        this.f = str3;
        this.g = hVar;
    }

    @Override // com.facebook.ads.internal.g.d
    public h a() {
        return this.g;
    }

    @Override // com.facebook.ads.internal.g.d
    public String b() {
        return this.f;
    }

    @Override // com.facebook.ads.internal.g.d
    public boolean c() {
        return true;
    }
}
