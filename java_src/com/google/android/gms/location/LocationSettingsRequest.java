package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class LocationSettingsRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new zzq();
    private final List<LocationRequest> zzaWt;
    private final boolean zzbke;
    private final boolean zzbkf;
    private zzo zzbkg;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private final ArrayList<LocationRequest> zzbkh = new ArrayList<>();
        private boolean zzbke = false;
        private boolean zzbkf = false;
        private zzo zzbkg = null;

        public Builder addAllLocationRequests(Collection<LocationRequest> collection) {
            this.zzbkh.addAll(collection);
            return this;
        }

        public Builder addLocationRequest(LocationRequest locationRequest) {
            this.zzbkh.add(locationRequest);
            return this;
        }

        public LocationSettingsRequest build() {
            return new LocationSettingsRequest(this.zzbkh, this.zzbke, this.zzbkf, null);
        }

        public Builder setAlwaysShow(boolean z) {
            this.zzbke = z;
            return this;
        }

        public Builder setNeedBle(boolean z) {
            this.zzbkf = z;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, zzo zzoVar) {
        this.zzaWt = list;
        this.zzbke = z;
        this.zzbkf = z2;
        this.zzbkg = zzoVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }

    public List<LocationRequest> zzDf() {
        return Collections.unmodifiableList(this.zzaWt);
    }

    public boolean zzIj() {
        return this.zzbke;
    }

    public boolean zzIk() {
        return this.zzbkf;
    }

    public zzo zzIl() {
        return this.zzbkg;
    }
}
