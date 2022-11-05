package com.adcolony.sdk;

import android.util.Log;
import com.facebook.share.internal.ShareConstants;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w {
    static final int b = 4000;
    static final int c = 4;
    static final int d = 3;
    static final int e = 2;
    static final int f = 1;
    static final int g = 0;
    static ag j;

    /* renamed from: a  reason: collision with root package name */
    static boolean f1502a = false;
    static int h = 3;
    static int i = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i2, String str, boolean z) {
        a(str, i2);
        if ((!z || f1502a) && h != 4) {
            for (int i3 = 0; i3 <= str.length() / 4000; i3++) {
                int i4 = i3 * 4000;
                int i5 = (i3 + 1) * 4000;
                if (i5 > str.length()) {
                    i5 = str.length();
                }
                if (i2 == 3 && h >= 3) {
                    Log.d("AdColony [TRACE]", str.substring(i4, i5));
                } else if (i2 == 2 && h >= 2) {
                    Log.i("AdColony [INFO]", str.substring(i4, i5));
                } else if (i2 == 1 && h >= 1) {
                    Log.w("AdColony [WARNING]", str.substring(i4, i5));
                } else if (i2 == 0 && h >= 0) {
                    Log.e("AdColony [ERROR]", str.substring(i4, i5));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(HashMap<String, Object> hashMap) {
        try {
            j = new ag(new t(new URL("https://wd.adcolony.com/logs")), new r("adcolony_android", "3.0.7", "production"), Executors.newSingleThreadScheduledExecutor(), new ArrayList(), hashMap);
            j.a(5L, TimeUnit.SECONDS);
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
        }
    }

    static void a(String str, int i2) {
        if (j != null && i != 4) {
            if (i2 == 3 && i >= 3) {
                j.c(str);
            } else if (i2 == 2 && i >= 2) {
                j.d(str);
            } else if (i2 == 1 && i >= 1) {
                j.e(str);
            } else if (i2 == 0 && i >= 0) {
                j.f(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        a.a("Log.set_log_level", new ac() { // from class: com.adcolony.sdk.w.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.h = s.c(zVar.b, "level");
            }
        });
        a.a("Log.public.trace", new ac() { // from class: com.adcolony.sdk.w.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.a(3, s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE), false);
            }
        });
        a.a("Log.private.trace", new ac() { // from class: com.adcolony.sdk.w.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.a(3, s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE), true);
            }
        });
        a.a("Log.public.info", new ac() { // from class: com.adcolony.sdk.w.4
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.a(2, s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE), false);
            }
        });
        a.a("Log.private.info", new ac() { // from class: com.adcolony.sdk.w.5
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.a(2, s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE), true);
            }
        });
        a.a("Log.public.warning", new ac() { // from class: com.adcolony.sdk.w.6
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.a(1, s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE), false);
            }
        });
        a.a("Log.private.warning", new ac() { // from class: com.adcolony.sdk.w.7
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.a(1, s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE), true);
            }
        });
        a.a("Log.public.error", new ac() { // from class: com.adcolony.sdk.w.8
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.a(0, s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE), false);
            }
        });
        a.a("Log.private.error", new ac() { // from class: com.adcolony.sdk.w.9
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                w.a(0, s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE), true);
            }
        });
    }
}
