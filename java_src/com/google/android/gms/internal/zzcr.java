package com.google.android.gms.internal;

import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zzcr {
    private final String zzwa;
    private final JSONObject zzwb;
    private final String zzwc;
    private final String zzwd;
    private final boolean zzwe;
    private final boolean zzwf;

    public zzcr(String str, zzqh zzqhVar, String str2, JSONObject jSONObject, boolean z, boolean z2) {
        this.zzwd = zzqhVar.zzba;
        this.zzwb = jSONObject;
        this.zzwc = str;
        this.zzwa = str2;
        this.zzwe = z;
        this.zzwf = z2;
    }

    public String zzdA() {
        return this.zzwd;
    }

    public JSONObject zzdB() {
        return this.zzwb;
    }

    public String zzdC() {
        return this.zzwc;
    }

    public boolean zzdD() {
        return this.zzwe;
    }

    public boolean zzdE() {
        return this.zzwf;
    }

    public String zzdz() {
        return this.zzwa;
    }
}
