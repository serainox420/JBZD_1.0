package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzayd;
import com.google.android.gms.nearby.messages.Message;
import java.util.Set;
/* loaded from: classes2.dex */
public class Update extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<Update> CREATOR = new zzaj();
    final int zzaiI;
    public final Message zzbAO;
    final int zzbBl;
    public final zze zzbBm;
    public final zza zzbBn;
    public final zzayd zzbBo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Update(int i, int i2, Message message, zze zzeVar, zza zzaVar, zzayd zzaydVar) {
        boolean z = true;
        this.zzaiI = i;
        this.zzbBl = i2;
        if (zzmV(1) && zzmV(2)) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zza(z, "Update cannot represent both FOUND and LOST.");
        this.zzbAO = message;
        this.zzbBm = zzeVar;
        this.zzbBn = zzaVar;
        this.zzbBo = zzaydVar;
    }

    private Set<String> zzOU() {
        com.google.android.gms.common.util.zza zzaVar = new com.google.android.gms.common.util.zza();
        if (zzmV(1)) {
            zzaVar.add("FOUND");
        }
        if (zzmV(2)) {
            zzaVar.add("LOST");
        }
        if (zzmV(4)) {
            zzaVar.add("DISTANCE");
        }
        if (zzmV(8)) {
            zzaVar.add("BLE_SIGNAL");
        }
        if (zzmV(16)) {
            zzaVar.add("DEVICE");
        }
        return zzaVar;
    }

    public static boolean zzz(int i, int i2) {
        return (i & i2) != 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Update)) {
            return false;
        }
        Update update = (Update) obj;
        return this.zzbBl == update.zzbBl && com.google.android.gms.common.internal.zzaa.equal(this.zzbAO, update.zzbAO) && com.google.android.gms.common.internal.zzaa.equal(this.zzbBm, update.zzbBm) && com.google.android.gms.common.internal.zzaa.equal(this.zzbBn, update.zzbBn) && com.google.android.gms.common.internal.zzaa.equal(this.zzbBo, update.zzbBo);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzbBl), this.zzbAO, this.zzbBm, this.zzbBn, this.zzbBo);
    }

    public String toString() {
        String valueOf = String.valueOf(zzOU());
        String valueOf2 = String.valueOf(this.zzbAO);
        String valueOf3 = String.valueOf(this.zzbBm);
        String valueOf4 = String.valueOf(this.zzbBn);
        String valueOf5 = String.valueOf(this.zzbBo);
        return new StringBuilder(String.valueOf(valueOf).length() + 56 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length()).append("Update{types=").append(valueOf).append(", message=").append(valueOf2).append(", distance=").append(valueOf3).append(", bleSignal=").append(valueOf4).append(", device=").append(valueOf5).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaj.zza(this, parcel, i);
    }

    public boolean zzmV(int i) {
        return zzz(this.zzbBl, i);
    }
}
