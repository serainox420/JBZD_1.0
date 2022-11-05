package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.internal.zzapb;
import com.loopme.debugging.ErrorType;
import java.util.List;
/* loaded from: classes2.dex */
public class zzar extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzar> CREATOR = new zzas();
    private final int versionCode;
    private final zzapb zzaWj;
    private final List<zzj> zzaWk;
    private final boolean zzaWl;
    private final boolean zzaWm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzar(int i, IBinder iBinder, List<zzj> list, boolean z, boolean z2) {
        this.versionCode = i;
        this.zzaWj = zzapb.zza.zzcF(iBinder);
        this.zzaWk = list;
        this.zzaWl = z;
        this.zzaWm = z2;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaWj != null) {
            return this.zzaWj.asBinder();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg(NativeProtocol.WEB_DIALOG_PARAMS, this.zzaWk).zzg(ErrorType.SERVER, Boolean.valueOf(this.zzaWm)).zzg("flush", Boolean.valueOf(this.zzaWl)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzas.zza(this, parcel, i);
    }

    public boolean zzCS() {
        return this.zzaWm;
    }

    public boolean zzCT() {
        return this.zzaWl;
    }

    public List<zzj> zzDc() {
        return this.zzaWk;
    }
}
