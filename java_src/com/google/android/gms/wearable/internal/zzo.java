package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wearable.CapabilityInfo;
import com.google.android.gms.wearable.Node;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzo extends com.google.android.gms.common.internal.safeparcel.zza implements CapabilityInfo {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    private final String mName;
    private final List<zzcc> zzbTQ;
    private final Object zzrJ = new Object();
    private Set<Node> zzbTN = null;

    public zzo(String str, List<zzcc> list) {
        this.mName = str;
        this.zzbTQ = list;
        zzUs();
    }

    private void zzUs() {
        com.google.android.gms.common.internal.zzac.zzw(this.mName);
        com.google.android.gms.common.internal.zzac.zzw(this.zzbTQ);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        if (this.mName == null ? zzoVar.mName != null : !this.mName.equals(zzoVar.mName)) {
            return false;
        }
        if (this.zzbTQ != null) {
            if (this.zzbTQ.equals(zzoVar.zzbTQ)) {
                return true;
            }
        } else if (zzoVar.zzbTQ == null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.wearable.CapabilityInfo
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.wearable.CapabilityInfo
    public Set<Node> getNodes() {
        Set<Node> set;
        synchronized (this.zzrJ) {
            if (this.zzbTN == null) {
                this.zzbTN = new HashSet(this.zzbTQ);
            }
            set = this.zzbTN;
        }
        return set;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.mName != null ? this.mName.hashCode() : 0) + 31) * 31;
        if (this.zzbTQ != null) {
            i = this.zzbTQ.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        String str = this.mName;
        String valueOf = String.valueOf(this.zzbTQ);
        return new StringBuilder(String.valueOf(str).length() + 18 + String.valueOf(valueOf).length()).append("CapabilityInfo{").append(str).append(", ").append(valueOf).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzp.zza(this, parcel, i);
    }

    public List<zzcc> zzUt() {
        return this.zzbTQ;
    }
}
