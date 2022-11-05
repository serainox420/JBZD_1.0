package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.dynamic.zzf;
/* loaded from: classes.dex */
public final class zzaj extends com.google.android.gms.dynamic.zzf<zzy> {
    private static final zzaj zzaGI = new zzaj();

    private zzaj() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zzd(Context context, int i, int i2) throws zzf.zza {
        return zzaGI.zze(context, i, i2);
    }

    private View zze(Context context, int i, int i2) throws zzf.zza {
        try {
            zzah zzahVar = new zzah(i, i2, null);
            return (View) com.google.android.gms.dynamic.zzd.zzF(zzbl(context).zza(com.google.android.gms.dynamic.zzd.zzA(context), zzahVar));
        } catch (Exception e) {
            throw new zzf.zza(new StringBuilder(64).append("Could not get button with size ").append(i).append(" and color ").append(i2).toString(), e);
        }
    }

    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzby */
    public zzy zzc(IBinder iBinder) {
        return zzy.zza.zzbx(iBinder);
    }
}
