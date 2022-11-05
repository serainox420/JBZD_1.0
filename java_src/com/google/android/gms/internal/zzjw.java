package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzjw {
    public List<String> zza(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList(optJSONArray.length());
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(optJSONArray.getString(i));
            }
            return Collections.unmodifiableList(arrayList);
        }
        return null;
    }

    public void zza(Context context, String str, zzpb zzpbVar, String str2, boolean z, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        String str3 = z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO;
        for (String str4 : list) {
            String replaceAll = str4.replaceAll("@gw_adlocid@", str2).replaceAll("@gw_adnetrefresh@", str3).replaceAll("@gw_qdata@", zzpbVar.zzWc.zzKK).replaceAll("@gw_sdkver@", str).replaceAll("@gw_sessid@", com.google.android.gms.ads.internal.zzw.zzcQ().getSessionId()).replaceAll("@gw_seqnum@", zzpbVar.zzRB);
            if (!TextUtils.isEmpty(zzpbVar.zzWd)) {
                replaceAll = replaceAll.replaceAll("@gw_adnetstatus@", zzpbVar.zzWd);
            }
            if (zzpbVar.zzLi != null) {
                replaceAll = replaceAll.replaceAll("@gw_adnetid@", zzpbVar.zzLi.zzKo).replaceAll("@gw_allocid@", zzpbVar.zzLi.zzKq);
            }
            com.google.android.gms.ads.internal.zzw.zzcM().zzf(context, str, replaceAll);
        }
    }
}
