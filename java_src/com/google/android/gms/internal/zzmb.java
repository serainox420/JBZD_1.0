package com.google.android.gms.internal;

import android.support.v4.f.k;
import android.view.View;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.internal.zzlx;
import com.madsdk.AdView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzmb implements zzlx.zza<zzgx> {
    private final boolean zzRc;

    public zzmb(boolean z) {
        this.zzRc = z;
    }

    private void zza(zzlx zzlxVar, JSONObject jSONObject, k<String, Future<zzgu>> kVar) throws JSONException {
        kVar.put(jSONObject.getString("name"), zzlxVar.zza(jSONObject, "image_value", this.zzRc));
    }

    private void zza(JSONObject jSONObject, k<String, String> kVar) throws JSONException {
        kVar.put(jSONObject.getString("name"), jSONObject.getString("string_value"));
    }

    private <K, V> k<K, V> zzc(k<K, Future<V>> kVar) throws InterruptedException, ExecutionException {
        k<K, V> kVar2 = new k<>();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < kVar.size()) {
                kVar2.put(kVar.b(i2), kVar.c(i2).get());
                i = i2 + 1;
            } else {
                return kVar2;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlx.zza
    /* renamed from: zzd */
    public zzgx zza(zzlx zzlxVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        View view = null;
        k<String, Future<zzgu>> kVar = new k<>();
        k<String, String> kVar2 = new k<>();
        zzqm<zzgs> zzd = zzlxVar.zzd(jSONObject);
        zzqm<zzqw> zzc = zzlxVar.zzc(jSONObject, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        JSONArray jSONArray = jSONObject.getJSONArray("custom_assets");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            String string = jSONObject2.getString("type");
            if ("string".equals(string)) {
                zza(jSONObject2, kVar2);
            } else if (AdView.DEFAULT_IMAGE_NAME.equals(string)) {
                zza(zzlxVar, jSONObject2, kVar);
            } else {
                String valueOf = String.valueOf(string);
                zzpk.zzbh(valueOf.length() != 0 ? "Unknown custom asset type: ".concat(valueOf) : new String("Unknown custom asset type: "));
            }
        }
        zzqw zzb = zzlx.zzb(zzc);
        String string2 = jSONObject.getString("custom_template_id");
        k zzc2 = zzc(kVar);
        zzgs zzgsVar = zzd.get();
        zzrb zzlG = zzb != null ? zzb.zzlG() : null;
        if (zzb != null) {
            view = zzb.getView();
        }
        return new zzgx(string2, zzc2, kVar2, zzgsVar, zzlG, view);
    }
}
