package com.google.android.gms.internal;

import android.os.Binder;
import android.text.TextUtils;
import com.google.android.gms.internal.zzatt;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2.dex */
public class zzauf extends zzatt.zza {
    private final zzaue zzbqc;
    private Boolean zzbuJ;
    private String zzbuK;

    public zzauf(zzaue zzaueVar) {
        this(zzaueVar, null);
    }

    public zzauf(zzaue zzaueVar, String str) {
        com.google.android.gms.common.internal.zzac.zzw(zzaueVar);
        this.zzbqc = zzaueVar;
        this.zzbuK = str;
    }

    private void zzb(zzatd zzatdVar, boolean z) {
        com.google.android.gms.common.internal.zzac.zzw(zzatdVar);
        zzm(zzatdVar.packageName, z);
        this.zzbqc.zzKh().zzga(zzatdVar.zzbqL);
    }

    private void zzm(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            this.zzbqc.zzKl().zzLY().log("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        try {
            zzn(str, z);
        } catch (SecurityException e) {
            this.zzbqc.zzKl().zzLY().zzj("Measurement Service called with invalid calling package. appId", zzatx.zzfE(str));
            throw e;
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public List<zzauq> zza(final zzatd zzatdVar, boolean z) {
        zzb(zzatdVar, false);
        try {
            List<zzaus> list = (List) this.zzbqc.zzKk().zzd(new Callable<List<zzaus>>() { // from class: com.google.android.gms.internal.zzauf.15
                @Override // java.util.concurrent.Callable
                /* renamed from: zzMN */
                public List<zzaus> call() throws Exception {
                    zzauf.this.zzbqc.zzML();
                    return zzauf.this.zzbqc.zzKg().zzft(zzatdVar.packageName);
                }
            }).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzaus zzausVar : list) {
                if (z || !zzaut.zzgd(zzausVar.mName)) {
                    arrayList.add(new zzauq(zzausVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzbqc.zzKl().zzLY().zze("Failed to get user attributes. appId", zzatx.zzfE(zzatdVar.packageName), e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public List<zzatg> zza(final String str, final String str2, final zzatd zzatdVar) {
        zzb(zzatdVar, false);
        try {
            return (List) this.zzbqc.zzKk().zzd(new Callable<List<zzatg>>() { // from class: com.google.android.gms.internal.zzauf.8
                @Override // java.util.concurrent.Callable
                /* renamed from: zzMN */
                public List<zzatg> call() throws Exception {
                    zzauf.this.zzbqc.zzML();
                    return zzauf.this.zzbqc.zzKg().zzl(zzatdVar.packageName, str, str2);
                }
            }).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zzbqc.zzKl().zzLY().zzj("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public List<zzauq> zza(final String str, final String str2, final String str3, boolean z) {
        zzm(str, true);
        try {
            List<zzaus> list = (List) this.zzbqc.zzKk().zzd(new Callable<List<zzaus>>() { // from class: com.google.android.gms.internal.zzauf.7
                @Override // java.util.concurrent.Callable
                /* renamed from: zzMN */
                public List<zzaus> call() throws Exception {
                    zzauf.this.zzbqc.zzML();
                    return zzauf.this.zzbqc.zzKg().zzk(str, str2, str3);
                }
            }).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzaus zzausVar : list) {
                if (z || !zzaut.zzgd(zzausVar.mName)) {
                    arrayList.add(new zzauq(zzausVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzbqc.zzKl().zzLY().zze("Failed to get user attributes. appId", zzatx.zzfE(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public List<zzauq> zza(final String str, final String str2, boolean z, final zzatd zzatdVar) {
        zzb(zzatdVar, false);
        try {
            List<zzaus> list = (List) this.zzbqc.zzKk().zzd(new Callable<List<zzaus>>() { // from class: com.google.android.gms.internal.zzauf.6
                @Override // java.util.concurrent.Callable
                /* renamed from: zzMN */
                public List<zzaus> call() throws Exception {
                    zzauf.this.zzbqc.zzML();
                    return zzauf.this.zzbqc.zzKg().zzk(zzatdVar.packageName, str, str2);
                }
            }).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzaus zzausVar : list) {
                if (z || !zzaut.zzgd(zzausVar.mName)) {
                    arrayList.add(new zzauq(zzausVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzbqc.zzKl().zzLY().zze("Failed to get user attributes. appId", zzatx.zzfE(zzatdVar.packageName), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public void zza(final long j, final String str, final String str2, final String str3) {
        this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.17
            @Override // java.lang.Runnable
            public void run() {
                if (str2 == null) {
                    zzauf.this.zzbqc.zzKe().zza(str3, (AppMeasurement.zzf) null);
                    return;
                }
                AppMeasurement.zzf zzfVar = new AppMeasurement.zzf();
                zzfVar.zzbqf = str;
                zzfVar.zzbqg = str2;
                zzfVar.zzbqh = j;
                zzauf.this.zzbqc.zzKe().zza(str3, zzfVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzatt
    public void zza(final zzatd zzatdVar) {
        zzb(zzatdVar, false);
        this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.16
            @Override // java.lang.Runnable
            public void run() {
                zzauf.this.zzbqc.zzML();
                zzauf.this.zzbqc.zze(zzatdVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzatt
    public void zza(zzatg zzatgVar, final zzatd zzatdVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar);
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar.zzbqW);
        zzb(zzatdVar, false);
        final zzatg zzatgVar2 = new zzatg(zzatgVar);
        zzatgVar2.packageName = zzatdVar.packageName;
        if (zzatgVar.zzbqW.getValue() == null) {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.2
                @Override // java.lang.Runnable
                public void run() {
                    zzauf.this.zzbqc.zzML();
                    zzauf.this.zzbqc.zzc(zzatgVar2, zzatdVar);
                }
            });
        } else {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.3
                @Override // java.lang.Runnable
                public void run() {
                    zzauf.this.zzbqc.zzML();
                    zzauf.this.zzbqc.zzb(zzatgVar2, zzatdVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public void zza(final zzatq zzatqVar, final zzatd zzatdVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatqVar);
        zzb(zzatdVar, false);
        this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.10
            @Override // java.lang.Runnable
            public void run() {
                zzauf.this.zzbqc.zzML();
                zzauf.this.zzbqc.zzb(zzatqVar, zzatdVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzatt
    public void zza(final zzatq zzatqVar, final String str, String str2) {
        com.google.android.gms.common.internal.zzac.zzw(zzatqVar);
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzm(str, true);
        this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.11
            @Override // java.lang.Runnable
            public void run() {
                zzauf.this.zzbqc.zzML();
                zzauf.this.zzbqc.zzb(zzatqVar, str);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzatt
    public void zza(final zzauq zzauqVar, final zzatd zzatdVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzauqVar);
        zzb(zzatdVar, false);
        if (zzauqVar.getValue() == null) {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.13
                @Override // java.lang.Runnable
                public void run() {
                    zzauf.this.zzbqc.zzML();
                    zzauf.this.zzbqc.zzc(zzauqVar, zzatdVar);
                }
            });
        } else {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.14
                @Override // java.lang.Runnable
                public void run() {
                    zzauf.this.zzbqc.zzML();
                    zzauf.this.zzbqc.zzb(zzauqVar, zzatdVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public byte[] zza(final zzatq zzatqVar, final String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzw(zzatqVar);
        zzm(str, true);
        this.zzbqc.zzKl().zzMd().zzj("Log and bundle. event", zzatqVar.name);
        long nanoTime = this.zzbqc.zznR().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zzbqc.zzKk().zze(new Callable<byte[]>() { // from class: com.google.android.gms.internal.zzauf.12
                @Override // java.util.concurrent.Callable
                /* renamed from: zzMO */
                public byte[] call() throws Exception {
                    zzauf.this.zzbqc.zzML();
                    return zzauf.this.zzbqc.zza(zzatqVar, str);
                }
            }).get();
            if (bArr == null) {
                this.zzbqc.zzKl().zzLY().zzj("Log and bundle returned null. appId", zzatx.zzfE(str));
                bArr = new byte[0];
            }
            this.zzbqc.zzKl().zzMd().zzd("Log and bundle processed. event, size, time_ms", zzatqVar.name, Integer.valueOf(bArr.length), Long.valueOf((this.zzbqc.zznR().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            this.zzbqc.zzKl().zzLY().zzd("Failed to log and bundle. appId, event, error", zzatx.zzfE(str), zzatqVar.name, e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public void zzb(final zzatd zzatdVar) {
        zzb(zzatdVar, false);
        this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.1
            @Override // java.lang.Runnable
            public void run() {
                zzauf.this.zzbqc.zzML();
                zzauf.this.zzbqc.zzd(zzatdVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzatt
    public void zzb(zzatg zzatgVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar);
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar.zzbqW);
        zzm(zzatgVar.packageName, true);
        final zzatg zzatgVar2 = new zzatg(zzatgVar);
        if (zzatgVar.zzbqW.getValue() == null) {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.4
                @Override // java.lang.Runnable
                public void run() {
                    zzauf.this.zzbqc.zzML();
                    zzauf.this.zzbqc.zze(zzatgVar2);
                }
            });
        } else {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauf.5
                @Override // java.lang.Runnable
                public void run() {
                    zzauf.this.zzbqc.zzML();
                    zzauf.this.zzbqc.zzd(zzatgVar2);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzatt
    public String zzc(zzatd zzatdVar) {
        zzb(zzatdVar, false);
        return this.zzbqc.zzfP(zzatdVar.packageName);
    }

    @Override // com.google.android.gms.internal.zzatt
    public List<zzatg> zzn(final String str, final String str2, final String str3) {
        zzm(str, true);
        try {
            return (List) this.zzbqc.zzKk().zzd(new Callable<List<zzatg>>() { // from class: com.google.android.gms.internal.zzauf.9
                @Override // java.util.concurrent.Callable
                /* renamed from: zzMN */
                public List<zzatg> call() throws Exception {
                    zzauf.this.zzbqc.zzML();
                    return zzauf.this.zzbqc.zzKg().zzl(str, str2, str3);
                }
            }).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zzbqc.zzKl().zzLY().zzj("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    protected void zzn(String str, boolean z) throws SecurityException {
        if (z) {
            if (this.zzbuJ == null) {
                this.zzbuJ = Boolean.valueOf("com.google.android.gms".equals(this.zzbuK) || com.google.android.gms.common.util.zzy.zzf(this.zzbqc.getContext(), Binder.getCallingUid()) || com.google.android.gms.common.zzh.zzaN(this.zzbqc.getContext()).zza(this.zzbqc.getContext().getPackageManager(), Binder.getCallingUid()));
            }
            if (this.zzbuJ.booleanValue()) {
                return;
            }
        }
        if (this.zzbuK == null && com.google.android.gms.common.zzg.zzc(this.zzbqc.getContext(), Binder.getCallingUid(), str)) {
            this.zzbuK = str;
        }
        if (!str.equals(this.zzbuK)) {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }
}
