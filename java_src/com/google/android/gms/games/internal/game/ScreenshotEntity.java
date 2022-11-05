package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class ScreenshotEntity extends GamesAbstractSafeParcelable implements Screenshot {
    public static final Parcelable.Creator<ScreenshotEntity> CREATOR = new ScreenshotEntityCreator();
    private final Uri mUri;
    private final int zzrC;
    private final int zzrD;

    public ScreenshotEntity(Uri uri, int i, int i2) {
        this.mUri = uri;
        this.zzrC = i;
        this.zzrD = i2;
    }

    static int zza(ScreenshotEntity screenshotEntity) {
        return zzaa.hashCode(screenshotEntity.getUri(), Integer.valueOf(screenshotEntity.getWidth()), Integer.valueOf(screenshotEntity.getHeight()));
    }

    static boolean zza(ScreenshotEntity screenshotEntity, Object obj) {
        if (!(obj instanceof ScreenshotEntity)) {
            return false;
        }
        if (screenshotEntity == obj) {
            return true;
        }
        ScreenshotEntity screenshotEntity2 = (ScreenshotEntity) obj;
        return zzaa.equal(screenshotEntity2.getUri(), screenshotEntity.getUri()) && zzaa.equal(Integer.valueOf(screenshotEntity2.getWidth()), Integer.valueOf(screenshotEntity.getWidth())) && zzaa.equal(Integer.valueOf(screenshotEntity2.getHeight()), Integer.valueOf(screenshotEntity.getHeight()));
    }

    static String zzb(ScreenshotEntity screenshotEntity) {
        return zzaa.zzv(screenshotEntity).zzg("Uri", screenshotEntity.getUri()).zzg("Width", Integer.valueOf(screenshotEntity.getWidth())).zzg("Height", Integer.valueOf(screenshotEntity.getHeight())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    public int getHeight() {
        return this.zzrD;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public int getWidth() {
        return this.zzrC;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ScreenshotEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzFT */
    public Screenshot mo520freeze() {
        return this;
    }
}
