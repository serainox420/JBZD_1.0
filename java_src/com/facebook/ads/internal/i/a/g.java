package com.facebook.ads.internal.i.a;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class g implements r {
    private void a(Map<String, List<String>> map) {
        if (map != null) {
            for (String str : map.keySet()) {
                Iterator<String> it = map.get(str).iterator();
                while (it.hasNext()) {
                    a(str + ":" + it.next());
                }
            }
        }
    }

    @Override // com.facebook.ads.internal.i.a.r
    public void a(n nVar) {
        if (nVar != null) {
            a("=== HTTP Response ===");
            a("Receive url: " + nVar.b());
            a("Status: " + nVar.a());
            a(nVar.c());
            a("Content:\n" + nVar.e());
        }
    }

    @Override // com.facebook.ads.internal.i.a.r
    public void a(String str) {
        System.out.println(str);
    }

    @Override // com.facebook.ads.internal.i.a.r
    public void a(HttpURLConnection httpURLConnection, Object obj) {
        a("=== HTTP Request ===");
        a(httpURLConnection.getRequestMethod() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + httpURLConnection.getURL().toString());
        if (obj instanceof String) {
            a("Content: " + ((String) obj));
        }
        a(httpURLConnection.getRequestProperties());
    }

    @Override // com.facebook.ads.internal.i.a.r
    public boolean a() {
        return false;
    }
}
