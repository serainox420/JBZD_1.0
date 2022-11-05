package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbqa implements zzbpd {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static zzbqa zzcgG;
    final HashMap<zzbpc, List<zzbpc>> zzcgF = new HashMap<>();

    static {
        $assertionsDisabled = !zzbqa.class.desiredAssertionStatus();
        zzcgG = new zzbqa();
    }

    private zzbqa() {
    }

    public static zzbqa zzZu() {
        return zzcgG;
    }

    private void zzj(zzbpc zzbpcVar) {
        boolean z;
        zzbpc zza;
        List<zzbpc> list;
        boolean z2;
        int i = 0;
        synchronized (this.zzcgF) {
            List<zzbpc> list2 = this.zzcgF.get(zzbpcVar);
            if (list2 != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= list2.size()) {
                        z2 = false;
                        break;
                    } else if (list2.get(i2) == zzbpcVar) {
                        z2 = true;
                        list2.remove(i2);
                        break;
                    } else {
                        i2++;
                    }
                }
                if (list2.isEmpty()) {
                    this.zzcgF.remove(zzbpcVar);
                }
                z = z2;
            } else {
                z = false;
            }
            if (!$assertionsDisabled && !z && zzbpcVar.zzYM()) {
                throw new AssertionError();
            }
            if (!zzbpcVar.zzYn().isDefault() && (list = this.zzcgF.get((zza = zzbpcVar.zza(zzbrc.zzN(zzbpcVar.zzYn().zzWM()))))) != null) {
                while (true) {
                    if (i >= list.size()) {
                        break;
                    } else if (list.get(i) == zzbpcVar) {
                        list.remove(i);
                        break;
                    } else {
                        i++;
                    }
                }
                if (list.isEmpty()) {
                    this.zzcgF.remove(zza);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzbpd
    public void zzd(zzbpc zzbpcVar) {
        zzj(zzbpcVar);
    }

    public void zzi(zzbpc zzbpcVar) {
        synchronized (this.zzcgF) {
            List<zzbpc> list = this.zzcgF.get(zzbpcVar);
            if (list == null) {
                list = new ArrayList<>();
                this.zzcgF.put(zzbpcVar, list);
            }
            list.add(zzbpcVar);
            if (!zzbpcVar.zzYn().isDefault()) {
                zzbpc zza = zzbpcVar.zza(zzbrc.zzN(zzbpcVar.zzYn().zzWM()));
                List<zzbpc> list2 = this.zzcgF.get(zza);
                if (list2 == null) {
                    list2 = new ArrayList<>();
                    this.zzcgF.put(zza, list2);
                }
                list2.add(zzbpcVar);
            }
            zzbpcVar.zzbf(true);
            zzbpcVar.zza(this);
        }
    }

    public void zzk(zzbpc zzbpcVar) {
        synchronized (this.zzcgF) {
            List<zzbpc> list = this.zzcgF.get(zzbpcVar);
            if (list != null && !list.isEmpty()) {
                if (zzbpcVar.zzYn().isDefault()) {
                    HashSet hashSet = new HashSet();
                    for (int size = list.size() - 1; size >= 0; size--) {
                        zzbpc zzbpcVar2 = list.get(size);
                        if (!hashSet.contains(zzbpcVar2.zzYn())) {
                            hashSet.add(zzbpcVar2.zzYn());
                            zzbpcVar2.zzYK();
                        }
                    }
                } else {
                    list.get(0).zzYK();
                }
            }
        }
    }
}
