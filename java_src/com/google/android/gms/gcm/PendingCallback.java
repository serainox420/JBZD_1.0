package com.google.android.gms.gcm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public class PendingCallback implements Parcelable, ReflectedParcelable {
    public static final Parcelable.Creator<PendingCallback> CREATOR = new Parcelable.Creator<PendingCallback>() { // from class: com.google.android.gms.gcm.PendingCallback.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzgn */
        public PendingCallback createFromParcel(Parcel parcel) {
            return new PendingCallback(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzjF */
        public PendingCallback[] newArray(int i) {
            return new PendingCallback[i];
        }
    };
    final IBinder zzaFz;

    public PendingCallback(Parcel parcel) {
        this.zzaFz = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IBinder getIBinder() {
        return this.zzaFz;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.zzaFz);
    }
}
