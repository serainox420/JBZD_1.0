package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbst {
    private static final boolean zzcky = zzabF();

    private static boolean zzabF() {
        try {
            Class.forName("android.app.Activity");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static boolean zzabG() {
        return zzcky;
    }
}
