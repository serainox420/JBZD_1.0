package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* loaded from: classes2.dex */
public class zztn extends zzsa {
    protected boolean zzabJ;
    protected String zzacL;
    protected String zzacM;
    protected int zzafc;
    protected boolean zzagV;
    protected boolean zzagW;
    protected int zzage;

    public zztn(zzsc zzscVar) {
        super(zzscVar);
    }

    private static int zzck(String str) {
        String lowerCase = str.toLowerCase();
        if ("verbose".equals(lowerCase)) {
            return 0;
        }
        if ("info".equals(lowerCase)) {
            return 1;
        }
        if ("warning".equals(lowerCase)) {
            return 2;
        }
        return "error".equals(lowerCase) ? 3 : -1;
    }

    void zza(zzsy zzsyVar) {
        int zzck;
        zzbP("Loading global XML config values");
        if (zzsyVar.zzpG()) {
            String zzmY = zzsyVar.zzmY();
            this.zzacL = zzmY;
            zzb("XML config - app name", zzmY);
        }
        if (zzsyVar.zzpH()) {
            String zzmZ = zzsyVar.zzmZ();
            this.zzacM = zzmZ;
            zzb("XML config - app version", zzmZ);
        }
        if (zzsyVar.zzpI() && (zzck = zzck(zzsyVar.zzpJ())) >= 0) {
            this.zzafc = zzck;
            zza("XML config - log level", Integer.valueOf(zzck));
        }
        if (zzsyVar.zzpK()) {
            int zzpL = zzsyVar.zzpL();
            this.zzage = zzpL;
            this.zzagV = true;
            zzb("XML config - dispatch period (sec)", Integer.valueOf(zzpL));
        }
        if (zzsyVar.zzpM()) {
            boolean zzpN = zzsyVar.zzpN();
            this.zzabJ = zzpN;
            this.zzagW = true;
            zzb("XML config - dry run", Boolean.valueOf(zzpN));
        }
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
        zzqC();
    }

    public String zzmY() {
        zzob();
        return this.zzacL;
    }

    public String zzmZ() {
        zzob();
        return this.zzacM;
    }

    public boolean zzpI() {
        zzob();
        return false;
    }

    public boolean zzpK() {
        zzob();
        return this.zzagV;
    }

    public boolean zzpM() {
        zzob();
        return this.zzagW;
    }

    public boolean zzpN() {
        zzob();
        return this.zzabJ;
    }

    public int zzqB() {
        zzob();
        return this.zzage;
    }

    protected void zzqC() {
        ApplicationInfo applicationInfo;
        int i;
        zzsy zzaI;
        Context context = getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 129);
        } catch (PackageManager.NameNotFoundException e) {
            zzd("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzbS("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null || (i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource")) <= 0 || (zzaI = new zzsx(zznQ()).zzaI(i)) == null) {
            return;
        }
        zza(zzaI);
    }
}
