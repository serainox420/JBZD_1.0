package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbrg {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Map<zzbrq, zzbqw> zzciD = new HashMap();

    static {
        $assertionsDisabled = !zzbrg.class.desiredAssertionStatus();
    }

    public void zza(zzbqw zzbqwVar) {
        zzbqy.zza zzZV = zzbqwVar.zzZV();
        zzbrq zzZU = zzbqwVar.zzZU();
        if ($assertionsDisabled || zzZV == zzbqy.zza.CHILD_ADDED || zzZV == zzbqy.zza.CHILD_CHANGED || zzZV == zzbqy.zza.CHILD_REMOVED) {
            if (!$assertionsDisabled && zzbqwVar.zzZU().zzaaK()) {
                throw new AssertionError();
            }
            if (!this.zzciD.containsKey(zzZU)) {
                this.zzciD.put(zzbqwVar.zzZU(), zzbqwVar);
                return;
            }
            zzbqw zzbqwVar2 = this.zzciD.get(zzZU);
            zzbqy.zza zzZV2 = zzbqwVar2.zzZV();
            if (zzZV == zzbqy.zza.CHILD_ADDED && zzZV2 == zzbqy.zza.CHILD_REMOVED) {
                this.zzciD.put(zzbqwVar.zzZU(), zzbqw.zza(zzZU, zzbqwVar.zzZS(), zzbqwVar2.zzZS()));
                return;
            } else if (zzZV == zzbqy.zza.CHILD_REMOVED && zzZV2 == zzbqy.zza.CHILD_ADDED) {
                this.zzciD.remove(zzZU);
                return;
            } else if (zzZV == zzbqy.zza.CHILD_REMOVED && zzZV2 == zzbqy.zza.CHILD_CHANGED) {
                this.zzciD.put(zzZU, zzbqw.zzb(zzZU, zzbqwVar2.zzZX()));
                return;
            } else if (zzZV == zzbqy.zza.CHILD_CHANGED && zzZV2 == zzbqy.zza.CHILD_ADDED) {
                this.zzciD.put(zzZU, zzbqw.zza(zzZU, zzbqwVar.zzZS()));
                return;
            } else if (zzZV == zzbqy.zza.CHILD_CHANGED && zzZV2 == zzbqy.zza.CHILD_CHANGED) {
                this.zzciD.put(zzZU, zzbqw.zza(zzZU, zzbqwVar.zzZS(), zzbqwVar2.zzZX()));
                return;
            } else {
                String valueOf = String.valueOf(zzbqwVar);
                String valueOf2 = String.valueOf(zzbqwVar2);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 48 + String.valueOf(valueOf2).length()).append("Illegal combination of changes: ").append(valueOf).append(" occurred after ").append(valueOf2).toString());
            }
        }
        throw new AssertionError("Only child changes supported for tracking");
    }

    public List<zzbqw> zzaay() {
        return new ArrayList(this.zzciD.values());
    }
}
