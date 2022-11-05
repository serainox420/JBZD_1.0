package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wearable.Node;
/* loaded from: classes2.dex */
public class zzcc extends com.google.android.gms.common.internal.safeparcel.zza implements Node {
    public static final Parcelable.Creator<zzcc> CREATOR = new zzcd();
    private final String zzGV;
    private final String zzakb;
    private final int zzbUN;
    private final boolean zzbUO;

    public zzcc(String str, String str2, int i, boolean z) {
        this.zzGV = str;
        this.zzakb = str2;
        this.zzbUN = i;
        this.zzbUO = z;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzcc)) {
            return false;
        }
        return ((zzcc) obj).zzGV.equals(this.zzGV);
    }

    @Override // com.google.android.gms.wearable.Node
    public String getDisplayName() {
        return this.zzakb;
    }

    public int getHopCount() {
        return this.zzbUN;
    }

    @Override // com.google.android.gms.wearable.Node
    public String getId() {
        return this.zzGV;
    }

    public int hashCode() {
        return this.zzGV.hashCode();
    }

    @Override // com.google.android.gms.wearable.Node
    public boolean isNearby() {
        return this.zzbUO;
    }

    public String toString() {
        String str = this.zzakb;
        String str2 = this.zzGV;
        int i = this.zzbUN;
        return new StringBuilder(String.valueOf(str).length() + 45 + String.valueOf(str2).length()).append("Node{").append(str).append(", id=").append(str2).append(", hops=").append(i).append(", isNearby=").append(this.zzbUO).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzcd.zza(this, parcel, i);
    }
}
