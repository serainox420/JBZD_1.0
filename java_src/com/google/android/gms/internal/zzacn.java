package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacs;
/* loaded from: classes2.dex */
public class zzacn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzacn> CREATOR = new zzaco();
    private final zzacp zzaGR;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacn(int i, zzacp zzacpVar) {
        this.zzaiI = i;
        this.zzaGR = zzacpVar;
    }

    private zzacn(zzacp zzacpVar) {
        this.zzaiI = 1;
        this.zzaGR = zzacpVar;
    }

    public static zzacn zza(zzacs.zzb<?, ?> zzbVar) {
        if (zzbVar instanceof zzacp) {
            return new zzacn((zzacp) zzbVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaco.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacp zzyo() {
        return this.zzaGR;
    }

    public zzacs.zzb<?, ?> zzyp() {
        if (this.zzaGR != null) {
            return this.zzaGR;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
}
