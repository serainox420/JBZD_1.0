package com.flurry.sdk;

import android.text.TextUtils;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2648a = f.class.getSimpleName();
    private static f c;
    public final TreeMap<String, Integer> b = new TreeMap<>();

    public static synchronized f a() {
        f fVar;
        synchronized (f.class) {
            if (c == null) {
                c = new f();
            }
            fVar = c;
        }
        return fVar;
    }

    public final void a(String str) {
        synchronized (this.b) {
            Integer num = this.b.get(str);
            this.b.put(str, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
        }
    }

    public final void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            km.a(3, f2648a, "========== PRINT " + str.toUpperCase(Locale.getDefault()) + " COUNTERS ==========");
            synchronized (this.b) {
                for (Map.Entry<String, Integer> entry : this.b.entrySet()) {
                    if (entry.getKey().startsWith(str)) {
                        km.a(3, f2648a, entry.getKey() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + entry.getValue());
                    }
                }
            }
            km.a(3, f2648a, "========== FINALIZE PRINT " + str.toUpperCase(Locale.getDefault()) + " COUNTERS ==========");
        }
    }
}
