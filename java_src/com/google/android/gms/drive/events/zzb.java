package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class zzb extends com.google.android.gms.common.internal.safeparcel.zza implements DriveEvent {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();
    final zze zzaLE;
    final int zzaiI;
    final String zzaiu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(int i, String str, zze zzeVar) {
        this.zzaiI = i;
        this.zzaiu = str;
        this.zzaLE = zzeVar;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzb zzbVar = (zzb) obj;
        return zzaa.equal(this.zzaLE, zzbVar.zzaLE) && zzaa.equal(this.zzaiu, zzbVar.zzaiu);
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public int getType() {
        return 4;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaLE, this.zzaiu);
    }

    public String toString() {
        return String.format(Locale.US, "ChangesAvailableEvent [changesAvailableOptions=%s]", this.zzaLE);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
