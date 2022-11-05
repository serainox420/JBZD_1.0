package com.google.android.gms.internal;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzom;
@zzme
/* loaded from: classes.dex */
public class zzoi extends zzom.zza {
    private volatile zzog zzVE;
    private volatile zzoh zzVF;
    private volatile zzoj zzVs;

    public zzoi(zzoh zzohVar) {
        this.zzVF = zzohVar;
    }

    @Override // com.google.android.gms.internal.zzom
    public void zza(IObjectWrapper iObjectWrapper, zzoo zzooVar) {
        if (this.zzVF != null) {
            this.zzVF.zzc(zzooVar);
        }
    }

    public void zza(zzog zzogVar) {
        this.zzVE = zzogVar;
    }

    public void zza(zzoj zzojVar) {
        this.zzVs = zzojVar;
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzc(IObjectWrapper iObjectWrapper, int i) {
        if (this.zzVE != null) {
            this.zzVE.zzad(i);
        }
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzd(IObjectWrapper iObjectWrapper, int i) {
        if (this.zzVs != null) {
            this.zzVs.zza(com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper).getClass().getName(), i);
        }
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzr(IObjectWrapper iObjectWrapper) {
        if (this.zzVE != null) {
            this.zzVE.zzjJ();
        }
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzs(IObjectWrapper iObjectWrapper) {
        if (this.zzVs != null) {
            this.zzVs.zzaO(com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper).getClass().getName());
        }
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzt(IObjectWrapper iObjectWrapper) {
        if (this.zzVF != null) {
            this.zzVF.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzu(IObjectWrapper iObjectWrapper) {
        if (this.zzVF != null) {
            this.zzVF.onRewardedVideoStarted();
        }
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzv(IObjectWrapper iObjectWrapper) {
        if (this.zzVF != null) {
            this.zzVF.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzw(IObjectWrapper iObjectWrapper) {
        if (this.zzVF != null) {
            this.zzVF.zzjG();
        }
    }

    @Override // com.google.android.gms.internal.zzom
    public void zzx(IObjectWrapper iObjectWrapper) {
        if (this.zzVF != null) {
            this.zzVF.onRewardedVideoAdLeftApplication();
        }
    }
}
