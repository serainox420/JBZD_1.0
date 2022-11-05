package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.f.a;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public class zzauk extends zzauh {
    protected zza zzbvm;
    private volatile AppMeasurement.zzf zzbvn;
    private AppMeasurement.zzf zzbvo;
    private long zzbvp;
    private final Map<Activity, zza> zzbvq;
    private final CopyOnWriteArrayList<AppMeasurement.zzd> zzbvr;
    private boolean zzbvs;
    private AppMeasurement.zzf zzbvt;
    private String zzbvu;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza extends AppMeasurement.zzf {
        public boolean zzbvz;

        public zza(zza zzaVar) {
            this.zzbqf = zzaVar.zzbqf;
            this.zzbqg = zzaVar.zzbqg;
            this.zzbqh = zzaVar.zzbqh;
            this.zzbvz = zzaVar.zzbvz;
        }

        public zza(String str, String str2, long j) {
            this.zzbqf = str;
            this.zzbqg = str2;
            this.zzbqh = j;
            this.zzbvz = false;
        }
    }

    public zzauk(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbvq = new a();
        this.zzbvr = new CopyOnWriteArrayList<>();
    }

    private void zza(Activity activity, zza zzaVar, final boolean z) {
        boolean z2;
        boolean z3 = true;
        AppMeasurement.zzf zzfVar = this.zzbvn != null ? this.zzbvn : (this.zzbvo == null || Math.abs(zznR().elapsedRealtime() - this.zzbvp) >= 1000) ? null : this.zzbvo;
        AppMeasurement.zzf zzfVar2 = zzfVar != null ? new AppMeasurement.zzf(zzfVar) : null;
        this.zzbvs = true;
        try {
            Iterator<AppMeasurement.zzd> it = this.zzbvr.iterator();
            while (it.hasNext()) {
                try {
                    z2 = it.next().zza(zzfVar2, zzaVar) & z3;
                } catch (Exception e) {
                    zzKl().zzLY().zzj("onScreenChangeCallback threw exception", e);
                    z2 = z3;
                }
                z3 = z2;
            }
        } catch (Exception e2) {
            zzKl().zzLY().zzj("onScreenChangeCallback loop threw exception", e2);
        } finally {
            this.zzbvs = false;
        }
        if (z3) {
            if (zzaVar.zzbqg == null) {
                zzaVar.zzbqg = zzfS(activity.getClass().getCanonicalName());
            }
            final zza zzaVar2 = new zza(zzaVar);
            this.zzbvo = this.zzbvn;
            this.zzbvp = zznR().elapsedRealtime();
            this.zzbvn = zzaVar2;
            zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauk.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z && zzauk.this.zzbvm != null) {
                        zzauk.this.zza(zzauk.this.zzbvm);
                    }
                    zzauk.this.zzbvm = zzaVar2;
                    zzauk.this.zzKd().zza(zzaVar2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zza zzaVar) {
        zzJY().zzW(zznR().elapsedRealtime());
        if (zzKj().zzaO(zzaVar.zzbvz)) {
            zzaVar.zzbvz = false;
        }
    }

    public static void zza(AppMeasurement.zzf zzfVar, Bundle bundle) {
        if (bundle == null || zzfVar == null || bundle.containsKey("_sc")) {
            return;
        }
        if (zzfVar.zzbqf != null) {
            bundle.putString("_sn", zzfVar.zzbqf);
        }
        bundle.putString("_sc", zzfVar.zzbqg);
        bundle.putLong("_si", zzfVar.zzbqh);
    }

    static String zzfS(String str) {
        String[] split = str.split("\\.");
        if (split.length == 0) {
            return str.substring(0, 36);
        }
        String str2 = split[split.length - 1];
        return str2.length() > 36 ? str2.substring(0, 36) : str2;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (bundle == null || (bundle2 = bundle.getBundle("com.google.firebase.analytics.screen_service")) == null) {
            return;
        }
        zza zzv = zzv(activity);
        zzv.zzbqh = bundle2.getLong("id");
        zzv.zzbqf = bundle2.getString("name");
        zzv.zzbqg = bundle2.getString("referrer_name");
    }

    public void onActivityDestroyed(Activity activity) {
        this.zzbvq.remove(activity);
    }

    public void onActivityPaused(Activity activity) {
        final zza zzv = zzv(activity);
        this.zzbvo = this.zzbvn;
        this.zzbvp = zznR().elapsedRealtime();
        this.zzbvn = null;
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauk.2
            @Override // java.lang.Runnable
            public void run() {
                zzauk.this.zza(zzv);
                zzauk.this.zzbvm = null;
                zzauk.this.zzKd().zza((AppMeasurement.zzf) null);
            }
        });
    }

    public void onActivityResumed(Activity activity) {
        zza(activity, zzv(activity), false);
        zzJY().zzJU();
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza zzaVar;
        if (bundle == null || (zzaVar = this.zzbvq.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzaVar.zzbqh);
        bundle2.putString("name", zzaVar.zzbqf);
        bundle2.putString("referrer_name", zzaVar.zzbqg);
        bundle.putBundle("com.google.firebase.analytics.screen_service", bundle2);
    }

    public void registerOnScreenChangeCallback(AppMeasurement.zzd zzdVar) {
        zzJW();
        if (zzdVar == null) {
            zzKl().zzMa().log("Attempting to register null OnScreenChangeCallback");
            return;
        }
        this.zzbvr.remove(zzdVar);
        this.zzbvr.add(zzdVar);
    }

    public void setCurrentScreen(Activity activity, String str, String str2) {
        int i = Build.VERSION.SDK_INT;
        if (activity == null) {
            zzKl().zzMa().log("setCurrentScreen must be called with a non-null activity");
        } else if (!zzKk().zzbc()) {
            zzKl().zzMa().log("setCurrentScreen must be called from the main thread");
        } else if (this.zzbvs) {
            zzKl().zzMa().log("Cannot call setCurrentScreen from onScreenChangeCallback");
        } else if (this.zzbvn == null) {
            zzKl().zzMa().log("setCurrentScreen cannot be called while no activity active");
        } else if (this.zzbvq.get(activity) == null) {
            zzKl().zzMa().log("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            if (str2 == null) {
                str2 = zzfS(activity.getClass().getCanonicalName());
            }
            boolean equals = this.zzbvn.zzbqg.equals(str2);
            boolean z = (this.zzbvn.zzbqf == null && str == null) || (this.zzbvn.zzbqf != null && this.zzbvn.zzbqf.equals(str));
            if (equals && z) {
                zzKl().zzMb().log("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() < 1 || str.length() > zzKn().zzKP())) {
                zzKl().zzMa().zzj("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str2 != null && (str2.length() < 1 || str2.length() > zzKn().zzKP())) {
                zzKl().zzMa().zzj("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            } else {
                zzKl().zzMe().zze("Setting current screen to name, class", str == null ? "null" : str, str2);
                zza zzaVar = new zza(str, str2, zzKh().zzNi());
                this.zzbvq.put(activity, zzaVar);
                zza(activity, zzaVar, true);
            }
        }
    }

    public void unregisterOnScreenChangeCallback(AppMeasurement.zzd zzdVar) {
        zzJW();
        this.zzbvr.remove(zzdVar);
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    public zza zzMU() {
        zzob();
        zzmR();
        return this.zzbvm;
    }

    public AppMeasurement.zzf zzMV() {
        zzJW();
        AppMeasurement.zzf zzfVar = this.zzbvn;
        if (zzfVar == null) {
            return null;
        }
        return new AppMeasurement.zzf(zzfVar);
    }

    public void zza(String str, AppMeasurement.zzf zzfVar) {
        zzmR();
        synchronized (this) {
            if (this.zzbvu == null || this.zzbvu.equals(str) || zzfVar != null) {
                this.zzbvu = str;
                this.zzbvt = zzfVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    zza zzv(Activity activity) {
        com.google.android.gms.common.internal.zzac.zzw(activity);
        zza zzaVar = this.zzbvq.get(activity);
        if (zzaVar == null) {
            zza zzaVar2 = new zza(null, zzfS(activity.getClass().getCanonicalName()), zzKh().zzNi());
            this.zzbvq.put(activity, zzaVar2);
            return zzaVar2;
        }
        return zzaVar;
    }
}
