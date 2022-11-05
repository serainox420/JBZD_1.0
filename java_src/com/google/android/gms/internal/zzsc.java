package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import java.lang.Thread;
/* loaded from: classes2.dex */
public class zzsc {
    private static volatile zzsc zzadR;
    private final Context mContext;
    private final Context zzadS;
    private final zzsp zzadT;
    private final zztd zzadU;
    private final com.google.android.gms.analytics.zzh zzadV;
    private final zzry zzadW;
    private final zzst zzadX;
    private final zztn zzadY;
    private final zztg zzadZ;
    private final GoogleAnalytics zzaea;
    private final zzsk zzaeb;
    private final zzrx zzaec;
    private final zzsh zzaed;
    private final zzss zzaee;
    private final com.google.android.gms.common.util.zze zzuP;

    protected zzsc(zzsd zzsdVar) {
        Context applicationContext = zzsdVar.getApplicationContext();
        com.google.android.gms.common.internal.zzac.zzb(applicationContext, "Application context can't be null");
        Context zzod = zzsdVar.zzod();
        com.google.android.gms.common.internal.zzac.zzw(zzod);
        this.mContext = applicationContext;
        this.zzadS = zzod;
        this.zzuP = zzsdVar.zzh(this);
        this.zzadT = zzsdVar.zzg(this);
        zztd zzf = zzsdVar.zzf(this);
        zzf.initialize();
        this.zzadU = zzf;
        zztd zznS = zznS();
        String str = zzsb.VERSION;
        zznS.zzbR(new StringBuilder(String.valueOf(str).length() + 134).append("Google Analytics ").append(str).append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4").toString());
        zztg zzq = zzsdVar.zzq(this);
        zzq.initialize();
        this.zzadZ = zzq;
        zztn zze = zzsdVar.zze(this);
        zze.initialize();
        this.zzadY = zze;
        zzry zzl = zzsdVar.zzl(this);
        zzsk zzd = zzsdVar.zzd(this);
        zzrx zzc = zzsdVar.zzc(this);
        zzsh zzb = zzsdVar.zzb(this);
        zzss zza = zzsdVar.zza(this);
        com.google.android.gms.analytics.zzh zzao = zzsdVar.zzao(applicationContext);
        zzao.zza(zzoc());
        this.zzadV = zzao;
        GoogleAnalytics zzi = zzsdVar.zzi(this);
        zzd.initialize();
        this.zzaeb = zzd;
        zzc.initialize();
        this.zzaec = zzc;
        zzb.initialize();
        this.zzaed = zzb;
        zza.initialize();
        this.zzaee = zza;
        zzst zzp = zzsdVar.zzp(this);
        zzp.initialize();
        this.zzadX = zzp;
        zzl.initialize();
        this.zzadW = zzl;
        zzi.initialize();
        this.zzaea = zzi;
        zzl.start();
    }

    private void zza(zzsa zzsaVar) {
        com.google.android.gms.common.internal.zzac.zzb(zzsaVar, "Analytics service not created/initialized");
        com.google.android.gms.common.internal.zzac.zzb(zzsaVar.isInitialized(), "Analytics service not initialized");
    }

    public static zzsc zzan(Context context) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        if (zzadR == null) {
            synchronized (zzsc.class) {
                if (zzadR == null) {
                    com.google.android.gms.common.util.zze zzzc = com.google.android.gms.common.util.zzi.zzzc();
                    long elapsedRealtime = zzzc.elapsedRealtime();
                    zzsc zzscVar = new zzsc(new zzsd(context));
                    zzadR = zzscVar;
                    GoogleAnalytics.zzmx();
                    long elapsedRealtime2 = zzzc.elapsedRealtime() - elapsedRealtime;
                    long longValue = zzsw.zzafZ.get().longValue();
                    if (elapsedRealtime2 > longValue) {
                        zzscVar.zznS().zzc("Slow initialization (ms)", Long.valueOf(elapsedRealtime2), Long.valueOf(longValue));
                    }
                }
            }
        }
        return zzadR;
    }

    public Context getContext() {
        return this.mContext;
    }

    public zzry zzmA() {
        zza(this.zzadW);
        return this.zzadW;
    }

    public zztn zzmB() {
        zza(this.zzadY);
        return this.zzadY;
    }

    public void zzmR() {
        com.google.android.gms.analytics.zzh.zzmR();
    }

    public com.google.android.gms.common.util.zze zznR() {
        return this.zzuP;
    }

    public zztd zznS() {
        zza(this.zzadU);
        return this.zzadU;
    }

    public zzsp zznT() {
        return this.zzadT;
    }

    public com.google.android.gms.analytics.zzh zznU() {
        com.google.android.gms.common.internal.zzac.zzw(this.zzadV);
        return this.zzadV;
    }

    public zzst zznV() {
        zza(this.zzadX);
        return this.zzadX;
    }

    public zztg zznW() {
        zza(this.zzadZ);
        return this.zzadZ;
    }

    public zzsh zznZ() {
        zza(this.zzaed);
        return this.zzaed;
    }

    public zzss zzoa() {
        return this.zzaee;
    }

    protected Thread.UncaughtExceptionHandler zzoc() {
        return new Thread.UncaughtExceptionHandler() { // from class: com.google.android.gms.internal.zzsc.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                zztd zzoe = zzsc.this.zzoe();
                if (zzoe != null) {
                    zzoe.zze("Job execution failed", th);
                }
            }
        };
    }

    public Context zzod() {
        return this.zzadS;
    }

    public zztd zzoe() {
        return this.zzadU;
    }

    public GoogleAnalytics zzof() {
        com.google.android.gms.common.internal.zzac.zzw(this.zzaea);
        com.google.android.gms.common.internal.zzac.zzb(this.zzaea.isInitialized(), "Analytics instance not initialized");
        return this.zzaea;
    }

    public zztg zzog() {
        if (this.zzadZ == null || !this.zzadZ.isInitialized()) {
            return null;
        }
        return this.zzadZ;
    }

    public zzrx zzoh() {
        zza(this.zzaec);
        return this.zzaec;
    }

    public zzsk zzoi() {
        zza(this.zzaeb);
        return this.zzaeb;
    }
}
