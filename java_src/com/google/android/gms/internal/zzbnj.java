package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.firebase.a;
import com.google.firebase.auth.d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbnj {
    private Context mContext;
    private SharedPreferences zzBd;
    private zzbuk zzbYe;
    private String zzbZb;
    private zzbuv zzbZc;

    public zzbnj(Context context, String str, zzbuk zzbukVar) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        this.zzbZb = com.google.android.gms.common.internal.zzac.zzdr(str);
        this.mContext = context.getApplicationContext();
        String format = String.format("com.google.firebase.auth.api.Store.%s", this.zzbZb);
        this.zzbYe = (zzbuk) com.google.android.gms.common.internal.zzac.zzw(zzbukVar);
        this.zzbZc = new zzbuv();
        this.zzBd = this.mContext.getSharedPreferences(format, 0);
    }

    private zzbnf zza(zzbut zzbutVar) {
        String zzadj = zzbutVar.zzjR("cachedTokenState").zzadj();
        String zzadj2 = zzbutVar.zzjR("applicationName").zzadj();
        boolean asBoolean = zzbutVar.zzjR("anonymous").getAsBoolean();
        zzbuq zzjR = zzbutVar.zzjR("version");
        String zzadj3 = (zzjR == null || zzjR.zzadn()) ? "2" : zzjR.zzadj();
        zzbun zzjS = zzbutVar.zzjS("userInfos");
        int size = zzjS.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add((zzbnd) this.zzbYe.zza(zzjS.zzqT(i), (Class<Object>) zzbnd.class));
        }
        zzbnf zzbnfVar = new zzbnf(a.a(zzadj2), arrayList);
        if (!TextUtils.isEmpty(zzadj)) {
            zzbnfVar.zza((zzbmn) this.zzbYe.zzf(zzadj, zzbmn.class));
        }
        ((zzbnf) zzbnfVar.zzaY(asBoolean)).zziz(zzadj3);
        return zzbnfVar;
    }

    private String zzi(d dVar) {
        zzbut zzbutVar = new zzbut();
        if (zzbnf.class.isAssignableFrom(dVar.getClass())) {
            zzbnf zzbnfVar = (zzbnf) dVar;
            zzbutVar.zzaG("cachedTokenState", zzbnfVar.zzVH());
            zzbutVar.zzaG("applicationName", zzbnfVar.zzVF().b());
            zzbutVar.zzaG("type", "com.google.firebase.auth.internal.DefaultFirebaseUser");
            if (zzbnfVar.zzWq() != null) {
                zzbun zzbunVar = new zzbun();
                List<zzbnd> zzWq = zzbnfVar.zzWq();
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= zzWq.size()) {
                        break;
                    }
                    zzbunVar.zzc(zziA(this.zzbYe.zzaL(zzWq.get(i2))));
                    i = i2 + 1;
                }
                zzbutVar.zza("userInfos", zzbunVar);
            }
            zzbutVar.zza("anonymous", Boolean.valueOf(zzbnfVar.isAnonymous()));
            zzbutVar.zzaG("version", "2");
            return zzbutVar.toString();
        }
        return null;
    }

    private static zzbuq zziA(String str) {
        return new zzbuv().zzjT(str);
    }

    public void clear(String str) {
        this.zzBd.edit().remove(str).apply();
    }

    public String get(String str) {
        return this.zzBd.getString(str, null);
    }

    public d zzWs() {
        String str = get("com.google.firebase.auth.FIREBASE_USER");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            zzbut zzado = this.zzbZc.zzjT(str).zzado();
            if (zzado.has("type") && "com.google.firebase.auth.internal.DefaultFirebaseUser".equalsIgnoreCase(zzado.zzjR("type").zzadj())) {
                return zza(zzado);
            }
            return null;
        } catch (zzbuz e) {
            return null;
        }
    }

    public void zzWt() {
        clear("com.google.firebase.auth.FIREBASE_USER");
    }

    public void zza(d dVar, zzbmn zzbmnVar) {
        com.google.android.gms.common.internal.zzac.zzw(dVar);
        com.google.android.gms.common.internal.zzac.zzw(zzbmnVar);
        zzp(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", dVar.getUid()), zzbmnVar);
    }

    public void zzao(String str, String str2) {
        this.zzBd.edit().putString(str, str2).apply();
    }

    public <T> T zze(String str, Class<T> cls) {
        String str2 = get(str);
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        return (T) this.zzbYe.zzf(str2, cls);
    }

    public void zzf(d dVar) {
        com.google.android.gms.common.internal.zzac.zzw(dVar);
        String zzi = zzi(dVar);
        if (!TextUtils.isEmpty(zzi)) {
            zzao("com.google.firebase.auth.FIREBASE_USER", zzi);
        }
    }

    public zzbmn zzg(d dVar) {
        com.google.android.gms.common.internal.zzac.zzw(dVar);
        return (zzbmn) zze(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", dVar.getUid()), zzbmn.class);
    }

    public void zzh(d dVar) {
        com.google.android.gms.common.internal.zzac.zzw(dVar);
        clear(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", dVar.getUid()));
    }

    public void zzp(String str, Object obj) {
        this.zzBd.edit().putString(str, this.zzbYe.zzaL(obj)).apply();
    }
}
