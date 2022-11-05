package com.google.android.gms.internal;

import android.os.Bundle;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.internal.zzlx;
import com.google.firebase.a.a;
import com.intentsoftware.addapptr.ad.NativeAd;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzlz implements zzlx.zza<zzgv> {
    private final boolean zzRc;
    private final boolean zzRd;

    public zzlz(boolean z, boolean z2) {
        this.zzRc = z;
        this.zzRd = z2;
    }

    @Override // com.google.android.gms.internal.zzlx.zza
    /* renamed from: zzb */
    public zzgv zza(zzlx zzlxVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        List<zzqm<zzgu>> zza = zzlxVar.zza(jSONObject, "images", true, this.zzRc, this.zzRd);
        zzqm<zzgu> zza2 = zzlxVar.zza(jSONObject, "app_icon", true, this.zzRc);
        zzqm<zzqw> zzc = zzlxVar.zzc(jSONObject, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        zzqm<zzgs> zzd = zzlxVar.zzd(jSONObject);
        ArrayList arrayList = new ArrayList();
        for (zzqm<zzgu> zzqmVar : zza) {
            arrayList.add(zzqmVar.get());
        }
        zzqw zzb = zzlx.zzb(zzc);
        return new zzgv(jSONObject.getString(NativeAd.TITLE_TEXT_ASSET), arrayList, jSONObject.getString(com.millennialmedia.NativeAd.COMPONENT_ID_BODY), zza2.get(), jSONObject.getString("call_to_action"), jSONObject.optDouble(com.millennialmedia.NativeAd.COMPONENT_ID_RATING, -1.0d), jSONObject.optString("store"), jSONObject.optString(a.b.PRICE), zzd.get(), new Bundle(), zzb != null ? zzb.zzlG() : null, zzb != null ? zzb.getView() : null);
    }
}
