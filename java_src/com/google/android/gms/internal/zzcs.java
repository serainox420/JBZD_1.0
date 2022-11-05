package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.zzct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
@zzme
/* loaded from: classes.dex */
public class zzcs implements zzcu {
    private final zzqh zztt;
    private final Context zzwi;
    private final zzji zzwj;
    private final Object zzrJ = new Object();
    private final WeakHashMap<zzpb, zzct> zzwg = new WeakHashMap<>();
    private final ArrayList<zzct> zzwh = new ArrayList<>();

    public zzcs(Context context, zzqh zzqhVar, zzji zzjiVar) {
        this.zzwi = context.getApplicationContext();
        this.zztt = zzqhVar;
        this.zzwj = zzjiVar;
    }

    @Override // com.google.android.gms.internal.zzcu
    public void zza(zzct zzctVar) {
        synchronized (this.zzrJ) {
            if (!zzctVar.zzdJ()) {
                this.zzwh.remove(zzctVar);
                Iterator<Map.Entry<zzpb, zzct>> it = this.zzwg.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue() == zzctVar) {
                        it.remove();
                    }
                }
            }
        }
    }

    public void zza(zzeg zzegVar, zzpb zzpbVar) {
        zza(zzegVar, zzpbVar, zzpbVar.zzNH.getView());
    }

    public void zza(zzeg zzegVar, zzpb zzpbVar, View view) {
        zza(zzegVar, zzpbVar, new zzct.zzd(view, zzpbVar), (zzjj) null);
    }

    public void zza(zzeg zzegVar, zzpb zzpbVar, View view, zzjj zzjjVar) {
        zza(zzegVar, zzpbVar, new zzct.zzd(view, zzpbVar), zzjjVar);
    }

    public void zza(zzeg zzegVar, zzpb zzpbVar, zzda zzdaVar, zzjj zzjjVar) {
        zzct zzctVar;
        synchronized (this.zzrJ) {
            if (zzi(zzpbVar)) {
                zzctVar = this.zzwg.get(zzpbVar);
            } else {
                zzctVar = new zzct(this.zzwi, zzegVar, zzpbVar, this.zztt, zzdaVar);
                zzctVar.zza(this);
                this.zzwg.put(zzpbVar, zzctVar);
                this.zzwh.add(zzctVar);
            }
            if (zzjjVar != null) {
                zzctVar.zza(new zzcv(zzctVar, zzjjVar));
            } else {
                zzctVar.zza(new zzcw(zzctVar, this.zzwj));
            }
        }
    }

    public void zza(zzeg zzegVar, zzpb zzpbVar, zzha zzhaVar) {
        zza(zzegVar, zzpbVar, new zzct.zza(zzhaVar), (zzjj) null);
    }

    public boolean zzi(zzpb zzpbVar) {
        boolean z;
        synchronized (this.zzrJ) {
            zzct zzctVar = this.zzwg.get(zzpbVar);
            z = zzctVar != null && zzctVar.zzdJ();
        }
        return z;
    }

    public void zzj(zzpb zzpbVar) {
        synchronized (this.zzrJ) {
            zzct zzctVar = this.zzwg.get(zzpbVar);
            if (zzctVar != null) {
                zzctVar.zzdH();
            }
        }
    }

    public void zzk(zzpb zzpbVar) {
        synchronized (this.zzrJ) {
            zzct zzctVar = this.zzwg.get(zzpbVar);
            if (zzctVar != null) {
                zzctVar.stop();
            }
        }
    }

    public void zzl(zzpb zzpbVar) {
        synchronized (this.zzrJ) {
            zzct zzctVar = this.zzwg.get(zzpbVar);
            if (zzctVar != null) {
                zzctVar.pause();
            }
        }
    }

    public void zzm(zzpb zzpbVar) {
        synchronized (this.zzrJ) {
            zzct zzctVar = this.zzwg.get(zzpbVar);
            if (zzctVar != null) {
                zzctVar.resume();
            }
        }
    }
}
