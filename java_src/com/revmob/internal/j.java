package com.revmob.internal;

import java.net.URI;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.client.RedirectHandler;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
/* loaded from: classes3.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static String f4804a;
    public static boolean b;
    private static int c = 30;
    private static Pattern d = Pattern.compile("details\\?id=[a-zA-Z0-9\\.]+");
    private static Pattern e = Pattern.compile("android\\?p=[a-zA-Z0-9\\.]+");
    private String f;
    private String g;
    private AbstractHttpClient h;
    private RedirectHandler i;

    public j(String str, String str2) {
        this(str, str2, new DefaultHttpClient(), new k());
    }

    private j(String str, String str2, AbstractHttpClient abstractHttpClient, RedirectHandler redirectHandler) {
        this.f = str;
        this.g = str2;
        this.h = abstractHttpClient;
        this.i = redirectHandler;
        b = false;
        this.h.setRedirectHandler(this.i);
    }

    public static boolean a(String str) {
        return str.startsWith("market://");
    }

    public static boolean b(String str) {
        return str.startsWith("amzn://");
    }

    public final String c(String str) {
        if (str == null || str.endsWith("#click")) {
            if (this.f.startsWith("market://") || this.f.startsWith("amzn://")) {
                return this.f;
            }
            c cVar = new c(this.h);
            cVar.a(c);
            cVar.a(this.f, this.g);
            if (f4804a != null) {
                String str2 = f4804a;
                f4804a = null;
                return str2;
            } else if (b) {
                b = false;
                return "alreadyOpeningBrowser";
            } else {
                URI a2 = this.i.a();
                if (a2 == null) {
                    return null;
                }
                String uri = a2.toString();
                if (uri.startsWith("market://") || uri.startsWith("amzn://")) {
                    return uri;
                }
                Matcher matcher = d.matcher(uri);
                Matcher matcher2 = e.matcher(uri);
                if (matcher.find()) {
                    return "market://" + matcher.group();
                } else if (!matcher2.find()) {
                    return uri;
                } else {
                    return "amzn://apps/" + matcher2.group();
                }
            }
        }
        return str;
    }
}
