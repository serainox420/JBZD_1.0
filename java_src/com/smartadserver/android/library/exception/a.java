package com.smartadserver.android.library.exception;

import android.content.Context;
import com.smartadserver.android.library.g.c;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.TimeZone;
/* compiled from: SASRemoteErrorHelper.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f5433a = 200;

    private static String a(Context context, String str, String str2, String str3, String str4, String str5, int i) {
        String g = c.g(str2);
        if (str4.length() > f5433a) {
            str4 = str4.substring(0, f5433a);
        }
        String g2 = c.g(str4.replaceAll("<", "&lt;").replaceAll(">", "&gt;"));
        String g3 = c.g(str);
        String g4 = c.g(c.f());
        String str6 = "SDKAndroid%206.6.2%20" + c.g();
        String g5 = c.g(c.d(context));
        String g6 = c.g(str3);
        String g7 = c.g(str5);
        try {
            return "http://mobile.smartadserver.com".concat("/Diffx/ErrorHandler/RemoteErrorHandler.ashx").concat("?PoolId=").concat("17").concat("&ServerFront=").concat("SDKAndroid").concat("&UserHostAddress=").concat(g4).concat("&UserAgent=").concat(g3).concat("&Categorie=").concat(str6).concat("&Cookies=").concat(g5).concat("&RemoteURL=").concat(g).concat("&Domain=").concat("MobileSDK").concat("&Path=").concat(g6).concat("&URLReferrer=").concat(c.g(c.c(context))).concat("&Key=").concat(a()).concat("&Weight=").concat("" + i).concat("&PostData=").concat("InsertionID:%20" + g7).concat("&Message=").concat(g2);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    private static String a() throws NoSuchAlgorithmException {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        return c.e("#" + calendar.get(11) + "#" + calendar.get(6) + "#sm@RT4dserv3r");
    }

    public static void a(Context context, String str, Exception exc, String str2, String str3, String str4, int i) {
        com.smartadserver.android.library.a.c a2;
        boolean z = Math.random() < 1.0d / ((double) i);
        if (context != null && z) {
            try {
                String simpleName = exc.getClass().getSimpleName();
                if (exc.getMessage() != null) {
                    simpleName = simpleName.concat(" : ").concat(exc.getMessage());
                }
                StackTraceElement[] stackTrace = exc.getStackTrace();
                int length = stackTrace.length;
                int i2 = -1;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    } else if (stackTrace[i3].getClassName().equals("com.smartadserver.android.library.controller.SASAdViewController$ProxyHandler")) {
                        i2 = i3;
                        break;
                    } else {
                        i3++;
                    }
                }
                String str5 = "";
                if (i2 >= 1) {
                    str5 = "from " + stackTrace[i2 - 1].getMethodName() + "(" + stackTrace[i2 - 1].getFileName() + ":" + stackTrace[i2 - 1].getLineNumber() + ")]";
                }
                if (i2 >= 2) {
                    str5 = stackTrace[i2 - 2].getMethodName() + "(" + stackTrace[i2 - 2].getFileName() + ") " + str5;
                }
                if (str5.length() > 0) {
                    simpleName = simpleName + " [" + str5;
                }
                String a3 = a(context, str2, str, str3, simpleName, str4, i);
                if (a3 != null && (a2 = com.smartadserver.android.library.a.c.a((Context) null)) != null) {
                    a2.a(a3, true);
                }
            } catch (Exception e) {
                c.c("Log RemoteError failed: " + e.getMessage());
            }
        }
    }
}
