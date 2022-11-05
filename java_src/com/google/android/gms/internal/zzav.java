package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzae;
import com.google.android.gms.internal.zzag;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class zzav extends zzau {
    private static final String TAG = zzav.class.getSimpleName();

    protected zzav(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzav zza(String str, Context context, boolean z) {
        zza(context, z);
        return new zzav(context, str, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzau
    public List<Callable<Void>> zzb(zzbd zzbdVar, zzag.zza zzaVar, zzae.zza zzaVar2) {
        if (zzbdVar.zzaI() == null || !this.zzpU) {
            return super.zzb(zzbdVar, zzaVar, zzaVar2);
        }
        int zzQ = zzbdVar.zzQ();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zzb(zzbdVar, zzaVar, zzaVar2));
        arrayList.add(new zzbo(zzbdVar, zzaz.zzai(), zzaz.zzaj(), zzaVar, zzQ, 24));
        return arrayList;
    }
}
