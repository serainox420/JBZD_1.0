package com.revmob.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.util.DisplayMetrics;
import com.revmob.internal.u;
import com.revmob.internal.w;
import java.security.MessageDigest;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f4734a;
    private static int b;

    public static int a() {
        return f4734a;
    }

    public static int a(Context context, int i) {
        return (int) ((context.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    public static b a(Context context) {
        b bVar = null;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            c cVar = new c((byte) 0);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (context.bindService(intent, cVar, 1)) {
                    try {
                        d dVar = new d(cVar.a());
                        bVar = new b(dVar.a(), dVar.b());
                    } catch (Exception e) {
                        u.a(e, null, w.c, null, "getAdvertisingIdInfo2");
                        throw e;
                    }
                }
                return bVar;
            } finally {
                context.unbindService(cVar);
            }
        } catch (Exception e2) {
            u.a(e2, null, w.c, null, "getAdvertisingIdInfo1");
            throw e2;
        }
    }

    public static String a(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b2 : digest) {
            int i = (b2 >>> 4) & 15;
            int i2 = 0;
            while (true) {
                sb.append((i < 0 || i > 9) ? (char) ((i - 10) + 97) : (char) (i + 48));
                int i3 = b2 & 15;
                int i4 = i2 + 1;
                if (i2 > 0) {
                    break;
                }
                i2 = i4;
                i = i3;
            }
        }
        return sb.toString();
    }

    public static void a(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        f4734a = displayMetrics.widthPixels;
        b = displayMetrics.heightPixels;
        float f = displayMetrics.density;
        int i = displayMetrics.densityDpi;
    }

    public static boolean a(Context context, Class cls) {
        try {
            return context.getPackageManager().queryIntentActivities(new Intent(context, cls), 65536).size() > 0;
        } catch (Exception e) {
            u.a(e, null, w.c, null, "isIntentAvailable2");
            return false;
        }
    }

    public static int b() {
        return b;
    }
}
