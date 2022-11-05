package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class PlacePhotoMetadataResult extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<PlacePhotoMetadataResult> CREATOR = new zzj();
    final int zzaiI;
    private final Status zzair;
    final DataHolder zzblB;
    private final PlacePhotoMetadataBuffer zzblC;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlacePhotoMetadataResult(int i, Status status, DataHolder dataHolder) {
        this.zzaiI = i;
        this.zzair = status;
        this.zzblB = dataHolder;
        if (dataHolder == null) {
            this.zzblC = null;
        } else {
            this.zzblC = new PlacePhotoMetadataBuffer(this.zzblB);
        }
    }

    public PlacePhotoMetadataResult(Status status, DataHolder dataHolder) {
        this(0, status, dataHolder);
    }

    public PlacePhotoMetadataBuffer getPhotoMetadata() {
        return this.zzblC;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }
}
