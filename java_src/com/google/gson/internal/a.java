package com.google.gson.internal;
/* compiled from: $Gson$Preconditions.java */
/* loaded from: classes2.dex */
public final class a {
    public static <T> T a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }
}
