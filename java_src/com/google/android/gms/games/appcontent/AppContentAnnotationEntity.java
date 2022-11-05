package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class AppContentAnnotationEntity extends GamesAbstractSafeParcelable implements AppContentAnnotation {
    public static final Parcelable.Creator<AppContentAnnotationEntity> CREATOR = new AppContentAnnotationEntityCreator();
    private final String zzGV;
    private final Uri zzaYU;
    private final String zzaYV;
    private final String zzaYW;
    private final int zzaYX;
    private final int zzaYY;
    private final Bundle zzaYZ;
    private final String zzade;
    private final String zzamJ;

    public AppContentAnnotationEntity(AppContentAnnotation appContentAnnotation) {
        this.zzade = appContentAnnotation.getDescription();
        this.zzGV = appContentAnnotation.getId();
        this.zzaYW = appContentAnnotation.zzEm();
        this.zzaYX = appContentAnnotation.zzEn();
        this.zzaYU = appContentAnnotation.zzEo();
        this.zzaYY = appContentAnnotation.zzEq();
        this.zzaYV = appContentAnnotation.zzEr();
        this.zzaYZ = appContentAnnotation.zzEp();
        this.zzamJ = appContentAnnotation.getTitle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentAnnotationEntity(String str, Uri uri, String str2, String str3, String str4, String str5, int i, int i2, Bundle bundle) {
        this.zzade = str;
        this.zzGV = str3;
        this.zzaYW = str5;
        this.zzaYX = i;
        this.zzaYU = uri;
        this.zzaYY = i2;
        this.zzaYV = str4;
        this.zzaYZ = bundle;
        this.zzamJ = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(AppContentAnnotation appContentAnnotation) {
        return zzaa.hashCode(appContentAnnotation.getDescription(), appContentAnnotation.getId(), appContentAnnotation.zzEm(), Integer.valueOf(appContentAnnotation.zzEn()), appContentAnnotation.zzEo(), Integer.valueOf(appContentAnnotation.zzEq()), appContentAnnotation.zzEr(), appContentAnnotation.zzEp(), appContentAnnotation.getTitle());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(AppContentAnnotation appContentAnnotation, Object obj) {
        if (!(obj instanceof AppContentAnnotation)) {
            return false;
        }
        if (appContentAnnotation == obj) {
            return true;
        }
        AppContentAnnotation appContentAnnotation2 = (AppContentAnnotation) obj;
        return zzaa.equal(appContentAnnotation2.getDescription(), appContentAnnotation.getDescription()) && zzaa.equal(appContentAnnotation2.getId(), appContentAnnotation.getId()) && zzaa.equal(appContentAnnotation2.zzEm(), appContentAnnotation.zzEm()) && zzaa.equal(Integer.valueOf(appContentAnnotation2.zzEn()), Integer.valueOf(appContentAnnotation.zzEn())) && zzaa.equal(appContentAnnotation2.zzEo(), appContentAnnotation.zzEo()) && zzaa.equal(Integer.valueOf(appContentAnnotation2.zzEq()), Integer.valueOf(appContentAnnotation.zzEq())) && zzaa.equal(appContentAnnotation2.zzEr(), appContentAnnotation.zzEr()) && zzaa.equal(appContentAnnotation2.zzEp(), appContentAnnotation.zzEp()) && zzaa.equal(appContentAnnotation2.getTitle(), appContentAnnotation.getTitle());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(AppContentAnnotation appContentAnnotation) {
        return zzaa.zzv(appContentAnnotation).zzg("Description", appContentAnnotation.getDescription()).zzg("Id", appContentAnnotation.getId()).zzg("ImageDefaultId", appContentAnnotation.zzEm()).zzg("ImageHeight", Integer.valueOf(appContentAnnotation.zzEn())).zzg("ImageUri", appContentAnnotation.zzEo()).zzg("ImageWidth", Integer.valueOf(appContentAnnotation.zzEq())).zzg("LayoutSlot", appContentAnnotation.zzEr()).zzg("Modifiers", appContentAnnotation.zzEp()).zzg("Title", appContentAnnotation.getTitle()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getId() {
        return this.zzGV;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getTitle() {
        return this.zzamJ;
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
        AppContentAnnotationEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String zzEm() {
        return this.zzaYW;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public int zzEn() {
        return this.zzaYX;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public Uri zzEo() {
        return this.zzaYU;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public Bundle zzEp() {
        return this.zzaYZ;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public int zzEq() {
        return this.zzaYY;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String zzEr() {
        return this.zzaYV;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEs */
    public AppContentAnnotation mo520freeze() {
        return this;
    }
}
