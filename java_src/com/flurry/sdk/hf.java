package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.gx;
import com.flurry.sdk.gz;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class hf implements hc {

    /* renamed from: a  reason: collision with root package name */
    static final String f2796a = hf.class.getSimpleName();
    private static final Map<String, hc> b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("FLURRY", new a((byte) 0));
        hashMap.put("THIRD_PARTY", new bw());
        b = Collections.unmodifiableMap(hashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0045  */
    @Override // com.flurry.sdk.hc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final gz b(Context context, r rVar) {
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
            hc hcVar = b.get(str);
            if (hcVar == null) {
                km.e(f2796a, "Cannot create ad banner for type: " + str);
                return null;
            }
            km.a(3, f2796a, "Creating ad banner for type: " + str);
            return hcVar.b(context, rVar);
        }
        str = null;
        if (str != null) {
        }
    }

    /* loaded from: classes2.dex */
    static final class a implements hc {

        /* renamed from: a  reason: collision with root package name */
        private gz.a f2797a;

        private a() {
            this.f2797a = new gz.a() { // from class: com.flurry.sdk.hf.a.1
                @Override // com.flurry.sdk.gz.a
                public final void a() {
                    a.a();
                }

                @Override // com.flurry.sdk.gz.a
                public final void b() {
                    a.a();
                }

                @Override // com.flurry.sdk.gz.a
                public final void c() {
                    a.a();
                }
            };
        }

        /* synthetic */ a(byte b) {
            this();
        }

        @Override // com.flurry.sdk.hc
        public final gz b(Context context, r rVar) {
            return new gy(context, rVar, this.f2797a);
        }

        static /* synthetic */ void a() {
            gx gxVar = new gx();
            gxVar.d = gx.a.b;
            ki.a().a(gxVar);
        }
    }
}
