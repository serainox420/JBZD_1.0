package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.zzats;
import com.google.android.gms.vision.barcode.Barcode;
import io.fabric.sdk.android.services.common.a;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzati extends zzaug {
    static final String zzbrf = String.valueOf(com.google.android.gms.common.zze.GOOGLE_PLAY_SERVICES_VERSION_CODE / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
    private Boolean zzaeZ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzati(zzaue zzaueVar) {
        super(zzaueVar);
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzKK() {
        return zzats.zzbrO.get();
    }

    public int zzKL() {
        return 25;
    }

    public int zzKM() {
        return 40;
    }

    public int zzKN() {
        return 24;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzKO() {
        return 40;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzKP() {
        return 100;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzKQ() {
        return 256;
    }

    public int zzKR() {
        return 36;
    }

    public int zzKS() {
        return Barcode.PDF417;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzKT() {
        return 500;
    }

    public long zzKU() {
        return zzats.zzbrY.get().intValue();
    }

    public long zzKV() {
        return zzats.zzbsa.get().intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzKW() {
        return 25;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzKX() {
        return 1000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzKY() {
        return 25;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzKZ() {
        return 1000;
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

    public long zzKv() {
        return 10298L;
    }

    public long zzLA() {
        return Math.max(0L, zzats.zzbsp.get().longValue());
    }

    public int zzLB() {
        return Math.min(20, Math.max(0, zzats.zzbsq.get().intValue()));
    }

    public String zzLC() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "debug.firebase.analytics.app", "");
        } catch (ClassNotFoundException e) {
            zzKl().zzLY().zzj("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            zzKl().zzLY().zzj("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            zzKl().zzLY().zzj("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            zzKl().zzLY().zzj("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzLa() {
        return 15552000000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzLb() {
        return 15552000000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzLc() {
        return 3600000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzLd() {
        return 60000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzLe() {
        return 61000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzLf() {
        return "google_app_measurement_local.db";
    }

    public boolean zzLg() {
        return false;
    }

    public boolean zzLh() {
        Boolean zzfp = zzfp("firebase_analytics_collection_deactivated");
        return zzfp != null && zzfp.booleanValue();
    }

    public Boolean zzLi() {
        return zzfp("firebase_analytics_collection_enabled");
    }

    public long zzLj() {
        return zzats.zzbsr.get().longValue();
    }

    public long zzLk() {
        return zzats.zzbsm.get().longValue();
    }

    public long zzLl() {
        return zzats.zzbsn.get().longValue();
    }

    public long zzLm() {
        return 1000L;
    }

    public int zzLn() {
        return Math.max(0, zzats.zzbrW.get().intValue());
    }

    public int zzLo() {
        return Math.max(1, zzats.zzbrX.get().intValue());
    }

    public int zzLp() {
        return 100000;
    }

    public String zzLq() {
        return zzats.zzbse.get();
    }

    public long zzLr() {
        return zzats.zzbrR.get().longValue();
    }

    public long zzLs() {
        return Math.max(0L, zzats.zzbsf.get().longValue());
    }

    public long zzLt() {
        return Math.max(0L, zzats.zzbsh.get().longValue());
    }

    public long zzLu() {
        return Math.max(0L, zzats.zzbsi.get().longValue());
    }

    public long zzLv() {
        return Math.max(0L, zzats.zzbsj.get().longValue());
    }

    public long zzLw() {
        return Math.max(0L, zzats.zzbsk.get().longValue());
    }

    public long zzLx() {
        return Math.max(0L, zzats.zzbsl.get().longValue());
    }

    public long zzLy() {
        return zzats.zzbsg.get().longValue();
    }

    public long zzLz() {
        return Math.max(0L, zzats.zzbso.get().longValue());
    }

    public String zzP(String str, String str2) {
        Uri.Builder builder = new Uri.Builder();
        Uri.Builder encodedAuthority = builder.scheme(zzats.zzbrS.get()).encodedAuthority(zzats.zzbrT.get());
        String valueOf = String.valueOf(str);
        encodedAuthority.path(valueOf.length() != 0 ? "config/app/".concat(valueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", str2).appendQueryParameter("platform", a.ANDROID_CLIENT_TYPE).appendQueryParameter("gmp_version", String.valueOf(10298L));
        return builder.build().toString();
    }

    public long zza(String str, zzats.zza<Long> zzaVar) {
        if (str == null) {
            return zzaVar.get().longValue();
        }
        String zzZ = zzKi().zzZ(str, zzaVar.getKey());
        if (TextUtils.isEmpty(zzZ)) {
            return zzaVar.get().longValue();
        }
        try {
            return zzaVar.get(Long.valueOf(Long.valueOf(zzZ).longValue())).longValue();
        } catch (NumberFormatException e) {
            return zzaVar.get().longValue();
        }
    }

    public int zzb(String str, zzats.zza<Integer> zzaVar) {
        if (str == null) {
            return zzaVar.get().intValue();
        }
        String zzZ = zzKi().zzZ(str, zzaVar.getKey());
        if (TextUtils.isEmpty(zzZ)) {
            return zzaVar.get().intValue();
        }
        try {
            return zzaVar.get(Integer.valueOf(Integer.valueOf(zzZ).intValue())).intValue();
        } catch (NumberFormatException e) {
            return zzaVar.get().intValue();
        }
    }

    public int zzfj(String str) {
        return Math.max(0, Math.min(1000000, zzb(str, zzats.zzbrZ)));
    }

    public int zzfk(String str) {
        return zzb(str, zzats.zzbsb);
    }

    public int zzfl(String str) {
        return zzb(str, zzats.zzbsc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzfm(String str) {
        return zza(str, zzats.zzbrP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzfn(String str) {
        return zzb(str, zzats.zzbss);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzfo(String str) {
        return Math.max(0, Math.min(2000, zzb(str, zzats.zzbst)));
    }

    Boolean zzfp(String str) {
        Boolean bool = null;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        try {
            if (getContext().getPackageManager() == null) {
                zzKl().zzLY().log("Failed to load metadata: PackageManager is null");
            } else {
                ApplicationInfo applicationInfo = zzadg.zzbi(getContext()).getApplicationInfo(getContext().getPackageName(), 128);
                if (applicationInfo == null) {
                    zzKl().zzLY().log("Failed to load metadata: ApplicationInfo is null");
                } else if (applicationInfo.metaData == null) {
                    zzKl().zzLY().log("Failed to load metadata: Metadata bundle is null");
                } else if (applicationInfo.metaData.containsKey(str)) {
                    bool = Boolean.valueOf(applicationInfo.metaData.getBoolean(str));
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            zzKl().zzLY().zzj("Failed to load metadata: Package name not found", e);
        }
        return bool;
    }

    public int zzfq(String str) {
        return zzb(str, zzats.zzbrU);
    }

    public int zzfr(String str) {
        return Math.max(0, zzb(str, zzats.zzbrV));
    }

    public int zzfs(String str) {
        return Math.max(0, Math.min(1000000, zzb(str, zzats.zzbsd)));
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    public boolean zzoW() {
        if (this.zzaeZ == null) {
            synchronized (this) {
                if (this.zzaeZ == null) {
                    ApplicationInfo applicationInfo = getContext().getApplicationInfo();
                    String zzzr = com.google.android.gms.common.util.zzu.zzzr();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.zzaeZ = Boolean.valueOf(str != null && str.equals(zzzr));
                    }
                    if (this.zzaeZ == null) {
                        this.zzaeZ = Boolean.TRUE;
                        zzKl().zzLY().log("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzaeZ.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzpq() {
        return zzats.zzbsu.get().longValue();
    }

    public String zzpv() {
        return "google_app_measurement.db";
    }

    public long zzpz() {
        return Math.max(0L, zzats.zzbrQ.get().longValue());
    }

    public boolean zzwR() {
        return zzaba.zzwR();
    }
}
