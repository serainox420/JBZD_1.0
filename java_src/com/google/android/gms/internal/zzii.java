package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzii implements zzid {
    final HashMap<String, zzqj<JSONObject>> zzIn = new HashMap<>();

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        zzi(map.get("request_id"), map.get("fetched_ad"));
    }

    public Future<JSONObject> zzab(String str) {
        zzqj<JSONObject> zzqjVar = new zzqj<>();
        this.zzIn.put(str, zzqjVar);
        return zzqjVar;
    }

    public void zzac(String str) {
        zzqj<JSONObject> zzqjVar = this.zzIn.get(str);
        if (zzqjVar == null) {
            zzpk.e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        if (!zzqjVar.isDone()) {
            zzqjVar.cancel(true);
        }
        this.zzIn.remove(str);
    }

    public void zzi(String str, String str2) {
        zzpk.zzbf("Received ad from the cache.");
        zzqj<JSONObject> zzqjVar = this.zzIn.get(str);
        if (zzqjVar == null) {
            zzpk.e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        try {
            zzqjVar.zzh(new JSONObject(str2));
        } catch (JSONException e) {
            zzpk.zzb("Failed constructing JSON object from value passed from javascript", e);
            zzqjVar.zzh(null);
        } finally {
            this.zzIn.remove(str);
        }
    }
}
