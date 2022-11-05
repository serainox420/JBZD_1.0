package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.zznm;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzna {
    public String zzRA;
    public Bundle zzRF;
    public Bundle zzTf;
    public zznm.zza zzTg;
    public String zzTh;
    public zzmk zzTi;
    public zzni zzTj;
    public AdvertisingIdClient.Info zzpR;
    public Location zzzb;
    public JSONObject zzTk = new JSONObject();
    public List<String> zzRM = new ArrayList();

    public zzna zza(zzni zzniVar) {
        this.zzTj = zzniVar;
        return this;
    }

    public zzna zza(zznm.zza zzaVar) {
        this.zzTg = zzaVar;
        return this;
    }

    public zzna zzaK(String str) {
        this.zzRA = str;
        return this;
    }

    public zzna zzaL(String str) {
        this.zzTh = str;
        return this;
    }

    public zzna zzb(AdvertisingIdClient.Info info) {
        this.zzpR = info;
        return this;
    }

    public zzna zzc(Location location) {
        this.zzzb = location;
        return this;
    }

    public zzna zze(Bundle bundle) {
        this.zzTf = bundle;
        return this;
    }

    public zzna zzf(Bundle bundle) {
        this.zzRF = bundle;
        return this;
    }

    public zzna zzf(zzmk zzmkVar) {
        this.zzTi = zzmkVar;
        return this;
    }

    public zzna zzg(JSONObject jSONObject) {
        this.zzTk = jSONObject;
        return this;
    }

    public zzna zzk(List<String> list) {
        if (list == null) {
            this.zzRM.clear();
        }
        this.zzRM = list;
        return this;
    }
}
