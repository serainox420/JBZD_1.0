package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes2.dex */
public class zzbay {
    private final Context mContext;
    private final String zzaHF;
    private final String zzaHH;
    private int zzbEA;
    private int zzbEB;
    private final PowerManager.WakeLock zzbEw;
    private final int zzbEx;
    private final String zzbEy;
    private boolean zzbEz;
    private WorkSource zzbjm;
    private static String TAG = "WakeLock";
    private static String zzbEv = "*gcore*:";
    private static boolean DEBUG = false;

    public zzbay(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzbay(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, str2, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzbay(Context context, int i, String str, String str2, String str3, String str4) {
        this.zzbEz = true;
        com.google.android.gms.common.internal.zzac.zzh(str, "Wake lock name can NOT be empty");
        this.zzbEx = i;
        this.zzbEy = str2;
        this.zzaHH = str4;
        this.mContext = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(zzbEv);
            String valueOf2 = String.valueOf(str);
            this.zzaHF = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            this.zzaHF = str;
        }
        this.zzbEw = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (com.google.android.gms.common.util.zzz.zzbf(this.mContext)) {
            this.zzbjm = com.google.android.gms.common.util.zzz.zzF(context, com.google.android.gms.common.util.zzw.zzdz(str3) ? context.getPackageName() : str3);
            zzc(this.zzbjm);
        }
    }

    private void zzd(WorkSource workSource) {
        try {
            this.zzbEw.setWorkSource(workSource);
        } catch (IllegalArgumentException e) {
            Log.wtf(TAG, e.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
        if (r9.zzbEB == 1) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        if (r0 == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void zzgM(String str) {
        boolean zzgN = zzgN(str);
        String zzo = zzo(str, zzgN);
        synchronized (this) {
            if (this.zzbEz) {
                int i = this.zzbEA - 1;
                this.zzbEA = i;
                if (i != 0) {
                }
                com.google.android.gms.common.stats.zze.zzyX().zza(this.mContext, com.google.android.gms.common.stats.zzc.zza(this.zzbEw, zzo), 8, this.zzaHF, zzo, this.zzaHH, this.zzbEx, com.google.android.gms.common.util.zzz.zzb(this.zzbjm));
                this.zzbEB--;
            }
            if (!this.zzbEz) {
            }
        }
    }

    private boolean zzgN(String str) {
        return !TextUtils.isEmpty(str) && !str.equals(this.zzbEy);
    }

    private String zzo(String str, boolean z) {
        return (!this.zzbEz || !z) ? this.zzbEy : str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r12.zzbEB == 0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        if (r0 == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void zzo(String str, long j) {
        boolean zzgN = zzgN(str);
        String zzo = zzo(str, zzgN);
        synchronized (this) {
            if (this.zzbEz) {
                int i = this.zzbEA;
                this.zzbEA = i + 1;
                if (i != 0) {
                }
                com.google.android.gms.common.stats.zze.zzyX().zza(this.mContext, com.google.android.gms.common.stats.zzc.zza(this.zzbEw, zzo), 7, this.zzaHF, zzo, this.zzaHH, this.zzbEx, com.google.android.gms.common.util.zzz.zzb(this.zzbjm), j);
                this.zzbEB++;
            }
            if (!this.zzbEz) {
            }
        }
    }

    public void acquire(long j) {
        com.google.android.gms.common.util.zzt.zzzg();
        zzo((String) null, j);
        this.zzbEw.acquire(j);
    }

    public boolean isHeld() {
        return this.zzbEw.isHeld();
    }

    public void release() {
        zzgM(null);
        this.zzbEw.release();
    }

    public void setReferenceCounted(boolean z) {
        this.zzbEw.setReferenceCounted(z);
        this.zzbEz = z;
    }

    public void zzc(WorkSource workSource) {
        if (workSource == null || !com.google.android.gms.common.util.zzz.zzbf(this.mContext)) {
            return;
        }
        if (this.zzbjm != null) {
            this.zzbjm.add(workSource);
        } else {
            this.zzbjm = workSource;
        }
        zzd(this.zzbjm);
    }
}
