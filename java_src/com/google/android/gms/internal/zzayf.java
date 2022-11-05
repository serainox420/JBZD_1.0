package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.UUID;
/* loaded from: classes2.dex */
public class zzayf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzayf> CREATOR = new zzayg();
    final int zzaiI;
    final int zzbAx;
    final byte[] zzbAy;
    final boolean zzbAz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzayf(int i, int i2, byte[] bArr, boolean z) {
        this.zzaiI = i;
        this.zzbAx = i2;
        this.zzbAy = bArr;
        this.zzbAz = z;
    }

    private zzayf(int i, byte[] bArr) {
        this(1, i, bArr, false);
    }

    public static zzayf zza(UUID uuid, Short sh, Short sh2) {
        return new zzayf(3, new com.google.android.gms.nearby.messages.internal.zzl(uuid, sh, sh2).getBytes());
    }

    public static zzayf zzah(String str, String str2) {
        String valueOf = String.valueOf(str);
        if (str2 == null) {
            str2 = "";
        }
        String valueOf2 = String.valueOf(str2);
        return new zzayf(2, new com.google.android.gms.nearby.messages.internal.zzg(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).getBytes());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzayg.zza(this, parcel, i);
    }
}
