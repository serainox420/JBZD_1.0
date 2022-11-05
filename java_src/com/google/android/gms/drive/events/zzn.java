package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzagm;
/* loaded from: classes2.dex */
public final class zzn extends com.google.android.gms.common.internal.safeparcel.zza implements DriveEvent {
    public static final Parcelable.Creator<zzn> CREATOR = new zzo();
    final zzagm zzaLY;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(int i, zzagm zzagmVar) {
        this.zzaiI = i;
        this.zzaLY = zzagmVar;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj != this) {
            return zzaa.equal(this.zzaLY, ((zzn) obj).zzaLY);
        }
        return true;
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public int getType() {
        return 8;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaLY);
    }

    public String toString() {
        return String.format("TransferProgressEvent[%s]", this.zzaLY.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }

    public zzagm zzAT() {
        return this.zzaLY;
    }
}
