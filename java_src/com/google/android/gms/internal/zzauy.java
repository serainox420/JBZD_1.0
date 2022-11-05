package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzauy extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzauy> CREATOR = new zzauz();
    private final String description;
    private final String name;
    final int versionCode;
    private final String zzbxN;
    private final byte zzbxO;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauy(int i, String str, String str2, String str3, byte b) {
        this.versionCode = i;
        this.name = com.google.android.gms.common.internal.zzac.zzdr(str);
        this.description = (String) com.google.android.gms.common.internal.zzac.zzw(str2);
        this.zzbxN = (String) com.google.android.gms.common.internal.zzac.zzw(str3);
        com.google.android.gms.common.internal.zzac.zzb(b <= 4, "Unknown device type");
        this.zzbxO = b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzauy)) {
            return false;
        }
        zzauy zzauyVar = (zzauy) obj;
        return this.name.equals(zzauyVar.name) && this.description.equals(zzauyVar.description) && this.zzbxO == zzauyVar.zzbxO && this.zzbxN.equals(zzauyVar.zzbxN);
    }

    public String getDescription() {
        return this.description;
    }

    public String getDeviceId() {
        return this.zzbxN;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return (this.zzbxO * 31 * 31 * 31) + (this.zzbxN.hashCode() * 31 * 31) + (this.name.hashCode() * 31) + this.description.hashCode();
    }

    public String toString() {
        String str = this.name;
        String str2 = this.description;
        return new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length()).append(str).append(": ").append(str2).append("[").append((int) this.zzbxO).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzauz.zza(this, parcel, i);
    }

    public byte zzNK() {
        return this.zzbxO;
    }
}
