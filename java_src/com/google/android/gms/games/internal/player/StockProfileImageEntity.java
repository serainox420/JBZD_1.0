package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class StockProfileImageEntity extends GamesAbstractSafeParcelable implements StockProfileImage {
    public static final Parcelable.Creator<StockProfileImageEntity> CREATOR = new StockProfileImageEntityCreator();
    private final Uri zzaYU;
    private final String zzbdw;

    public StockProfileImageEntity(StockProfileImage stockProfileImage) {
        this(stockProfileImage.getImageUrl(), stockProfileImage.zzEo());
    }

    public StockProfileImageEntity(String str, Uri uri) {
        this.zzbdw = str;
        this.zzaYU = uri;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StockProfileImage)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        StockProfileImage stockProfileImage = (StockProfileImage) obj;
        return zzaa.equal(this.zzbdw, stockProfileImage.getImageUrl()) && zzaa.equal(this.zzaYU, stockProfileImage.zzEo());
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public String getImageUrl() {
        return this.zzbdw;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbdw, this.zzaYU);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzaa.zzv(this).zzg("ImageId", this.zzbdw).zzg("ImageUri", this.zzaYU).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        StockProfileImageEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public Uri zzEo() {
        return this.zzaYU;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGj */
    public StockProfileImage mo520freeze() {
        return this;
    }
}
