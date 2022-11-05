package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzapt;
/* loaded from: classes2.dex */
public class zzak extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzak> CREATOR = new zzal();
    private final zzapt zzaWc;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzak(int i, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaWc = zzapt.zza.zzcM(iBinder);
    }

    public zzak(zzapt zzaptVar) {
        this.zzaiI = 2;
        this.zzaWc = zzaptVar;
    }

    public IBinder getCallbackBinder() {
        return this.zzaWc.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzal.zza(this, parcel, i);
    }
}
