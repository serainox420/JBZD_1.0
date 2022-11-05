package com.google.android.gms.internal;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import com.applovin.sdk.AppLovinErrorCodes;
import com.facebook.common.time.Clock;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.internal.zzatj;
import com.google.android.gms.internal.zzatx;
import com.google.android.gms.internal.zzaty;
import com.google.android.gms.internal.zzauv;
import com.google.android.gms.internal.zzauw;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.a.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public class zzaue {
    private static volatile zzaue zzbtZ;
    private final Context mContext;
    private final boolean zzadP;
    private List<Long> zzbuA;
    private int zzbuB;
    private int zzbuC;
    private long zzbuD;
    protected long zzbuE;
    private final zzati zzbua;
    private final zzaua zzbub;
    private final zzatx zzbuc;
    private final zzaud zzbud;
    private final zzaun zzbue;
    private final zzauc zzbuf;
    private final AppMeasurement zzbug;
    private final a zzbuh;
    private final zzaut zzbui;
    private final zzatj zzbuj;
    private final zzatv zzbuk;
    private final zzaty zzbul;
    private final zzauk zzbum;
    private final zzaul zzbun;
    private final zzatl zzbuo;
    private final zzauj zzbup;
    private final zzatu zzbuq;
    private final zzatz zzbur;
    private final zzaup zzbus;
    private final zzatf zzbut;
    private final zzatb zzbuu;
    private boolean zzbuv;
    private Boolean zzbuw;
    private long zzbux;
    private FileLock zzbuy;
    private FileChannel zzbuz;
    private final com.google.android.gms.common.util.zze zzuP;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements zzatj.zzb {
        zzauw.zze zzbuG;
        List<Long> zzbuH;
        long zzbuI;
        List<zzauw.zzb> zzth;

        private zza() {
        }

        private long zza(zzauw.zzb zzbVar) {
            return ((zzbVar.zzbwZ.longValue() / 1000) / 60) / 60;
        }

        boolean isEmpty() {
            return this.zzth == null || this.zzth.isEmpty();
        }

        @Override // com.google.android.gms.internal.zzatj.zzb
        public boolean zza(long j, zzauw.zzb zzbVar) {
            com.google.android.gms.common.internal.zzac.zzw(zzbVar);
            if (this.zzth == null) {
                this.zzth = new ArrayList();
            }
            if (this.zzbuH == null) {
                this.zzbuH = new ArrayList();
            }
            if (this.zzth.size() <= 0 || zza(this.zzth.get(0)) == zza(zzbVar)) {
                long zzaeT = this.zzbuI + zzbVar.zzaeT();
                if (zzaeT >= zzaue.this.zzKn().zzLn()) {
                    return false;
                }
                this.zzbuI = zzaeT;
                this.zzth.add(zzbVar);
                this.zzbuH.add(Long.valueOf(j));
                return this.zzth.size() < zzaue.this.zzKn().zzLo();
            }
            return false;
        }

        @Override // com.google.android.gms.internal.zzatj.zzb
        public void zzb(zzauw.zze zzeVar) {
            com.google.android.gms.common.internal.zzac.zzw(zzeVar);
            this.zzbuG = zzeVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaue(zzaui zzauiVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzauiVar);
        this.mContext = zzauiVar.mContext;
        this.zzbuD = -1L;
        this.zzuP = zzauiVar.zzn(this);
        this.zzbua = zzauiVar.zza(this);
        zzaua zzb = zzauiVar.zzb(this);
        zzb.initialize();
        this.zzbub = zzb;
        zzatx zzc = zzauiVar.zzc(this);
        zzc.initialize();
        this.zzbuc = zzc;
        zzKl().zzMc().zzj("App measurement is starting up, version", Long.valueOf(zzKn().zzKv()));
        zzKn().zzLg();
        zzKl().zzMc().log("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        zzaut zzj = zzauiVar.zzj(this);
        zzj.initialize();
        this.zzbui = zzj;
        zzatl zzq = zzauiVar.zzq(this);
        zzq.initialize();
        this.zzbuo = zzq;
        zzatu zzr = zzauiVar.zzr(this);
        zzr.initialize();
        this.zzbuq = zzr;
        zzKn().zzLg();
        String zzke = zzr.zzke();
        if (zzKh().zzge(zzke)) {
            zzKl().zzMc().log("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
        } else {
            zzatx.zza zzMc = zzKl().zzMc();
            String valueOf = String.valueOf(zzke);
            zzMc.log(valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "));
        }
        zzKl().zzMd().log("Debug-level message logging enabled");
        zzatj zzk = zzauiVar.zzk(this);
        zzk.initialize();
        this.zzbuj = zzk;
        zzatv zzl = zzauiVar.zzl(this);
        zzl.initialize();
        this.zzbuk = zzl;
        zzatf zzu = zzauiVar.zzu(this);
        zzu.initialize();
        this.zzbut = zzu;
        this.zzbuu = zzauiVar.zzv(this);
        zzaty zzm = zzauiVar.zzm(this);
        zzm.initialize();
        this.zzbul = zzm;
        zzauk zzo = zzauiVar.zzo(this);
        zzo.initialize();
        this.zzbum = zzo;
        zzaul zzp = zzauiVar.zzp(this);
        zzp.initialize();
        this.zzbun = zzp;
        zzauj zzi = zzauiVar.zzi(this);
        zzi.initialize();
        this.zzbup = zzi;
        zzaup zzt = zzauiVar.zzt(this);
        zzt.initialize();
        this.zzbus = zzt;
        this.zzbur = zzauiVar.zzs(this);
        this.zzbug = zzauiVar.zzh(this);
        this.zzbuh = zzauiVar.zzg(this);
        zzaun zze = zzauiVar.zze(this);
        zze.initialize();
        this.zzbue = zze;
        zzauc zzf = zzauiVar.zzf(this);
        zzf.initialize();
        this.zzbuf = zzf;
        zzaud zzd = zzauiVar.zzd(this);
        zzd.initialize();
        this.zzbud = zzd;
        if (this.zzbuB != this.zzbuC) {
            zzKl().zzLY().zze("Not all components initialized", Integer.valueOf(this.zzbuB), Integer.valueOf(this.zzbuC));
        }
        this.zzadP = true;
        this.zzbua.zzLg();
        if (this.mContext.getApplicationContext() instanceof Application) {
            int i = Build.VERSION.SDK_INT;
            zzKa().zzMQ();
        } else {
            zzKl().zzMa().log("Application context is not an Application");
        }
        this.zzbud.zzm(new Runnable() { // from class: com.google.android.gms.internal.zzaue.1
            @Override // java.lang.Runnable
            public void run() {
                zzaue.this.start();
            }
        });
    }

    private boolean zzMH() {
        zzmR();
        zzob();
        return zzKg().zzLJ() || !TextUtils.isEmpty(zzKg().zzLD());
    }

    private void zzMI() {
        zzmR();
        zzob();
        if (!zzMM()) {
            return;
        }
        if (this.zzbuE > 0) {
            long abs = 3600000 - Math.abs(zznR().elapsedRealtime() - this.zzbuE);
            if (abs > 0) {
                zzKl().zzMe().zzj("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(abs));
                zzMz().unregister();
                zzMA().cancel();
                return;
            }
            this.zzbuE = 0L;
        }
        if (!zzMt() || !zzMH()) {
            zzMz().unregister();
            zzMA().cancel();
            return;
        }
        long zzMJ = zzMJ();
        if (zzMJ == 0) {
            zzMz().unregister();
            zzMA().cancel();
        } else if (!zzMy().zzqa()) {
            zzMz().zzpX();
            zzMA().cancel();
        } else {
            long j = zzKm().zzbtb.get();
            long zzLs = zzKn().zzLs();
            if (!zzKh().zzh(j, zzLs)) {
                zzMJ = Math.max(zzMJ, j + zzLs);
            }
            zzMz().unregister();
            long currentTimeMillis = zzMJ - zznR().currentTimeMillis();
            if (currentTimeMillis <= 0) {
                currentTimeMillis = zzKn().zzLw();
                zzKm().zzbsZ.set(zznR().currentTimeMillis());
            }
            zzKl().zzMe().zzj("Upload scheduled in approximately ms", Long.valueOf(currentTimeMillis));
            zzMA().zzy(currentTimeMillis);
        }
    }

    private long zzMJ() {
        long zzLt;
        long currentTimeMillis = zznR().currentTimeMillis();
        long zzLz = zzKn().zzLz();
        boolean z = zzKg().zzLK() || zzKg().zzLE();
        if (z) {
            String zzLC = zzKn().zzLC();
            zzLt = (TextUtils.isEmpty(zzLC) || ".none.".equals(zzLC)) ? zzKn().zzLu() : zzKn().zzLv();
        } else {
            zzLt = zzKn().zzLt();
        }
        long j = zzKm().zzbsZ.get();
        long j2 = zzKm().zzbta.get();
        long max = Math.max(zzKg().zzLH(), zzKg().zzLI());
        if (max == 0) {
            return 0L;
        }
        long abs = currentTimeMillis - Math.abs(max - currentTimeMillis);
        long abs2 = currentTimeMillis - Math.abs(j2 - currentTimeMillis);
        long max2 = Math.max(currentTimeMillis - Math.abs(j - currentTimeMillis), abs2);
        long j3 = abs + zzLz;
        if (z && max2 > 0) {
            j3 = Math.min(abs, max2) + zzLt;
        }
        if (!zzKh().zzh(max2, zzLt)) {
            j3 = max2 + zzLt;
        }
        if (abs2 == 0 || abs2 < abs) {
            return j3;
        }
        for (int i = 0; i < zzKn().zzLB(); i++) {
            j3 += (1 << i) * zzKn().zzLA();
            if (j3 > abs2) {
                return j3;
            }
        }
        return 0L;
    }

    private void zza(zzaug zzaugVar) {
        if (zzaugVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private void zza(zzauh zzauhVar) {
        if (zzauhVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (zzauhVar.isInitialized()) {
            return;
        }
        throw new IllegalStateException("Component not initialized");
    }

    private boolean zza(zzatm zzatmVar) {
        if (zzatmVar.zzbrz == null) {
            return false;
        }
        Iterator<String> it = zzatmVar.zzbrz.iterator();
        while (it.hasNext()) {
            if ("_r".equals(it.next())) {
                return true;
            }
        }
        return zzKi().zzab(zzatmVar.mAppId, zzatmVar.mName) && zzKg().zza(zzME(), zzatmVar.mAppId, false, false, false, false, false).zzbrr < ((long) zzKn().zzfl(zzatmVar.mAppId));
    }

    private zzauw.zza[] zza(String str, zzauw.zzg[] zzgVarArr, zzauw.zzb[] zzbVarArr) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        return zzJZ().zza(str, zzbVarArr, zzgVarArr);
    }

    public static zzaue zzbM(Context context) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        com.google.android.gms.common.internal.zzac.zzw(context.getApplicationContext());
        if (zzbtZ == null) {
            synchronized (zzaue.class) {
                if (zzbtZ == null) {
                    zzbtZ = new zzaui(context).zzMP();
                }
            }
        }
        return zzbtZ;
    }

    private void zzf(zzatd zzatdVar) {
        boolean z = true;
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(zzatdVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzatdVar.packageName);
        zzatc zzfu = zzKg().zzfu(zzatdVar.packageName);
        String zzfH = zzKm().zzfH(zzatdVar.packageName);
        boolean z2 = false;
        if (zzfu == null) {
            zzatc zzatcVar = new zzatc(this, zzatdVar.packageName);
            zzatcVar.zzfd(zzKm().zzMh());
            zzatcVar.zzff(zzfH);
            zzfu = zzatcVar;
            z2 = true;
        } else if (!zzfH.equals(zzfu.zzKp())) {
            zzfu.zzff(zzfH);
            zzfu.zzfd(zzKm().zzMh());
            z2 = true;
        }
        if (!TextUtils.isEmpty(zzatdVar.zzbqL) && !zzatdVar.zzbqL.equals(zzfu.getGmpAppId())) {
            zzfu.zzfe(zzatdVar.zzbqL);
            z2 = true;
        }
        if (!TextUtils.isEmpty(zzatdVar.zzbqT) && !zzatdVar.zzbqT.equals(zzfu.zzKq())) {
            zzfu.zzfg(zzatdVar.zzbqT);
            z2 = true;
        }
        if (zzatdVar.zzbqN != 0 && zzatdVar.zzbqN != zzfu.zzKv()) {
            zzfu.zzab(zzatdVar.zzbqN);
            z2 = true;
        }
        if (!TextUtils.isEmpty(zzatdVar.zzbhN) && !zzatdVar.zzbhN.equals(zzfu.zzmZ())) {
            zzfu.setAppVersion(zzatdVar.zzbhN);
            z2 = true;
        }
        if (zzatdVar.zzbqS != zzfu.zzKt()) {
            zzfu.zzaa(zzatdVar.zzbqS);
            z2 = true;
        }
        if (zzatdVar.zzbqM != null && !zzatdVar.zzbqM.equals(zzfu.zzKu())) {
            zzfu.zzfh(zzatdVar.zzbqM);
            z2 = true;
        }
        if (zzatdVar.zzbqO != zzfu.zzKw()) {
            zzfu.zzac(zzatdVar.zzbqO);
            z2 = true;
        }
        if (zzatdVar.zzbqQ != zzfu.zzKx()) {
            zzfu.setMeasurementEnabled(zzatdVar.zzbqQ);
            z2 = true;
        }
        if (!TextUtils.isEmpty(zzatdVar.zzbqP) && !zzatdVar.zzbqP.equals(zzfu.zzKI())) {
            zzfu.zzfi(zzatdVar.zzbqP);
            z2 = true;
        }
        if (zzatdVar.zzbqU != zzfu.zzuW()) {
            zzfu.zzam(zzatdVar.zzbqU);
        } else {
            z = z2;
        }
        if (z) {
            zzKg().zza(zzfu);
        }
    }

    private boolean zzl(String str, long j) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        boolean z4;
        zzKg().beginTransaction();
        try {
            zza zzaVar = new zza();
            zzKg().zza(str, j, this.zzbuD, zzaVar);
            if (zzaVar.isEmpty()) {
                zzKg().setTransactionSuccessful();
                zzKg().endTransaction();
                return false;
            }
            boolean z5 = false;
            zzauw.zze zzeVar = zzaVar.zzbuG;
            zzeVar.zzbxg = new zzauw.zzb[zzaVar.zzth.size()];
            int i3 = 0;
            int i4 = 0;
            while (i4 < zzaVar.zzth.size()) {
                if (zzKi().zzaa(zzaVar.zzbuG.zzaS, zzaVar.zzth.get(i4).name)) {
                    zzKl().zzMa().zze("Dropping blacklisted raw event. appId", zzatx.zzfE(zzaVar.zzbuG.zzaS), zzaVar.zzth.get(i4).name);
                    if ((zzKh().zzgg(zzaVar.zzbuG.zzaS) || zzKh().zzgh(zzaVar.zzbuG.zzaS)) || "_err".equals(zzaVar.zzth.get(i4).name)) {
                        i2 = i3;
                        z4 = z5;
                    } else {
                        zzKh().zza(11, "_ev", zzaVar.zzth.get(i4).name, 0);
                        i2 = i3;
                        z4 = z5;
                    }
                } else {
                    boolean zzab = zzKi().zzab(zzaVar.zzbuG.zzaS, zzaVar.zzth.get(i4).name);
                    if (zzab || zzKh().zzgi(zzaVar.zzth.get(i4).name)) {
                        boolean z6 = false;
                        boolean z7 = false;
                        if (zzaVar.zzth.get(i4).zzbwY == null) {
                            zzaVar.zzth.get(i4).zzbwY = new zzauw.zzc[0];
                        }
                        zzauw.zzc[] zzcVarArr = zzaVar.zzth.get(i4).zzbwY;
                        int length = zzcVarArr.length;
                        int i5 = 0;
                        while (i5 < length) {
                            zzauw.zzc zzcVar = zzcVarArr[i5];
                            if ("_c".equals(zzcVar.name)) {
                                zzcVar.zzbxc = 1L;
                                z6 = true;
                                z3 = z7;
                            } else if ("_r".equals(zzcVar.name)) {
                                zzcVar.zzbxc = 1L;
                                z3 = true;
                            } else {
                                z3 = z7;
                            }
                            i5++;
                            z7 = z3;
                        }
                        if (!z6 && zzab) {
                            zzKl().zzMe().zzj("Marking event as conversion", zzaVar.zzth.get(i4).name);
                            zzauw.zzc[] zzcVarArr2 = (zzauw.zzc[]) Arrays.copyOf(zzaVar.zzth.get(i4).zzbwY, zzaVar.zzth.get(i4).zzbwY.length + 1);
                            zzauw.zzc zzcVar2 = new zzauw.zzc();
                            zzcVar2.name = "_c";
                            zzcVar2.zzbxc = 1L;
                            zzcVarArr2[zzcVarArr2.length - 1] = zzcVar2;
                            zzaVar.zzth.get(i4).zzbwY = zzcVarArr2;
                        }
                        if (!z7) {
                            zzKl().zzMe().zzj("Marking event as real-time", zzaVar.zzth.get(i4).name);
                            zzauw.zzc[] zzcVarArr3 = (zzauw.zzc[]) Arrays.copyOf(zzaVar.zzth.get(i4).zzbwY, zzaVar.zzth.get(i4).zzbwY.length + 1);
                            zzauw.zzc zzcVar3 = new zzauw.zzc();
                            zzcVar3.name = "_r";
                            zzcVar3.zzbxc = 1L;
                            zzcVarArr3[zzcVarArr3.length - 1] = zzcVar3;
                            zzaVar.zzth.get(i4).zzbwY = zzcVarArr3;
                        }
                        boolean z8 = true;
                        if (zzKg().zza(zzME(), zzaVar.zzbuG.zzaS, false, false, false, false, true).zzbrr > zzKn().zzfl(zzaVar.zzbuG.zzaS)) {
                            zzauw.zzb zzbVar = zzaVar.zzth.get(i4);
                            int i6 = 0;
                            while (true) {
                                if (i6 >= zzbVar.zzbwY.length) {
                                    break;
                                } else if ("_r".equals(zzbVar.zzbwY[i6].name)) {
                                    zzauw.zzc[] zzcVarArr4 = new zzauw.zzc[zzbVar.zzbwY.length - 1];
                                    if (i6 > 0) {
                                        System.arraycopy(zzbVar.zzbwY, 0, zzcVarArr4, 0, i6);
                                    }
                                    if (i6 < zzcVarArr4.length) {
                                        System.arraycopy(zzbVar.zzbwY, i6 + 1, zzcVarArr4, i6, zzcVarArr4.length - i6);
                                    }
                                    zzbVar.zzbwY = zzcVarArr4;
                                } else {
                                    i6++;
                                }
                            }
                            z8 = z5;
                        }
                        if (zzaut.zzfT(zzaVar.zzth.get(i4).name) && zzab && zzKg().zza(zzME(), zzaVar.zzbuG.zzaS, false, false, true, false, false).zzbrp > zzKn().zzfk(zzaVar.zzbuG.zzaS)) {
                            zzKl().zzMa().zzj("Too many conversions. Not logging as conversion. appId", zzatx.zzfE(zzaVar.zzbuG.zzaS));
                            zzauw.zzb zzbVar2 = zzaVar.zzth.get(i4);
                            boolean z9 = false;
                            zzauw.zzc zzcVar4 = null;
                            zzauw.zzc[] zzcVarArr5 = zzbVar2.zzbwY;
                            int length2 = zzcVarArr5.length;
                            int i7 = 0;
                            while (i7 < length2) {
                                zzauw.zzc zzcVar5 = zzcVarArr5[i7];
                                if ("_c".equals(zzcVar5.name)) {
                                    z2 = z9;
                                } else if ("_err".equals(zzcVar5.name)) {
                                    zzauw.zzc zzcVar6 = zzcVar4;
                                    z2 = true;
                                    zzcVar5 = zzcVar6;
                                } else {
                                    zzcVar5 = zzcVar4;
                                    z2 = z9;
                                }
                                i7++;
                                z9 = z2;
                                zzcVar4 = zzcVar5;
                            }
                            if (z9 && zzcVar4 != null) {
                                zzauw.zzc[] zzcVarArr6 = new zzauw.zzc[zzbVar2.zzbwY.length - 1];
                                int i8 = 0;
                                zzauw.zzc[] zzcVarArr7 = zzbVar2.zzbwY;
                                int length3 = zzcVarArr7.length;
                                int i9 = 0;
                                while (i9 < length3) {
                                    zzauw.zzc zzcVar7 = zzcVarArr7[i9];
                                    if (zzcVar7 != zzcVar4) {
                                        i = i8 + 1;
                                        zzcVarArr6[i8] = zzcVar7;
                                    } else {
                                        i = i8;
                                    }
                                    i9++;
                                    i8 = i;
                                }
                                zzbVar2.zzbwY = zzcVarArr6;
                                z = z8;
                            } else if (zzcVar4 != null) {
                                zzcVar4.name = "_err";
                                zzcVar4.zzbxc = 10L;
                                z = z8;
                            } else {
                                zzKl().zzLY().zzj("Did not find conversion parameter. appId", zzatx.zzfE(zzaVar.zzbuG.zzaS));
                            }
                        }
                        z = z8;
                    } else {
                        z = z5;
                    }
                    zzeVar.zzbxg[i3] = zzaVar.zzth.get(i4);
                    i2 = i3 + 1;
                    z4 = z;
                }
                i4++;
                i3 = i2;
                z5 = z4;
            }
            if (i3 < zzaVar.zzth.size()) {
                zzeVar.zzbxg = (zzauw.zzb[]) Arrays.copyOf(zzeVar.zzbxg, i3);
            }
            zzeVar.zzbxz = zza(zzaVar.zzbuG.zzaS, zzaVar.zzbuG.zzbxh, zzeVar.zzbxg);
            zzeVar.zzbxj = Long.valueOf((long) Clock.MAX_TIME);
            zzeVar.zzbxk = Long.MIN_VALUE;
            for (int i10 = 0; i10 < zzeVar.zzbxg.length; i10++) {
                zzauw.zzb zzbVar3 = zzeVar.zzbxg[i10];
                if (zzbVar3.zzbwZ.longValue() < zzeVar.zzbxj.longValue()) {
                    zzeVar.zzbxj = zzbVar3.zzbwZ;
                }
                if (zzbVar3.zzbwZ.longValue() > zzeVar.zzbxk.longValue()) {
                    zzeVar.zzbxk = zzbVar3.zzbwZ;
                }
            }
            String str2 = zzaVar.zzbuG.zzaS;
            zzatc zzfu = zzKg().zzfu(str2);
            if (zzfu == null) {
                zzKl().zzLY().zzj("Bundling raw events w/o app info. appId", zzatx.zzfE(zzaVar.zzbuG.zzaS));
            } else if (zzeVar.zzbxg.length > 0) {
                long zzKs = zzfu.zzKs();
                zzeVar.zzbxm = zzKs != 0 ? Long.valueOf(zzKs) : null;
                long zzKr = zzfu.zzKr();
                if (zzKr != 0) {
                    zzKs = zzKr;
                }
                zzeVar.zzbxl = zzKs != 0 ? Long.valueOf(zzKs) : null;
                zzfu.zzKB();
                zzeVar.zzbxx = Integer.valueOf((int) zzfu.zzKy());
                zzfu.zzY(zzeVar.zzbxj.longValue());
                zzfu.zzZ(zzeVar.zzbxk.longValue());
                zzeVar.zzbqP = zzfu.zzKJ();
                zzKg().zza(zzfu);
            }
            if (zzeVar.zzbxg.length > 0) {
                zzKn().zzLg();
                zzauv.zzb zzfL = zzKi().zzfL(zzaVar.zzbuG.zzaS);
                if (zzfL != null && zzfL.zzbwN != null) {
                    zzeVar.zzbxE = zzfL.zzbwN;
                } else if (TextUtils.isEmpty(zzaVar.zzbuG.zzbqL)) {
                    zzeVar.zzbxE = -1L;
                } else {
                    zzKl().zzMa().zzj("Did not find measurement config or missing version info. appId", zzatx.zzfE(zzaVar.zzbuG.zzaS));
                }
                zzKg().zza(zzeVar, z5);
            }
            zzKg().zzJ(zzaVar.zzbuH);
            zzKg().zzfB(str2);
            zzKg().setTransactionSuccessful();
            return zzeVar.zzbxg.length > 0;
        } finally {
            zzKg().endTransaction();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public boolean isEnabled() {
        boolean z = false;
        zzmR();
        zzob();
        if (zzKn().zzLh()) {
            return false;
        }
        Boolean zzLi = zzKn().zzLi();
        if (zzLi != null) {
            z = zzLi.booleanValue();
        } else if (!zzKn().zzwR()) {
            z = true;
        }
        return zzKm().zzaL(z);
    }

    protected void start() {
        zzmR();
        zzKg().zzLF();
        if (zzKm().zzbsZ.get() == 0) {
            zzKm().zzbsZ.set(zznR().currentTimeMillis());
        }
        if (zzMt()) {
            zzKn().zzLg();
            if (!TextUtils.isEmpty(zzKb().getGmpAppId())) {
                String zzMk = zzKm().zzMk();
                if (zzMk == null) {
                    zzKm().zzfI(zzKb().getGmpAppId());
                } else if (!zzMk.equals(zzKb().getGmpAppId())) {
                    zzKl().zzMc().log("Rechecking which service to use due to a GMP App Id change");
                    zzKm().zzMn();
                    this.zzbun.disconnect();
                    this.zzbun.zzoD();
                    zzKm().zzfI(zzKb().getGmpAppId());
                }
            }
            zzKn().zzLg();
            if (!TextUtils.isEmpty(zzKb().getGmpAppId())) {
                zzKa().zzMR();
            }
        } else if (isEnabled()) {
            if (!zzKh().zzbW("android.permission.INTERNET")) {
                zzKl().zzLY().log("App is missing INTERNET permission");
            }
            if (!zzKh().zzbW("android.permission.ACCESS_NETWORK_STATE")) {
                zzKl().zzLY().log("App is missing ACCESS_NETWORK_STATE permission");
            }
            zzKn().zzLg();
            if (!zzadg.zzbi(getContext()).zzzx()) {
                if (!zzaub.zzi(getContext(), false)) {
                    zzKl().zzLY().log("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzaum.zzj(getContext(), false)) {
                    zzKl().zzLY().log("AppMeasurementService not registered/enabled");
                }
            }
            zzKl().zzLY().log("Uploading is not possible. App measurement disabled");
        }
        zzMI();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzJV() {
        zzKn().zzLg();
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzJW() {
        zzKn().zzLg();
    }

    public zzatb zzJY() {
        zza(this.zzbuu);
        return this.zzbuu;
    }

    public zzatf zzJZ() {
        zza((zzauh) this.zzbut);
        return this.zzbut;
    }

    protected void zzK(List<Long> list) {
        com.google.android.gms.common.internal.zzac.zzax(!list.isEmpty());
        if (this.zzbuA != null) {
            zzKl().zzLY().log("Set uploading progress before finishing the previous upload");
        } else {
            this.zzbuA = new ArrayList(list);
        }
    }

    public zzauj zzKa() {
        zza((zzauh) this.zzbup);
        return this.zzbup;
    }

    public zzatu zzKb() {
        zza((zzauh) this.zzbuq);
        return this.zzbuq;
    }

    public zzatl zzKc() {
        zza((zzauh) this.zzbuo);
        return this.zzbuo;
    }

    public zzaul zzKd() {
        zza((zzauh) this.zzbun);
        return this.zzbun;
    }

    public zzauk zzKe() {
        zza((zzauh) this.zzbum);
        return this.zzbum;
    }

    public zzatv zzKf() {
        zza((zzauh) this.zzbuk);
        return this.zzbuk;
    }

    public zzatj zzKg() {
        zza((zzauh) this.zzbuj);
        return this.zzbuj;
    }

    public zzaut zzKh() {
        zza((zzaug) this.zzbui);
        return this.zzbui;
    }

    public zzauc zzKi() {
        zza((zzauh) this.zzbuf);
        return this.zzbuf;
    }

    public zzaun zzKj() {
        zza((zzauh) this.zzbue);
        return this.zzbue;
    }

    public zzaud zzKk() {
        zza((zzauh) this.zzbud);
        return this.zzbud;
    }

    public zzatx zzKl() {
        zza((zzauh) this.zzbuc);
        return this.zzbuc;
    }

    public zzaua zzKm() {
        zza((zzaug) this.zzbub);
        return this.zzbub;
    }

    public zzati zzKn() {
        return this.zzbua;
    }

    public zzaup zzMA() {
        zza((zzauh) this.zzbus);
        return this.zzbus;
    }

    FileChannel zzMB() {
        return this.zzbuz;
    }

    void zzMC() {
        zzmR();
        zzob();
        if (!zzMM() || !zzMD()) {
            return;
        }
        zzy(zza(zzMB()), zzKb().zzLX());
    }

    boolean zzMD() {
        zzmR();
        try {
            this.zzbuz = new RandomAccessFile(new File(getContext().getFilesDir(), this.zzbuj.zzow()), "rw").getChannel();
            this.zzbuy = this.zzbuz.tryLock();
        } catch (FileNotFoundException e) {
            zzKl().zzLY().zzj("Failed to acquire storage lock", e);
        } catch (IOException e2) {
            zzKl().zzLY().zzj("Failed to access storage lock file", e2);
        }
        if (this.zzbuy != null) {
            zzKl().zzMe().log("Storage concurrent access okay");
            return true;
        }
        zzKl().zzLY().log("Storage concurrent data access panic");
        return false;
    }

    long zzME() {
        return ((((zznR().currentTimeMillis() + zzKm().zzMi()) / 1000) / 60) / 60) / 24;
    }

    protected boolean zzMF() {
        zzmR();
        return this.zzbuA != null;
    }

    public void zzMG() {
        zzatc zzfu;
        String str;
        List<Pair<zzauw.zze, Long>> list;
        zzmR();
        zzob();
        zzKn().zzLg();
        Boolean zzMm = zzKm().zzMm();
        if (zzMm == null) {
            zzKl().zzMa().log("Upload data called on the client side before use of service was decided");
        } else if (zzMm.booleanValue()) {
            zzKl().zzLY().log("Upload called in the client side when service should be used");
        } else if (this.zzbuE > 0) {
            zzMI();
        } else if (zzMF()) {
            zzKl().zzMa().log("Uploading requested multiple times");
        } else if (!zzMy().zzqa()) {
            zzKl().zzMa().log("Network not connected, ignoring upload request");
            zzMI();
        } else {
            long currentTimeMillis = zznR().currentTimeMillis();
            zzaq(currentTimeMillis - zzKn().zzLr());
            long j = zzKm().zzbsZ.get();
            if (j != 0) {
                zzKl().zzMd().zzj("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(currentTimeMillis - j)));
            }
            String zzLD = zzKg().zzLD();
            if (TextUtils.isEmpty(zzLD)) {
                this.zzbuD = -1L;
                String zzao = zzKg().zzao(currentTimeMillis - zzKn().zzLr());
                if (TextUtils.isEmpty(zzao) || (zzfu = zzKg().zzfu(zzao)) == null) {
                    return;
                }
                zzb(zzfu);
                return;
            }
            if (this.zzbuD == -1) {
                this.zzbuD = zzKg().zzLL();
            }
            List<Pair<zzauw.zze, Long>> zzn = zzKg().zzn(zzLD, zzKn().zzfq(zzLD), zzKn().zzfr(zzLD));
            if (zzn.isEmpty()) {
                return;
            }
            Iterator<Pair<zzauw.zze, Long>> it = zzn.iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = null;
                    break;
                }
                zzauw.zze zzeVar = (zzauw.zze) it.next().first;
                if (!TextUtils.isEmpty(zzeVar.zzbxt)) {
                    str = zzeVar.zzbxt;
                    break;
                }
            }
            if (str != null) {
                for (int i = 0; i < zzn.size(); i++) {
                    zzauw.zze zzeVar2 = (zzauw.zze) zzn.get(i).first;
                    if (!TextUtils.isEmpty(zzeVar2.zzbxt) && !zzeVar2.zzbxt.equals(str)) {
                        list = zzn.subList(0, i);
                        break;
                    }
                }
            }
            list = zzn;
            zzauw.zzd zzdVar = new zzauw.zzd();
            zzdVar.zzbxd = new zzauw.zze[list.size()];
            ArrayList arrayList = new ArrayList(list.size());
            for (int i2 = 0; i2 < zzdVar.zzbxd.length; i2++) {
                zzdVar.zzbxd[i2] = (zzauw.zze) list.get(i2).first;
                arrayList.add((Long) list.get(i2).second);
                zzdVar.zzbxd[i2].zzbxs = Long.valueOf(zzKn().zzKv());
                zzdVar.zzbxd[i2].zzbxi = Long.valueOf(currentTimeMillis);
                zzdVar.zzbxd[i2].zzbxy = Boolean.valueOf(zzKn().zzLg());
            }
            String zzb = zzKl().zzak(2) ? zzaut.zzb(zzdVar) : null;
            byte[] zza2 = zzKh().zza(zzdVar);
            String zzLq = zzKn().zzLq();
            try {
                URL url = new URL(zzLq);
                zzK(arrayList);
                zzKm().zzbta.set(currentTimeMillis);
                String str2 = "?";
                if (zzdVar.zzbxd.length > 0) {
                    str2 = zzdVar.zzbxd[0].zzaS;
                }
                zzKl().zzMe().zzd("Uploading data. app, uncompressed size, data", str2, Integer.valueOf(zza2.length), zzb);
                zzMy().zza(zzLD, url, zza2, null, new zzaty.zza() { // from class: com.google.android.gms.internal.zzaue.3
                    @Override // com.google.android.gms.internal.zzaty.zza
                    public void zza(String str3, int i3, Throwable th, byte[] bArr, Map<String, List<String>> map) {
                        zzaue.this.zza(i3, th, bArr);
                    }
                });
            } catch (MalformedURLException e) {
                zzKl().zzLY().zze("Failed to parse upload URL. Not uploading. appId", zzatx.zzfE(zzLD), zzLq);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzMK() {
        this.zzbuC++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzML() {
        zzmR();
        zzob();
        if (!this.zzbuv) {
            zzKl().zzMc().log("This instance being marked as an uploader");
            zzMC();
        }
        this.zzbuv = true;
    }

    boolean zzMM() {
        zzmR();
        zzob();
        return this.zzbuv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzMt() {
        boolean z = false;
        zzob();
        zzmR();
        if (this.zzbuw == null || this.zzbux == 0 || (this.zzbuw != null && !this.zzbuw.booleanValue() && Math.abs(zznR().elapsedRealtime() - this.zzbux) > 1000)) {
            this.zzbux = zznR().elapsedRealtime();
            zzKn().zzLg();
            if (zzKh().zzbW("android.permission.INTERNET") && zzKh().zzbW("android.permission.ACCESS_NETWORK_STATE") && (zzadg.zzbi(getContext()).zzzx() || (zzaub.zzi(getContext(), false) && zzaum.zzj(getContext(), false)))) {
                z = true;
            }
            this.zzbuw = Boolean.valueOf(z);
            if (this.zzbuw.booleanValue()) {
                this.zzbuw = Boolean.valueOf(zzKh().zzga(zzKb().getGmpAppId()));
            }
        }
        return this.zzbuw.booleanValue();
    }

    public zzatx zzMu() {
        if (this.zzbuc == null || !this.zzbuc.isInitialized()) {
            return null;
        }
        return this.zzbuc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaud zzMv() {
        return this.zzbud;
    }

    public AppMeasurement zzMw() {
        return this.zzbug;
    }

    public a zzMx() {
        return this.zzbuh;
    }

    public zzaty zzMy() {
        zza((zzauh) this.zzbul);
        return this.zzbul;
    }

    public zzatz zzMz() {
        if (this.zzbur == null) {
            throw new IllegalStateException("Network broadcast receiver not created");
        }
        return this.zzbur;
    }

    public void zzW(boolean z) {
        zzMI();
    }

    int zza(FileChannel fileChannel) {
        int i = 0;
        zzmR();
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzKl().zzLY().log("Bad chanel to read from");
        } else {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            try {
                fileChannel.position(0L);
                int read = fileChannel.read(allocate);
                if (read == 4) {
                    allocate.flip();
                    i = allocate.getInt();
                } else if (read != -1) {
                    zzKl().zzMa().zzj("Unexpected data length. Bytes read", Integer.valueOf(read));
                }
            } catch (IOException e) {
                zzKl().zzLY().zzj("Failed to read from channel", e);
            }
        }
        return i;
    }

    protected void zza(int i, Throwable th, byte[] bArr) {
        boolean z = false;
        zzmR();
        zzob();
        if (bArr == null) {
            bArr = new byte[0];
        }
        List<Long> list = this.zzbuA;
        this.zzbuA = null;
        if ((i != 200 && i != 204) || th != null) {
            zzKl().zzMe().zze("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            zzKm().zzbta.set(zznR().currentTimeMillis());
            if (i == 503 || i == 429) {
                z = true;
            }
            if (z) {
                zzKm().zzbtb.set(zznR().currentTimeMillis());
            }
            zzMI();
            return;
        }
        try {
            zzKm().zzbsZ.set(zznR().currentTimeMillis());
            zzKm().zzbta.set(0L);
            zzMI();
            zzKl().zzMe().zze("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
            zzKg().beginTransaction();
            for (Long l : list) {
                zzKg().zzan(l.longValue());
            }
            zzKg().setTransactionSuccessful();
            zzKg().endTransaction();
            if (!zzMy().zzqa() || !zzMH()) {
                this.zzbuD = -1L;
                zzMI();
            } else {
                zzMG();
            }
            this.zzbuE = 0L;
        } catch (SQLiteException e) {
            zzKl().zzLY().zzj("Database error while trying to delete uploaded bundles", e);
            this.zzbuE = zznR().elapsedRealtime();
            zzKl().zzMe().zzj("Disable upload, time", Long.valueOf(this.zzbuE));
        }
    }

    void zza(zzatd zzatdVar, long j) {
        zzatc zzfu = zzKg().zzfu(zzatdVar.packageName);
        if (zzfu != null && zzfu.getGmpAppId() != null && !zzfu.getGmpAppId().equals(zzatdVar.zzbqL)) {
            zzKl().zzMa().zzj("New GMP App Id passed in. Removing cached database data. appId", zzatx.zzfE(zzfu.zzke()));
            zzKg().zzfz(zzfu.zzke());
            zzfu = null;
        }
        if (zzfu == null || zzfu.zzmZ() == null || zzfu.zzmZ().equals(zzatdVar.zzbhN)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_pv", zzfu.zzmZ());
        zzb(new zzatq("_au", new zzato(bundle), "auto", j), zzatdVar);
    }

    void zza(zzatm zzatmVar, zzatd zzatdVar) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(zzatmVar);
        com.google.android.gms.common.internal.zzac.zzw(zzatdVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzatmVar.mAppId);
        com.google.android.gms.common.internal.zzac.zzax(zzatmVar.mAppId.equals(zzatdVar.packageName));
        zzauw.zze zzeVar = new zzauw.zze();
        zzeVar.zzbxf = 1;
        zzeVar.zzbxn = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
        zzeVar.zzaS = zzatdVar.packageName;
        zzeVar.zzbqM = zzatdVar.zzbqM;
        zzeVar.zzbhN = zzatdVar.zzbhN;
        zzeVar.zzbxA = Integer.valueOf((int) zzatdVar.zzbqS);
        zzeVar.zzbxr = Long.valueOf(zzatdVar.zzbqN);
        zzeVar.zzbqL = zzatdVar.zzbqL;
        zzeVar.zzbxw = zzatdVar.zzbqO == 0 ? null : Long.valueOf(zzatdVar.zzbqO);
        Pair<String, Boolean> zzfG = zzKm().zzfG(zzatdVar.packageName);
        if (!TextUtils.isEmpty((CharSequence) zzfG.first)) {
            zzeVar.zzbxt = (String) zzfG.first;
            zzeVar.zzbxu = (Boolean) zzfG.second;
        } else if (!zzKc().zzbL(this.mContext)) {
            String string = Settings.Secure.getString(this.mContext.getContentResolver(), "android_id");
            if (string == null) {
                zzKl().zzMa().zzj("null secure ID. appId", zzatx.zzfE(zzeVar.zzaS));
                string = "null";
            } else if (string.isEmpty()) {
                zzKl().zzMa().zzj("empty secure ID. appId", zzatx.zzfE(zzeVar.zzaS));
            }
            zzeVar.zzbxD = string;
        }
        zzeVar.zzbxo = zzKc().zzkN();
        zzeVar.zzbb = zzKc().zzLS();
        zzeVar.zzbxq = Integer.valueOf((int) zzKc().zzLT());
        zzeVar.zzbxp = zzKc().zzLU();
        zzeVar.zzbxs = null;
        zzeVar.zzbxi = null;
        zzeVar.zzbxj = null;
        zzeVar.zzbxk = null;
        zzeVar.zzbxF = Long.valueOf(zzatdVar.zzbqU);
        zzatc zzfu = zzKg().zzfu(zzatdVar.packageName);
        if (zzfu == null) {
            zzfu = new zzatc(this, zzatdVar.packageName);
            zzfu.zzfd(zzKm().zzMh());
            zzfu.zzfg(zzatdVar.zzbqT);
            zzfu.zzfe(zzatdVar.zzbqL);
            zzfu.zzff(zzKm().zzfH(zzatdVar.packageName));
            zzfu.zzad(0L);
            zzfu.zzY(0L);
            zzfu.zzZ(0L);
            zzfu.setAppVersion(zzatdVar.zzbhN);
            zzfu.zzaa(zzatdVar.zzbqS);
            zzfu.zzfh(zzatdVar.zzbqM);
            zzfu.zzab(zzatdVar.zzbqN);
            zzfu.zzac(zzatdVar.zzbqO);
            zzfu.setMeasurementEnabled(zzatdVar.zzbqQ);
            zzfu.zzam(zzatdVar.zzbqU);
            zzKg().zza(zzfu);
        }
        zzeVar.zzbxv = zzfu.getAppInstanceId();
        zzeVar.zzbqT = zzfu.zzKq();
        List<zzaus> zzft = zzKg().zzft(zzatdVar.packageName);
        zzeVar.zzbxh = new zzauw.zzg[zzft.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= zzft.size()) {
                try {
                    break;
                } catch (IOException e) {
                    zzKl().zzLY().zze("Data loss. Failed to insert raw event metadata. appId", zzatx.zzfE(zzeVar.zzaS), e);
                    return;
                }
            }
            zzauw.zzg zzgVar = new zzauw.zzg();
            zzeVar.zzbxh[i2] = zzgVar;
            zzgVar.name = zzft.get(i2).mName;
            zzgVar.zzbxJ = Long.valueOf(zzft.get(i2).zzbwg);
            zzKh().zza(zzgVar, zzft.get(i2).mValue);
            i = i2 + 1;
        }
        if (zzKg().zza(zzatmVar, zzKg().zza(zzeVar), zza(zzatmVar))) {
            this.zzbuE = 0L;
        }
    }

    boolean zza(int i, FileChannel fileChannel) {
        zzmR();
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzKl().zzLY().log("Bad chanel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0L);
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() == 4) {
                return true;
            }
            zzKl().zzLY().zzj("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            return true;
        } catch (IOException e) {
            zzKl().zzLY().zzj("Failed to write to channel", e);
            return false;
        }
    }

    public byte[] zza(zzatq zzatqVar, String str) {
        long j;
        zzob();
        zzmR();
        zzJV();
        com.google.android.gms.common.internal.zzac.zzw(zzatqVar);
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzauw.zzd zzdVar = new zzauw.zzd();
        zzKg().beginTransaction();
        try {
            zzatc zzfu = zzKg().zzfu(str);
            if (zzfu == null) {
                zzKl().zzMd().zzj("Log and bundle not available. package_name", str);
                return new byte[0];
            } else if (!zzfu.zzKx()) {
                zzKl().zzMd().zzj("Log and bundle disabled. package_name", str);
                return new byte[0];
            } else {
                zzauw.zze zzeVar = new zzauw.zze();
                zzdVar.zzbxd = new zzauw.zze[]{zzeVar};
                zzeVar.zzbxf = 1;
                zzeVar.zzbxn = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
                zzeVar.zzaS = zzfu.zzke();
                zzeVar.zzbqM = zzfu.zzKu();
                zzeVar.zzbhN = zzfu.zzmZ();
                zzeVar.zzbxA = Integer.valueOf((int) zzfu.zzKt());
                zzeVar.zzbxr = Long.valueOf(zzfu.zzKv());
                zzeVar.zzbqL = zzfu.getGmpAppId();
                zzeVar.zzbxw = Long.valueOf(zzfu.zzKw());
                Pair<String, Boolean> zzfG = zzKm().zzfG(zzfu.zzke());
                if (!TextUtils.isEmpty((CharSequence) zzfG.first)) {
                    zzeVar.zzbxt = (String) zzfG.first;
                    zzeVar.zzbxu = (Boolean) zzfG.second;
                }
                zzeVar.zzbxo = zzKc().zzkN();
                zzeVar.zzbb = zzKc().zzLS();
                zzeVar.zzbxq = Integer.valueOf((int) zzKc().zzLT());
                zzeVar.zzbxp = zzKc().zzLU();
                zzeVar.zzbxv = zzfu.getAppInstanceId();
                zzeVar.zzbqT = zzfu.zzKq();
                List<zzaus> zzft = zzKg().zzft(zzfu.zzke());
                zzeVar.zzbxh = new zzauw.zzg[zzft.size()];
                for (int i = 0; i < zzft.size(); i++) {
                    zzauw.zzg zzgVar = new zzauw.zzg();
                    zzeVar.zzbxh[i] = zzgVar;
                    zzgVar.name = zzft.get(i).mName;
                    zzgVar.zzbxJ = Long.valueOf(zzft.get(i).zzbwg);
                    zzKh().zza(zzgVar, zzft.get(i).mValue);
                }
                Bundle zzLW = zzatqVar.zzbrG.zzLW();
                if ("_iap".equals(zzatqVar.name)) {
                    zzLW.putLong("_c", 1L);
                    zzKl().zzMd().log("Marking in-app purchase as real-time");
                    zzLW.putLong("_r", 1L);
                }
                zzLW.putString("_o", zzatqVar.zzbqV);
                if (zzKh().zzge(zzeVar.zzaS)) {
                    zzKh().zza(zzLW, "_dbg", (Object) 1L);
                    zzKh().zza(zzLW, "_r", (Object) 1L);
                }
                zzatn zzQ = zzKg().zzQ(str, zzatqVar.name);
                if (zzQ == null) {
                    zzKg().zza(new zzatn(str, zzatqVar.name, 1L, 0L, zzatqVar.zzbrH));
                    j = 0;
                } else {
                    j = zzQ.zzbrC;
                    zzKg().zza(zzQ.zzap(zzatqVar.zzbrH).zzLV());
                }
                zzatm zzatmVar = new zzatm(this, zzatqVar.zzbqV, str, zzatqVar.name, zzatqVar.zzbrH, j, zzLW);
                zzauw.zzb zzbVar = new zzauw.zzb();
                zzeVar.zzbxg = new zzauw.zzb[]{zzbVar};
                zzbVar.zzbwZ = Long.valueOf(zzatmVar.zzaxb);
                zzbVar.name = zzatmVar.mName;
                zzbVar.zzbxa = Long.valueOf(zzatmVar.zzbry);
                zzbVar.zzbwY = new zzauw.zzc[zzatmVar.zzbrz.size()];
                Iterator<String> it = zzatmVar.zzbrz.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    String next = it.next();
                    zzauw.zzc zzcVar = new zzauw.zzc();
                    zzbVar.zzbwY[i2] = zzcVar;
                    zzcVar.name = next;
                    zzKh().zza(zzcVar, zzatmVar.zzbrz.get(next));
                    i2++;
                }
                zzeVar.zzbxz = zza(zzfu.zzke(), zzeVar.zzbxh, zzeVar.zzbxg);
                zzeVar.zzbxj = zzbVar.zzbwZ;
                zzeVar.zzbxk = zzbVar.zzbwZ;
                long zzKs = zzfu.zzKs();
                zzeVar.zzbxm = zzKs != 0 ? Long.valueOf(zzKs) : null;
                long zzKr = zzfu.zzKr();
                if (zzKr != 0) {
                    zzKs = zzKr;
                }
                zzeVar.zzbxl = zzKs != 0 ? Long.valueOf(zzKs) : null;
                zzfu.zzKB();
                zzeVar.zzbxx = Integer.valueOf((int) zzfu.zzKy());
                zzeVar.zzbxs = Long.valueOf(zzKn().zzKv());
                zzeVar.zzbxi = Long.valueOf(zznR().currentTimeMillis());
                zzeVar.zzbxy = Boolean.TRUE;
                zzfu.zzY(zzeVar.zzbxj.longValue());
                zzfu.zzZ(zzeVar.zzbxk.longValue());
                zzKg().zza(zzfu);
                zzKg().setTransactionSuccessful();
                try {
                    byte[] bArr = new byte[zzdVar.zzaeT()];
                    zzbxm zzag = zzbxm.zzag(bArr);
                    zzdVar.zza(zzag);
                    zzag.zzaeG();
                    return zzKh().zzk(bArr);
                } catch (IOException e) {
                    zzKl().zzLY().zze("Data loss. Failed to bundle and serialize. appId", zzatx.zzfE(str), e);
                    return null;
                }
            }
        } finally {
            zzKg().endTransaction();
        }
    }

    boolean zzaq(long j) {
        return zzl(null, j);
    }

    void zzb(zzatc zzatcVar) {
        android.support.v4.f.a aVar = null;
        if (TextUtils.isEmpty(zzatcVar.getGmpAppId())) {
            zzb(zzatcVar.zzke(), AppLovinErrorCodes.NO_FILL, null, null, null);
            return;
        }
        String zzP = zzKn().zzP(zzatcVar.getGmpAppId(), zzatcVar.getAppInstanceId());
        try {
            URL url = new URL(zzP);
            zzKl().zzMe().zzj("Fetching remote configuration", zzatcVar.zzke());
            zzauv.zzb zzfL = zzKi().zzfL(zzatcVar.zzke());
            String zzfM = zzKi().zzfM(zzatcVar.zzke());
            if (zzfL != null && !TextUtils.isEmpty(zzfM)) {
                aVar = new android.support.v4.f.a();
                aVar.put("If-Modified-Since", zzfM);
            }
            zzMy().zza(zzatcVar.zzke(), url, aVar, new zzaty.zza() { // from class: com.google.android.gms.internal.zzaue.4
                @Override // com.google.android.gms.internal.zzaty.zza
                public void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
                    zzaue.this.zzb(str, i, th, bArr, map);
                }
            });
        } catch (MalformedURLException e) {
            zzKl().zzLY().zze("Failed to parse config URL. Not fetching. appId", zzatx.zzfE(zzatcVar.zzke()), zzP);
        }
    }

    void zzb(zzatd zzatdVar, long j) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        zzmR();
        zzob();
        zzatc zzfu = zzKg().zzfu(zzatdVar.packageName);
        if (zzfu != null && TextUtils.isEmpty(zzfu.getGmpAppId()) && zzatdVar != null && !TextUtils.isEmpty(zzatdVar.zzbqL)) {
            zzfu.zzae(0L);
            zzKg().zza(zzfu);
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_c", 1L);
        bundle.putLong("_r", 1L);
        bundle.putLong("_uwa", 0L);
        bundle.putLong("_pfo", 0L);
        bundle.putLong("_sys", 0L);
        bundle.putLong("_sysu", 0L);
        if (getContext().getPackageManager() == null) {
            zzKl().zzLY().zzj("PackageManager is null, first open report might be inaccurate. appId", zzatx.zzfE(zzatdVar.packageName));
        } else {
            try {
                packageInfo = zzadg.zzbi(getContext()).getPackageInfo(zzatdVar.packageName, 0);
            } catch (PackageManager.NameNotFoundException e) {
                zzKl().zzLY().zze("Package info is null, first open report might be inaccurate. appId", zzatx.zzfE(zzatdVar.packageName), e);
                packageInfo = null;
            }
            if (packageInfo != null && packageInfo.firstInstallTime != 0 && packageInfo.firstInstallTime != packageInfo.lastUpdateTime) {
                bundle.putLong("_uwa", 1L);
            }
            try {
                applicationInfo = zzadg.zzbi(getContext()).getApplicationInfo(zzatdVar.packageName, 0);
            } catch (PackageManager.NameNotFoundException e2) {
                zzKl().zzLY().zze("Application info is null, first open report might be inaccurate. appId", zzatx.zzfE(zzatdVar.packageName), e2);
                applicationInfo = null;
            }
            if (applicationInfo != null) {
                if ((applicationInfo.flags & 1) != 0) {
                    bundle.putLong("_sys", 1L);
                }
                if ((applicationInfo.flags & 128) != 0) {
                    bundle.putLong("_sysu", 1L);
                }
            }
        }
        long zzfA = zzKg().zzfA(zzatdVar.packageName);
        if (zzfA >= 0) {
            bundle.putLong("_pfo", zzfA);
        }
        zzb(new zzatq("_f", new zzato(bundle), "auto", j), zzatdVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzatg zzatgVar, zzatd zzatdVar) {
        boolean z;
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzatgVar.packageName);
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar.zzbqV);
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar.zzbqW);
        com.google.android.gms.common.internal.zzac.zzdr(zzatgVar.zzbqW.name);
        zzmR();
        zzob();
        if (TextUtils.isEmpty(zzatdVar.zzbqL)) {
            return;
        }
        if (!zzatdVar.zzbqQ) {
            zzf(zzatdVar);
            return;
        }
        zzatg zzatgVar2 = new zzatg(zzatgVar);
        zzKg().beginTransaction();
        try {
            zzatg zzT = zzKg().zzT(zzatgVar2.packageName, zzatgVar2.zzbqW.name);
            if (zzT != null && zzT.zzbqY) {
                zzatgVar2.zzbqV = zzT.zzbqV;
                zzatgVar2.zzbqX = zzT.zzbqX;
                zzatgVar2.zzbqZ = zzT.zzbqZ;
                zzatgVar2.zzbrc = zzT.zzbrc;
                z = false;
            } else if (TextUtils.isEmpty(zzatgVar2.zzbqZ)) {
                zzauq zzauqVar = zzatgVar2.zzbqW;
                zzatgVar2.zzbqW = new zzauq(zzauqVar.name, zzatgVar2.zzbqX, zzauqVar.getValue(), zzauqVar.zzbqV);
                zzatgVar2.zzbqY = true;
                z = true;
            } else {
                z = false;
            }
            if (zzatgVar2.zzbqY) {
                zzauq zzauqVar2 = zzatgVar2.zzbqW;
                zzaus zzausVar = new zzaus(zzatgVar2.packageName, zzatgVar2.zzbqV, zzauqVar2.name, zzauqVar2.zzbwc, zzauqVar2.getValue());
                if (zzKg().zza(zzausVar)) {
                    zzKl().zzMd().zzd("User property updated immediately", zzatgVar2.packageName, zzausVar.mName, zzausVar.mValue);
                } else {
                    zzKl().zzLY().zzd("(2)Too many active user properties, ignoring", zzatx.zzfE(zzatgVar2.packageName), zzausVar.mName, zzausVar.mValue);
                }
                if (z && zzatgVar2.zzbrc != null) {
                    zzc(new zzatq(zzatgVar2.zzbrc, zzatgVar2.zzbqX), zzatdVar);
                }
            }
            if (zzKg().zza(zzatgVar2)) {
                zzKl().zzMd().zzd("Conditional property added", zzatgVar2.packageName, zzatgVar2.zzbqW.name, zzatgVar2.zzbqW.getValue());
            } else {
                zzKl().zzLY().zzd("Too many conditional properties, ignoring", zzatx.zzfE(zzatgVar2.packageName), zzatgVar2.zzbqW.name, zzatgVar2.zzbqW.getValue());
            }
            zzKg().setTransactionSuccessful();
        } finally {
            zzKg().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzatq zzatqVar, zzatd zzatdVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatdVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzatdVar.packageName);
        zzmR();
        zzob();
        String str = zzatdVar.packageName;
        long j = zzatqVar.zzbrH;
        if (!zzKh().zzd(zzatqVar, zzatdVar)) {
            return;
        }
        if (!zzatdVar.zzbqQ) {
            zzf(zzatdVar);
            return;
        }
        zzKg().beginTransaction();
        try {
            for (zzatg zzatgVar : zzKg().zzh(str, j)) {
                if (zzatgVar != null) {
                    zzKl().zzMd().zzd("User property timed out", zzatgVar.packageName, zzatgVar.zzbqW.name, zzatgVar.zzbqW.getValue());
                    if (zzatgVar.zzbra != null) {
                        zzc(new zzatq(zzatgVar.zzbra, j), zzatdVar);
                    }
                    zzKg().zzU(str, zzatgVar.zzbqW.name);
                }
            }
            List<zzatg> zzi = zzKg().zzi(str, j);
            ArrayList<zzatq> arrayList = new ArrayList(zzi.size());
            for (zzatg zzatgVar2 : zzi) {
                if (zzatgVar2 != null) {
                    zzKl().zzMd().zzd("User property expired", zzatgVar2.packageName, zzatgVar2.zzbqW.name, zzatgVar2.zzbqW.getValue());
                    zzKg().zzR(str, zzatgVar2.zzbqW.name);
                    if (zzatgVar2.zzbre != null) {
                        arrayList.add(zzatgVar2.zzbre);
                    }
                    zzKg().zzU(str, zzatgVar2.zzbqW.name);
                }
            }
            for (zzatq zzatqVar2 : arrayList) {
                zzc(new zzatq(zzatqVar2, j), zzatdVar);
            }
            List<zzatg> zzc = zzKg().zzc(str, zzatqVar.name, j);
            ArrayList<zzatq> arrayList2 = new ArrayList(zzc.size());
            for (zzatg zzatgVar3 : zzc) {
                if (zzatgVar3 != null) {
                    zzauq zzauqVar = zzatgVar3.zzbqW;
                    zzaus zzausVar = new zzaus(zzatgVar3.packageName, zzatgVar3.zzbqV, zzauqVar.name, j, zzauqVar.getValue());
                    if (zzKg().zza(zzausVar)) {
                        zzKl().zzMd().zzd("User property triggered", zzatgVar3.packageName, zzausVar.mName, zzausVar.mValue);
                    } else {
                        zzKl().zzLY().zzd("Too many active user properties, ignoring", zzatx.zzfE(zzatgVar3.packageName), zzausVar.mName, zzausVar.mValue);
                    }
                    if (zzatgVar3.zzbrc != null) {
                        arrayList2.add(zzatgVar3.zzbrc);
                    }
                    zzatgVar3.zzbqW = new zzauq(zzausVar);
                    zzatgVar3.zzbqY = true;
                    zzKg().zza(zzatgVar3);
                }
            }
            zzc(zzatqVar, zzatdVar);
            for (zzatq zzatqVar3 : arrayList2) {
                zzc(new zzatq(zzatqVar3, j), zzatdVar);
            }
            zzKg().setTransactionSuccessful();
        } finally {
            zzKg().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzatq zzatqVar, String str) {
        zzatc zzfu = zzKg().zzfu(str);
        if (zzfu == null || TextUtils.isEmpty(zzfu.zzmZ())) {
            zzKl().zzMd().zzj("No app data available; dropping event", str);
            return;
        }
        try {
            String str2 = zzadg.zzbi(getContext()).getPackageInfo(str, 0).versionName;
            if (zzfu.zzmZ() != null && !zzfu.zzmZ().equals(str2)) {
                zzKl().zzMa().zzj("App version does not match; dropping event. appId", zzatx.zzfE(str));
                return;
            }
        } catch (PackageManager.NameNotFoundException e) {
            if (!"_ui".equals(zzatqVar.name)) {
                zzKl().zzMa().zzj("Could not find package. appId", zzatx.zzfE(str));
            }
        }
        zzb(zzatqVar, new zzatd(str, zzfu.getGmpAppId(), zzfu.zzmZ(), zzfu.zzKt(), zzfu.zzKu(), zzfu.zzKv(), zzfu.zzKw(), (String) null, zzfu.zzKx(), false, zzfu.zzKq(), zzfu.zzuW()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzauh zzauhVar) {
        this.zzbuB++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzauq zzauqVar, zzatd zzatdVar) {
        int i = 0;
        zzmR();
        zzob();
        if (TextUtils.isEmpty(zzatdVar.zzbqL)) {
            return;
        }
        if (!zzatdVar.zzbqQ) {
            zzf(zzatdVar);
            return;
        }
        int zzfX = zzKh().zzfX(zzauqVar.name);
        if (zzfX != 0) {
            String zza2 = zzKh().zza(zzauqVar.name, zzKn().zzKN(), true);
            if (zzauqVar.name != null) {
                i = zzauqVar.name.length();
            }
            zzKh().zza(zzfX, "_ev", zza2, i);
            return;
        }
        int zzm = zzKh().zzm(zzauqVar.name, zzauqVar.getValue());
        if (zzm != 0) {
            String zza3 = zzKh().zza(zzauqVar.name, zzKn().zzKN(), true);
            Object value = zzauqVar.getValue();
            if (value != null && ((value instanceof String) || (value instanceof CharSequence))) {
                i = String.valueOf(value).length();
            }
            zzKh().zza(zzm, "_ev", zza3, i);
            return;
        }
        Object zzn = zzKh().zzn(zzauqVar.name, zzauqVar.getValue());
        if (zzn == null) {
            return;
        }
        zzaus zzausVar = new zzaus(zzatdVar.packageName, zzauqVar.zzbqV, zzauqVar.name, zzauqVar.zzbwc, zzn);
        zzKl().zzMd().zze("Setting user property", zzausVar.mName, zzn);
        zzKg().beginTransaction();
        try {
            zzf(zzatdVar);
            boolean zza4 = zzKg().zza(zzausVar);
            zzKg().setTransactionSuccessful();
            if (zza4) {
                zzKl().zzMd().zze("User property set", zzausVar.mName, zzausVar.mValue);
            } else {
                zzKl().zzLY().zze("Too many unique user properties are set. Ignoring user property", zzausVar.mName, zzausVar.mValue);
                zzKh().zza(9, (String) null, (String) null, 0);
            }
        } finally {
            zzKg().endTransaction();
        }
    }

    void zzb(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        boolean z = false;
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        if (bArr == null) {
            bArr = new byte[0];
        }
        zzKg().beginTransaction();
        try {
            zzatc zzfu = zzKg().zzfu(str);
            boolean z2 = (i == 200 || i == 204 || i == 304) && th == null;
            if (zzfu == null) {
                zzKl().zzMa().zzj("App does not exist in onConfigFetched. appId", zzatx.zzfE(str));
            } else if (z2 || i == 404) {
                List<String> list = map != null ? map.get("Last-Modified") : null;
                String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
                if (i == 404 || i == 304) {
                    if (zzKi().zzfL(str) == null && !zzKi().zzb(str, null, null)) {
                        return;
                    }
                } else if (!zzKi().zzb(str, bArr, str2)) {
                    return;
                }
                zzfu.zzae(zznR().currentTimeMillis());
                zzKg().zza(zzfu);
                if (i == 404) {
                    zzKl().zzMb().zzj("Config not found. Using empty config. appId", str);
                } else {
                    zzKl().zzMe().zze("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                }
                if (!zzMy().zzqa() || !zzMH()) {
                    zzMI();
                } else {
                    zzMG();
                }
            } else {
                zzfu.zzaf(zznR().currentTimeMillis());
                zzKg().zza(zzfu);
                zzKl().zzMe().zze("Fetching config failed. code, error", Integer.valueOf(i), th);
                zzKi().zzfN(str);
                zzKm().zzbta.set(zznR().currentTimeMillis());
                if (i == 503 || i == 429) {
                    z = true;
                }
                if (z) {
                    zzKm().zzbtb.set(zznR().currentTimeMillis());
                }
                zzMI();
            }
            zzKg().setTransactionSuccessful();
        } finally {
            zzKg().endTransaction();
        }
    }

    void zzc(zzatd zzatdVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("_et", 1L);
        zzb(new zzatq("_e", new zzato(bundle), "auto", j), zzatdVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzc(zzatg zzatgVar, zzatd zzatdVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzatgVar.packageName);
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar.zzbqW);
        com.google.android.gms.common.internal.zzac.zzdr(zzatgVar.zzbqW.name);
        zzmR();
        zzob();
        if (TextUtils.isEmpty(zzatdVar.zzbqL)) {
            return;
        }
        if (!zzatdVar.zzbqQ) {
            zzf(zzatdVar);
            return;
        }
        zzKg().beginTransaction();
        try {
            zzf(zzatdVar);
            zzatg zzT = zzKg().zzT(zzatgVar.packageName, zzatgVar.zzbqW.name);
            if (zzT != null) {
                zzKl().zzMd().zze("Removing conditional user property", zzatgVar.packageName, zzatgVar.zzbqW.name);
                zzKg().zzU(zzatgVar.packageName, zzatgVar.zzbqW.name);
                if (zzT.zzbqY) {
                    zzKg().zzR(zzatgVar.packageName, zzatgVar.zzbqW.name);
                }
                if (zzatgVar.zzbre != null) {
                    Bundle bundle = null;
                    if (zzatgVar.zzbre.zzbrG != null) {
                        bundle = zzatgVar.zzbre.zzbrG.zzLW();
                    }
                    zzc(zzKh().zza(zzatgVar.zzbre.name, bundle, zzT.zzbqV, zzatgVar.zzbre.zzbrH, true, false), zzatdVar);
                }
            } else {
                zzKl().zzMa().zze("Conditional user property doesn't exist", zzatx.zzfE(zzatgVar.packageName), zzatgVar.zzbqW.name);
            }
            zzKg().setTransactionSuccessful();
        } finally {
            zzKg().endTransaction();
        }
    }

    void zzc(zzatq zzatqVar, zzatd zzatdVar) {
        long j;
        zzaus zzausVar;
        zzatn zzap;
        zzatc zzfu;
        com.google.android.gms.common.internal.zzac.zzw(zzatdVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzatdVar.packageName);
        long nanoTime = System.nanoTime();
        zzmR();
        zzob();
        String str = zzatdVar.packageName;
        if (!zzKh().zzd(zzatqVar, zzatdVar)) {
            return;
        }
        if (!zzatdVar.zzbqQ) {
            zzf(zzatdVar);
        } else if (zzKi().zzaa(str, zzatqVar.name)) {
            zzKl().zzMa().zze("Dropping blacklisted event. appId", zzatx.zzfE(str), zzatqVar.name);
            boolean z = zzKh().zzgg(str) || zzKh().zzgh(str);
            if (!z && !"_err".equals(zzatqVar.name)) {
                zzKh().zza(11, "_ev", zzatqVar.name, 0);
            }
            if (!z || (zzfu = zzKg().zzfu(str)) == null) {
                return;
            }
            if (Math.abs(zznR().currentTimeMillis() - Math.max(zzfu.zzKA(), zzfu.zzKz())) <= zzKn().zzLl()) {
                return;
            }
            zzKl().zzMd().log("Fetching config for blacklisted app");
            zzb(zzfu);
        } else {
            if (zzKl().zzak(2)) {
                zzKl().zzMe().zzj("Logging event", zzatqVar);
            }
            zzKg().beginTransaction();
            try {
                Bundle zzLW = zzatqVar.zzbrG.zzLW();
                zzf(zzatdVar);
                if ("_iap".equals(zzatqVar.name) || a.C0497a.ECOMMERCE_PURCHASE.equals(zzatqVar.name)) {
                    String string = zzLW.getString("currency");
                    if (a.C0497a.ECOMMERCE_PURCHASE.equals(zzatqVar.name)) {
                        double d = zzLW.getDouble("value") * 1000000.0d;
                        if (d == 0.0d) {
                            d = zzLW.getLong("value") * 1000000.0d;
                        }
                        if (d > 9.223372036854776E18d || d < -9.223372036854776E18d) {
                            zzKl().zzMa().zze("Data lost. Currency value is too big. appId", zzatx.zzfE(str), Double.valueOf(d));
                            zzKg().setTransactionSuccessful();
                            return;
                        }
                        j = Math.round(d);
                    } else {
                        j = zzLW.getLong("value");
                    }
                    if (!TextUtils.isEmpty(string)) {
                        String upperCase = string.toUpperCase(Locale.US);
                        if (upperCase.matches("[A-Z]{3}")) {
                            String valueOf = String.valueOf("_ltv_");
                            String valueOf2 = String.valueOf(upperCase);
                            String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                            zzaus zzS = zzKg().zzS(str, concat);
                            if (zzS == null || !(zzS.mValue instanceof Long)) {
                                zzKg().zzz(str, zzKn().zzfn(str) - 1);
                                zzausVar = new zzaus(str, zzatqVar.zzbqV, concat, zznR().currentTimeMillis(), Long.valueOf(j));
                            } else {
                                zzausVar = new zzaus(str, zzatqVar.zzbqV, concat, zznR().currentTimeMillis(), Long.valueOf(j + ((Long) zzS.mValue).longValue()));
                            }
                            if (!zzKg().zza(zzausVar)) {
                                zzKl().zzLY().zzd("Too many unique user properties are set. Ignoring user property. appId", zzatx.zzfE(str), zzausVar.mName, zzausVar.mValue);
                                zzKh().zza(9, (String) null, (String) null, 0);
                            }
                        }
                    }
                }
                boolean zzfT = zzaut.zzfT(zzatqVar.name);
                boolean equals = "_err".equals(zzatqVar.name);
                zzatj.zza zza2 = zzKg().zza(zzME(), str, true, zzfT, false, equals, false);
                long zzKU = zza2.zzbro - zzKn().zzKU();
                if (zzKU > 0) {
                    if (zzKU % 1000 == 1) {
                        zzKl().zzLY().zze("Data loss. Too many events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza2.zzbro));
                    }
                    zzKh().zza(16, "_ev", zzatqVar.name, 0);
                    zzKg().setTransactionSuccessful();
                    return;
                }
                if (zzfT) {
                    long zzKV = zza2.zzbrn - zzKn().zzKV();
                    if (zzKV > 0) {
                        if (zzKV % 1000 == 1) {
                            zzKl().zzLY().zze("Data loss. Too many public events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza2.zzbrn));
                        }
                        zzKh().zza(16, "_ev", zzatqVar.name, 0);
                        zzKg().setTransactionSuccessful();
                        return;
                    }
                }
                if (equals) {
                    long zzfj = zza2.zzbrq - zzKn().zzfj(zzatdVar.packageName);
                    if (zzfj > 0) {
                        if (zzfj == 1) {
                            zzKl().zzLY().zze("Too many error events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza2.zzbrq));
                        }
                        zzKg().setTransactionSuccessful();
                        return;
                    }
                }
                zzKh().zza(zzLW, "_o", zzatqVar.zzbqV);
                if (zzKh().zzge(str)) {
                    zzKh().zza(zzLW, "_dbg", (Object) 1L);
                    zzKh().zza(zzLW, "_r", (Object) 1L);
                }
                long zzfv = zzKg().zzfv(str);
                if (zzfv > 0) {
                    zzKl().zzMa().zze("Data lost. Too many events stored on disk, deleted. appId", zzatx.zzfE(str), Long.valueOf(zzfv));
                }
                zzatm zzatmVar = new zzatm(this, zzatqVar.zzbqV, str, zzatqVar.name, zzatqVar.zzbrH, 0L, zzLW);
                zzatn zzQ = zzKg().zzQ(str, zzatmVar.mName);
                if (zzQ == null) {
                    long zzfC = zzKg().zzfC(str);
                    zzKn().zzKT();
                    if (zzfC >= 500) {
                        zzKl().zzLY().zzd("Too many event names used, ignoring event. appId, name, supported count", zzatx.zzfE(str), zzatmVar.mName, Integer.valueOf(zzKn().zzKT()));
                        zzKh().zza(8, (String) null, (String) null, 0);
                        return;
                    }
                    zzap = new zzatn(str, zzatmVar.mName, 0L, 0L, zzatmVar.zzaxb);
                } else {
                    zzatmVar = zzatmVar.zza(this, zzQ.zzbrC);
                    zzap = zzQ.zzap(zzatmVar.zzaxb);
                }
                zzKg().zza(zzap);
                zza(zzatmVar, zzatdVar);
                zzKg().setTransactionSuccessful();
                if (zzKl().zzak(2)) {
                    zzKl().zzMe().zzj("Event recorded", zzatmVar);
                }
                zzKg().endTransaction();
                zzMI();
                zzKl().zzMe().zzj("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / 1000000));
            } finally {
                zzKg().endTransaction();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzc(zzauq zzauqVar, zzatd zzatdVar) {
        zzmR();
        zzob();
        if (TextUtils.isEmpty(zzatdVar.zzbqL)) {
            return;
        }
        if (!zzatdVar.zzbqQ) {
            zzf(zzatdVar);
            return;
        }
        zzKl().zzMd().zzj("Removing user property", zzauqVar.name);
        zzKg().beginTransaction();
        try {
            zzf(zzatdVar);
            zzKg().zzR(zzatdVar.packageName, zzauqVar.name);
            zzKg().setTransactionSuccessful();
            zzKl().zzMd().zzj("User property removed", zzauqVar.name);
        } finally {
            zzKg().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzd(zzatd zzatdVar) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzdr(zzatdVar.packageName);
        zzf(zzatdVar);
    }

    void zzd(zzatd zzatdVar, long j) {
        zzb(new zzatq("_cd", new zzato(new Bundle()), "auto", j), zzatdVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzd(zzatg zzatgVar) {
        zzatd zzfO = zzfO(zzatgVar.packageName);
        if (zzfO != null) {
            zzb(zzatgVar, zzfO);
        }
    }

    public void zze(zzatd zzatdVar) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(zzatdVar);
        com.google.android.gms.common.internal.zzac.zzdr(zzatdVar.packageName);
        if (TextUtils.isEmpty(zzatdVar.zzbqL)) {
            return;
        }
        if (!zzatdVar.zzbqQ) {
            zzf(zzatdVar);
            return;
        }
        long currentTimeMillis = zznR().currentTimeMillis();
        zzKg().beginTransaction();
        try {
            zza(zzatdVar, currentTimeMillis);
            zzf(zzatdVar);
            if (zzKg().zzQ(zzatdVar.packageName, "_f") == null) {
                zzb(new zzauq("_fot", currentTimeMillis, Long.valueOf((1 + (currentTimeMillis / 3600000)) * 3600000), "auto"), zzatdVar);
                zzb(zzatdVar, currentTimeMillis);
                zzc(zzatdVar, currentTimeMillis);
            } else if (zzatdVar.zzbqR) {
                zzd(zzatdVar, currentTimeMillis);
            }
            zzKg().setTransactionSuccessful();
        } finally {
            zzKg().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zze(zzatg zzatgVar) {
        zzatd zzfO = zzfO(zzatgVar.packageName);
        if (zzfO != null) {
            zzc(zzatgVar, zzfO);
        }
    }

    zzatd zzfO(String str) {
        zzatc zzfu = zzKg().zzfu(str);
        if (zzfu == null || TextUtils.isEmpty(zzfu.zzmZ())) {
            zzKl().zzMd().zzj("No app data available; dropping", str);
            return null;
        }
        try {
            String str2 = zzadg.zzbi(getContext()).getPackageInfo(str, 0).versionName;
            if (zzfu.zzmZ() != null && !zzfu.zzmZ().equals(str2)) {
                zzKl().zzMa().zzj("App version does not match; dropping. appId", zzatx.zzfE(str));
                return null;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return new zzatd(str, zzfu.getGmpAppId(), zzfu.zzmZ(), zzfu.zzKt(), zzfu.zzKu(), zzfu.zzKv(), zzfu.zzKw(), (String) null, zzfu.zzKx(), false, zzfu.zzKq(), zzfu.zzuW());
    }

    public String zzfP(final String str) {
        try {
            return (String) zzKk().zzd(new Callable<String>() { // from class: com.google.android.gms.internal.zzaue.2
                @Override // java.util.concurrent.Callable
                /* renamed from: zzbY */
                public String call() throws Exception {
                    zzatc zzfu = zzaue.this.zzKg().zzfu(str);
                    if (zzfu == null) {
                        return null;
                    }
                    return zzfu.getAppInstanceId();
                }
            }).get(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzKl().zzLY().zze("Failed to get app instance id. appId", zzatx.zzfE(str), e);
            return null;
        }
    }

    public void zzmR() {
        zzKk().zzmR();
    }

    public com.google.android.gms.common.util.zze zznR() {
        return this.zzuP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzob() {
        if (!this.zzadP) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    boolean zzy(int i, int i2) {
        zzmR();
        if (i > i2) {
            zzKl().zzLY().zze("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(i2));
            return false;
        }
        if (i < i2) {
            if (!zza(i2, zzMB())) {
                zzKl().zzLY().zze("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(i2));
                return false;
            }
            zzKl().zzMe().zze("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(i2));
        }
        return true;
    }
}
