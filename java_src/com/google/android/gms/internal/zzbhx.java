package com.google.android.gms.internal;

import io.fabric.sdk.android.services.b.b;
/* loaded from: classes2.dex */
public class zzbhx {
    private final String zzbEU;
    private final String zzbHv;
    private final String zzbJg;
    private final String zzbLO;
    private final boolean zzbLP;
    private final String zzbLQ;

    public zzbhx(String str, String str2, String str3, boolean z, String str4) {
        this(str, str2, str3, z, str4, "");
    }

    public zzbhx(String str, String str2, String str3, boolean z, String str4, String str5) {
        com.google.android.gms.common.internal.zzac.zzw(str);
        com.google.android.gms.common.internal.zzac.zzw(str5);
        this.zzbEU = str;
        this.zzbJg = str2;
        this.zzbLO = str3;
        this.zzbLP = z;
        this.zzbLQ = str4;
        this.zzbHv = str5;
    }

    public String getContainerId() {
        return this.zzbEU;
    }

    public String zzSD() {
        return this.zzbJg;
    }

    public String zzSE() {
        return this.zzbLO;
    }

    public String zzSF() {
        if (this.zzbLO != null) {
            String str = this.zzbLO;
            String str2 = this.zzbEU;
            return new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(b.ROLL_OVER_FILE_NAME_SEPARATOR).append(str2).toString();
        }
        return this.zzbEU;
    }

    public boolean zzSG() {
        return this.zzbLP;
    }

    public String zzSH() {
        return this.zzbLQ;
    }

    public String zzSI() {
        return this.zzbHv;
    }
}
