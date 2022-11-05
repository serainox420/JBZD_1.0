package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import com.google.android.gms.internal.zzbjf;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
class zzbh {
    private static zzak.zza zzK(Object obj) throws JSONException {
        return zzdl.zzR(zzL(obj));
    }

    static Object zzL(Object obj) throws JSONException {
        if (obj instanceof JSONArray) {
            throw new RuntimeException("JSONArrays are not supported");
        }
        if (JSONObject.NULL.equals(obj)) {
            throw new RuntimeException("JSON nulls are not supported");
        }
        if (!(obj instanceof JSONObject)) {
            return obj;
        }
        JSONObject jSONObject = (JSONObject) obj;
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, zzL(jSONObject.get(next)));
        }
        return hashMap;
    }

    public static zzbjf.zzc zzhl(String str) throws JSONException {
        zzak.zza zzK = zzK(new JSONObject(str));
        zzbjf.zzd zzTy = zzbjf.zzc.zzTy();
        for (int i = 0; i < zzK.zzlv.length; i++) {
            zzTy.zzc(zzbjf.zza.zzTw().zzb(com.google.android.gms.internal.zzai.INSTANCE_NAME.toString(), zzK.zzlv[i]).zzb(com.google.android.gms.internal.zzai.FUNCTION.toString(), zzdl.zzhw(zzn.zzQd())).zzb(zzn.zzQe(), zzK.zzlw[i]).zzTx());
        }
        return zzTy.zzTA();
    }
}
