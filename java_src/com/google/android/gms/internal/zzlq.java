package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzpb;
@zzme
/* loaded from: classes.dex */
public class zzlq {

    /* loaded from: classes2.dex */
    public interface zza {
        void zzb(zzpb zzpbVar);
    }

    public zzpq zza(Context context, com.google.android.gms.ads.internal.zza zzaVar, zzpb.zza zzaVar2, zzaw zzawVar, zzqw zzqwVar, zzka zzkaVar, zza zzaVar3, zzgl zzglVar) {
        zzmn zzmnVar = zzaVar2.zzWm;
        zzpq zzluVar = zzmnVar.zzSn ? new zzlu(context, zzaVar2, zzkaVar, zzaVar3, zzglVar, zzqwVar) : (zzmnVar.zzzB || (zzaVar instanceof com.google.android.gms.ads.internal.zzs)) ? (!zzmnVar.zzzB || !(zzaVar instanceof com.google.android.gms.ads.internal.zzs)) ? new zzls(zzaVar2, zzaVar3) : new zzlv(context, (com.google.android.gms.ads.internal.zzs) zzaVar, zzaVar2, zzawVar, zzaVar3, zzglVar) : (!zzgd.zzCu.get().booleanValue() || !com.google.android.gms.common.util.zzt.zzzl() || com.google.android.gms.common.util.zzt.zzzn() || zzqwVar == null || !zzqwVar.zzbC().zzzz) ? new zzlr(context, zzaVar2, zzqwVar, zzaVar3) : new zzlt(context, zzaVar2, zzqwVar, zzaVar3);
        String valueOf = String.valueOf(zzluVar.getClass().getName());
        zzpk.zzbf(valueOf.length() != 0 ? "AdRenderer: ".concat(valueOf) : new String("AdRenderer: "));
        zzluVar.zziP();
        return zzluVar;
    }

    public zzpq zza(Context context, zzpb.zza zzaVar, zzns zznsVar) {
        zzok zzokVar = new zzok(context, zzaVar, zznsVar);
        String valueOf = String.valueOf(zzokVar.getClass().getName());
        zzpk.zzbf(valueOf.length() != 0 ? "AdRenderer: ".concat(valueOf) : new String("AdRenderer: "));
        zzokVar.zziP();
        return zzokVar;
    }
}
