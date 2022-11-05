package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class zzatu extends zzauh {
    private String mAppId;
    private String zzVX;
    private String zzacL;
    private String zzacM;
    private long zzbqA;
    private String zzbqw;
    private int zzbsv;
    private long zzbsw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatu(zzaue zzaueVar) {
        super(zzaueVar);
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getGmpAppId() {
        zzob();
        return this.zzVX;
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

    String zzKu() {
        zzob();
        return this.zzbqw;
    }

    long zzKv() {
        return zzKn().zzKv();
    }

    long zzKw() {
        zzob();
        zzmR();
        if (this.zzbsw == 0) {
            this.zzbsw = this.zzbqc.zzKh().zzL(getContext(), getContext().getPackageName());
        }
        return this.zzbsw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzLX() {
        zzob();
        return this.zzbsv;
    }

    protected void zzbw(Status status) {
        if (status == null) {
            zzKl().zzLY().log("GoogleService failed to initialize (no status)");
        } else {
            zzKl().zzLY().zze("GoogleService failed to initialize, status", Integer.valueOf(status.getStatusCode()), status.getStatusMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatd zzfD(String str) {
        zzmR();
        return new zzatd(zzke(), getGmpAppId(), zzmZ(), zzLX(), zzKu(), zzKv(), zzKw(), str, this.zzbqc.isEnabled(), !zzKm().zzbtq, zzKm().zzKq(), zzuW());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzke() {
        zzob();
        return this.mAppId;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
        boolean z;
        String str = "unknown";
        String str2 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        int i = Integer.MIN_VALUE;
        String str3 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        String packageName = getContext().getPackageName();
        PackageManager packageManager = getContext().getPackageManager();
        if (packageManager == null) {
            zzKl().zzLY().zzj("PackageManager is null, app identity information might be inaccurate. appId", zzatx.zzfE(packageName));
        } else {
            try {
                str = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException e) {
                zzKl().zzLY().zzj("Error retrieving app installer package name. appId", zzatx.zzfE(packageName));
            }
            if (str == null) {
                str = "manual_install";
            } else if ("com.android.vending".equals(str)) {
                str = "";
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(getContext().getPackageName(), 0);
                if (packageInfo != null) {
                    CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                    if (!TextUtils.isEmpty(applicationLabel)) {
                        str3 = applicationLabel.toString();
                    }
                    str2 = packageInfo.versionName;
                    i = packageInfo.versionCode;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                zzKl().zzLY().zze("Error retrieving package info. appId, appName", zzatx.zzfE(packageName), str3);
            }
        }
        this.mAppId = packageName;
        this.zzbqw = str;
        this.zzacM = str2;
        this.zzbsv = i;
        this.zzacL = str3;
        this.zzbsw = 0L;
        zzKn().zzLg();
        Status zzaQ = zzaba.zzaQ(getContext());
        boolean z2 = zzaQ != null && zzaQ.isSuccess();
        if (!z2) {
            zzbw(zzaQ);
        }
        if (z2) {
            Boolean zzLi = zzKn().zzLi();
            if (zzKn().zzLh()) {
                zzKl().zzMc().log("Collection disabled with firebase_analytics_collection_deactivated=1");
                z = false;
            } else if (zzLi != null && !zzLi.booleanValue()) {
                zzKl().zzMc().log("Collection disabled with firebase_analytics_collection_enabled=0");
                z = false;
            } else if (zzLi != null || !zzKn().zzwR()) {
                zzKl().zzMe().log("Collection enabled");
                z = true;
            } else {
                zzKl().zzMc().log("Collection disabled with google_app_measurement_enable=0");
                z = false;
            }
        } else {
            z = false;
        }
        this.zzVX = "";
        this.zzbqA = 0L;
        zzKn().zzLg();
        try {
            String zzwQ = zzaba.zzwQ();
            if (TextUtils.isEmpty(zzwQ)) {
                zzwQ = "";
            }
            this.zzVX = zzwQ;
            if (!z) {
                return;
            }
            zzKl().zzMe().zze("App package, google app id", this.mAppId, this.zzVX);
        } catch (IllegalStateException e3) {
            zzKl().zzLY().zze("getGoogleAppId or isMeasurementEnabled failed with exception. appId", zzatx.zzfE(packageName), e3);
        }
    }

    String zzmZ() {
        zzob();
        return this.zzacM;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    long zzuW() {
        zzob();
        return 0L;
    }
}
