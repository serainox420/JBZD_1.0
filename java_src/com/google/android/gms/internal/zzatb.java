package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.f.a;
import com.google.android.gms.internal.zzauk;
import com.google.android.gms.measurement.AppMeasurement;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzatb extends zzaug {
    private final Map<String, Long> zzbql;
    private final Map<String, Integer> zzbqm;
    private long zzbqn;

    public zzatb(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbqm = new a();
        this.zzbql = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzX(long j) {
        for (String str : this.zzbql.keySet()) {
            this.zzbql.put(str, Long.valueOf(j));
        }
        if (!this.zzbql.isEmpty()) {
            this.zzbqn = j;
        }
    }

    private void zza(long j, AppMeasurement.zzf zzfVar) {
        if (zzfVar == null) {
            zzKl().zzMe().log("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            zzKl().zzMe().zzj("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            zzauk.zza(zzfVar, bundle);
            zzKa().zze(AnalyticsSQLiteHelper.EVENT_LIST_AM, "_xa", bundle);
        }
    }

    private void zza(String str, long j, AppMeasurement.zzf zzfVar) {
        if (zzfVar == null) {
            zzKl().zzMe().log("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            zzKl().zzMe().zzj("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            zzauk.zza(zzfVar, bundle);
            zzKa().zze(AnalyticsSQLiteHelper.EVENT_LIST_AM, "_xu", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzf(String str, long j) {
        zzJW();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        if (this.zzbqm.isEmpty()) {
            this.zzbqn = j;
        }
        Integer num = this.zzbqm.get(str);
        if (num != null) {
            this.zzbqm.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.zzbqm.size() >= 100) {
            zzKl().zzMa().log("Too many ads visible");
        } else {
            this.zzbqm.put(str, 1);
            this.zzbql.put(str, Long.valueOf(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzg(String str, long j) {
        zzJW();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        Integer num = this.zzbqm.get(str);
        if (num == null) {
            zzKl().zzLY().zzj("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzauk.zza zzMU = zzKe().zzMU();
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            this.zzbqm.put(str, Integer.valueOf(intValue));
            return;
        }
        this.zzbqm.remove(str);
        Long l = this.zzbql.get(str);
        if (l == null) {
            zzKl().zzLY().log("First ad unit exposure time was never set");
        } else {
            this.zzbql.remove(str);
            zza(str, j - l.longValue(), zzMU);
        }
        if (!this.zzbqm.isEmpty()) {
            return;
        }
        if (this.zzbqn == 0) {
            zzKl().zzLY().log("First ad exposure time was never set");
            return;
        }
        zza(j - this.zzbqn, zzMU);
        this.zzbqn = 0L;
    }

    public void beginAdUnitExposure(final String str) {
        int i = Build.VERSION.SDK_INT;
        if (str == null || str.length() == 0) {
            zzKl().zzLY().log("Ad unit id must be a non-empty string");
            return;
        }
        final long elapsedRealtime = zznR().elapsedRealtime();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzatb.1
            @Override // java.lang.Runnable
            public void run() {
                zzatb.this.zzf(str, elapsedRealtime);
            }
        });
    }

    public void endAdUnitExposure(final String str) {
        int i = Build.VERSION.SDK_INT;
        if (str == null || str.length() == 0) {
            zzKl().zzLY().log("Ad unit id must be a non-empty string");
            return;
        }
        final long elapsedRealtime = zznR().elapsedRealtime();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzatb.2
            @Override // java.lang.Runnable
            public void run() {
                zzatb.this.zzg(str, elapsedRealtime);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public void zzJU() {
        final long elapsedRealtime = zznR().elapsedRealtime();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzatb.3
            @Override // java.lang.Runnable
            public void run() {
                zzatb.this.zzX(elapsedRealtime);
            }
        });
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

    public void zzW(long j) {
        zzauk.zza zzMU = zzKe().zzMU();
        for (String str : this.zzbql.keySet()) {
            zza(str, j - this.zzbql.get(str).longValue(), zzMU);
        }
        if (!this.zzbql.isEmpty()) {
            zza(j - this.zzbqn, zzMU);
        }
        zzX(j);
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }
}
