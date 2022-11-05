package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
/* loaded from: classes2.dex */
public class StockProfileImageRef extends zzc implements StockProfileImage {
    public StockProfileImageRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public String getImageUrl() {
        return getString("image_url");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((StockProfileImageEntity) ((StockProfileImage) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public Uri zzEo() {
        return Uri.parse(getString("image_uri"));
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGj */
    public StockProfileImage mo520freeze() {
        return new StockProfileImageEntity(this);
    }
}
