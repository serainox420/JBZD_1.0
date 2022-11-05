package com.flurry.sdk;
/* loaded from: classes2.dex */
public class ef {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2607a = ef.class.getName();

    public static String a() {
        return "https://www.tumblr.com/oauth/access_token";
    }

    public static String b() {
        return "https://www.tumblr.com/oauth/request_token";
    }

    public static String a(el elVar) {
        return String.format("https://www.tumblr.com/oauth/authorize?oauth_token=%s", elVar.f2617a);
    }

    public static String a(String str) {
        String str2 = "https://api.tumblr.com/v2/blog/" + c(str) + "/post";
        km.a(3, f2607a, "Post Url: " + str2);
        return str2;
    }

    public static String c() {
        return "https://api.tumblr.com/v2/user/info";
    }

    public static String b(String str) {
        return "https://api.tumblr.com/v2/blog/" + c(str) + "/avatar";
    }

    private static String c(String str) {
        return str + ".tumblr.com";
    }
}
