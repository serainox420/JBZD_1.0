package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.location.places.PlacePhotoMetadata;
import com.google.android.gms.location.places.PlacePhotoResult;
import com.google.android.gms.location.places.Places;
import com.google.android.gms.location.places.zzh;
/* loaded from: classes2.dex */
public class zzw implements PlacePhotoMetadata {
    private int mIndex;
    private final int zzMB;
    private final int zzMC;
    private final String zzbmW;
    private final CharSequence zzbmX;

    public zzw(String str, int i, int i2, CharSequence charSequence, int i3) {
        this.zzbmW = str;
        this.zzMB = i;
        this.zzMC = i2;
        this.zzbmX = charSequence;
        this.mIndex = i3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzw)) {
            return false;
        }
        zzw zzwVar = (zzw) obj;
        return zzwVar.zzMB == this.zzMB && zzwVar.zzMC == this.zzMC && com.google.android.gms.common.internal.zzaa.equal(zzwVar.zzbmW, this.zzbmW) && com.google.android.gms.common.internal.zzaa.equal(zzwVar.zzbmX, this.zzbmX);
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public CharSequence getAttributions() {
        return this.zzbmX;
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public int getMaxHeight() {
        return this.zzMC;
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public int getMaxWidth() {
        return this.zzMB;
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public PendingResult<PlacePhotoResult> getPhoto(GoogleApiClient googleApiClient) {
        return getScaledPhoto(googleApiClient, getMaxWidth(), getMaxHeight());
    }

    @Override // com.google.android.gms.location.places.PlacePhotoMetadata
    public PendingResult<PlacePhotoResult> getScaledPhoto(GoogleApiClient googleApiClient, final int i, final int i2) {
        return googleApiClient.zza((GoogleApiClient) new zzh.zza<zzh>(Places.GEO_DATA_API, googleApiClient) { // from class: com.google.android.gms.location.places.internal.zzw.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzh zzhVar) throws RemoteException {
                zzhVar.zza(new com.google.android.gms.location.places.zzh(this), zzw.this.zzbmW, i, i2, zzw.this.mIndex);
            }
        });
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzMB), Integer.valueOf(this.zzMC), this.zzbmW, this.zzbmX);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzJd */
    public PlacePhotoMetadata mo520freeze() {
        return this;
    }
}
