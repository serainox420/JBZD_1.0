package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzaoo;
/* loaded from: classes2.dex */
public class zzn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzn> CREATOR = new zzo();
    private final String mName;
    private final zzaoo zzaVT;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(int i, String str, IBinder iBinder) {
        this.zzaiI = i;
        this.mName = str;
        this.zzaVT = zzaoo.zza.zzcs(iBinder);
    }

    public zzn(String str, zzaoo zzaooVar) {
        this.zzaiI = 3;
        this.mName = str;
        this.zzaVT = zzaooVar;
    }

    private boolean zzb(zzn zznVar) {
        return com.google.android.gms.common.internal.zzaa.equal(this.mName, zznVar.mName);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzn) && zzb((zzn) obj));
    }

    public IBinder getCallbackBinder() {
        return this.zzaVT.asBinder();
    }

    public String getName() {
        return this.mName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.mName);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("name", this.mName).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }
}
