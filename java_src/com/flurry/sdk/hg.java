package com.flurry.sdk;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class hg implements hm {

    /* renamed from: a  reason: collision with root package name */
    static final String f2799a = hg.class.getSimpleName();
    private static final Map<String, hm> b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("FLURRY", new a((byte) 0));
        hashMap.put("THIRD_PARTY", new bx());
        b = Collections.unmodifiableMap(hashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0045  */
    @Override // com.flurry.sdk.hm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final hl a(Context context, r rVar) {
        String str;
        if (context == null || rVar == null) {
            return null;
        }
        cs csVar = rVar.l().b.b;
        if (csVar != null) {
            List<cn> list = csVar.f;
            if (list == null || list.isEmpty()) {
                str = null;
            } else {
                cn cnVar = list.get(0);
                if (cnVar != null) {
                    int i = cnVar.f2511a;
                    if (csVar.h == 1 || i == 2 || i == 1 || i == 3) {
                        str = "FLURRY";
                    } else if (i == 4) {
                        str = "THIRD_PARTY";
                    }
                }
            }
            if (str != null) {
                return null;
            }
            hm hmVar = b.get(str);
            if (hmVar == null) {
                km.e(f2799a, "Cannot create ad takeover for type: " + str);
                return null;
            }
            km.a(3, f2799a, "Creating ad takeover for type: " + str);
            return hmVar.a(context, rVar);
        }
        str = null;
        if (str != null) {
        }
    }

    /* loaded from: classes2.dex */
    static final class a implements hm {
        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }

        @Override // com.flurry.sdk.hm
        public final hl a(Context context, r rVar) {
            return new hj(context, rVar);
        }
    }
}
