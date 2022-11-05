package com.adcolony.sdk;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cb {
    cb() {
    }

    static String a(String str, String str2) {
        if (str == null || str.isEmpty()) {
            if (str2 == null) {
                return "";
            }
            return str2;
        } else if (str2 != null) {
            return "[" + str + "] " + str2;
        } else {
            return "[" + str + "]";
        }
    }

    static String a(String str) {
        return str != null ? "Disabling AdColonyPubServices due to error or exception: " + str : "Disabling AdColonyPubServices due to error or exception: ";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, Exception exc, boolean z, boolean z2) {
        if (z2) {
            str2 = a(str2);
        }
        b(str, str2);
        if (exc != null && z) {
            bz.aK().a(exc, z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, String str2) {
        u.g.b(a(str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, String str2, Exception exc, boolean z, boolean z2) {
        a(str, str2, exc, z, z2);
        exc.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, Exception exc, boolean z) {
        u.e.b(a(str, str2));
        if (exc != null) {
            exc.printStackTrace();
            if (z) {
                bz.aK().a(exc, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, Exception exc) {
        u.b.b(a(str, str2));
        if (exc != null) {
            exc.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(String str, String str2) {
        u.e.b(a(str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, boolean z) {
        if (z) {
            u.d.b(a(str, str2));
        } else {
            u.c.b(a(str, str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, String str2, boolean z) {
        if (z) {
            u.b.b(a(str, str2));
        } else {
            u.f1500a.b(a(str, str2));
        }
    }
}
