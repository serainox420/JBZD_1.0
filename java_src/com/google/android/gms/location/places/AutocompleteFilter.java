package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public class AutocompleteFilter extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<AutocompleteFilter> CREATOR = new zzc();
    public static final int TYPE_FILTER_ADDRESS = 2;
    public static final int TYPE_FILTER_CITIES = 5;
    public static final int TYPE_FILTER_ESTABLISHMENT = 34;
    public static final int TYPE_FILTER_GEOCODE = 1007;
    public static final int TYPE_FILTER_NONE = 0;
    public static final int TYPE_FILTER_REGIONS = 4;
    final int zzaiI;
    final boolean zzblb;
    final List<Integer> zzblc;
    final String zzbld;
    final int zzble;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private boolean zzblb = false;
        private int zzble = 0;
        private String zzbld = "";

        public AutocompleteFilter build() {
            return new AutocompleteFilter(1, false, Arrays.asList(Integer.valueOf(this.zzble)), this.zzbld);
        }

        public Builder setCountry(String str) {
            this.zzbld = str;
            return this;
        }

        public Builder setTypeFilter(int i) {
            this.zzble = i;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutocompleteFilter(int i, boolean z, List<Integer> list, String str) {
        boolean z2 = true;
        this.zzaiI = i;
        this.zzblc = list;
        this.zzble = zzl(list);
        this.zzbld = str;
        if (this.zzaiI < 1) {
            this.zzblb = z ? false : z2;
        } else {
            this.zzblb = z;
        }
    }

    private static int zzl(Collection<Integer> collection) {
        if (collection == null || collection.isEmpty()) {
            return 0;
        }
        return collection.iterator().next().intValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocompleteFilter)) {
            return false;
        }
        AutocompleteFilter autocompleteFilter = (AutocompleteFilter) obj;
        return this.zzble == autocompleteFilter.zzble && this.zzblb == autocompleteFilter.zzblb && this.zzbld == autocompleteFilter.zzbld;
    }

    public int getTypeFilter() {
        return this.zzble;
    }

    public int hashCode() {
        return zzaa.hashCode(Boolean.valueOf(this.zzblb), Integer.valueOf(this.zzble), this.zzbld);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("includeQueryPredictions", Boolean.valueOf(this.zzblb)).zzg("typeFilter", Integer.valueOf(this.zzble)).zzg(PubMaticConstants.COUNTRY_PARAM, this.zzbld).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
