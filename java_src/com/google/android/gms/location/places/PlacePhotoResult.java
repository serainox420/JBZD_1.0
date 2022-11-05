package com.google.android.gms.location.places;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class PlacePhotoResult extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<PlacePhotoResult> CREATOR = new zzk();
    private final Bitmap mBitmap;
    final int zzaiI;
    private final Status zzair;
    final BitmapTeleporter zzblD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlacePhotoResult(int i, Status status, BitmapTeleporter bitmapTeleporter) {
        this.zzaiI = i;
        this.zzair = status;
        this.zzblD = bitmapTeleporter;
        if (this.zzblD != null) {
            this.mBitmap = bitmapTeleporter.zzxg();
        } else {
            this.mBitmap = null;
        }
    }

    public PlacePhotoResult(Status status, BitmapTeleporter bitmapTeleporter) {
        this(0, status, bitmapTeleporter);
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", this.zzair).zzg("bitmap", this.mBitmap).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }
}
