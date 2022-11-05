package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.drive.DriveId;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public class ParentDriveIdSet extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<ParentDriveIdSet> CREATOR = new zzm();
    final List<zzo> zzaOV;
    final int zzaiI;

    public ParentDriveIdSet() {
        this(1, new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParentDriveIdSet(int i, List<zzo> list) {
        this.zzaiI = i;
        this.zzaOV = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }

    public Set<DriveId> zzL(long j) {
        HashSet hashSet = new HashSet();
        for (zzo zzoVar : this.zzaOV) {
            hashSet.add(zzoVar.zzM(j));
        }
        return hashSet;
    }

    public void zza(zzo zzoVar) {
        this.zzaOV.add(zzoVar);
    }
}
