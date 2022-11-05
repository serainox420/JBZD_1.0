package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzagm;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzr extends com.google.android.gms.common.internal.safeparcel.zza implements DriveEvent {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();
    final List<zzagm> zzaMa;
    final int zzaiI;
    final String zzaiu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzr(int i, String str, List<zzagm> list) {
        this.zzaiI = i;
        this.zzaiu = str;
        this.zzaMa = list;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzr zzrVar = (zzr) obj;
        return zzaa.equal(this.zzaiu, zzrVar.zzaiu) && zzaa.equal(this.zzaMa, zzrVar.zzaMa);
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public int getType() {
        return 7;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaiu, this.zzaMa);
    }

    public String toString() {
        return String.format("TransferStateEvent[%s]", TextUtils.join("','", this.zzaMa));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }
}
