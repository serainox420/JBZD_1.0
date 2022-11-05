package io.fabric.sdk.android.services.common;
/* compiled from: ResponseParser.java */
/* loaded from: classes3.dex */
public class p {
    public static int a(int i) {
        if (i < 200 || i > 299) {
            if (i >= 300 && i <= 399) {
                return 1;
            }
            if (i >= 400 && i <= 499) {
                return 0;
            }
            return i >= 500 ? 1 : 1;
        }
        return 0;
    }
}
