package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zzaa;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class PlacesOptions implements Api.ApiOptions.Optional {
    public final String zzaiu;
    public final String zzblR;
    public final String zzblS;
    public final int zzblT;
    public final Locale zzblU;

    /* loaded from: classes2.dex */
    public static class Builder {
        private int zzblT = 0;

        public PlacesOptions build() {
            return new PlacesOptions(this);
        }
    }

    private PlacesOptions(Builder builder) {
        this.zzblR = null;
        this.zzblS = null;
        this.zzblT = 0;
        this.zzaiu = null;
        this.zzblU = null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof PlacesOptions) {
            PlacesOptions placesOptions = (PlacesOptions) obj;
            return zzaa.equal(this.zzblR, placesOptions.zzblR) && zzaa.equal(this.zzblS, placesOptions.zzblS) && zzaa.equal(Integer.valueOf(this.zzblT), Integer.valueOf(placesOptions.zzblT)) && zzaa.equal(this.zzaiu, placesOptions.zzaiu) && zzaa.equal(this.zzblU, placesOptions.zzblU);
        }
        return false;
    }

    public String getAccountName() {
        return this.zzaiu;
    }

    public Locale getLocale() {
        return this.zzblU;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzblR, this.zzblS, Integer.valueOf(this.zzblT), this.zzaiu, this.zzblU);
    }
}
