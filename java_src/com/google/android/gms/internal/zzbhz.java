package com.google.android.gms.internal;

import com.facebook.internal.NativeProtocol;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.internal.zzbio;
import com.google.android.gms.internal.zzbip;
import com.google.android.gms.internal.zzbiq;
import com.google.android.gms.internal.zzbir;
import com.google.android.gms.internal.zzbis;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class zzbhz {
    public static zzbcp zzX(Object obj) throws JSONException {
        JSONArray jSONArray;
        String str;
        JSONArray jSONArray2;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            str = jSONObject.getString("name");
            jSONArray2 = jSONObject.getJSONArray(NativeProtocol.WEB_DIALOG_PARAMS);
            jSONArray = jSONObject.getJSONArray("instructions");
        } else if (!(obj instanceof JSONArray)) {
            throw new IllegalArgumentException("invalid JSON in runtime section");
        } else {
            JSONArray jSONArray3 = (JSONArray) obj;
            com.google.android.gms.common.internal.zzac.zzax(jSONArray3.length() >= 3);
            String string = jSONArray3.getString(1);
            JSONArray jSONArray4 = jSONArray3.getJSONArray(2);
            JSONArray jSONArray5 = new JSONArray();
            for (int i = 1; i < jSONArray4.length(); i++) {
                com.google.android.gms.common.internal.zzac.zzax(jSONArray4.get(i) instanceof String);
                jSONArray5.put(jSONArray4.get(i));
            }
            JSONArray jSONArray6 = new JSONArray();
            for (int i2 = 3; i2 < jSONArray3.length(); i2++) {
                jSONArray6.put(jSONArray3.get(i2));
            }
            jSONArray = jSONArray6;
            str = string;
            jSONArray2 = jSONArray5;
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
            arrayList.add(jSONArray2.getString(i3));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
            JSONArray jSONArray7 = jSONArray.getJSONArray(i4);
            if (jSONArray7.length() != 0) {
                arrayList2.add(zzd(jSONArray7));
            }
        }
        return new zzbcp(null, str, arrayList, arrayList2);
    }

    static zzbiq zza(JSONArray jSONArray, List<zzbip> list, List<zzbip> list2) throws zzbhy, JSONException {
        zzbiq.zza zzaVar = new zzbiq.zza();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONArray jSONArray2 = jSONArray.getJSONArray(i);
            if (jSONArray2.getString(0).equals("if")) {
                for (int i2 = 1; i2 < jSONArray2.length(); i2++) {
                    zzaVar.zzd(list2.get(jSONArray2.getInt(i2)));
                }
            } else if (jSONArray2.getString(0).equals("unless")) {
                for (int i3 = 1; i3 < jSONArray2.length(); i3++) {
                    zzaVar.zze(list2.get(jSONArray2.getInt(i3)));
                }
            } else if (jSONArray2.getString(0).equals(ProductAction.ACTION_ADD)) {
                for (int i4 = 1; i4 < jSONArray2.length(); i4++) {
                    zzaVar.zzf(list.get(jSONArray2.getInt(i4)));
                }
            } else if (jSONArray2.getString(0).equals("block")) {
                for (int i5 = 1; i5 < jSONArray2.length(); i5++) {
                    zzaVar.zzg(list.get(jSONArray2.getInt(i5)));
                }
            } else {
                String valueOf = String.valueOf(jSONArray2.getString(0));
                zzhS(valueOf.length() != 0 ? "Unknown Rule property: ".concat(valueOf) : new String("Unknown Rule property: "));
            }
        }
        return zzaVar.zzTc();
    }

    static zzbip zzb(JSONObject jSONObject, List<String> list) throws zzbhy, JSONException {
        zzbip.zza zzaVar = new zzbip.zza();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            zzbis zzTg = zzb(jSONObject.get(next), list).zzTg();
            if ("push_after_evaluate".equals(next)) {
                zzaVar.zzb(zzTg);
            } else {
                zzaVar.zza(next, zzTg);
            }
        }
        return zzaVar.zzSX();
    }

    static zzbis.zza zzb(Object obj, List<String> list) throws zzbhy, JSONException {
        if (!(obj instanceof JSONArray)) {
            if (obj instanceof Boolean) {
                return new zzbis.zza(8, obj);
            }
            if (obj instanceof Integer) {
                return new zzbis.zza(6, obj);
            }
            if (obj instanceof String) {
                return new zzbis.zza(1, obj);
            }
            String valueOf = String.valueOf(obj);
            zzhS(new StringBuilder(String.valueOf(valueOf).length() + 20).append("Invalid value type: ").append(valueOf).toString());
            return null;
        }
        JSONArray jSONArray = (JSONArray) obj;
        String string = jSONArray.getString(0);
        if (string.equals("escape")) {
            zzbis.zza zzb = zzb(jSONArray.get(1), list);
            for (int i = 2; i < jSONArray.length(); i++) {
                zzb.zznK(jSONArray.getInt(i));
            }
            return zzb;
        } else if (string.equals("list")) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 1; i2 < jSONArray.length(); i2++) {
                arrayList.add(zzb(jSONArray.get(i2), list).zzTg());
            }
            zzbis.zza zzaVar = new zzbis.zza(2, arrayList);
            zzaVar.zzaV(true);
            return zzaVar;
        } else if (string.equals("map")) {
            HashMap hashMap = new HashMap();
            for (int i3 = 1; i3 < jSONArray.length(); i3 += 2) {
                hashMap.put(zzb(jSONArray.get(i3), list).zzTg(), zzb(jSONArray.get(i3 + 1), list).zzTg());
            }
            zzbis.zza zzaVar2 = new zzbis.zza(3, hashMap);
            zzaVar2.zzaV(true);
            return zzaVar2;
        } else if (string.equals("macro")) {
            zzbis.zza zzaVar3 = new zzbis.zza(4, list.get(jSONArray.getInt(1)));
            zzaVar3.zzaV(true);
            return zzaVar3;
        } else if (!string.equals("template")) {
            String valueOf2 = String.valueOf(obj);
            zzhS(new StringBuilder(String.valueOf(valueOf2).length() + 20).append("Invalid value type: ").append(valueOf2).toString());
            return null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (int i4 = 1; i4 < jSONArray.length(); i4++) {
                arrayList2.add(zzb(jSONArray.get(i4), list).zzTg());
            }
            zzbis.zza zzaVar4 = new zzbis.zza(7, arrayList2);
            zzaVar4.zzaV(true);
            return zzaVar4;
        }
    }

    static List<zzbip> zzb(JSONArray jSONArray, List<String> list) throws JSONException, zzbhy {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(zzb(jSONArray.getJSONObject(i), list));
        }
        return arrayList;
    }

    static List<String> zzc(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getJSONObject(i).getString("instance_name"));
        }
        return arrayList;
    }

    private static zzbja zzd(JSONArray jSONArray) throws JSONException {
        com.google.android.gms.common.internal.zzac.zzax(jSONArray.length() > 0);
        String string = jSONArray.getString(0);
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                JSONArray jSONArray2 = (JSONArray) obj;
                if (jSONArray2.length() != 0) {
                    arrayList.add(zzd(jSONArray2));
                }
            } else if (obj == JSONObject.NULL) {
                arrayList.add(zzbix.zzbMR);
            } else {
                arrayList.add(zzbjc.zzZ(obj));
            }
        }
        return new zzbja(string, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbio zzhQ(String str) throws JSONException, zzbhy {
        Object obj = new JSONObject(str).get("resource");
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            zzbio.zza zzaVar = new zzbio.zza();
            zzaVar.zzia(jSONObject.optString("version"));
            List<String> zzc = zzc(jSONObject.getJSONArray("macros"));
            List<zzbip> zzb = zzb(jSONObject.getJSONArray("tags"), zzc);
            List<zzbip> zzb2 = zzb(jSONObject.getJSONArray("predicates"), zzc);
            for (zzbip zzbipVar : zzb(jSONObject.getJSONArray("macros"), zzc)) {
                zzaVar.zzc(zzbipVar);
            }
            JSONArray jSONArray = jSONObject.getJSONArray("rules");
            for (int i = 0; i < jSONArray.length(); i++) {
                zzaVar.zza(zza(jSONArray.getJSONArray(i), zzb, zzb2));
            }
            return zzaVar.zzSV();
        }
        throw new zzbhy("Resource map not found");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbir zzhR(String str) throws JSONException, zzbhy {
        JSONObject jSONObject = new JSONObject(str);
        JSONArray optJSONArray = jSONObject.optJSONArray("runtime");
        if (optJSONArray == null) {
            return null;
        }
        zzbir.zza zzaVar = new zzbir.zza();
        Object obj = jSONObject.get("resource");
        if (!(obj instanceof JSONObject)) {
            throw new zzbhy("Resource map not found");
        }
        zzaVar.zzib(((JSONObject) obj).optString("version"));
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= optJSONArray.length()) {
                return zzaVar.zzTe();
            }
            Object obj2 = optJSONArray.get(i2);
            if (!(obj2 instanceof JSONArray) || ((JSONArray) obj2).length() != 0) {
                zzaVar.zza(zzX(obj2));
            }
            i = i2 + 1;
        }
    }

    private static void zzhS(String str) throws zzbhy {
        zzbbu.e(str);
        throw new zzbhy(str);
    }
}
