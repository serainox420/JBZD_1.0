package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzasm;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class GeofencingRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new zzi();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;
    private final String mTag;
    private final List<zzasm> zzbjO;
    private final int zzbjP;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private final List<zzasm> zzbjO = new ArrayList();
        private int zzbjP = 5;
        private String mTag = "";

        public static int zzkh(int i) {
            return i & 7;
        }

        public Builder addGeofence(Geofence geofence) {
            zzac.zzb(geofence, "geofence can't be null.");
            zzac.zzb(geofence instanceof zzasm, "Geofence must be created using Geofence.Builder.");
            this.zzbjO.add((zzasm) geofence);
            return this;
        }

        public Builder addGeofences(List<Geofence> list) {
            if (list != null && !list.isEmpty()) {
                for (Geofence geofence : list) {
                    if (geofence != null) {
                        addGeofence(geofence);
                    }
                }
            }
            return this;
        }

        public GeofencingRequest build() {
            zzac.zzb(!this.zzbjO.isEmpty(), "No geofence has been added to this request.");
            return new GeofencingRequest(this.zzbjO, this.zzbjP, this.mTag);
        }

        public Builder setInitialTrigger(int i) {
            this.zzbjP = zzkh(i);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GeofencingRequest(List<zzasm> list, int i, String str) {
        this.zzbjO = list;
        this.zzbjP = i;
        this.mTag = str;
    }

    public List<Geofence> getGeofences() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zzbjO);
        return arrayList;
    }

    public int getInitialTrigger() {
        return this.zzbjP;
    }

    public String getTag() {
        return this.mTag;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public List<zzasm> zzIf() {
        return this.zzbjO;
    }
}
