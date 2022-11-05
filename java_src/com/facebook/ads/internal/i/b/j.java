package com.facebook.ads.internal.i.b;
/* loaded from: classes.dex */
final class j {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
