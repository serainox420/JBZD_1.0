package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzco;
@zzme
/* loaded from: classes.dex */
public final class zzcm extends zzco.zza {
    private final zzav zzrO;
    private final zzaw zzrP;
    private final zzat zzrQ;
    private boolean zzrR = false;

    public zzcm(String str, Context context, boolean z) {
        this.zzrO = zzav.zza(str, context, z);
        this.zzrP = new zzaw(this.zzrO);
        this.zzrQ = z ? null : zzat.zzc(context);
    }

    private IObjectWrapper zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, boolean z) {
        try {
            Uri uri = (Uri) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
            Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper2);
            return com.google.android.gms.dynamic.zzd.zzA(z ? this.zzrP.zza(uri, context) : this.zzrP.zzb(uri, context));
        } catch (zzax e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzco
    public IObjectWrapper zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return zza(iObjectWrapper, iObjectWrapper2, true);
    }

    @Override // com.google.android.gms.internal.zzco
    public String zza(IObjectWrapper iObjectWrapper, String str) {
        return this.zzrO.zzb((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), str);
    }

    @Override // com.google.android.gms.internal.zzco
    public String zza(IObjectWrapper iObjectWrapper, byte[] bArr) {
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        String zza = this.zzrO.zza(context, bArr);
        if (this.zzrQ == null || !this.zzrR) {
            return zza;
        }
        String zza2 = this.zzrQ.zza(zza, this.zzrQ.zza(context, bArr));
        this.zzrR = false;
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzco
    public boolean zza(IObjectWrapper iObjectWrapper) {
        return this.zzrP.zza((Uri) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzco
    public IObjectWrapper zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return zza(iObjectWrapper, iObjectWrapper2, false);
    }

    @Override // com.google.android.gms.internal.zzco
    public void zzb(String str, String str2) {
        this.zzrP.zzb(str, str2);
    }

    @Override // com.google.android.gms.internal.zzco
    public boolean zzb(IObjectWrapper iObjectWrapper) {
        return this.zzrP.zzc((Uri) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzco
    public boolean zzb(String str, boolean z) {
        if (this.zzrQ == null) {
            return false;
        }
        this.zzrQ.zza(new AdvertisingIdClient.Info(str, z));
        this.zzrR = true;
        return true;
    }

    @Override // com.google.android.gms.internal.zzco
    public String zzbt() {
        return "ms";
    }

    @Override // com.google.android.gms.internal.zzco
    public String zzc(IObjectWrapper iObjectWrapper) {
        return zza(iObjectWrapper, (byte[]) null);
    }

    @Override // com.google.android.gms.internal.zzco
    public void zzd(IObjectWrapper iObjectWrapper) {
        this.zzrP.zza((MotionEvent) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzco
    public void zzm(String str) {
        this.zzrP.zzm(str);
    }
}
