package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.internal.zzlx;
import com.intentsoftware.addapptr.ad.NativeAd;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzma implements zzlx.zza<zzgw> {
    private final boolean zzRc;
    private final boolean zzRd;

    public zzma(boolean z, boolean z2) {
        this.zzRc = z;
        this.zzRd = z2;
    }

    @Override // com.google.android.gms.internal.zzlx.zza
    /* renamed from: zzc */
    public zzgw zza(zzlx zzlxVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        View view = null;
        List<zzqm<zzgu>> zza = zzlxVar.zza(jSONObject, "images", true, this.zzRc, this.zzRd);
        zzqm<zzgu> zza2 = zzlxVar.zza(jSONObject, "secondary_image", false, this.zzRc);
        zzqm<zzgs> zzd = zzlxVar.zzd(jSONObject);
        zzqm<zzqw> zzc = zzlxVar.zzc(jSONObject, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        ArrayList arrayList = new ArrayList();
        for (zzqm<zzgu> zzqmVar : zza) {
            arrayList.add(zzqmVar.get());
        }
        zzqw zzb = zzlx.zzb(zzc);
        String string = jSONObject.getString(NativeAd.TITLE_TEXT_ASSET);
        String string2 = jSONObject.getString(com.millennialmedia.NativeAd.COMPONENT_ID_BODY);
        zzgu zzguVar = zza2.get();
        String string3 = jSONObject.getString("call_to_action");
        String string4 = jSONObject.getString(NativeAd.ADVERTISER_TEXT_ASSET);
        zzgs zzgsVar = zzd.get();
        Bundle bundle = new Bundle();
        zzrb zzlG = zzb != null ? zzb.zzlG() : null;
        if (zzb != null) {
            view = zzb.getView();
        }
        return new zzgw(string, arrayList, string2, zzguVar, string3, string4, zzgsVar, bundle, zzlG, view);
    }
}
