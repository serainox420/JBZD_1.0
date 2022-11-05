package com.facebook.ads.internal.util;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class z extends AsyncTask<String, Void, aa> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2259a = z.class.getSimpleName();
    private static final Set<String> b = new HashSet();
    private Map<String, String> c;
    private Map<String, String> d;
    private com.facebook.ads.internal.i.a.n e;

    static {
        b.add("#");
        b.add("null");
    }

    public z() {
        this(null, null);
    }

    public z(Map<String, String> map) {
        this(map, null);
    }

    public z(Map<String, String> map, Map<String, String> map2) {
        HashMap hashMap = null;
        this.c = map != null ? new HashMap(map) : null;
        this.d = map2 != null ? new HashMap(map2) : hashMap;
    }

    private String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return str;
        }
        return str + (str.contains("?") ? "&" : "?") + str2 + "=" + URLEncoder.encode(str3);
    }

    private boolean a(String str) {
        com.facebook.ads.internal.i.a.a b2 = y.b();
        try {
            if (this.d == null || this.d.size() == 0) {
                this.e = b2.a(str, (com.facebook.ads.internal.i.a.p) null);
            } else {
                com.facebook.ads.internal.i.a.p pVar = new com.facebook.ads.internal.i.a.p();
                pVar.a((Map<? extends String, ? extends String>) this.d);
                this.e = b2.b(str, pVar);
            }
            if (this.e == null) {
                return false;
            }
            return this.e.a() == 200;
        } catch (Exception e) {
            Log.e(f2259a, "Error opening url: " + str, e);
            return false;
        }
    }

    private String b(String str) {
        try {
            return a(str, "analog", h.a(a.a()));
        } catch (Exception e) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public aa doInBackground(String... strArr) {
        String str;
        String str2 = strArr[0];
        if (TextUtils.isEmpty(str2) || b.contains(str2)) {
            return null;
        }
        String b2 = b(str2);
        if (this.c != null && !this.c.isEmpty()) {
            Iterator<Map.Entry<String, String>> it = this.c.entrySet().iterator();
            while (true) {
                str = b2;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it.next();
                b2 = a(str, next.getKey(), next.getValue());
            }
            b2 = str;
        }
        int i = 1;
        while (true) {
            int i2 = i + 1;
            if (i > 2) {
                return null;
            }
            if (a(b2)) {
                return new aa(this.e);
            }
            i = i2;
        }
    }
}
