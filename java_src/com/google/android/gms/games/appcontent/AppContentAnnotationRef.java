package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class AppContentAnnotationRef extends MultiDataBufferRef implements AppContentAnnotation {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentAnnotationRef(ArrayList<DataHolder> arrayList, int i) {
        super(arrayList, 2, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return AppContentAnnotationEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getDescription() {
        return getString("annotation_description");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getId() {
        return getString("annotation_id");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getTitle() {
        return getString("annotation_title");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return AppContentAnnotationEntity.zza(this);
    }

    public String toString() {
        return AppContentAnnotationEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AppContentAnnotationEntity) ((AppContentAnnotation) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String zzEm() {
        return getString("annotation_image_default_id");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public int zzEn() {
        return getInteger("annotation_image_height");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public Uri zzEo() {
        return zzdg("annotation_image_uri");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public Bundle zzEp() {
        return AppContentUtils.zzd(this.zzaBi, this.zzaZo, "annotation_modifiers", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public int zzEq() {
        return getInteger("annotation_image_width");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String zzEr() {
        return getString("annotation_layout_slot");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEs */
    public AppContentAnnotation mo520freeze() {
        return new AppContentAnnotationEntity(this);
    }
}
