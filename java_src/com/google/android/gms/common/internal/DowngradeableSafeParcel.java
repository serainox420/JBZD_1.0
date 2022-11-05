package com.google.android.gms.common.internal;
/* loaded from: classes2.dex */
public abstract class DowngradeableSafeParcel extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    private static final Object zzaFG = new Object();
    private static ClassLoader zzaFH = null;
    private static Integer zzaFI = null;
    private boolean zzaFJ = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean zzdl(String str) {
        zzxU();
        return true;
    }

    protected static ClassLoader zzxU() {
        synchronized (zzaFG) {
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Integer zzxV() {
        synchronized (zzaFG) {
        }
        return null;
    }
}
