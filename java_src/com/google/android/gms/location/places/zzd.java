package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzd extends zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    final int zzaiI;
    final List<String> zzblf;
    final List<Integer> zzblg;
    final List<zzp> zzblh;
    final String zzbli;
    final boolean zzblj;
    private final Set<String> zzblk;
    private final Set<Integer> zzbll;
    private final Set<zzp> zzblm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(int i, List<String> list, List<Integer> list2, List<zzp> list3, String str, boolean z) {
        this.zzaiI = i;
        this.zzblg = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzblh = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzblf = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzbll = zzF(this.zzblg);
        this.zzblm = zzF(this.zzblh);
        this.zzblk = zzF(this.zzblf);
        this.zzbli = str;
        this.zzblj = z;
    }

    public static zzd zzm(Collection<String> collection) {
        if (collection == null || collection.isEmpty()) {
            throw new IllegalArgumentException("NearbyAlertFilters must contain at least oneplace ID to match results with.");
        }
        return new zzd(0, zzk(collection), null, null, null, false);
    }

    public static zzd zzn(Collection<Integer> collection) {
        if (collection == null || collection.isEmpty()) {
            throw new IllegalArgumentException("NearbyAlertFilters must contain at least oneplace type to match results with.");
        }
        return new zzd(0, null, zzk(collection), null, null, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzd)) {
            return false;
        }
        zzd zzdVar = (zzd) obj;
        if (this.zzbli == null && zzdVar.zzbli != null) {
            return false;
        }
        return this.zzbll.equals(zzdVar.zzbll) && this.zzblm.equals(zzdVar.zzblm) && this.zzblk.equals(zzdVar.zzblk) && (this.zzbli == null || this.zzbli.equals(zzdVar.zzbli)) && this.zzblj == zzdVar.zzIy();
    }

    @Override // com.google.android.gms.location.places.zza
    public Set<String> getPlaceIds() {
        return this.zzblk;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbll, this.zzblm, this.zzblk, this.zzbli, Boolean.valueOf(this.zzblj));
    }

    public String toString() {
        zzaa.zza zzv = zzaa.zzv(this);
        if (!this.zzbll.isEmpty()) {
            zzv.zzg("types", this.zzbll);
        }
        if (!this.zzblk.isEmpty()) {
            zzv.zzg("placeIds", this.zzblk);
        }
        if (!this.zzblm.isEmpty()) {
            zzv.zzg("requestedUserDataTypes", this.zzblm);
        }
        if (this.zzbli != null) {
            zzv.zzg("chainName", this.zzbli);
        }
        zzv.zzg("Beacon required: ", Boolean.valueOf(this.zzblj));
        return zzv.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public boolean zzIy() {
        return this.zzblj;
    }
}
