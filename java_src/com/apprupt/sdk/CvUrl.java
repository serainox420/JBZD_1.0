package com.apprupt.sdk;
/* loaded from: classes.dex */
class CvUrl {

    /* renamed from: a  reason: collision with root package name */
    static String f1889a = "cv.apprupt.com";
    private static boolean b = false;

    CvUrl() {
    }

    public static String a() {
        return a("/js/payload.js");
    }

    public static String a(String str) {
        return a(str, b);
    }

    public static String a(String str, boolean z) {
        if (str == null) {
            str = "/";
        } else if (!str.startsWith("/")) {
            str = String.format("/%s", str);
        }
        Object[] objArr = new Object[3];
        objArr[0] = z ? "s" : "";
        objArr[1] = f1889a;
        objArr[2] = str;
        return String.format("http%s://%s%s", objArr);
    }
}
