package com.google.android.gms.plus.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.plus.PlusOneDummyView;
import com.google.android.gms.plus.internal.zzc;
/* loaded from: classes2.dex */
public final class zzg extends com.google.android.gms.dynamic.zzf<zzc> {
    private static final zzg zzbBZ = new zzg();

    private zzg() {
        super("com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl");
    }

    public static View zza(Context context, int i, int i2, String str, int i3) {
        try {
            if (str != null) {
                return (View) com.google.android.gms.dynamic.zzd.zzF(zzbBZ.zzbl(context).zza(com.google.android.gms.dynamic.zzd.zzA(context), i, i2, str, i3));
            }
            throw new NullPointerException();
        } catch (Exception e) {
            return new PlusOneDummyView(context, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzeX */
    public zzc zzc(IBinder iBinder) {
        return zzc.zza.zzeU(iBinder);
    }
}
