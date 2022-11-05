package com.google.android.gms.internal;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzjl implements zzjk {
    private final zzjj zzKl;
    private final HashSet<AbstractMap.SimpleEntry<String, zzid>> zzKm = new HashSet<>();

    public zzjl(zzjj zzjjVar) {
        this.zzKl = zzjjVar;
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zza(String str, zzid zzidVar) {
        this.zzKl.zza(str, zzidVar);
        this.zzKm.add(new AbstractMap.SimpleEntry<>(str, zzidVar));
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zza(String str, JSONObject jSONObject) {
        this.zzKl.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzb(String str, zzid zzidVar) {
        this.zzKl.zzb(str, zzidVar);
        this.zzKm.remove(new AbstractMap.SimpleEntry(str, zzidVar));
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzb(String str, JSONObject jSONObject) {
        this.zzKl.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzjk
    public void zzgT() {
        Iterator<AbstractMap.SimpleEntry<String, zzid>> it = this.zzKm.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, zzid> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            zzpk.v(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.zzKl.zzb(next.getKey(), next.getValue());
        }
        this.zzKm.clear();
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzj(String str, String str2) {
        this.zzKl.zzj(str, str2);
    }
}
