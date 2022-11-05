package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public final class bx implements hm {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2496a = bx.class.getSimpleName();
    private static final Map<String, hm> b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("AdMob".toUpperCase(Locale.US), new cc());
        hashMap.put("Millennial Media".toUpperCase(Locale.US), new ci());
        hashMap.put("InMobi".toUpperCase(Locale.US), new ce());
        hashMap.put("Facebook Audience Network".toUpperCase(Locale.US), new bz());
        b = Collections.unmodifiableMap(hashMap);
    }

    @Override // com.flurry.sdk.hm
    public final hl a(Context context, r rVar) {
        if (context == null || rVar == null) {
            return null;
        }
        if (rVar.l().b.b == null || rVar.l().a() == null) {
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
        hm hmVar = b.get(str.toUpperCase(Locale.US));
        if (hmVar == null) {
            return null;
        }
        km.a(3, f2496a, "Creating ad network takeover launcher: " + hmVar.getClass().getSimpleName() + " for type: " + str);
        hl a2 = hmVar.a(context, rVar);
        if (a2 == null) {
            km.b(f2496a, "Cannot create ad network takeover launcher for type: " + str);
            return a2;
        }
        return a2;
    }
}
