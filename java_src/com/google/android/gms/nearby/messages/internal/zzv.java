package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.Message;
/* loaded from: classes2.dex */
public class zzv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzv> CREATOR = new zzw();
    final int zzaiI;
    public final Message zzbAO;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(int i, Message message) {
        this.zzaiI = i;
        this.zzbAO = (Message) com.google.android.gms.common.internal.zzac.zzw(message);
    }

    public static final zzv zza(Message message) {
        return new zzv(1, message);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzv) {
            return com.google.android.gms.common.internal.zzaa.equal(this.zzbAO, ((zzv) obj).zzbAO);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbAO);
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzbAO.toString());
        return new StringBuilder(String.valueOf(valueOf).length() + 24).append("MessageWrapper{message=").append(valueOf).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzw.zza(this, parcel, i);
    }
}
