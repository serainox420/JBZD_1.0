package com.flurry.sdk;

import android.content.Context;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ff {
    public static void a(bc bcVar, Map<String, String> map, Context context, r rVar, au auVar, int i) {
        if (context != null && rVar != null && auVar != null) {
            b bVar = new b(bcVar, map, context, rVar, auVar);
            c cVar = new c();
            cVar.f2498a = bVar;
            cVar.b = i;
            ki.a().a(cVar);
        }
    }
}
