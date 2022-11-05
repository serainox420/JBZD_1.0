package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.zzae;
import com.google.android.gms.internal.zzag;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class zzat extends zzau {
    private static final String TAG = zzat.class.getSimpleName();
    private AdvertisingIdClient.Info zzpR;

    protected zzat(Context context) {
        super(context, "");
    }

    public static zzat zzc(Context context) {
        zza(context, true);
        return new zzat(context);
    }

    @Override // com.google.android.gms.internal.zzau, com.google.android.gms.internal.zzas
    protected zzag.zza zza(Context context, View view) {
        return null;
    }

    public String zza(String str, String str2) {
        return zzao.zza(str, str2, true);
    }

    public void zza(AdvertisingIdClient.Info info) {
        this.zzpR = info;
    }

    @Override // com.google.android.gms.internal.zzau
    protected void zza(zzbd zzbdVar, zzag.zza zzaVar, zzae.zza zzaVar2) {
        if (!zzbdVar.zzaN()) {
            zza(zzb(zzbdVar, zzaVar, zzaVar2));
        } else if (this.zzpR == null) {
        } else {
            String id = this.zzpR.getId();
            if (!TextUtils.isEmpty(id)) {
                zzaVar.zzbW = zzbf.zzr(id);
                zzaVar.zzbX = 5;
                zzaVar.zzbY = Boolean.valueOf(this.zzpR.isLimitAdTrackingEnabled());
            }
            this.zzpR = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzau
    public List<Callable<Void>> zzb(zzbd zzbdVar, zzag.zza zzaVar, zzae.zza zzaVar2) {
        ArrayList arrayList = new ArrayList();
        if (zzbdVar.zzaI() == null) {
            return arrayList;
        }
        arrayList.add(new zzbo(zzbdVar, zzaz.zzai(), zzaz.zzaj(), zzaVar, zzbdVar.zzQ(), 24));
        return arrayList;
    }
}
