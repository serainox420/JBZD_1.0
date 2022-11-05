package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.PlacePhotoMetadata;
import com.google.android.gms.location.places.PlacePhotoResult;
/* loaded from: classes2.dex */
public class zzx extends zzab implements PlacePhotoMetadata {
    private final String zzbmW;

    public zzx(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.zzbmW = getString("photo_fife_url");
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public CharSequence getAttributions() {
        return zzO("photo_attributions", null);
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public int getMaxHeight() {
        return zzy("photo_max_height", 0);
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public int getMaxWidth() {
        return zzy("photo_max_width", 0);
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public PendingResult<PlacePhotoResult> getPhoto(GoogleApiClient googleApiClient) {
        return getScaledPhoto(googleApiClient, getMaxWidth(), getMaxHeight());
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public PendingResult<PlacePhotoResult> getScaledPhoto(GoogleApiClient googleApiClient, int i, int i2) {
        return ((PlacePhotoMetadata) mo520freeze()).getScaledPhoto(googleApiClient, i, i2);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzJd */
    public PlacePhotoMetadata mo520freeze() {
        return new zzw(this.zzbmW, getMaxWidth(), getMaxHeight(), getAttributions(), this.zzaDL);
    }
}
