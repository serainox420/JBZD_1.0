package com.facebook.ads.internal.g;

import android.content.Context;
import java.util.Map;
/* loaded from: classes.dex */
public class n extends d {
    public n(Context context, String str, double d, String str2, Map<String, String> map) {
        super(context, str, d, str2, map);
    }

    @Override // com.facebook.ads.internal.g.d
    public h a() {
        return h.IMMEDIATE;
    }

    @Override // com.facebook.ads.internal.g.d
    public String b() {
        return "store";
    }

    @Override // com.facebook.ads.internal.g.d
    public boolean c() {
        return true;
    }
}
