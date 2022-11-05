package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class ChangeEvent extends com.google.android.gms.common.internal.safeparcel.zza implements ResourceEvent {
    public static final Parcelable.Creator<ChangeEvent> CREATOR = new zza();
    final DriveId zzaKG;
    final int zzaLD;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChangeEvent(int i, DriveId driveId, int i2) {
        this.zzaiI = i;
        this.zzaKG = driveId;
        this.zzaLD = i2;
    }

    @Override // com.google.android.gms.drive.events.ResourceEvent
    public DriveId getDriveId() {
        return this.zzaKG;
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public int getType() {
        return 1;
    }

    public boolean hasBeenDeleted() {
        return (this.zzaLD & 4) != 0;
    }

    public boolean hasContentChanged() {
        return (this.zzaLD & 2) != 0;
    }

    public boolean hasMetadataChanged() {
        return (this.zzaLD & 1) != 0;
    }

    public String toString() {
        return String.format(Locale.US, "ChangeEvent [id=%s,changeFlags=%x]", this.zzaKG, Integer.valueOf(this.zzaLD));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
