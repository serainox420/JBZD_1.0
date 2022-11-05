package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzarw;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public class zzf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzf> CREATOR = new zzg();
    public static final Comparator<zzd> zzbjv = new Comparator<zzd>() { // from class: com.google.android.gms.location.zzf.1
        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(zzd zzdVar, zzd zzdVar2) {
            int zzBW = zzdVar.zzBW();
            int zzBW2 = zzdVar2.zzBW();
            if (zzBW != zzBW2) {
                return zzBW < zzBW2 ? -1 : 1;
            }
            int zzIc = zzdVar.zzIc();
            int zzIc2 = zzdVar2.zzIc();
            if (zzIc == zzIc2) {
                return 0;
            }
            return zzIc >= zzIc2 ? 1 : -1;
        }
    };
    private final String mTag;
    private final List<zzd> zzbjw;
    private final List<zzarw> zzbjx;

    public zzf(List<zzd> list, String str, List<zzarw> list2) {
        zzac.zzb(list, "transitions can't be null");
        zzac.zzb(list.size() > 0, "transitions can't be empty.");
        zzD(list);
        this.zzbjw = Collections.unmodifiableList(list);
        this.mTag = str;
        this.zzbjx = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
    }

    private static void zzD(List<zzd> list) {
        TreeSet treeSet = new TreeSet(zzbjv);
        for (zzd zzdVar : list) {
            zzac.zzb(treeSet.add(zzdVar), String.format("Found duplicated transition: %s.", zzdVar));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzf zzfVar = (zzf) obj;
        return zzaa.equal(this.zzbjw, zzfVar.zzbjw) && zzaa.equal(this.mTag, zzfVar.mTag) && zzaa.equal(this.zzbjx, zzfVar.zzbjx);
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.mTag != null ? this.mTag.hashCode() : 0) + (this.zzbjw.hashCode() * 31)) * 31;
        if (this.zzbjx != null) {
            i = this.zzbjx.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzbjw);
        String str = this.mTag;
        String valueOf2 = String.valueOf(this.zzbjx);
        return new StringBuilder(String.valueOf(valueOf).length() + 61 + String.valueOf(str).length() + String.valueOf(valueOf2).length()).append("ActivityTransitionRequest [mTransitions=").append(valueOf).append(", mTag='").append(str).append("'").append(", mClients=").append(valueOf2).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public List<zzd> zzId() {
        return this.zzbjw;
    }

    public List<zzarw> zzIe() {
        return this.zzbjx;
    }
}
