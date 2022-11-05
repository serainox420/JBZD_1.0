package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class PlaceFilter extends com.google.android.gms.location.places.zza {
    public static final Parcelable.Creator<PlaceFilter> CREATOR = new zzi();
    private static final PlaceFilter zzblv = new PlaceFilter();
    final int zzaiI;
    final List<String> zzblf;
    final List<Integer> zzblg;
    final List<zzp> zzblh;
    private final Set<String> zzblk;
    private final Set<Integer> zzbll;
    private final Set<zzp> zzblm;
    final boolean zzblw;

    @Deprecated
    /* loaded from: classes.dex */
    public static final class zza {
        private boolean zzblw;
        private Collection<Integer> zzblx;
        private Collection<zzp> zzbly;
        private String[] zzblz;

        private zza() {
            this.zzblx = null;
            this.zzblw = false;
            this.zzbly = null;
            this.zzblz = null;
        }

        public PlaceFilter zzIG() {
            return new PlaceFilter(null, false, null, null);
        }
    }

    public PlaceFilter() {
        this(false, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaceFilter(int i, List<Integer> list, boolean z, List<String> list2, List<zzp> list3) {
        this.zzaiI = i;
        this.zzblg = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzblw = z;
        this.zzblh = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzblf = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzbll = zzF(this.zzblg);
        this.zzblm = zzF(this.zzblh);
        this.zzblk = zzF(this.zzblf);
    }

    public PlaceFilter(Collection<Integer> collection, boolean z, Collection<String> collection2, Collection<zzp> collection3) {
        this(0, zzk(collection), z, zzk(collection2), zzk(collection3));
    }

    public PlaceFilter(boolean z, Collection<String> collection) {
        this(null, z, collection, null);
    }

    @Deprecated
    public static PlaceFilter zzIF() {
        return new zza().zzIG();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceFilter)) {
            return false;
        }
        PlaceFilter placeFilter = (PlaceFilter) obj;
        return this.zzbll.equals(placeFilter.zzbll) && this.zzblw == placeFilter.zzblw && this.zzblm.equals(placeFilter.zzblm) && this.zzblk.equals(placeFilter.zzblk);
    }

    @Override // com.google.android.gms.location.places.zza
    public Set<String> getPlaceIds() {
        return this.zzblk;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbll, Boolean.valueOf(this.zzblw), this.zzblm, this.zzblk);
    }

    @Override // com.google.android.gms.location.places.zza
    public boolean isRestrictedToPlacesOpenNow() {
        return this.zzblw;
    }

    public String toString() {
        zzaa.zza zzv = zzaa.zzv(this);
        if (!this.zzbll.isEmpty()) {
            zzv.zzg("types", this.zzbll);
        }
        zzv.zzg("requireOpenNow", Boolean.valueOf(this.zzblw));
        if (!this.zzblk.isEmpty()) {
            zzv.zzg("placeIds", this.zzblk);
        }
        if (!this.zzblm.isEmpty()) {
            zzv.zzg("requestedUserDataTypes", this.zzblm);
        }
        return zzv.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public Set<Integer> zzIE() {
        return this.zzbll;
    }
}
