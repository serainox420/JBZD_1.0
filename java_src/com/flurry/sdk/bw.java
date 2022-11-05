package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public final class bw implements hc {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2495a = bw.class.getSimpleName();
    private static final Map<String, hc> b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("AdMob".toUpperCase(Locale.US), new cc());
        hashMap.put("Millennial Media".toUpperCase(Locale.US), new ci());
        hashMap.put("InMobi".toUpperCase(Locale.US), new ce());
        hashMap.put("Facebook Audience Network".toUpperCase(Locale.US), new bz());
        b = Collections.unmodifiableMap(hashMap);
    }

    @Override // com.flurry.sdk.hc
    public final gz b(Context context, r rVar) {
        if (context == null || rVar == null) {
            return null;
        }
        if (rVar.l().b.b == null) {
            return null;
        }
        List<cn> list = rVar.l().b.b.f;
        if (list == null || list.isEmpty()) {
            return null;
        }
        cn cnVar = list.get(0);
        if (cnVar == null) {
            return null;
        }
        String str = cnVar.c;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        hc hcVar = b.get(str.toUpperCase(Locale.US));
        if (hcVar == null) {
            return null;
        }
        km.a(3, f2495a, "Creating ad network view for type: " + str);
        gz b2 = hcVar.b(context, rVar);
        if (b2 == null) {
            km.b(f2495a, "Cannot create ad network view for type: " + str);
            return null;
        }
        return b2;
    }
}
