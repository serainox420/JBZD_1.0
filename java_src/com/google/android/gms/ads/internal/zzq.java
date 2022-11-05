package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzey;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzod;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@zzme
/* loaded from: classes.dex */
public class zzq extends zzey.zza {
    private static final Object zztX = new Object();
    private static zzq zztY;
    private final Context mContext;
    private boolean zzua;
    private zzqh zzuc;
    private final Object zzrJ = new Object();
    private float zzub = -1.0f;
    private boolean zztZ = false;

    zzq(Context context, zzqh zzqhVar) {
        this.mContext = context;
        this.zzuc = zzqhVar;
    }

    public static zzq zza(Context context, zzqh zzqhVar) {
        zzq zzqVar;
        synchronized (zztX) {
            if (zztY == null) {
                zztY = new zzq(context.getApplicationContext(), zzqhVar);
            }
            zzqVar = zztY;
        }
        return zzqVar;
    }

    public static zzq zzcp() {
        zzq zzqVar;
        synchronized (zztX) {
            zzqVar = zztY;
        }
        return zzqVar;
    }

    @Override // com.google.android.gms.internal.zzey
    public void initialize() {
        synchronized (zztX) {
            if (this.zztZ) {
                zzpk.zzbh("Mobile ads is initialized already.");
                return;
            }
            this.zztZ = true;
            zzgd.initialize(this.mContext);
            zzw.zzcQ().zzc(this.mContext, this.zzuc);
            zzw.zzcR().initialize(this.mContext);
        }
    }

    @Override // com.google.android.gms.internal.zzey
    public void setAppMuted(boolean z) {
        synchronized (this.zzrJ) {
            this.zzua = z;
        }
    }

    @Override // com.google.android.gms.internal.zzey
    public void setAppVolume(float f) {
        synchronized (this.zzrJ) {
            this.zzub = f;
        }
    }

    @Override // com.google.android.gms.internal.zzey
    public void zzb(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzpk.e("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (context == null) {
            zzpk.e("Context is null. Failed to open debug menu.");
            return;
        }
        zzpr zzh = zzh(context);
        zzh.setAdUnitId(str);
        zzh.zzba(this.zzuc.zzba);
        zzh.showDialog();
    }

    @Override // com.google.android.gms.internal.zzey
    public void zzc(String str, IObjectWrapper iObjectWrapper) {
        Runnable runnable;
        boolean z;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzgd.initialize(this.mContext);
        boolean booleanValue = zzgd.zzEJ.get().booleanValue() | zzgd.zzCN.get().booleanValue();
        if (zzgd.zzCN.get().booleanValue()) {
            final Runnable runnable2 = (Runnable) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
            runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.zzq.1
                @Override // java.lang.Runnable
                public void run() {
                    zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.ads.internal.zzq.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            zzod.zza(zzq.this.mContext, runnable2);
                        }
                    });
                }
            };
            z = true;
        } else {
            runnable = null;
            z = booleanValue;
        }
        if (!z) {
            return;
        }
        zzw.zzdi().zza(this.mContext, this.zzuc, str, runnable);
    }

    public float zzcq() {
        float f;
        synchronized (this.zzrJ) {
            f = this.zzub;
        }
        return f;
    }

    public boolean zzcr() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzub >= BitmapDescriptorFactory.HUE_RED;
        }
        return z;
    }

    public boolean zzcs() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzua;
        }
        return z;
    }

    zzpr zzh(Context context) {
        return new zzpr(context);
    }

    @Override // com.google.android.gms.internal.zzey
    public void zzy(String str) {
        zzgd.initialize(this.mContext);
        if (TextUtils.isEmpty(str) || !zzgd.zzEJ.get().booleanValue()) {
            return;
        }
        zzw.zzdi().zza(this.mContext, this.zzuc, str, (Runnable) null);
    }
}
