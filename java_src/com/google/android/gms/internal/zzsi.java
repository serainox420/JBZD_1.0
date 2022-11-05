package com.google.android.gms.internal;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzsi extends zzsa {
    private boolean mStarted;
    private final zzsg zzaeA;
    private final zztf zzaeB;
    private final zzte zzaeC;
    private final zzsf zzaeD;
    private long zzaeE;
    private final zzsr zzaeF;
    private final zzsr zzaeG;
    private final zztj zzaeH;
    private long zzaeI;
    private boolean zzaeJ;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsi(zzsc zzscVar, zzsd zzsdVar) {
        super(zzscVar);
        com.google.android.gms.common.internal.zzac.zzw(zzsdVar);
        this.zzaeE = Long.MIN_VALUE;
        this.zzaeC = zzsdVar.zzk(zzscVar);
        this.zzaeA = zzsdVar.zzm(zzscVar);
        this.zzaeB = zzsdVar.zzn(zzscVar);
        this.zzaeD = zzsdVar.zzo(zzscVar);
        this.zzaeH = new zztj(zznR());
        this.zzaeF = new zzsr(zzscVar) { // from class: com.google.android.gms.internal.zzsi.1
            @Override // com.google.android.gms.internal.zzsr
            public void run() {
                zzsi.this.zzoB();
            }
        };
        this.zzaeG = new zzsr(zzscVar) { // from class: com.google.android.gms.internal.zzsi.2
            @Override // com.google.android.gms.internal.zzsr
            public void run() {
                zzsi.this.zzoC();
            }
        };
    }

    private void zza(zzse zzseVar, zzrl zzrlVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzseVar);
        com.google.android.gms.common.internal.zzac.zzw(zzrlVar);
        com.google.android.gms.analytics.zza zzaVar = new com.google.android.gms.analytics.zza(zznQ());
        zzaVar.zzbo(zzseVar.zzok());
        zzaVar.enableAdvertisingIdCollection(zzseVar.zzol());
        com.google.android.gms.analytics.zze zzmo = zzaVar.zzmo();
        zzrt zzrtVar = (zzrt) zzmo.zzb(zzrt.class);
        zzrtVar.zzbE("data");
        zzrtVar.zzT(true);
        zzmo.zza(zzrlVar);
        zzro zzroVar = (zzro) zzmo.zzb(zzro.class);
        zzrk zzrkVar = (zzrk) zzmo.zzb(zzrk.class);
        for (Map.Entry<String, String> entry : zzseVar.zzfE().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                zzrkVar.setAppName(value);
            } else if ("av".equals(key)) {
                zzrkVar.setAppVersion(value);
            } else if ("aid".equals(key)) {
                zzrkVar.setAppId(value);
            } else if ("aiid".equals(key)) {
                zzrkVar.setAppInstallerId(value);
            } else if ("uid".equals(key)) {
                zzrtVar.setUserId(value);
            } else {
                zzroVar.set(key, value);
            }
        }
        zzb("Sending installation campaign to", zzseVar.zzok(), zzrlVar);
        zzmo.zzq(zznW().zzqe());
        zzmo.zzmG();
    }

    private boolean zzbW(String str) {
        return zzadg.zzbi(getContext()).checkCallingOrSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzoB() {
        zzb(new zzsu() { // from class: com.google.android.gms.internal.zzsi.4
            @Override // com.google.android.gms.internal.zzsu
            public void zzf(Throwable th) {
                zzsi.this.zzoH();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzoC() {
        try {
            this.zzaeA.zzot();
            zzoH();
        } catch (SQLiteException e) {
            zzd("Failed to delete stale hits", e);
        }
        this.zzaeG.zzy(86400000L);
    }

    private boolean zzoI() {
        return !this.zzaeJ && zzoO() > 0;
    }

    private void zzoJ() {
        zzst zznV = zznV();
        if (zznV.zzpD() && !zznV.zzcy()) {
            long zzou = zzou();
            if (zzou == 0 || Math.abs(zznR().currentTimeMillis() - zzou) > zznT().zzpf()) {
                return;
            }
            zza("Dispatch alarm scheduled (ms)", Long.valueOf(zznT().zzpe()));
            zznV.schedule();
        }
    }

    private void zzoK() {
        long min;
        zzoJ();
        long zzoO = zzoO();
        long zzqg = zznW().zzqg();
        if (zzqg != 0) {
            min = zzoO - Math.abs(zznR().currentTimeMillis() - zzqg);
            if (min <= 0) {
                min = Math.min(zznT().zzpc(), zzoO);
            }
        } else {
            min = Math.min(zznT().zzpc(), zzoO);
        }
        zza("Dispatch scheduled (ms)", Long.valueOf(min));
        if (!this.zzaeF.zzcy()) {
            this.zzaeF.zzy(min);
            return;
        }
        this.zzaeF.zzz(Math.max(1L, min + this.zzaeF.zzpA()));
    }

    private void zzoL() {
        zzoM();
        zzoN();
    }

    private void zzoM() {
        if (this.zzaeF.zzcy()) {
            zzbP("All hits dispatched or no network/service. Going to power save mode");
        }
        this.zzaeF.cancel();
    }

    private void zzoN() {
        zzst zznV = zznV();
        if (zznV.zzcy()) {
            zznV.cancel();
        }
    }

    private void zzoz() {
        zzmR();
        Context context = zznQ().getContext();
        if (!zzth.zzak(context)) {
            zzbS("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!zzti.zzal(context)) {
            zzbT("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!CampaignTrackingReceiver.zzak(context)) {
            zzbS("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        } else if (CampaignTrackingService.zzal(context)) {
        } else {
            zzbS("CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onServiceConnected() {
        zzmR();
        zzoE();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void start() {
        zzob();
        com.google.android.gms.common.internal.zzac.zza(!this.mStarted, "Analytics backend already started");
        this.mStarted = true;
        zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzsi.3
            @Override // java.lang.Runnable
            public void run() {
                zzsi.this.zzoA();
            }
        });
    }

    public void zzW(boolean z) {
        zzoH();
    }

    public long zza(zzse zzseVar, boolean z) {
        com.google.android.gms.common.internal.zzac.zzw(zzseVar);
        zzob();
        zzmR();
        try {
            try {
                this.zzaeA.beginTransaction();
                this.zzaeA.zza(zzseVar.zzoj(), zzseVar.zzmy());
                long zza = this.zzaeA.zza(zzseVar.zzoj(), zzseVar.zzmy(), zzseVar.zzok());
                if (!z) {
                    zzseVar.zzs(zza);
                } else {
                    zzseVar.zzs(1 + zza);
                }
                this.zzaeA.zzb(zzseVar);
                this.zzaeA.setTransactionSuccessful();
                try {
                    return zza;
                } catch (SQLiteException e) {
                    return zza;
                }
            } catch (SQLiteException e2) {
                zze("Failed to update Analytics property", e2);
                try {
                    this.zzaeA.endTransaction();
                } catch (SQLiteException e3) {
                    zze("Failed to end transaction", e3);
                }
                return -1L;
            }
        } finally {
            try {
                this.zzaeA.endTransaction();
            } catch (SQLiteException e4) {
                zze("Failed to end transaction", e4);
            }
        }
    }

    public void zza(zzsu zzsuVar, long j) {
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        long j2 = -1;
        long zzqg = zznW().zzqg();
        if (zzqg != 0) {
            j2 = Math.abs(zznR().currentTimeMillis() - zzqg);
        }
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(j2));
        zzoD();
        try {
            zzoF();
            zznW().zzqh();
            zzoH();
            if (zzsuVar != null) {
                zzsuVar.zzf(null);
            }
            if (this.zzaeI == j) {
                return;
            }
            this.zzaeC.zzpZ();
        } catch (Throwable th) {
            zze("Local dispatch failed", th);
            zznW().zzqh();
            zzoH();
            if (zzsuVar == null) {
                return;
            }
            zzsuVar.zzf(th);
        }
    }

    public void zza(zzsz zzszVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzszVar);
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        if (this.zzaeJ) {
            zzbQ("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", zzszVar);
        }
        zzsz zzf = zzf(zzszVar);
        zzoD();
        if (this.zzaeD.zzb(zzf)) {
            zzbQ("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.zzaeA.zzc(zzf);
            zzoH();
        } catch (SQLiteException e) {
            zze("Delivery failed to save hit to a database", e);
            zznS().zza(zzf, "deliver: failed to insert hit to database");
        }
    }

    public void zzb(zzsu zzsuVar) {
        zza(zzsuVar, this.zzaeI);
    }

    public void zzbX(String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzmR();
        zzrl zza = zztm.zza(zznS(), str);
        if (zza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String zzqi = zznW().zzqi();
        if (str.equals(zzqi)) {
            zzbS("Ignoring duplicate install campaign");
        } else if (!TextUtils.isEmpty(zzqi)) {
            zzd("Ignoring multiple install campaigns. original, new", zzqi, str);
        } else {
            zznW().zzcb(str);
            if (zznW().zzqf().zzA(zznT().zzpy())) {
                zzd("Campaign received too late, ignoring", zza);
                return;
            }
            zzb("Received installation campaign", zza);
            for (zzse zzseVar : this.zzaeA.zzw(0L)) {
                zza(zzseVar, zza);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzc(zzse zzseVar) {
        zzmR();
        zzb("Sending first hit to property", zzseVar.zzok());
        if (zznW().zzqf().zzA(zznT().zzpy())) {
            return;
        }
        String zzqi = zznW().zzqi();
        if (TextUtils.isEmpty(zzqi)) {
            return;
        }
        zzrl zza = zztm.zza(zznS(), zzqi);
        zzb("Found relevant installation campaign", zza);
        zza(zzseVar, zza);
    }

    zzsz zzf(zzsz zzszVar) {
        Pair<String, Long> zzqm;
        if (TextUtils.isEmpty(zzszVar.zzpU()) && (zzqm = zznW().zzqj().zzqm()) != null) {
            String str = (String) zzqm.first;
            String valueOf = String.valueOf((Long) zzqm.second);
            String sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length()).append(valueOf).append(":").append(str).toString();
            HashMap hashMap = new HashMap(zzszVar.zzfE());
            hashMap.put("_m", sb);
            return zzsz.zza(this, zzszVar, hashMap);
        }
        return zzszVar;
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
        this.zzaeA.initialize();
        this.zzaeB.initialize();
        this.zzaeD.initialize();
    }

    public void zznK() {
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        zzbP("Delete all hits from local store");
        try {
            this.zzaeA.zzor();
            this.zzaeA.zzos();
            zzoH();
        } catch (SQLiteException e) {
            zzd("Failed to delete hits from store", e);
        }
        zzoD();
        if (this.zzaeD.zzon()) {
            zzbP("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    public void zznN() {
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        zzbP("Service disconnected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zznP() {
        zzmR();
        this.zzaeI = zznR().currentTimeMillis();
    }

    protected void zzoA() {
        zzob();
        zzoz();
        zznW().zzqe();
        if (!zzbW("android.permission.ACCESS_NETWORK_STATE")) {
            zzbT("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzoP();
        }
        if (!zzbW("android.permission.INTERNET")) {
            zzbT("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzoP();
        }
        if (zzti.zzal(getContext())) {
            zzbP("AnalyticsService registered in the app manifest and enabled");
        } else {
            zzbS("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.zzaeJ && !this.zzaeA.isEmpty()) {
            zzoD();
        }
        zzoH();
    }

    protected void zzoD() {
        if (!this.zzaeJ && zznT().zzoX() && !this.zzaeD.isConnected()) {
            if (!this.zzaeH.zzA(zznT().zzps())) {
                return;
            }
            this.zzaeH.start();
            zzbP("Connecting to service");
            if (!this.zzaeD.connect()) {
                return;
            }
            zzbP("Connected to service");
            this.zzaeH.clear();
            onServiceConnected();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005f A[LOOP:1: B:20:0x005f->B:19:0x0056, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0045 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void zzoE() {
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        if (!zznT().zzoX()) {
            zzbS("Service client disabled. Can't dispatch local hits to device AnalyticsService");
        }
        if (!this.zzaeD.isConnected()) {
            zzbP("Service not connected");
        } else if (this.zzaeA.isEmpty()) {
        } else {
            zzbP("Dispatching local hits to device AnalyticsService");
            while (true) {
                try {
                    List<zzsz> zzu = this.zzaeA.zzu(zznT().zzpg());
                    if (!zzu.isEmpty()) {
                        zzoH();
                        return;
                    }
                    while (true) {
                        if (!zzu.isEmpty()) {
                            zzsz zzszVar = zzu.get(0);
                            if (!this.zzaeD.zzb(zzszVar)) {
                                zzoH();
                                return;
                            }
                            zzu.remove(zzszVar);
                            try {
                                this.zzaeA.zzv(zzszVar.zzpP());
                            } catch (SQLiteException e) {
                                zze("Failed to remove hit that was send for delivery", e);
                                zzoL();
                                return;
                            }
                        }
                    }
                    List<zzsz> zzu2 = this.zzaeA.zzu(zznT().zzpg());
                    if (!zzu2.isEmpty()) {
                    }
                } catch (SQLiteException e2) {
                    zze("Failed to read hits from store", e2);
                    zzoL();
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
        zzbP("Store is empty, nothing to dispatch");
        zzoL();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0064, code lost:
        r12.zzaeA.setTransactionSuccessful();
        r12.zzaeA.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
        zze("Failed to commit local dispatch transaction", r0);
        zzoL();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ef, code lost:
        if (r12.zzaeD.isConnected() == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f1, code lost:
        zzbP("Service connected, sending hits to the service");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fa, code lost:
        if (r8.isEmpty() != false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fc, code lost:
        r0 = r8.get(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0109, code lost:
        if (r12.zzaeD.zzb(r0) != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010b, code lost:
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0112, code lost:
        if (r12.zzaeB.zzqa() == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0114, code lost:
        r8 = r12.zzaeB.zzt(r8);
        r9 = r8.iterator();
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0123, code lost:
        if (r9.hasNext() == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0125, code lost:
        r4 = java.lang.Math.max(r4, r9.next().longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0134, code lost:
        r4 = java.lang.Math.max(r4, r0.zzpP());
        r8.remove(r0);
        zzb("Hit sent do device AnalyticsService for delivery", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0144, code lost:
        r12.zzaeA.zzv(r0.zzpP());
        r3.add(java.lang.Long.valueOf(r0.zzpP()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0159, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x015a, code lost:
        zze("Failed to remove hit that was send for delivery", r0);
        zzoL();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0162, code lost:
        r12.zzaeA.setTransactionSuccessful();
        r12.zzaeA.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x016e, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x016f, code lost:
        zze("Failed to commit local dispatch transaction", r0);
        zzoL();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0179, code lost:
        r12.zzaeA.zzr(r8);
        r3.addAll(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0181, code lost:
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0186, code lost:
        if (r3.isEmpty() == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0188, code lost:
        r12.zzaeA.setTransactionSuccessful();
        r12.zzaeA.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0194, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0195, code lost:
        zze("Failed to commit local dispatch transaction", r0);
        zzoL();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x019f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01a0, code lost:
        zze("Failed to remove successfully uploaded hits", r0);
        zzoL();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01a8, code lost:
        r12.zzaeA.setTransactionSuccessful();
        r12.zzaeA.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b4, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b5, code lost:
        zze("Failed to commit local dispatch transaction", r0);
        zzoL();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01bf, code lost:
        r12.zzaeA.setTransactionSuccessful();
        r12.zzaeA.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01cc, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01cd, code lost:
        zze("Failed to commit local dispatch transaction", r0);
        zzoL();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01ee, code lost:
        r0 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean zzoF() {
        long j;
        boolean z = true;
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        zzbP("Dispatching a batch of local hits");
        boolean z2 = !this.zzaeD.isConnected();
        if (this.zzaeB.zzqa()) {
            z = false;
        }
        if (!z2 || !z) {
            long max = Math.max(zznT().zzpg(), zznT().zzph());
            ArrayList arrayList = new ArrayList();
            long j2 = 0;
            loop0: while (true) {
                try {
                    try {
                        this.zzaeA.beginTransaction();
                        arrayList.clear();
                        try {
                            List<zzsz> zzu = this.zzaeA.zzu(max);
                            if (!zzu.isEmpty()) {
                                zza("Hits loaded from store. count", Integer.valueOf(zzu.size()));
                                Iterator<zzsz> it = zzu.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    } else if (it.next().zzpP() == j2) {
                                        zzd("Database contains successfully uploaded hit", Long.valueOf(j2), Integer.valueOf(zzu.size()));
                                        zzoL();
                                        try {
                                            this.zzaeA.setTransactionSuccessful();
                                            this.zzaeA.endTransaction();
                                            break loop0;
                                        } catch (SQLiteException e) {
                                            zze("Failed to commit local dispatch transaction", e);
                                            zzoL();
                                        }
                                    }
                                }
                            } else {
                                break;
                            }
                        } catch (SQLiteException e2) {
                            zzd("Failed to read hits from persisted store", e2);
                            zzoL();
                            try {
                                this.zzaeA.setTransactionSuccessful();
                                this.zzaeA.endTransaction();
                            } catch (SQLiteException e3) {
                                zze("Failed to commit local dispatch transaction", e3);
                                zzoL();
                            }
                        }
                    } catch (Throwable th) {
                        this.zzaeA.setTransactionSuccessful();
                        this.zzaeA.endTransaction();
                        throw th;
                    }
                    this.zzaeA.setTransactionSuccessful();
                    this.zzaeA.endTransaction();
                    throw th;
                } catch (SQLiteException e4) {
                    zze("Failed to commit local dispatch transaction", e4);
                    zzoL();
                }
                j2 = j;
            }
        } else {
            zzbP("No network or service available. Will retry later");
        }
        return false;
    }

    public void zzoG() {
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        zzbQ("Sync dispatching local hits");
        long j = this.zzaeI;
        zzoD();
        try {
            zzoF();
            zznW().zzqh();
            zzoH();
            if (this.zzaeI == j) {
                return;
            }
            this.zzaeC.zzpZ();
        } catch (Throwable th) {
            zze("Sync local dispatch failed", th);
            zzoH();
        }
    }

    public void zzoH() {
        boolean z;
        zznQ().zzmR();
        zzob();
        if (!zzoI()) {
            this.zzaeC.unregister();
            zzoL();
        } else if (this.zzaeA.isEmpty()) {
            this.zzaeC.unregister();
            zzoL();
        } else {
            if (!zzsw.zzafS.get().booleanValue()) {
                this.zzaeC.zzpX();
                z = this.zzaeC.isConnected();
            } else {
                z = true;
            }
            if (z) {
                zzoK();
                return;
            }
            zzoL();
            zzoJ();
        }
    }

    public long zzoO() {
        if (this.zzaeE != Long.MIN_VALUE) {
            return this.zzaeE;
        }
        return zzmB().zzpK() ? zzmB().zzqB() * 1000 : zznT().zzpd();
    }

    public void zzoP() {
        zzob();
        zzmR();
        this.zzaeJ = true;
        this.zzaeD.disconnect();
        zzoH();
    }

    public long zzou() {
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        try {
            return this.zzaeA.zzou();
        } catch (SQLiteException e) {
            zze("Failed to get min/max hit times from local store", e);
            return 0L;
        }
    }

    public void zzx(long j) {
        com.google.android.gms.analytics.zzh.zzmR();
        zzob();
        if (j < 0) {
            j = 0;
        }
        this.zzaeE = j;
        zzoH();
    }
}
