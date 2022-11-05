package com.adcolony.sdk;

import android.app.Activity;
import com.facebook.share.internal.ShareConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static final int f1012a = 0;
    static final int b = 1;
    static final int c = 0;
    static final int d = 1;
    static final int e = 2;
    static final int f = 3;
    static final int g = 4;
    static final int h = 5;
    static final int i = 6;
    static final int j = 7;
    static final boolean k = false;
    static Activity l;
    static h m;
    static boolean n;
    static boolean o;

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity, AdColonyAppOptions adColonyAppOptions, boolean z) {
        l = activity;
        o = true;
        if (m == null) {
            m = new h();
            m.a(adColonyAppOptions, z);
        } else {
            m.a(adColonyAppOptions);
        }
        au.b.execute(new Runnable() { // from class: com.adcolony.sdk.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.m.a(a.l, (z) null);
            }
        });
        u.c.b("Configuring AdColony");
        m.E = false;
        m.f.j = true;
        m.f.l = true;
        m.f.r = false;
        m.H = true;
        m.f.a(false);
    }

    public static void a(String str) {
        if (l != null) {
            try {
                String[] list = l.getAssets().list(str);
                if (list.length == 0) {
                    c(str);
                    return;
                }
                File file = new File(m.k.b + str);
                if (!file.exists()) {
                    file.mkdir();
                }
                for (int i2 = 0; i2 < list.length; i2++) {
                    a(str + "/" + list[i2]);
                }
            } catch (IOException e2) {
                u.h.a("Failed copy hardcoded ad unit with error:").b(e2.getMessage());
            }
        }
    }

    private static void c(String str) {
        try {
            InputStream open = l.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(m.k.b + str);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    open.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
            }
        } catch (Exception e2) {
            u.h.a("Failed copy hardcoded ad unit file named: ").a(str).a(" with error:").b(e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity) {
        l = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, ac acVar) {
        m.d.a(str, acVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ac a(String str, ac acVar, boolean z) {
        m.d.a(str, acVar);
        return acVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, ac acVar) {
        m.d.b(str, acVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        m.d.b();
    }

    static void a(String str, String str2) {
        if (str2 != null) {
            a(str, s.a(str2));
        } else {
            a(str, (JSONObject) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            try {
                jSONObject = s.a();
            } catch (JSONException e2) {
                u.h.a("JSON error from ADC.java's send_message(): ").b(e2.toString());
                return;
            }
        }
        jSONObject.put("m_type", str);
        m.d.a(jSONObject);
    }

    static void b(String str) {
        try {
            z zVar = new z("CustomMessage.send", 0);
            zVar.b.put(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str);
            zVar.b();
        } catch (JSONException e2) {
            u.h.a("JSON error from ADC.java's send_custom_message(): ").b(e2.toString());
        }
    }
}
