package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.tagmanager.DataLayer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Map;
/* loaded from: classes2.dex */
class zzd implements DataLayer.zzb {
    private final Context zzqn;

    public zzd(Context context) {
        this.zzqn = context;
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzb
    public void zzaa(Map<String, Object> map) {
        String queryParameter;
        Object obj;
        Object obj2 = map.get("gtm.url");
        Object obj3 = (obj2 != null || (obj = map.get("gtm")) == null || !(obj instanceof Map)) ? obj2 : ((Map) obj).get("url");
        if (obj3 == null || !(obj3 instanceof String) || (queryParameter = Uri.parse((String) obj3).getQueryParameter(AdTrackerConstants.REFERRER)) == null) {
            return;
        }
        zzbf.zzP(this.zzqn, queryParameter);
    }
}
